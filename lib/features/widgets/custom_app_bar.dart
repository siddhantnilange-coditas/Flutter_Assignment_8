import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget {
    const CustomAppBar({super.key, this.preferredHeight = kToolbarHeight});

    final double preferredHeight;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
      child: Container(
        color: Colors.white,
              height: preferredHeight,

        child: Row(
          children: [ 
            Container(
              child: Image.asset('assets/drawer.png'),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'bagzz',
              style: TextStyle(fontSize: 24),
            ),
            // SizedBox(width: 300,),
            const Spacer(),
            Container(
                height: 37,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: Image.asset('assets/lady_home.png')),
          ],
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize =>Size.fromHeight(preferredHeight);
}
