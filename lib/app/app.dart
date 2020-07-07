import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mera_akhbar/app/pages/ReaderPage.dart';
import 'package:mera_akhbar/app/pages/Settings.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mera Akhbar',
      home: AppWrapper(),
    );
  }
}

class AppWrapper extends StatefulWidget {
  AppWrapper({Key key}) : super(key: key);

  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  bool zoomEnabled;
  double zoomStartPositionX;
  double wrapperPadding;
  double wrapperScale;

  @override
  void initState() {
    this.zoomEnabled = false;
    this.zoomStartPositionX = 0.0;
    this.wrapperPadding = 0.0;
    this.wrapperScale = 1.0;
    super.initState();
  }

  void checkZoomOutEligibleRegion(DragStartDetails drag, double screenWidth) {
    if (screenWidth / drag.globalPosition.dx > 10)
      setState(() {
        this.zoomEnabled = true;
        this.zoomStartPositionX = drag.globalPosition.dx;
      });
    print(this.zoomEnabled);
  }

  void zoomOut(DragUpdateDetails drag, double screenWidth) {
    if (this.zoomEnabled == true)
      setState(() {
        print(drag.globalPosition.dx);
        final padding =
            0.0 + (drag.globalPosition.dx - this.zoomStartPositionX);
        this.wrapperPadding = padding;
        this.wrapperScale = 1.0 - padding / screenWidth;
      });
  }

  void resetZoom(DragEndDetails drag) {
    setState(() {
      this.zoomEnabled = false;
      this.wrapperPadding = 0.0;
      this.wrapperScale = 1.0;
    });
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = this.getScreenWidth(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onHorizontalDragStart: (drag) =>
            this.checkZoomOutEligibleRegion(drag, screenWidth),
        onHorizontalDragUpdate: (drag) => this.zoomOut(drag, screenWidth),
        onHorizontalDragEnd: this.resetZoom,
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              bottom: 0.0,
              right: -this.wrapperPadding,
              left: this.wrapperPadding,
              child: ScaleTransition(
                scale: AlwaysStoppedAnimation<double>(this.wrapperScale),
                child: ReaderPage(),
              ),
            ),
            Positioned(
              left: -screenWidth + this.wrapperPadding,
              right: screenWidth - this.wrapperPadding,
              top: 0.0,
              bottom: 0.0,
              child: ScaleTransition(
                scale: AlwaysStoppedAnimation<double>(this.wrapperScale),
                child: SettingsPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
