import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double width){
    return <Widget> [
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Website Developers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              color: Colors.white
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text('We have taken each every project handed over to us as a challenge, which has helped us achieve a high project success rate.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),) ,
            ),
            MaterialButton(
                onPressed: (){},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0) ,
                    child: Text(
                      'Our Packages',
                      style: TextStyle(
                          color: Colors.red
                      ),
                    )
                )
                ,
                )
          ],
        ),
      ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Image.asset("assets/image-two.jpg",
            width: 200,
            height: 200),
          )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        }
        else{
          return Column(
            children: pageChildren(constraints.biggest.width) ,
          );
        }
      },
    );
  }
}
