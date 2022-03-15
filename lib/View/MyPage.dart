import 'package:flutter/material.dart';
import 'package:vendor_app_assignment/View/ShowroomTab.dart';
import 'package:vendor_app_assignment/View/VendorTab.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int selectedIndex = 0;

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return VendorTab(
        index: (this.selectedIndex + 1).toString(),
      );
    } else {
      return ShowroomTab(index: (this.selectedIndex + 1).toString());
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        backgroundColor: Color(0xffF9F9F9),
        selectedItemColor: Colors.deepOrangeAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
            activeIcon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.deepOrangeAccent,
            ),
              label: 'Vendors',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_business_rounded,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.add_business_rounded,
                color: Colors.deepOrangeAccent,
              ),
              label: 'Showroom',
          ),
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),

    );
  }
}
