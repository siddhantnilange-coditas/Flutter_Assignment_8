import 'package:figmaui_shopping_app/features/widgets/custom_app_bar.dart';
import 'package:figmaui_shopping_app/features/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  // int choosedIndex = 1;
  final TextEditingController _controller = TextEditingController();
  String _searchText = '';
  int choosedIndex = 1;
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.white,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 25),
                    child: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    // labelText: 'Type here to search',
                    hintStyle: const TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 117, 115, 115)),
                    hintText: 'Type here to search',
                 
          
                    suffixIcon: _searchText.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                _controller.clear();
                                _searchText = '';
                              });
                            },
                          )
                        : null,
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(
                    //     const Radius.circular(25.0),
                    //   ),
                    // ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchText = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      
      floatingActionButton: const Positioned(
        bottom: 0,
        left: 6,
        right: 6,
        child: CustomNavigationBar(),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
