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

                  butonOlustur(text: "SAĞLIK", fonksiyon: () => openNewTab(context , hastaneler()), icon: Icons.local_hospital_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10),

                  butonOlustur(text: "KAFE", fonksiyon: ()=> openNewTab(context, cafeler()), icon: Icons.local_cafe_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(//3. SATIR
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "KAMU  ", fonksiyon: () => openNewTab(context , hastaneler()), icon: Icons.account_balance_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "SPOR", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.sports_kabaddi, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "KÜLTÜR & SANAT", fonksiyon: () => openNewTab(context, hastaneler()) , icon: Icons.travel_explore, iconSize: 50, width: 190, height: 190.0),

                  SizedBox(width: 10,),

                  butonOlustur(text: "HABERLER", fonksiyon: ()=> openNewTab(context, hastaneler()), icon: Icons.newspaper, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "GEZELİM GÖRELİM", fonksiyon: ()=> openNewTab(context, hastaneler()), icon: Icons.map, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "USTA ÇAĞIR", fonksiyon: ()=> openNewTab(context, hastaneler()), icon: Icons.handyman_outlined, iconSize: 95, width: 190, height: 190),
                  
                  SizedBox(width: 10,),

                  butonOlustur(text: "ULAŞIM", fonksiyon:()=> openNewTab(context, hastaneler()) , icon: Icons.directions_car, iconSize: 100, width: 190, height: 190)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  
                  butonOlustur(text: "KAMPANYA", fonksiyon: ()=> openNewTab(context, hastaneler()), icon: Icons.sell_outlined, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text:"Konaklama" , fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.hotel, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "KİŞİSEL BAKIM", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.spa_outlined, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),

                  butonOlustur(text: "ETKİNLİKLER", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.event_available_outlined , iconSize: 100, width: 190, height: 190),
                  
                  SizedBox(width: 10,),
                  
                  butonOlustur(text: "DUYURULAR", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.campaign_outlined, iconSize: 100, width: 190, height: 190)
                
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),

                  butonOlustur(text: "CEPTE FIRAT", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.school_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "EĞİTİM", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.book_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                SizedBox(width: 10,),
                butonOlustur(text: "OTO SERVİS", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.car_repair, iconSize: 50, width: 130, height: 190),
                SizedBox(width: 10,),
                butonOlustur(text: "AKARYAKIT", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.local_gas_station_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,),
                  butonOlustur(text: "ARAÇ KİRALA", fonksiyon: ()=> openNewTab(context , hastaneler()), icon: Icons.car_rental_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,)
                ],
              )
              ,SizedBox(height: 10,)
            ]
        )
    );
  }

  void openNewTab(BuildContext context, Widget page) {
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