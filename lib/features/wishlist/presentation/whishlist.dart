import 'package:figmaui_shopping_app/features/home/presentation/ui/home_page.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class WhishlistBottomModalSheet extends StatelessWidget {
  WhishlistBottomModalSheet({super.key});
  // final List<Map<String, dynamic>>? wishlist;
  // final List<Map<String, dynamic>>? wishlist;
  //   final List<Map<String, dynamic>>? cart;

  int choosedIndex = 2;

// void addAllToCArt(){
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Stack(
        children: [
       
          Container(
            padding: const EdgeInsets.only(top: 40),
            margin: const EdgeInsets.all(10),
            // height: 800,
            //  height: desiredHeight,
            // width: 390,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(.5),
                  Colors.white.withOpacity(.2)
                ])),
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22.0),
              child: ListView.separated(
                itemCount: whishlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // Container(
                      //   width: 120,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.black, width: 1)
                      //   ),
                      // ),
                      const SizedBox(
                        height: 38,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              // widget.products[widget.index]['image'],
                              whishlist[index]['image'],
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  whishlist[index]['title'],
                                  style: const TextStyle(
                                    // color: Colors.black,
                                    fontFamily: 'PlayfairDisplay',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),

                                const Text(
                                  'Wallet with chain',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Style #36252 0YK0G 1000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                // const Text(
                                //   '\$564',
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 22),
                                // ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .transparent, // Container background color
                                    border: Border.all(
                                      color: Colors
                                          .transparent, // Remove button border
                                    ),
                                    // You can add more styling here as needed
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      // Your onTap logic here
                                      whishlist.remove(whishlist[index]);
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        top: 0.0), // Adjust padding as needed
                                      child: Text(
                                        'REMOVE',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          // decoration: TextDecoration.underline,
                                          decorationColor:
                                              Color.fromARGB(255, 0, 0, 0),
                                          decorationThickness: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 1.5,),
                               Container(
                        width: 75,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2)
                        ),
                      ),
                                const SizedBox(height: 15,)
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black,
                    thickness: 2,
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 465,
            left: 120,
            right: 120,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 42,
                width: 195,
                padding: const EdgeInsets.all(0),
                color: Colors.black,
                child: const Center(
                    child: Text(
                  'ADD ALL TO CART',
                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ),
        ],
      ),
      // ),
      floatingActionButton: const Positioned(
        bottom: 0,
        left: 6,
        right: 6,
        child: CustomNavigationBar(),
      ),
    );
  }
}
