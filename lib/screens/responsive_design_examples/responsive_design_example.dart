import 'package:flutter/material.dart';

class ResponsiveDesignExample extends StatefulWidget {
  const ResponsiveDesignExample({Key? key}) : super(key: key);

  @override
  State<ResponsiveDesignExample> createState() => _ResponsiveDesignExampleState();
}

class _ResponsiveDesignExampleState extends State<ResponsiveDesignExample> {
    double width = 0;
    double height = 0;
  @override
  Widget build(BuildContext context) {
    width  = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive design example"),
      ),

      body: width < 700? verticalView() : horizontalView(),
    );
  }

  Widget mainVideo()
  {
    return Container(
      color: Colors.amber.shade100,
      child:FlutterLogo(size: width < 500? width-50 : width/2, style: FlutterLogoStyle.stacked,),);
  }

  Widget recommendedVideos()
  {
    return const SingleChildScrollView(
      child: Column(
        children: [
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
          FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal,),
        ],
      ),
    );
  }


    Widget commentsSection()
    {
      return const SingleChildScrollView(
        child: Column(
          children: [
            Text("This tutorial is awesome"),
            Text("This tutorial is very bad"),
            Text("This tutorial is very good"),
            Text("This tutorial is very amazing"),
            Text("This tutorial is awesome"),
            Text("This tutorial is very bad"),
            Text("This tutorial is very good"),
            Text("This tutorial is very amazing"),
          ],
        ),
      );
    }
  Widget horizontalView(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              mainVideo(),
              commentsSection(),
            ],
          ),
        ),
        recommendedVideos(),
      ],
    );
  }

    Widget verticalView(){
      return Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mainVideo(),
              recommendedVideos(),
              commentsSection(),
            ],
          ),
        ),
      );
    }
}

