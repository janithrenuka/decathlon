import 'package:decathlon/constraints.dart';
import 'package:decathlon/screens/all_sports.dart';
import 'package:decathlon/screens/kids_wear.dart';
import 'package:decathlon/screens/mens_wear.dart';
import 'package:decathlon/screens/womens_wear.dart';
import 'package:decathlon/widget/bottom_nav_item.dart';
import 'package:decathlon/widget/category_card.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Decathlon',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: KGreybackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: KTextColor)
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size; //this is set total height of device
      return Scaffold(
        
        body: Stack(
          children: <Widget>[
            Container(
                height: size.height * .45, // this container height is 45% of total app height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Color(0xFFF5CE88),
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/home.png"),
                    fit: BoxFit.fill // add image 
                  ),
                ),

                
            ),

            SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 170, 20, 0), // add padding horizontal
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[

                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 80),  
                          child: Text(
                              "Decathlon",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                      fontWeight: FontWeight.w900
                                  ),
                          ),
                        ),
                      ),

                      Expanded(
                        
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 1, // card ratio between up and down have to check again
                            crossAxisSpacing: 0,  // space between cards
                            mainAxisSpacing: 0,

                            children: <Widget>[

                              CategoryCard(  // card 1
                                title: "All Sports",
                                imgSrc: "assets/images/menwears.jpg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return AllSports();}
                                    ),
                                  );
                                },
                              ),

                              CategoryCard(  // card 2
                                title: "Men's",
                                imgSrc: "assets/images/mens.jpg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return MensWear();}
                                    )
                                  );
                                },
                              ),

                              CategoryCard(  // card 3
                                title: "Women's",
                                imgSrc: "assets/images/womens.jpg",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return WomensWear();}
                                    )
                                  );
                                },
                              ),

                              CategoryCard(  // card 4
                                title: "Kid's",
                                imgSrc: "assets/images/kids.png",
                                press: () {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) {return KidsWear();}
                                    )
                                  );
                                },
                              ),

                            ],
                        ),
                      ),

                      
                    ], 
                  ),
                ),
            ),
          ],
        ),

        bottomNavigationBar: Container( //navigatio bar
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 65,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              BottomNavItem(
                title: "Today",
                svgSrc: "assets/icons/Settings.svg",
              ),
              
              BottomNavItem(
                title: "All Exercises",
                svgSrc: "assets/icons/Settings.svg",
                press: () {},
              ),
              
              BottomNavItem(
                title: "Settings",
                svgSrc: "assets/icons/Settings.svg",
                press: () {},
              ),
            ]
            
          ),
        ),
      );
  }
}
