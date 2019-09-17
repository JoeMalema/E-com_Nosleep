import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
 var product_list =[
   {
    "name": "dress",
    "picture": "images/products/dress4.png",
    "old_price":42,
    "price":34,
   },
   {
    "name": "Vest",
    "picture": "images/products/formal1.png",
    "old_price":100,
    "price":64,
   },
   {
    "name": "Ketch",
    "picture": "images/cats/shoes1.png",
    "old_price":65,
    "price":44.6,
   },
   {
    "name": "Trouses",
    "picture": "images/products/jeans2.jpg",
    "old_price":30,
    "price":17,
   },
   {
    "name": "Casque",
    "picture": "images/products/casc.jpg",
    "old_price":25,
    "price":19.5,
   },
   {
    "name": "Camon",
    "picture": "images/products/tecn1.jpg",
    "old_price":150,
    "price":145,
   },
 ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder:(BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_ol_price: product_list[index]["old_price"],
            prod_price: product_list[index]["price"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  
  final prod_name;
  final prod_picture;
  final prod_ol_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_ol_price,
    this.prod_price,
  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
         child: Material(
           child: InkWell(
             onTap: (){},
             child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style:TextStyle(
                    fontWeight: FontWeight.bold)
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800),
                    ),
                  subtitle:Text(
                    "\$$prod_ol_price",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough),
                    ), 
                ),
              ),
              child: Image.asset(prod_picture,
              fit: BoxFit.cover,),),
           ),
        ),
      ),
    );
  }
}