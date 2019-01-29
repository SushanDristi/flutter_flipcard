import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         fit: StackFit.expand,
         children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
             decoration: BoxDecoration(
               image: new DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage(
                   "images/image1.jpg"
                 ),
               ),
               
             ),
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 400.0,
                     child: FlipCard(
                       direction: FlipDirection.HORIZONTAL,
                       front: Material(
                         color: Colors.white.withOpacity(0.5),
                         borderRadius: BorderRadius.circular(24.0),
                         shadowColor: Color(0x802196F3).withOpacity(0.2),
                         child: _nameDetailsContainer(),
                       ),
                       back: Material(
                         color: Colors.white.withOpacity((0.5)),
                         borderRadius: BorderRadius.circular(24.0),
                         shadowColor: Color(0x802196F3),
                         child: _socialContainer(),
                       ),
                     ),
                   )
                 ],
               ),
             ),
           ),
         ],
       ),
    );
  }




Widget _nameDetailsContainer(){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 130.0,
          width: MediaQuery.of(context).size.width,

          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: ListTile(
                  leading: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://bit.ly/2MBn6uE"
                        )
                      ),
                      
                    ),
                    
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(top:32.0),
                    child: Text('Sushan Dristi',style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('Flutter Developer',style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              )
            ],
          ),

          decoration: BoxDecoration(
            color: Color(0xffff520d).withOpacity(0.8),
            borderRadius: BorderRadius.circular(24.0)
          ),
        ),
        Container(
           child: _detailContainer(),
        )
      ],
    ),
    );
}
Widget _socialContainer(){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 130.0,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:16.0),
                child: ListTile(
                  leading: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://bit.ly/2MBn6uE"
                        )
                      ),
                      
                    ),
                    
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(top:32.0),
                    child: Text('Social Links',style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('',style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              )
            ],
          ),
          

          decoration: BoxDecoration(
            color: Color(0xffff0d41).withOpacity(0.9),
            borderRadius: BorderRadius.circular(24.0)
          ),
          
        ),
        Container(
          child: _socialdetailContainer(),
        ),
      
      ],
    ),
    );
}


Widget _detailContainer(){

  return Column(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(top: 16.0,left: 8.0, right: 8.0),
      child: Text(
        'A forwart thinking developer offering great app building, integrating, testing, and supporting for mobile and tablet devices on the Android and IOS platform seeks position with a top technology firm',
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 20.0,
        )
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: Icon(
              FontAwesomeIcons.mapMarkerAlt, color: Color(0xffff520d),
            ),),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Container(
                child: Text('Baneshwor, KTM, Nepal',style: TextStyle(
                  color: Color(0xffff520d),
                  fontSize:20.0,
                ),),),
            )
          ],
        ),
        
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: Icon(
              Icons.email, color: Color(0xffff520d),
            ),),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Container(
                child: Text('dristisushan@gmail.com',style: TextStyle(
                  color: Color(0xffff520d),
                  fontSize:20.0,
                ),),),
            )
          ],
        ),
        
      ),
    )
  ],);
}

Widget _socialdetailContainer(){
  return Column(
    children: <Widget>[
      SizedBox( width:10.0),
        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Row(
            children: <Widget>[
              Container(child: Icon(
                FontAwesomeIcons.twitter, color: Color(0xffff0d41),
                size: 30.0,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text('/dristisushan',style: TextStyle(
                    color: Color(0xffff0d41),
                    fontSize: 24.0
                  ),),
                ),
              )
            ],
          ),
        ),
         SizedBox( width:10.0),
        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Row(
            children: <Widget>[
              Container(child: Icon(
                FontAwesomeIcons.github, color: Color(0xffff0d41),
                size: 30.0,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text('/dristisushan',style: TextStyle(
                    color: Color(0xffff0d41),
                    fontSize: 24.0
                  ),),
                ),
              )
            ],
          ),
        ),
         SizedBox( width:10.0),
        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Row(
            children: <Widget>[
              Container(child: Icon(
                FontAwesomeIcons.linkedin, color: Color(0xffff0d41),
                size: 30.0,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text('/dristisushan',style: TextStyle(
                    color: Color(0xffff0d41),
                    fontSize: 24.0
                  ),),
                ),
              )
            ],
          ),
        ),
         SizedBox( width:10.0),
        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Row(
            children: <Widget>[
              Container(child: Icon(
                FontAwesomeIcons.facebook, color: Color(0xffff0d41),
                size: 30.0,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text('/dristisushan',style: TextStyle(
                    color: Color(0xffff0d41),
                    fontSize: 24.0
                  ),),
                ),
              )
              
            ],
          ),
        ),
      SizedBox( width:10.0),
        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Row(
            children: <Widget>[
              Container(child: Icon(
                FontAwesomeIcons.instagram, color: Color(0xffff0d41),
                size: 30.0,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text('/dristisushan',style: TextStyle(
                    color: Color(0xffff0d41),
                    fontSize: 24.0
                  ),),
                ),
              )
              
            ],
          ),
        ),
    ],
  );
}


}