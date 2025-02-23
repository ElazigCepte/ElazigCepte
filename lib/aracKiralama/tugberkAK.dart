import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class tugberkAK extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("Tuğberk Araç Kiralama",
            style: TextStyle(fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/tugberkAK.jpg"),

            SizedBox(height: 10,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Daha fazlası için", fonksiyon: () async{ launchUrl(Uri.parse("https://www.otokiralamaelazig.net/"));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +90(539) 689 34 34", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905396893434",));}, icon: Icons.call, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse("https://www.google.com/maps/dir/38.692351,39.1716235/Elaz%C4%B1%C4%9F+Rent+A+Car+-+Tu%C4%9Fberk+Ara%C3%A7+Kiralama,+No:%2F5+R%C4%B1zaiye,+MERKEZ,+23200+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6854208,39.1555942,13z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x4076c0881666c18f:0x6a027db424867c69!2m2!1d39.222202!2d38.6792367?entry=ttu&g_ep=EgoyMDI1MDIxOS4xIKXMDSoASAFQAw%3D%3D"));},icon: Icons.location_on_outlined, width: 200, height: 50),
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