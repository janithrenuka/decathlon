import 'package:decathlon/main.dart';
import 'package:decathlon/widget/bottom_nav_item.dart';
import 'package:decathlon/widget/sport_card.dart';
import 'package:flutter/material.dart';

class AllSports extends StatelessWidget {
  const AllSports({ 
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
                                  //color: KShadowColor,
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
                        childAspectRatio: 1.30,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,

                        children: <Widget>[

                          SportCard(  // card 1
                              title: "Cricket",
                              imgSrc: "assets/images/cricket.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 2
                              title: "Baseball",
                              imgSrc: "assets/images/baseball.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 3
                              title: "Basketball",
                              imgSrc: "assets/images/basketball.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 4
                              title: "Table Tennis",
                              imgSrc: "assets/images/tt.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 5
                              title: "Tennis",
                              imgSrc: "assets/images/tennis.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 6
                              title: "Football",
                              imgSrc: "assets/images/football.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 5
                              title: "Badminton",
                              imgSrc: "assets/images/badminton.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 6
                              title: "Swimming",
                              imgSrc: "assets/images/swimming.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 5
                              title: "Boxing",
                              imgSrc: "assets/images/boxing.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 6
                              title: "Hockey",
                              imgSrc: "assets/images/hockey.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 5
                              title: "Squash",
                              imgSrc: "assets/images/squash.jpg",
                              press: () {},
                          ),

                          SportCard(  // card 6
                              title: "Cycling",
                              imgSrc: "assets/images/cycling.jpg",
                              press: () {},
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              )
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