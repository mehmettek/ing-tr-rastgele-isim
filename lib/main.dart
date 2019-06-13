import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "Rastgele İsim Generator",
       home:MyHomePage(),
     debugShowCheckedModeBanner: false,
     );
  }
}
class  MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentlang="tr";
  String ad="Mehmet";
  String soyad="Tek";
  var trad=["Mehmet","Kemal","Ahmet","Mert","Deniz","Berkay","Onur","Doğan","Ayşe","Fatma","Begüm","Dilara","Tuğçe","Demet","Sevgi"];
  var trsoyad=["Tek","Acar","Adıgüzel","Demir","Deniz","Ak","Akpınar","Akıllı"];
    var ingad=["John","Tom","Kevin","Creed","Dwight","Jim","Angela","Oscar","Pam","Toby","Ryan","Kelly","Meredith","Holly","Karen","Stanley"];
  var ingsoyad=["Krasinksi","Beesly","Schrute","Halpert","Scoot","Bernard","Malone","Howard","Kappor","Hudson","Palmer","Flax","Martin"];
static var rnd=new Random();
int sayi=rnd.nextInt(8);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("İng-Tr Random Name"),
      centerTitle: true,
      ),
      body: Container(
        child:Column(
          children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              highlightColor: Colors.yellow,
              color: Colors.red,
              child: Text("İng"),
              onPressed: (){
                setState(() {
                 currentlang="ing"; 
                });
              },
            ),
            FlatButton(
              highlightColor: Colors.red,
              color: Colors.yellow,
              child: Text("Tr"),
              onPressed: (){
                setState(() {
                 currentlang="tr"; 
                });
              },
            ),
           ],
        ),
        SizedBox(height: 50.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

        Text(ad,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
        Padding(padding: EdgeInsets.only(left: 20.0),),
        Text(soyad,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
          ],
        ),
        SizedBox(height: 50.0,),
            FlatButton(
              highlightColor: Colors.red,
              color: Colors.teal,
              child: Text("Getir"),
              onPressed: (){
                    uret();
               },
            ),
        
        ],
        ),  
      ),
    );
  }
  void uret(){
    if(currentlang=="tr"){
      setState(() {
        ad=trad[sayi=rnd.nextInt(trad.length)];
        soyad=trsoyad[sayi=rnd.nextInt(trsoyad.length)];
      });
       }else
       {
         setState(() {
        ad=ingad[sayi=rnd.nextInt(ingad.length)];
        soyad=ingsoyad[sayi=rnd.nextInt(ingsoyad.length)];
      });
       }
  }
}