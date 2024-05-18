import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        
        length: 3,
        child: Scaffold(
       backgroundColor: Colors.white,
          body: Column(
            children: [ TabBar(
             indicatorColor: Colors.black,
              tabs: [
                Padding(
                  
                      padding: const EdgeInsets.symmetric(horizontal: 6.0), 
                  child: Tab(child: Text('Description', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize:16),)),
                ),
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0), 
                  child: Tab(child: Text('Shopping Info', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize:16),)),
                ),
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0), 
                  child: Tab(child: Text('Payment Options', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize:16),)),
                ),


            
              ],
              isScrollable: true,
            ),
             SizedBox(
              height: 400,
               child: TabBarView(
                children: [
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 17, right: 17),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.', style: TextStyle(wordSpacing: 3,fontSize: 16),),
                      SizedBox(height: 20,),
                      Text('Material & Care', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      SizedBox(height: 5,),
                      Text('All products are made with carefully selected materials. Please handle with care for longer product life.\n- Protect from irect light, heat and rain. Should it \tbecome wet, dry it immediately with a soft cloth \n- Store in the provided flannel bag or box\n- Clean with a soft, dry cloth',
                     style: TextStyle(wordSpacing: 3,fontSize: 16), )
                      
                    ],
                  ),
                ),
                Padding(
                  
                  padding: EdgeInsets.only(top: 25,  left: 17, right: 17),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.', style: TextStyle(wordSpacing: 3,fontSize: 16),),
                      SizedBox(height: 20,),
                      Text('Return Policy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      SizedBox(height: 5,),
                      // Text('', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                      Text('Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.', style: TextStyle(wordSpacing: 3,fontSize: 16),),
               
                      
                    ],
               
                  ),
                ),
                Padding(
                  
                  padding: EdgeInsets.only(top: 25,  left: 17, right: 17),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('We accepts the following forms of payment for online purchases:', style: TextStyle(wordSpacing: 3,fontSize: 16),),
                      SizedBox(height: 20),
                      // Text('Material & Care', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      Text('PayPal may not be used to purchase Made to Order Décor or DIY items.', style: TextStyle(wordSpacing: 3,fontSize: 16),),
                                          SizedBox(height: 20),
               
                      Text('The full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.', style: TextStyle(fontSize: 14),)
               
                    ],
               
                  ),
                )
                           ],
                         ),
             ),
            ],
          )
          
         
          
          
        ),
      
    );
  }
}