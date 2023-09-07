import 'package:flutter/material.dart';

class ResponsiveDesignExample1 extends StatefulWidget {
  const ResponsiveDesignExample1({Key? key}) : super(key: key);

  @override
  State<ResponsiveDesignExample1> createState() => _ResponsiveDesignExample1State();
}

class _ResponsiveDesignExample1State extends State<ResponsiveDesignExample1> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Center(
          child:
              height > width? VertialView() : horizontalView(),
      ),
    );
  }

  Widget horizontalView()
  {
    return   SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FlutterLogo(size: 500/2,),
          FlutterLogo(size: 500/2,),
          FlutterLogo(size: 500/2,),
          FlutterLogo(size: 500/2,),
          FlutterLogo(size: 500/2,),
        ],
      ),
    );
  }

  Widget VertialView()
  {
    return   SingleChildScrollView(
        child: Column(
      children: [
        FlutterLogo(size: 500/2,),
        FlutterLogo(size: 500/2,),
        FlutterLogo(size: 500/2,),
        FlutterLogo(size: 500/2,),
        FlutterLogo(size: 500/2,),
      ],
        ),
    );
  }


}
