import 'package:figmaui_shopping_app/features/product_details/presentation/ui/product_details.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_app_bar.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> whishlist = [
  {
    'title': "Capucinus",
    'image': "assets/bag_3.png",
  },
  {
    'title': "Monogram",
    'image': "assets/bag_4.png",
  },
];
final List<Map<String, dynamic>> cart = [
  {
    'title': "Capucinus",
    'image': "assets/bag_3.png",
  },
  {
    'title': "Monogram",
    'image': "assets/bag_4.png",
  },
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int choosedIndex = 0;
  // String imagePath = 'home_image_1.png';
  // int index = 1;
  // final int totalImages = 2;

  int choosedIndex = 0;
  String imagePath = 'home_image_1.png';
  int index = 1;
  final int totalImages = 2;
  // void onModalSheetClick ()
  // {

  //   setState(() {
  //     return MyBottomSheetClass.whishlistBottomSheet(context)();
  //   });
  // }

  final List<Map<String, dynamic>> products = [
    {
      'title': "Artsy",
      'image': "assets/bag_1.png",
    },
    {
      'title': "Berkely",
      'image': "assets/bag_2.png",
    },
    {
      'title': "Capucinus",
      'image': "assets/bag_3.png",
    },
    {
      'title': "Monogram",
      'image': "assets/bag_4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // CustomNavigationBar(),
              Container(
                height: 1700,
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        // width: 400,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 0.0, right: 0.0),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 250,
                                    // width: 420,
                                    child: Image.asset(
                                      'assets/home_image_$index.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductInfo(
                                                          selectedProduct:
                                                              products[0],
                                                        )),
                                              ),
                                              child: Container(
                                                color: const Color.fromARGB(
                                                    241, 241, 241, 241),
                                                height: 230,
                                                width: 205,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 8,
                                                                  top: 0),
                                                          child: InkWell(
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              child:
                                                                  Image.asset(
                                                                'assets/whishlist.png',
                                                              ),
                                                            ),
                                                            onTap: () =>
                                                                whishlist.add(
                                                                    products[
                                                                        index]),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 120,
                                                      width: 120,
                                                      child: Container(
                                                          child: Image.asset(
                                                        products[0]['image'],
                                                        fit: BoxFit.fitHeight,
                                                      )),
                                                    ),
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      products[0]['title'],
                                                      style: const TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'PlayfairDisplay',
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 18,
                                                    ),
                                                    InkWell(
                                                      child: Container(
                                                          child: const Text(
                                                        'SHOP NOW',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                      onTap: () {
                                                        cart.add(products[0]);
                                                        // print(Cart);
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      height: 2,
                                                    ),
                                                    Container(
                                                        width: 90,
                                                        height: 2,
                                                        color: Colors.black),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            GestureDetector(
                                              onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductInfo(
                                                          selectedProduct:
                                                              products[0],
                                                        )),
                                              ),
                                              child: Container(
                                                color: const Color.fromARGB(
                                                    241, 241, 241, 241),
                                                height: 230,
                                                width: 195,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 8,
                                                                  top: 0),
                                                          child: InkWell(
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              child:
                                                                  Image.asset(
                                                                'assets/whishlist.png',
                                                              ),
                                                            ),
                                                            onTap: () =>
                                                                whishlist.add(
                                                                    products[
                                                                        0]),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 120,
                                                      width: 120,
                                                      child: Container(
                                                          child: Image.asset(
                                                        products[1]['image'],
                                                        fit: BoxFit.fitHeight,
                                                      )),
                                                    ),
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      products[1]['title'],
                                                      style: const TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'PlayfairDisplay',
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 18,
                                                    ),
                                                    InkWell(
                                                      child: Container(
                                                          child: const Text(
                                                        'SHOP NOW',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                      onTap: () {
                                                        cart.add(products[1]);
                                                        // print(Cart);
                                                      },
                                                    ),
                                                    Container(
                                                        width: 90,
                                                        height: 2,
                                                        color: Colors.black),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductInfo(
                                                          selectedProduct:
                                                              products[1],
                                                        )),
                                              ),
                                              child: Container(
                                                color: const Color.fromARGB(
                                                    241, 241, 241, 241),
                                                height: 230,
                                                width: 205,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 8,
                                                                  top: 0),
                                                          child: InkWell(
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              child:
                                                                  Image.asset(
                                                                'assets/whishlist.png',
                                                              ),
                                                            ),
                                                            onTap: () =>
                                                                whishlist.add(
                                                                    products[
                                                                        1]),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 120,
                                                      width: 120,
                                                      child: Container(
                                                          child: Image.asset(
                                                        products[2]['image'],
                                                        fit: BoxFit.fitHeight,
                                                      )),
                                                    ),
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      products[2]['title'],
                                                      style: const TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'PlayfairDisplay',
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 18,
                                                    ),
                                                    InkWell(
                                                      child: const Text(
                                                        'SHOP NOW',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      onTap: () {
                                                        cart.add(products[2]);
                                                        // print(Cart);
                                                      },
                                                    ),
                                                    Container(
                                                        width: 90,
                                                        height: 2,
                                                        color: Colors.black),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            GestureDetector(
                                              onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductInfo(
                                                          selectedProduct:
                                                              products[1],
                                                        )),
                                              ),
                                              child: Container(
                                                color: const Color.fromARGB(
                                                    241, 241, 241, 241),
                                                height: 230,
                                                width: 195,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 8,
                                                                  top: 0),
                                                          child: InkWell(
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              child:
                                                                  Image.asset(
                                                                'assets/whishlist.png',
                                                              ),
                                                            ),
                                                            onTap: () =>
                                                                whishlist.add(
                                                                    products[
                                                                        2]),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 120,
                                                      width: 120,
                                                      child: Container(
                                                          child: Image.asset(
                                                        products[3]['image'],
                                                        fit: BoxFit.fitHeight,
                                                      )),
                                                    ),
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      products[3]['title'],
                                                      style: const TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'PlayfairDisplay',
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 18,
                                                    ),
                                                    InkWell(
                                                      child: Container(
                                                          child: const Text(
                                                        'SHOP NOW',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                      onTap: () {
                                                        cart.add(products[3]);
                                                        // print(Cart);
                                                      },
                                                    ),
                                                    Container(
                                                        width: 90,
                                                        height: 2,
                                                        color: Colors.black),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40.0, bottom: 40),
                                          child: OutlinedButton(
                                            onPressed: () {
                                            },
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  const BorderSide(
                                                color: Colors.black,
                                                width: 1.5,
                                              )),
                                              shape: MaterialStateProperty.all(
                                                const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 40,
                                              width: 185,
                                              padding: EdgeInsets.all(0),
                                              child: const Center(
                                                child: Text(
                                                  'CHECK ALL LATEST',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors
                                                        .black, 
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          // mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(
                                                      bottom: 20),
                                              child: const Text(
                                                'Shop by categories',
                                                style: TextStyle(    fontFamily:
                                                            'PlayfairDisplay',fontSize: 26, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              color: const Color.fromARGB(
                                                  241, 241, 241, 241),
                                              height: 250,
                                              width: 205,
                                              child: Image.asset(
                                                  fit: BoxFit.fill,
                                                  'assets/home_men.png'),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              color: const Color.fromARGB(
                                                  241, 241, 241, 241),
                                              height: 250,
                                              width: 195,
                                              child: Image.asset(
                                                  fit: BoxFit.fill,
                                                  'assets/home_men2.png'),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              color: const Color.fromARGB(
                                                  241, 241, 241, 241),
                                              height: 250,
                                              width: 205,
                                              child: Image.asset(
                                                  fit: BoxFit.fill,
                                                  'assets/home_men3.png'),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              color: const Color.fromARGB(
                                                  241, 241, 241, 241),
                                              height: 250,
                                              width: 195,
                                              child: Image.asset(
                                                  fit: BoxFit.fill,
                                                  'assets/home_men4.png'),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40.0, bottom: 40),
                                          child: OutlinedButton(
                                            onPressed: () {
                                             
                                            },
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  const BorderSide(
                                                color: Colors.black,
                                                width: 1.5,
                                              )),
                                              shape: MaterialStateProperty.all(
                                                const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 40,
                                              width: 230,
                                              padding: const EdgeInsets.all(0),
                                              child: const Center(
                                                child: Text(
                                                  'BROWSE ALL CATEGORIES',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 90,
                                left: 270,
                                child: imageButtons(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: CustomNavigationBar(selectedIndex: choosedIndex, onItemTapped: onItemClicked,),
      // bottomNavigationBar: Positioned(
      //   top: 0,
      //   bottom: 0,
      //   child: Container(
      //     child: Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //             color: Colors.red, borderRadius: BorderRadius.circular(10)),
      //         child: BottomNavigationBar(
      //           items: const <BottomNavigationBarItem>[
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.home),
      //               label: 'Home',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.search),
      //               label: 'Search',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.favorite),
      //               label: 'Favorites',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.shopping_cart),
      //               label: 'Cart',
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
      floatingActionButton: Positioned(
        bottom: 0,
        left: 6,
        right: 6,
        child: CustomNavigationBar(
          cart: cart,
          whishlist: whishlist,
        ),
      ),
    );
  }

  Widget imageButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('This\nseason’s\nlatest',
            style: TextStyle(
                backgroundColor: Colors.white,
                fontFamily: 'PlayfairDisplay',
                fontSize: 24,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    if (index > 1) {
                      index--;
                      // imagePath = 'home_image_$index.png';
                    } else {
                      index = totalImages;
                    }
                  });
                },
                child: Container(
                    height: 61,
                    width: 61,
                    child: Image.asset(
                      'assets/left_button.png',
                      fit: BoxFit.cover,
                    ))),
            const SizedBox(
              width: 2,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    if (index < totalImages) {
                      index++;
                      // imagePath = 'home_image_$index.png';
                    } else {
                      index = 1;
                    }
                  });
                },
                child: Container(
                    height: 61,
                    width: 61,
                    child: Image.asset(
                      'assets/right_button.png',
                      fit: BoxFit.cover,
                    )))
          ],
        )
      ],
    );
  }
}
