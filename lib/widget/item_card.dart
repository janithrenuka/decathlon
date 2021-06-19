import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String imgSrc;
  final String stock;
  final bool isStock;
  final Function press;
  const ItemCard({ 
    Key key, 
    this.title,  
    this.imgSrc, 
    this.press, 
    this.price,
    this.stock,
    this.isStock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Container(
          //padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            //border: Border.all(color: Color(0xFFF0F8FF)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: Colors.grey.withOpacity(1),
            )],
          ),

          child: Material(
            color: Colors.transparent,
            child: InkWell( //add hover color on tap
              onTap: press,
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 92,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imgSrc),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                    Spacer(),

                    Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                    ),

                    Text(
                        price,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                    ),

                    Text(
                        stock,
                        textAlign: TextAlign.center,
                        
                        style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(
                            fontSize: 16, 
                            fontWeight: FontWeight.bold,
                            color: isStock? Colors.green : Colors.red,
                          ),
                    ),

                  ],
                ),
            ),
          ),
      ),
        ),
    );
  }
}