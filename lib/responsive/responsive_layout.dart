import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth < 700){ //should be 500
        return mobileScaffold;
      }
      else if (constraints.maxWidth < 1100){
        return tabletScaffold;
      }
      else {
        return desktopScaffold;
      }
    }
    );
  }
}
