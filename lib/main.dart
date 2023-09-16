import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Shopping List'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            String itemName;
            switch (index) {
              case 0:
                itemName = 'Apples';
                break;
              case 1:
                itemName = 'Bananas';
                break;
              case 2:
                itemName = 'Bread';
                break;
              case 3:
                itemName = 'Milk';
                break;
              case 4:
                itemName = 'Eggs';
                break;
              default:
                itemName = 'Item ${index + 1}';
            }
            return ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text(
                itemName,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(10),
              tileColor: Colors.white,
            );
          },
        ),
      ),
    );
  }
}



