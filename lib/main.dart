import 'package:elazigcepte/hastaneler.dart';
import "package:elazigcepte/cafeler.dart";
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: " ",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int buttonColor= 0xFF800020;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(buttonColor),
          title:
          Text(
            "Elazığ Cepte",
            style:  TextStyle(
                fontSize: 30,
                color: Colors.white
            ),
          ),
          centerTitle: true,
        ),

        body: ListView(
            children: [
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),

                  butonOlustur(text: "HASTANELER", fonksiyon: () => openNewTa(context , hastaneler()), icon: Icons.local_hospital_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10),

                  butonOlustur(text: "KÜLTÜR & SANAT", fonksiyon: () => openNewTa(context, hastaneler()) , icon: Icons.travel_explore, iconSize: 100.0, width: 190, height: 190.0),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(//3. SATIR
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "KAMU  ", fonksiyon: () => openNewTa(context , hastaneler()), icon: Icons.account_balance_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "SPOR", fonksiyon: ()=> openNewTa(context , hastaneler()), icon: Icons.sports_kabaddi, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "KAFE", fonksiyon: ()=> openNewTa(context, cafeler()), icon: Icons.local_cafe_outlined, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "HABERLER", fonksiyon: ()=> openNewTa(context, hastaneler()), icon: Icons.newspaper, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "EĞİTİM", fonksiyon: ()=> openNewTa(context, hastaneler()), icon: Icons.class_outlined, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "USTA ÇAĞIR", fonksiyon: ()=> openNewTa(context, hastaneler()), icon: Icons.handyman_outlined, iconSize: 95, width: 190, height: 190),

                  // butonOlustur(text: "text", fonksiyon:()=> openNewTa(context, hastaneler()) , icon: icon, iconSize: iconSize, width: width, height: height)
                  SizedBox(width: 10,),

                  butonOlustur(text: "HESABIM", fonksiyon:()=> openNewTa(context, hastaneler()) , icon: Icons.person, iconSize: 100, width: 190, height: 190)
                ],
              ),
              SizedBox(height: 10,),

              SizedBox(height: 10,)
            ]
        )
    );
  }

  void openNewTa(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Flexible butonOlustur({required String text, required VoidCallback fonksiyon ,required icon,required iconSize, required width , required height}){
    int buttonColor= 0xFF800020;
    int textColor= (0xFFFFFFFF) ;
    return Flexible(
        child: ElevatedButton(
          onPressed: fonksiyon,
          child: Column(
            children: [
              Icon(icon, size: iconSize.toDouble(),),
              Text(text)
            ],
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(),
              minimumSize: Size(width.toDouble(), height.toDouble()),
              backgroundColor: Color(buttonColor),
              foregroundColor: Color(textColor)
          ),
        )
    );
  }
}