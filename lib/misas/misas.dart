import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class misas extends StatelessWidget{
  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("MİSAŞ",
            style: TextStyle(fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),
      ),
      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/misas.jpg"),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Eve sipariş ve dahası için", fonksiyon: () async {launchUrl(Uri.parse("https://misassanalmarket.com/"));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +90(549) 523 01 01", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905495230101",));}, icon: Icons.call, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Sosyal medya için tıklayın", fonksiyon: () async {launchUrl(Uri.parse("https://www.instagram.com/misasmarket/"));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
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