import 'package:decathlon/constraints.dart';
import 'package:decathlon/main.dart';
import 'package:decathlon/widget/bottom_nav_item.dart';
import 'package:decathlon/widget/setting_item.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({ 
    Key key 
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KGreybackgroundColor,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[

                        Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
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
                            "Settings",
                            style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                     fontWeight: FontWeight.w900
                                    ),
                          ),
                        ),
                      ],
                    ),
                  
                      Expanded(
                              child: GridView.count(
                                
                              crossAxisCount: 1,
                              childAspectRatio: 5.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,

                                children: <Widget>[
                                  
                                  SettingItem(
                                    title: "Janith Renuka",
                                    settingIcon: Icons.account_circle_outlined,
                                    iconColor: Colors.blue,
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Account Settings",
                                    settingIcon: Icons.precision_manufacturing_outlined,
                                    iconColor: Colors.blue,
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Help & Feedback",
                                    settingIcon: Icons.help_outline,
                                    iconColor: Colors.blue,
                                    press: () {},
                                  ),

                                  SettingItem(
                                    title: "Conatct Us",
                                    settingIcon: Icons.contacts_outlined,
                                    iconColor: Colors.blue,
                                    press: () {},
                                  ),

                                ],

                              )
                      ),

                      // ClipRRect(
                      //   child: Container(
                      //     //height: size.height * .45, // this container height is 45% of total app height
                      //     decoration: BoxDecoration(
                      //       // borderRadius: BorderRadius.only(
                      //       //   bottomLeft: Radius.circular(30),
                      //       //   bottomRight: Radius.circular(30),
                      //       // ),
                      //       //color: Color(0xFFF5CE88),
                      //       image: DecorationImage(
                      //         alignment: Alignment.bottomCenter,
                      //         image: AssetImage("assets/images/sports.png"),
                      //         //fit: BoxFit.fill // add image 
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                              "Decathlon © 2021",
                              style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                         fontWeight: FontWeight.w500
                                        ),
                          ),
                        ),
                      ),

                  ],

                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container( //navigation bar
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
                press: () {},
              ),
            ]
            
          ),
        ),
          
    );
  }
}