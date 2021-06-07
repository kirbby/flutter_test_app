import 'package:flutter/material.dart';
import 'Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mein Einkauf',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Produkte'),
      ),
      body: ListView(
          children: [
            ProductsPage(),
            ProductsPage(),
          ]
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search', // used by assistive technologies
        child: Icon(Icons.search),
        onPressed: null,
      ),
    );
  }
}

class ProductsPage extends StatefulWidget {
  @override
  ProductsPageState createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  Widget _productList() {
    List<ProductListItem> products = [
      ProductListItem(
        name: "Milch",
        image: "milch.png",
        price: 1.28,
      ),
      ProductListItem(
        name: "Bier",
        image: "beer.jpg",
        price: 3.5,
      ),
      ProductListItem(
        name: "Milch",
        image: "milch.png",
        price: 1.28,
      ),
      ProductListItem(
        name: "Bier",
        image: "beer.jpg",
        price: 3.5,
      ),
      ProductListItem(
        name: "Milch",
        image: "milch.png",
        price: 1.28,
      ),
      ProductListItem(
        name: "Bier",
        image: "beer.jpg",
        price: 3.5,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('Milchprodukte: ', textAlign: TextAlign.left),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(5),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 140,
                  child: Card(
                    color: Colors.red,
                    child: ProductListItem(
                      name: products[index].name,
                      image: products[index].image,
                      price: products[index].price,
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return _productList();
  }
}
