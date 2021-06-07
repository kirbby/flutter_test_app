import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem(
      {Key? key, required this.name, this.image = "", this.price = 0})
      : super(key: key);

  final String name;
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: 120,
                height: 120,
                child: Image.asset('assets/images/' + image)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price.toString()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Stack(children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Kaufen'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ]),
            )
          ],
        )
      ],
    );
  }
}
