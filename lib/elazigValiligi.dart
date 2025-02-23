import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class elazigValiligi extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("ELAZIĞ VALİLİĞİ",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: " İletişim hattı: +905323454041 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905323454041",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//Ya%C5%9Far+Elektrik+ve+Dekorasyon,+%C4%B0zzet+Pa%C5%9Fa,+%C5%9Eht.+Y%C3%BCzba%C5%9F%C4%B1+Tahir+Cd.+No:15%2FA,+23100+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6756355,39.2173536,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x4076c1b627f2ee2f:0xaa834a5c2ef4ea69!2m2!1d39.2223688!2d38.6764484!3e0?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxOC4wIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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