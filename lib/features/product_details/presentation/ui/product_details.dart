import 'package:figmaui_shopping_app/features/product_details/presentation/ui/tab_bar.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_app_bar.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  ProductInfo({required this.selectedProduct, Key? key}) : super(key: key);
  Map<String, dynamic> selectedProduct;

  @override
  ProductInfoState createState() => ProductInfoState();
}

class ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(preferredSize: ,
      // child: CustomAppBar()),
      // backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 220,
                    width: 390,
                    decoration: const BoxDecoration(),
                    child: Row(
                      children: [
                        Container(
                          height: 155,
                          width: 170,
                          child: Image.asset(
                            widget.selectedProduct['image'],
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                widget.selectedProduct['title'],
                                style: const TextStyle(
                                    fontFamily: 'PlayfairDisplay',
                                    // fontWeight: FontWeight.w800,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26),
                              ),
                              const Text(
                                'Wallet with chain',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 16),
                              ),
                              const Text(
                                'Style #36252 0YK0G 1000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w200, fontSize: 13),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                '\$564',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 0),
                                  child: Text(
                                    'BUY NOW',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 0.0),
                                        child: Text(
                                          'ADD TO CART',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            decorationColor:
                                                Color.fromARGB(255, 0, 0, 0),
                                            decorationThickness: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 1.2)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 3,
                    top: 10,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/whishlist.png',
                      ),
                    ),
                  )
                ],
              ),
              const Flexible(
                child: TabBarDemo(),
              ),
            ],
          ),
        ],
      ),

      //   top: 0,
      //   bottom: 0,
      //   child: Container(
      //     child: Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Container(
      //         decoration:
      //             BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
      //         child: BottomNavigationBar(
      //           items: const <BottomNavigationBarItem>[
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.home),
      //               label: '',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.search),
      //               label: '',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.favorite),
      //               label: '',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.shopping_cart),
      //               label: '',
      //             ),
      //           ],
      //           currentIndex: choosedIndex,
      //           selectedItemColor: Colors.blue,
      //           backgroundColor: Colors
      //               .transparent, // Set the background color of the BottomNavigationBar to transparent
      //           onTap: onItemClicked,
      //         ),
      //         // child: CustomNavigationBar(selectedIndex: choosedIndex, onItemTapped: onItemClicked,)
      //       ),
      //     ),
      //   ),
      // ),
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
