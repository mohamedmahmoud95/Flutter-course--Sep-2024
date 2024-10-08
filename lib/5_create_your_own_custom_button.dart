import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  final Function onTap;
  final Widget child;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final double? borderRadius;

  const CustomButtonWidget({super.key, required this.onTap, required this.child, this.backgroundColor, this.height, this.width, this.padding, this.borderRadius});

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTap();
      },

      child: Container(
        height: widget.height ?? 50,
        width: widget.width ?? 100,
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.blue,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
        ),
        padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      child: Center(child: widget.child,),),
    );
  }
}


class CustomButtonDemo extends StatefulWidget {
  const CustomButtonDemo({super.key});

  @override
  State<CustomButtonDemo> createState() => _CustomButtonDemoState();
}

class _CustomButtonDemoState extends State<CustomButtonDemo> {
  Color buttonColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          onTap: (){
            debugPrint("Custom button pressed");
            setState(() {
              buttonColor = buttonColor == Colors.red ? Colors.green : Colors.red;
            });
          },
          backgroundColor: buttonColor,
          height: 50,
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          borderRadius: 10,
          child: const Text("Custom Button", style: TextStyle(fontSize: 20, color: Colors.white),),
        ),
      ),
    );
  }
}

