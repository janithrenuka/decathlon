import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final imgSrc;
  final title;
  final Function press;
  const CategoryCard( { 
    Key key, 
    this.imgSrc, 
    this.title, 
    this.press, 

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
        child: Container(
        //padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFF0F8FF)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 110,
                        width: 120,
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
                    )
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}  
        