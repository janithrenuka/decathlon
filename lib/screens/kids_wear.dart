import 'package:decathlon/constraints.dart';
import 'package:decathlon/main.dart';
import 'package:decathlon/screens/settings_screen.dart';
import 'package:decathlon/widget/bottom_nav_item.dart';
import 'package:decathlon/widget/item_card.dart';
import 'package:flutter/material.dart';

class KidsWear extends StatelessWidget {
  const KidsWear({ 
    Key key 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                        children: <Widget>[
                          
                          Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: KShadowColor,
                                  ),
                              child: IconButton(
                                  icon: new Icon(Icons.arrow_back),
                                  color: Colors.black, 
                                  onPressed: () { 
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) {return HomeScreen();})
                                    );
                                  },
                              ),
                          ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "Back",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          .copyWith(
                                         fontWeight: FontWeight.w900,
                                         fontSize: 25,
                                        ),
                              ),
                            ),

                        ],
                    ),

                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.95,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,

                        children: <Widget>[

                            ItemCard(
                              title: "Kids Cycling Helmet - Blue",
                              price: "Rs 1,990",
                              imgSrc: "assets/images/kids/Kids Cycling Helmet - Blue.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Kids Scooter Frame",
                              price: "Rs 7,990",
                              imgSrc: "assets/images/kids/Kids Scooter Frame.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Kids Cycle 6 to 8 Years",
                              price: "Rs 24,990",
                              imgSrc: "assets/images/kids/KIDS CYCLE 6 to 8 Years.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Boys Short-Sleeved Gym T-Shirt - Navy",
                              price: "Rs 1,190",
                              imgSrc: "assets/images/kids/Boys Short-Sleeved Gym T-Shirt - Navy.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Girls Short-Sleeved Gym T-Shirt - White",
                              price: "Rs 1,190",
                              imgSrc: "assets/images/kids/Girls Short-Sleeved Gym T-Shirt - White.jpg",
                              stock: "Out Stock",
                              isStock: false,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Boys Gym Shorts - Black",
                              price: "Rs 990",
                              imgSrc: "assets/images/kids/Boys Gym Shorts - Black.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Boys Swim Shorts - Blue",
                              price: "Rs 1,490",
                              imgSrc: "assets/images/kids/BOYS SWIM SHORTS - BLUE.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Kids Walking Shoes - Black",
                              price: "Rs 3,990",
                              imgSrc: "assets/images/kids/kids walking shoes black.jpg",
                              stock: "Out Stock",
                              isStock: false,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Beginner Basketball Shoes - Black",
                              price: "Rs 3,990",
                              imgSrc: "assets/images/kids/Beginner Basketball Shoes - Black.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Kids Walking Shoes Navy-White",
                              price: "Rs 3,990",
                              imgSrc: "assets/images/kids/kids walking shoes navy-white.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Girl’s FLIP-FLOPS",
                              price: "Rs 1,590",
                              imgSrc: "assets/images/kids/Girl’s FLIP-FLOPS.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                        ],
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),

        bottomNavigationBar: Container( //navigatio bar
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
            color: KBottomBarColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 65,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              BottomNavItem(
                title: "Home",
                svgSrc: "assets/icons/home.svg",
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {return HomeScreen();}
                    ),
                  );
                },
              ),
              
              BottomNavItem(
                title: "Search",
                svgSrc: "assets/icons/search.svg",
                press: () {},
              ),
              
              BottomNavItem(
                title: "Settings",
                svgSrc: "assets/icons/Settings.svg",
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {return SettingScreen();}
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