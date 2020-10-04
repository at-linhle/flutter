import 'package:flutter/material.dart';

class IntroduceCake extends StatelessWidget {
  IntroduceCake({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    width: screenSize.width / 100,
                    height: screenSize.height / 22,
                    color: Colors.blue,
                    margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                  ),
                  Text(
                    'Cake News',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
            child: Container(
              margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => Card(
                  color: Colors.white,
                  child: Container(
                    width: screenSize.width / 2.13,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 15.0,
                          right: 10.0,
                          child: Text(
                            'New',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        Positioned(
                          top: 30.0,
                          width: screenSize.width / 2,
                          height: screenSize.height / 7,
                          child: Center(
                            child: Image.network(
                              'https://cdn.shopify.com/s/files/1/0170/7494/products/IMG_2726d_2048x.jpg?v=1565138986',
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          width: screenSize.width / 2,
                          height: screenSize.height / 12,
                          child: Container(
                            color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Butter Cake',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '\$ ${(index + 1) * 10}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    width: screenSize.width / 100,
                    height: screenSize.height / 22,
                    color: Colors.blue,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                    child: Text(
                      'Cake is bought a lot',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15.0,
                              right: 10.0,
                              child: Text(
                                'Hot',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            Positioned(
                              top: 30.0,
                              width: screenSize.width / 2.06,
                              height: screenSize.height / 8,
                              child: Center(
                                child: Image.network(
                                  'https://cdn.shopify.com/s/files/1/0170/7494/products/IMG_2726d_2048x.jpg?v=1565138986',
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 43.0,
                              child: Container(
                                width: screenSize.width / 2.06,
                                child: Column(
                                  children: [
                                    Text(
                                      'Butter Cake',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Text(
                                      '\$ ${(index + 1) * 10}',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              width: screenSize.width / 2,
                              height: 40.0,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 25.0, 0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      width: 0.2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.shopping_cart),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Add to cart',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.2, color: Colors.grey),
              ),
              color: Colors.white,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.cake),
                  title: Text('My Cake'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contact_phone),
                  title: Text('Contact'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
