import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:florbloom_app/forgot_password.dart';
import 'package:florbloom_app/search.dart';
import 'package:florbloom_app/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:florbloom_app/signin.dart';
import 'package:florbloom_app/signup.dart';
import 'package:florbloom_app/screens/splash_page.dart';
import 'package:florbloom_app/scroll_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    {"id": 1, "image_path": 'images/pic2.jpg'},
    {"id": 2, "image_path": 'images/pic6.jpg'},
    {"id": 3, "image_path": 'images/pic4.jpg'},
    {"id": 4, "image_path": 'images/pic1.png'}
  ];
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

  final CarouselController carouselController = CarouselController();

  PageController pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(164, 159, 91, 1),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DataSearch()));
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.5),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 16,
                      ),
                    ),
                    Text(
                      'Search Products',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'InriaSerif',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(83, 77, 80, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 32,
                  width: 75,
                  child: const Center(
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'InriaSerif',
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 1,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.grey
                                : Colors.white),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Best Sellers',
              style: TextStyle(
                fontSize: 26,
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
                        style: Theme.of(context).textTheme.subtitle1!.merge(
                        TextStyle(fontWeight: FontWeight.w700),
                      ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        gridmap[index]['price'],
                        style: Theme.of(context).textTheme.subtitle2!.merge(
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
        ]
        ),
      ),
      
    );
  }
}
