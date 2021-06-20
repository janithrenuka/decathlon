import 'package:decathlon/constraints.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final IconData settingIcon;
  final Function press;
  final Color iconColor;
  const SettingItem({
    Key key, 
    this.title, 
    this.press, 
    this.settingIcon, 
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(20),
        child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: KShadowColor,
          )],
        ),

        child: Material(
          
          color: Colors.transparent,
          child: InkWell( //add hover color on tap
            onTap: press,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: iconColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          settingIcon,
                          //Icon settingIcon,
                          color: Colors.white,
                        ),

                    ),

                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                            .textTheme
                            .headline5
                            
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