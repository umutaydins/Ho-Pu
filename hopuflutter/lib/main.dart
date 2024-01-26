import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hopuflutter/views/artistspage.dart';
import 'package:hopuflutter/views/contactpage.dart';
import 'package:hopuflutter/views/eventpage.dart';
import 'package:hopuflutter/views/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            child: SvgPicture.asset('assets/svg/hopulogo.svg',
              width: MediaQuery.of(context).size.width/8,
              height:MediaQuery.of(context).size.width/8,),
          ),
          Container(
            height: screenSize.height * 0.05,
            color: Colors.red, // App bar altındaki renk
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavItem(0, 'Home'),
                buildNavItem(1, 'Events'),
                buildNavItem(2, 'Artists'),
                buildNavItem(3, 'Contact'),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: [
                HomePage(
                  onSeeAllEventsPressed: () {
                    _pageController.animateToPage(
                      1, // EventPage'in index'i
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
          
                EventPage(),
                
                ArtistsPage(),
               ContactPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(int index, String title) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _currentPageIndex == index ? Colors.white : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
