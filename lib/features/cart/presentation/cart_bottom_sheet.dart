import 'package:figmaui_shopping_app/features/home/presentation/ui/home_page.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBottomModalSheet extends StatelessWidget {
  CartBottomModalSheet({super.key});
  // final List<Map<String, dynamic>>? wishlist;

  int choosedIndex = 3;

// void addAllToCArt(){
  @override
  Widget build(BuildContext context) {
    int count=2;
    return Scaffold(
      body: Stack(
        children: [
          
          // SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(10),
            // height: 800,
            //  height: desiredHeight,
            // width: 390,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white.withOpacity(.5),
              Colors.white.withOpacity(.2)
            ])),
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22.0),
              child: ListView.builder(
                itemCount: cart.length,
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
                        height: 40,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  // widget.products[widget.index]['image'],
                                  cart[index]['image'],
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  Container(
                                    height: 27,
                                    width: 30,
                                    child:  const Center(child: Text('-', style: TextStyle(color: Colors.white, fontSize: 20),)),
                                    decoration: BoxDecoration(
                                      color: Colors.black,

                                    ),
                                    
                                  ),
                                  
                                   Container(
                                    height: 27,
                                    width: 30,
                                    child: Center(child: Text('$count',  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15))),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black, width: 1.2),
                                      color: const Color.fromARGB(255, 255, 251, 251),
                                    ),
                                    
                                  ),
                                      Container(
                                    height: 27,
                                    width: 30,
                                    child: const Center(child: Text('+', style: TextStyle(color: Colors.white, fontSize: 20),)),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15,),

                            ],
                          ),
                          const SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  cart[index]['title'],
                                  style: const TextStyle(
                                     fontFamily: 'PlayfairDisplay',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 21),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Wallet with chain',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18),
                                ),
                                 const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Style #36252 0YK0G 1000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '\$564',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: .6)),
                      ),
                     
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            // top: 420,
            // left: 120,
            // right: 120,
              top: 465,
            left: 120,
            right: 120,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 42,
                width: 195,
                padding: EdgeInsets.all(0),
                color: Colors.black,
                child: const Center(
                    child: Text(
                  'ADD ALL TO CART',
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ),
          
        ],
        
      ),
      floatingActionButton: Positioned(
        bottom: 0,
        left: 6,
        right: 6,
        child: CustomNavigationBar(),
      ),
    );
  }
}
