import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class akgun extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("AKGÜN OTEL",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/akgun.jpg",),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Daha fazla bilgi için", fonksiyon: () async {launchUrl(Uri.parse('https://www.akgunelazighotel.com/'));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: " İletişim hattı: +90 424 248 20 00 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904242482000",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps?gs_lcrp=EgZjaHJvbWUqGAgBEC4YQxivARjHARiABBiKBRiYBRiZBTIGCAAQRRg5MhgIARAuGEMYrwEYxwEYgAQYigUYmAUYmQUyCggCEC4YsQMYgAQyBwgDEAAYgAQyDQgEEC4YrwEYxwEYgAQyBwgFEAAYgAQyBwgGEAAYgAQyBwgHEAAYgAQyBwgIEAAYjwIyBwgJEAAYjwLSAQg0ODgyajBqN6gCCLACAfEFyDb4XhxtDAM&um=1&ie=UTF-8&fb=1&gl=tr&sa=X&geocode=KUffFVc5wHZAMRrzfM0e35zz&daddr=%C3%87ayda%C3%A7%C4%B1ra,+%C5%9Eht.+Korg.+Hulusi+Say%C4%B1n+Blv.+No:20,+23000+Elaz%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F'));},icon: Icons.location_on_outlined, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            )
          ]
      ),
    );
  }
  Flexible butonOlustur({required String text, required VoidCallback fonksiyon ,IconData? icon, required width , required height}){
    int buttonColor= 0xFF800020;
    int textColor= (0xFFFFFFFF) ;
    return Flexible(
        child: ElevatedButton(
          onPressed: fonksiyon,
          child: Row(
            children: [
              Icon(icon, color: Colors.white,),
              SizedBox(width: 10,),
              Text(text),
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