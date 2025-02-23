import 'package:elazigcepte/aracKiralama/aracKiralama.dart';
import 'package:elazigcepte/cepteFirat/cepteFirat.dart';
import 'package:elazigcepte/cicekci/cicekci.dart';
import 'package:elazigcepte/egitim/egitim.dart';
import 'package:elazigcepte/eglence/eglence.dart';
import 'package:elazigcepte/elazigiTaniyalim/elazigiTaniyalim.dart';
import 'package:elazigcepte/evDekorasyon/evDekorasyon.dart';
import 'package:elazigcepte/haber/haber.dart';
import 'package:elazigcepte/kamu/kamu.dart';
import 'package:elazigcepte/kisiselBakim/bakim.dart';
import 'package:elazigcepte/konaklama/konaklama.dart';
import 'package:elazigcepte/misas/misas.dart';
import 'package:elazigcepte/otoServis/otoServis.dart';
import 'package:elazigcepte/saglik/saglik.dart';
import "package:elazigcepte/kafeRestorant/cafeler.dart";
import 'package:elazigcepte/spor/spor.dart';
import 'package:elazigcepte/ulasim/ulasim.dart';
import 'package:elazigcepte/ustaCagir/usta.dart';
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
            "ELAZIĞ CEPTE",
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

                  butonOlustur(text: "SAĞLIK", fonksiyon: () => openNewTab(context , saglik()), icon: Icons.local_hospital_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10),

                  butonOlustur(text: "KAFE & Restorant", fonksiyon: ()=> openNewTab(context, cafeler()), icon: Icons.local_cafe_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "KAMU  ", fonksiyon: () => openNewTab(context , kamu()), icon: Icons.account_balance_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "SPOR", fonksiyon: ()=> openNewTab(context , spor()), icon: Icons.sports_kabaddi, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "ELAZIĞ'I TANIYALIM", fonksiyon: () => openNewTab(context, elazigiTaniyalim()) , icon: Icons.travel_explore, iconSize: 50, width: 190, height: 190.0),

                  SizedBox(width: 10,),

                  butonOlustur(text: "HABERLER", fonksiyon: ()=> openNewTab(context, haber()), icon: Icons.newspaper, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "GEZELİM GÖRELİM", fonksiyon: ()=> openNewTab(context, saglik()), icon: Icons.map, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  SizedBox(width: 10,),

                  butonOlustur(text: "USTA ÇAĞIR", fonksiyon: ()=> openNewTab(context, usta()), icon: Icons.handyman_outlined, iconSize: 95, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "ULAŞIM", fonksiyon:()=> openNewTab(context, ulasim()  ) , icon: Icons.directions_transit_filled_outlined, iconSize: 100, width: 190, height: 190),
                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),

                  butonOlustur(text: "GİYİM", fonksiyon: ()=> openNewTab(context, saglik()), icon: Icons.sell_outlined, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text:"Konaklama" , fonksiyon: ()=> openNewTab(context , konaklama()), icon: Icons.hotel, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "KİŞİSEL BAKIM", fonksiyon: ()=> openNewTab(context , bakim()), icon: Icons.spa_outlined, iconSize: 50, width: 130, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),

                  butonOlustur(text: "ETKİNLİKLER", fonksiyon: ()=> openNewTab(context , saglik()), icon: Icons.event_available_outlined , iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "DUYURULAR", fonksiyon: ()=> openNewTab(context , saglik()), icon: Icons.campaign_outlined, iconSize: 100, width: 190, height: 190),
                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),

                  butonOlustur(text: "CEPTE FIRAT", fonksiyon: ()=> openNewTab(context , cepteFirat()), icon: Icons.school_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,),

                  butonOlustur(text: "EĞİTİM", fonksiyon: ()=> openNewTab(context , egitim()), icon: Icons.book_outlined, iconSize: 100, width: 190, height: 190),

                  SizedBox(width: 10,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                SizedBox(width: 10,),
                butonOlustur(text: "ARACA DAİR HER ŞEY", fonksiyon: ()=> openNewTab(context , otoServis()), icon: Icons.car_repair, iconSize: 50, width: 130, height: 190),
                SizedBox(width: 10,),
                  butonOlustur(text: "ARAÇ KİRALA", fonksiyon: ()=> openNewTab(context , aracKiralama()), icon: Icons.car_rental_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,),
                  butonOlustur(text: "EĞLENCE", fonksiyon: ()=>openNewTab(context , eglence()), icon: Icons.sports_esports_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  butonOlustur(text: "ÇİÇEKÇİ", fonksiyon: ()=>openNewTab(context , cicekci()), icon: Icons.local_florist_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,),
                  butonOlustur(text: "EV DEKORASYON", fonksiyon: ()=>openNewTab(context, evDekorasyon()), icon: Icons.chair_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,),
                  butonOlustur(text: "MİSAŞ", fonksiyon: ()=>openNewTab(context , misas()), icon: Icons.sports_esports_outlined, iconSize: 50, width: 130, height: 190),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 10,)
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
              Icon(icon, size: iconSize.toDouble(), color: Colors.white,),
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