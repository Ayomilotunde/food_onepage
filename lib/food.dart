import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int selectedIndex = 0;

  Future<void> _get() {
    print('refreshed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            title: Text(
              'Near Me',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza),
            title: Text('Order'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.orange,
        onTap: onItemTapped,
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
                text: 'Deliver to:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(
                    text: ' B5 Mallam Makai road, 123 Qua...',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                    ),
                  )
                ]),
          )),
      body: RefreshIndicator(
        onRefresh: _get,
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ' 4 Nearby Restaurants   >',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('image/pizza.jpg'),
                            Text(
                              ' First Hammal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Healthy',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star_border),
                                Icon(Icons.star_border),
                                Text('   3 reviews')
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('image/pizza.jpg'),
                            Text(
                              'Rasheedat Restaurant',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'African Dished , Beverages',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star_border),
                                Icon(Icons.star_border),
                                Text('   3 reviews')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ' Browse by Cuisine   >',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('image/pizza.jpg'),
                            Text(
                              ' Sandwiches',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' 1 restaurant',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('image/pizza.jpg'),
                            Text('Barbeque'),
                            Text(
                              ' 1 restaurant',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
