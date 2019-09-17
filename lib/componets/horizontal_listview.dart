import 'package:flutter/material.dart';

class  HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/cats/p1.jpg',
          image_caption: 'dress',
        ),
        Category(
          image_location: 'images/cats/p2.jpg',
          image_caption: 'vest',
        ),
        
        Category(
          image_location: 'images/cats/p3.jpg',
          image_caption: 't-shirt',
        ),

        Category(
          image_location: 'images/cats/p4.png',
          image_caption: 'jeans',
        ),

        Category(
          image_location: 'images/cats/p5.jpg',
          image_caption: 'shoes',
        ),

        Category(
          image_location: 'images/cats/p6.png',
          image_caption: 'shoes',
        ),

        Category(
          image_location: 'images/cats/p7.jpg',
          image_caption: 'shoes',
        ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption,this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
      title: Image.asset(image_location,
      width: 100.0,
      height: 80.0,
      ),
      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption),
      )
      ),
    ),
    ),);
  }
}