import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bogaziciSK extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("BOĞAZİÇİ SÜRÜCÜ KURSU",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/bogazici.jpg",),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: "Daha fazlası için", fonksiyon: () async {launchUrl(Uri.parse('https://elazigehliyet.com/'));},icon: Icons.web, width: 200, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: "Boğaziçi Şube İletişim hattı: +90(424) 502 07 31 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904245020731",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: "Merkez Şube İletişim hattı: +90(424) 236 23 32", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904242362332",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Boğaziçi Şube konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//Cumhuriyet,+154.+Sk.+No:17%2FA,+23200+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6694767,39.1017924,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x4076c15feb16a0d9:0xe67dc2f5ec5bddfb!2m2!1d39.1841934!2d38.6695056?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxOS4xIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Merkez Şube konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps?hl=tr&gl=tr&um=1&ie=UTF-8&fb=1&sa=X&geocode=KWksPfx7wHZAMVot6cXC41EW&daddr=Yeni+Mah.+Gazi+Caddesi+Y%C3%BCce+%C4%B0%C5%9Fhan%C4%B1,+No:36+kat+2,+23100+Elaz%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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