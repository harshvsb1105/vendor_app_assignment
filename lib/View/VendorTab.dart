import 'package:flutter/material.dart';
import 'package:vendor_app_assignment/View/Components/ListItem.dart';

class VendorTab extends StatelessWidget {
  final String? index;

   VendorTab({Key? key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> vendorList = [
      ListItem(
          image: "assets/img_01.jpeg",
          title: "Kolour Koncepts Intl.",
          subTitle: "Bangalore, India"),
      ListItem(
          image: "assets/img_02.jpeg",
          title: "Apparel Promoters",
          subTitle: "Chittagong, Bangladesh"),
      ListItem(
          image: "assets/img_03.jpeg",
          title: "YJC China Co.",
          subTitle: "Guangzhou, China"),
      ListItem(
          image: "assets/img_04.jpeg",
          title: "Smart Tekstil",
          subTitle: "Istanbul, Turkey"),
      ListItem(
          image: "assets/img_05.jpeg",
          title: "Khimjee Industries Ltd.",
          subTitle: "Delhi, India"),
      ListItem(
          image: "assets/img_06.jpeg",
          title: "C and S Medical Equipment Group",
          subTitle: "Phnom, Penh, Cambodia"),
      ListItem(
          image: "assets/img_07.jpg",
          title: "Sara footwear Co. Ltd.",
          subTitle: "Delhi India"),
      ListItem(
          image: "assets/img_08.jpeg",
          title: "Smart Tekstil",
          subTitle: "Istanbul, Turkey"),
      ListItem(
          image: "assets/img_02.jpeg",
          title: "Apparel Promoters",
          subTitle: "Chittagong, Bangladesh"),
    ];
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffF9F9F9),
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: Center(
                child: Text(
              'My Vendors',
              style: TextStyle(
                color: const Color(0xff000000),
              ),
            )),
            leading: IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: const Color(0xff000000),
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add_box_outlined,
                    color:  Colors.deepOrangeAccent),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              backgroundColor: const Color(0xffF9F9F9),
              title: Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        contentPadding: const EdgeInsets.only(top: 15),
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(color: const  Color(0xff3C3C43), fontSize: 17),
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color(0xff3C3C43),
                        ),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10.0)),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate(vendorList),
          ),
        ],
      ),
    );
  }
}
