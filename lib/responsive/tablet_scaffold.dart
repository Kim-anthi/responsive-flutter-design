import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold ({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 boxes on top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (context, index){
                    return MyBox();
                  }
              ),
            ),
          ),
          //tiles below it
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
                return MyTile();
              },),)
        ],
      ),
    );
  }
}
