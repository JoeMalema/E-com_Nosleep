import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:shop_ecom/componets/horizontal_listview.dart';
import 'package:shop_ecom/componets/products.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c11.jpg'),
        AssetImage('images/c2.jpg'),
        AssetImage('images/c3.jpg'),
        AssetImage('images/4.jpg'),
        AssetImage('images/c5.jpg'),
      ],
      autoplay: false,
      // animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.green[900],
      indicatorBgPadding: 2.0,
    ),
  );
    
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[900],
        title: Text('Bunia E-com App'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){},)
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//        head
          new UserAccountsDrawerHeader(
            accountName: Text("Mathy Morrison"),
            accountEmail: Text("mathy@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey[50],
                child: Icon(Icons.person, color: Colors.green[900],),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.green[900]
            ),
            ),
            //---body---
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home, color: Colors.orange[900],),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Acount"),
                leading: Icon(Icons.person, color: Colors.blue[900],),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Oders"),
                leading: Icon(Icons.shopping_basket, color: Colors.red[300],),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard, color: Colors.green[900],),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourities"),
                leading: Icon(Icons.favorite, color: Colors.orange,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color:Colors.red ,),
               
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel commence ici, les images qui defillent sur l'entete
          imageCarousel,

          //Padding widget 
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text("Categories"), 
          ), 
          
          // Horizontal navigation list begin here...
         HorizontalList(),

         new Padding(padding: const EdgeInsets.all(25.0),
          child: new Text("Recents Products"),
        ),
        //grid view of products
        Container(
          height: 320,
          child: Products(),
        ) 
        ],
      ),
    );
  }
}