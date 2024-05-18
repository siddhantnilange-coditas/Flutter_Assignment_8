

import 'package:figmaui_shopping_app/features/home/presentation/ui/home_page.dart';
import 'package:figmaui_shopping_app/features/home/presentation/ui/search_page.dart';
import 'package:figmaui_shopping_app/features/cart/presentation/cart_bottom_sheet.dart';
import 'package:figmaui_shopping_app/features/wishlist/presentation/whishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key, this.cart, this.whishlist});
  final List<Map<String, dynamic>>? whishlist;
  final List<Map<String, dynamic>>? cart;




void showCartBottomModalSheet(context) {
      showModalBottomSheet(
        
          
          isScrollControlled: true,

          // useRootNavigator: true,
          constraints: BoxConstraints.tight(Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * .7)),
          context: context,
          builder: ((BuildContext context) {
            return CartBottomModalSheet(
           
            );
          }));
    }

    void showWishlistBottomModalSheet(context) {
      showModalBottomSheet(
 
          isScrollControlled: true,
          // useRootNavigator: true,
          constraints: BoxConstraints.tight(Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * .7)),
          context: context,
          builder: ((BuildContext context) {
            return WhishlistBottomModalSheet(
           
            );
          }));
    }

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
          height: 65,
          width: 400,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(69)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/home_svg.svg',
                  width: 28,
                  height: 23,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/whishlist_svg.svg',
                  width: 28,
                  height: 23,
                ),
                onPressed: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/search_svg.svg',
                  width: 28,
                  height: 23,
                ),
                onPressed: () {
                  showWishlistBottomModalSheet(context);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/cart_svg.svg',
                  width: 36,
                  height: 30,
                ),
                onPressed: () {
                  showCartBottomModalSheet(context);
                },
              ),
            ],
          )),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     height: 60,
    //     // width: 30,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(30),
    //       color: Colors.yellow,
    //     ),
    //     child: const Row(
    //       children: [

    //       ],
    //     ),
    //   ),
    // );
  }
}
