import 'package:decathlon/constraints.dart';
import 'package:decathlon/main.dart';
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
                              title: "Girls Gym Cap - Pink Print",
                              price: "Rs 1,290",
                              imgSrc: "assets/images/womens/Girls Gym Cap - Pink Print.jpg",
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