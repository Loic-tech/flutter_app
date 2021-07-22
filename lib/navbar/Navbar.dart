import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>1200){
            return DesktopNavbar();
          }
          else if(constraints.maxWidth > 800 && constraints.maxWidth < 1200){
            return DesktopNavbar();
          }
          else{
            return MobileNavBar();
          }
        },
    );
  }
}

class DesktopNavbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1600),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Website By Loïc J.'
              , style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30
              ),
            ),

            Row(
              children: [
                Text('Home',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                SizedBox(
                  width: 30,
                )
                ,
                Text('About Us',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                SizedBox(
                  width: 30,
                )
                ,
                Text('Portfolio',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0)),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );

  }
}

class MobileNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
          child: Column(
            children: [
              Text('Website By Loïc J.'
                , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Home',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                    SizedBox(
                      width: 30,
                    )
                    ,
                    Text('About Us',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                    SizedBox(
                      width: 30,
                    )
                    ,
                    Text('Portfolio',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),

                  ],
                ) ,
              )

            ],
          )
      )
      ,
    );
  }
}


