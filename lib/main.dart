import 'package:flutter/material.dart';
import 'package:porto04/navBar.dart';
import 'package:porto04/Landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fradip-Web',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(240, 253, 255,1),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                sliver: SliverPersistentHeader(
                  pinned: true,
                  floating: false,
                  delegate: _SliverAppBarDelegate(
                      minHeight: 85, maxHeight: 90, child: Navbar()),
                )),
            SliverToBoxAdapter(
              child: Column(
                children: [                  
                  Container(                    
                    padding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
                    decoration: BoxDecoration(color: Color.fromRGBO(240, 253, 255,1)),
                    child: Landingpage(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
