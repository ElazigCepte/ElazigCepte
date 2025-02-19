import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class asbirinCafe extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("ASBİRİN CAFE",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/asbirin.jpg"),
            SizedBox( height: 5,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Daha fazlası için tıklayın.              ", fonksiyon: (){launchUrl(Uri.parse("https://www.facebook.com/asbirin23/?locale=tr_TR"),);} ,icon: Icons.web, width: 110, height: 50),
                SizedBox(width: 10,)
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: "İletişim : +904242416622            ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904242416622",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi                                  ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//Asbirin+Cafe+ve+%C3%87aybah%C3%A7esi,+%C3%9Cniversite,+23200+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6740932,39.2010733,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x4076c06a42128c6d:0xcd3e252e513d75ac!2m2!1d39.2010656!2d38.6741232!3e0?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxMi4wIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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
              Text(text),
              SizedBox(width: 100,),
              Icon(icon),
              SizedBox(width: 10,)
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