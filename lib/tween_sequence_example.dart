import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_list_example.dart';

import 'animated_opacity_example.dart';

class TweenSequenceExample extends StatefulWidget {
  const TweenSequenceExample({Key? key}) : super(key: key);

  @override
  State<TweenSequenceExample> createState() => _TweenSequenceExampleState();
}

class _TweenSequenceExampleState extends State<TweenSequenceExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  late Animation<double?> _sizeAnimation;

  bool _addedToFavorite = false;
  late CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,

    );

    _colorAnimation = ColorTween(begin: Colors.grey, end: Colors.red)
        .animate(_animationController);

    _curve = CurvedAnimation(parent: _animationController, curve: Curves.slowMiddle);

    _sizeAnimation = TweenSequence(
        <TweenSequenceItem<double>> [
    TweenSequenceItem<double>(

      tween: Tween<double>(begin: 50, end: 100),
      weight: 50,
      ),

      TweenSequenceItem<double>(
    tween: Tween<double>(begin: 100, end: 50),
    weight: 50,
    ),


    ],
    ).animate(_curve) ;

  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TweenAnimation example"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                height: 300,
                child: Image.network(
                    "https://m.media-amazon.com/images/I/51w9RcIHUeL._AC_SX679_.jpg"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
              IconButton(
              icon:  const Icon(Icons.shopping_cart_rounded, color: Colors.grey, size: 50,),
               onPressed: (){},
             ),
                      AnimatedBuilder(
                          animation: _animationController,
                          builder: (BuildContext context, _){
                            return IconButton(
                              icon:  Icon(Icons.favorite, color: _colorAnimation.value, size: _sizeAnimation.value,),
                              onPressed: (){
                                setState(() {
                                  _addedToFavorite = !_addedToFavorite;
                                  _addedToFavorite? _animationController.forward() : _animationController.reverse();
                                });
                              },
                            );
                          }
                      ),

                    ],
                  ),




                  const SizedBox(height: 50,),
                  const Text(
                    "High quality, 120% cotton Polo T-shirt",
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    "A cotton that speaks Egyptian",
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    "Like.. deep s3edian Egyptian..",
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    "From American pigeon",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.keyboard_arrow_right_rounded),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AnimatedListExample()));
          }),
    );
  }
}
