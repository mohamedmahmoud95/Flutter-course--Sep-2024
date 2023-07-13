import 'package:flutter/material.dart';


import 'animated_cross_fade_example.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({Key? key}) : super(key: key);

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),


     body: TripList(),

      floatingActionButton:

            FloatingActionButton(
                child: const Icon(Icons.keyboard_arrow_right_rounded),

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  const AnimatedCrossFadeExample()));
                }
            ),

    );
  }
}

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<Widget> _productTiles = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTrips();
    });
  }

  void _addTrips() {
    // get data from db
    List<product> _trips = [
      product(title: 'Grey Polo',  price: '400',  available: '5', img: 'https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg'),
      product(title: 'Black Polo', price: '420',  available: '3', img: 'https://m.media-amazon.com/images/I/51w9RcIHUeL._AC_SX679_.jpg'),
      product(title: 'Blue Polo',  price: '450',  available: '2', img: 'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/45/432662/1.jpg'),
    ];

    Future ft = Future((){});
    _trips.forEach((product trip) {
      ft = ft.then((data) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          _productTiles.add(_buildTile(trip));
          _listKey.currentState?.insertItem(_productTiles.length - 1);
        });
      });
    });
  }

  Widget _buildTile(product product) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(trip: product)));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${product.available} pieces available',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue[300])),
          Text(product.title, style: TextStyle(fontSize: 20, color: Colors.grey[600])),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'location-img-${product.img}',
          child: Image.network(
            product.img,
            height: 75.0,
          ),
        ),
      ),
      trailing: Text('\$${product.price}'),
    );
  }

  final Tween<Offset> _offset = Tween(begin: Offset(1, 0), end: Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _productTiles.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: animation.drive(_offset),
            child: _productTiles[index],
          );
        });
  }
}


class product{
  final String title;
  final String price;
  final String available;
  final String img;

  product({required this.title, required this.price, required this.available, required this.img});
}






class Details extends StatelessWidget {

  final product trip;
  Details({ required this.trip });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      //  extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                    tag: 'location-img-${trip.img}',
                    child: Image.network(
                      '${trip.img}',
                      height: 360,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                  title: Text(
                      trip.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]
                      )
                  ),
                  subtitle: Text(
                      '${trip.available} night stay for only \$${trip.price}',
                      style: TextStyle(letterSpacing: 1)
                  ),
              ),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                     "Text text text text",
                      style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.4
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}

