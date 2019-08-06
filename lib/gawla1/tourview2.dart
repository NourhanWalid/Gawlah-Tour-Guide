//import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gawla/gawla2/tourview.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TourView2 extends StatefulWidget {
  TourView2({Key key}) : super(key: key);

  TourView2State createState() => TourView2State();
}

class TourView2State extends State<TourView2>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  final double _initFabHeight = 120.0;
  double _fabHeight;
  double _panelHeightOpen = 575.0;
  double _panelHeightClosed = 95.0;
  @override
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
      //appBar: AppBar(
      //title: Text("SlidingUpPanelExample"),
      //),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        backdropEnabled: true,
        backdropOpacity: 0.8,
        panel: StaggeredGridView.countBuilder(
  crossAxisCount: 4,
  itemCount: 8,
  itemBuilder: (BuildContext context, int index) => new Container(
      color: Colors.green,
      child: new Center(
        child: new CircleAvatar(
          backgroundColor: Colors.white,
          child: new Text('$index'),
        ),
      )),
  staggeredTileBuilder: (int index) =>
      new StaggeredTile.count(2, index.isEven ? 2 : 1),
  mainAxisSpacing: 4.0,
  crossAxisSpacing: 4.0,
)
        collapsed: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0), borderRadius: radius),
          child: Center(
            child: Text(
              "See more",
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        body: TourView(
          tag: 'btngan',
        ),
        borderRadius: radius,
      ),
    );
  }
}
