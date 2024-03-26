import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map<String, dynamic>> gridmap = [
    {
      "title": "Hydrangea in Talc White", //
      "price": "220.-",
      "image": "assets/images/White_Hydrangea.jpg",
    },
    {
      "title": "Purple Lilac", //
      "price": "1,500.-",
      "image": "assets/images/Purple_Lilac.jpg",
    },
    {
      "title": "Pink Cream Lilac", //
      "price": "250.-",
      "image": "assets/images/Pink_Lilac.jpg",
    },
    {
      "title": "Ilex Berry Branch", //
      "price": "270.-",
      "image": "assets/images/Winterberry_Branch.jpg",
    },
    {
      "title": "Tabletop Poinsettia Tree", //
      "price": "2,500.-",
      "image": "assets/images/Tabletop_Poinsettia.jpeg",
    },
    {
      "title": "Roses", //
      "price": "1,200.-",
      "image": "assets/images/Roses.jpeg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CART',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
            fontFamily: 'InriaSerif',
          ),
        ),
        backgroundColor: Color.fromRGBO(164, 159, 91, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(235, 236, 234, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 95, 0, 60),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/cart.png'),
                      width: 90,
                      height: 90,
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Your cart is currently empty.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'InriaSerif',
                              color: (Color.fromRGBO(83, 77, 80, 1)),
                            ),
                          )),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Return to',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'InriaSerif',
                                color: (Color.fromRGBO(83, 77, 80, 1)),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: onPressedShop,
                        child: Row(
                          children: [
                            Icon(Icons.g_mobiledata_rounded),
                            Text('Shop'),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                          backgroundColor: Colors.white,
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'InriaSerif',
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height: 406,
              width: double.infinity,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommended for You',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'InriaSerif',
                  color: (Color.fromRGBO(83, 77, 80, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 300),
              itemCount: gridmap.length,
              itemBuilder: (_, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                        child: Image.network(
                          gridmap[index]['image'],
                          height: 170,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridmap[index]['title'],
                              style:
                                  Theme.of(context).textTheme.subtitle1!.merge(
                                        TextStyle(fontWeight: FontWeight.w700),
                                      ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              gridmap[index]['price'],
                              style:
                                  Theme.of(context).textTheme.subtitle2!.merge(
                                        TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void onPressedShop() {}
}
