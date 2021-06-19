import 'package:decathlon/constraints.dart';
import 'package:decathlon/main.dart';
import 'package:decathlon/widget/bottom_nav_item.dart';
import 'package:decathlon/widget/item_card.dart';
import 'package:flutter/material.dart';

class MensWear extends StatelessWidget {
  const MensWear({ 
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
                              title: "Polo Shirt - Black",
                              price: "Rs 1,690",
                              imgSrc: "assets/images/mens/Golf Short Sleeve Temperate Weather Polo Shirt - Black.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Tank Top - Blue",
                              price: "Rs 1,490",
                              imgSrc: "assets/images/mens/Energy Fitness Tank Top - Blue.jpg",
                              stock: "Out Stock",
                              isStock: false,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Gym T-Shirt - Navy",
                              price: "Rs 1,190",
                              imgSrc: "assets/images/mens/Short-Sleeved Gym T-Shirt - Navy.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Cycling Short-Sleeved Jersey - Black",
                              price: "Rs 1,190",
                              imgSrc: "assets/images/mens/Cycling Short-Sleeved Jersey - Black.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Surfing Water T-Shirt - Blue",
                              price: "Rs 1,990",
                              imgSrc: "assets/images/mens/Surfing Water T-Shirt - Blue.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Hunting Belt - Green",
                              price: "Rs 1,990",
                              imgSrc: "assets/images/mens/HUNTING BELT GREEN.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Men's Short - Navy",
                              price: "Rs 1,490",
                              imgSrc: "assets/images/mens/mensShort.jpg",
                              stock: "Out Stock",
                              isStock: false,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Basic Swim Brief - Blue",
                              price: "Rs 1,490",
                              imgSrc: "assets/images/mens/MENS BASIC SWIM BRIEFS - BLUE.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Running Trousers - Balck",
                              price: "Rs 3,290",
                              imgSrc: "assets/images/mens/MENS RUNNING TROUSERS - BLACK.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Tracksuit Bottoms - Navy Blue",
                              price: "Rs 1,690",
                              imgSrc: "assets/images/mens/Fitness Cardio Tracksuit Bottoms - Navy Blue.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Mens Running Shoes - Grey",
                              price: "Rs 3,490",
                              imgSrc: "assets/images/mens/MENS RUNNING SHOES - GREY.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "High country walking socks - Grey",
                              price: "Rs 590",
                              imgSrc: "assets/images/mens/High country walking socks - grey.jpg",
                              stock: "Out Stock",
                              isStock: false,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Mountain Waterproof Shoes",
                              price: "Rs 9,490",
                              imgSrc: "assets/images/mens/waterproof shoes.jpg",
                              stock: "In Stock",
                              isStock: true,
                              press: () {},
                            ),

                            ItemCard(
                              title: "Mens FLIP-FLOPS - Black",
                              price: "Rs 1,990",
                              imgSrc: "assets/images/mens/Mens FLIP-FLOPS.jpg",
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