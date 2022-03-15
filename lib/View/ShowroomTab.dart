import 'package:flutter/material.dart';

class ShowroomTab extends StatelessWidget {
  final String? index;

  const ShowroomTab({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(child: Text("Showroom Tab")),
    ));
  }
}
