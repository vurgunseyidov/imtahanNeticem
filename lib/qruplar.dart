import 'package:bal_hesablayici/besinci_qrup.dart';
import 'package:bal_hesablayici/birinci_qrup.dart';
import 'package:bal_hesablayici/dorduncu_qrup.dart';
import 'package:bal_hesablayici/ikinci_qrup.dart';
import 'package:bal_hesablayici/ucuncu_qrup.dart';
import 'package:flutter/material.dart';

class Qruplar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(), body: buildBody(context));
  }

  AppBar buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      title: Text(
        "11-ci sinif",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.teal, Colors.indigo],
        ),
      ),

      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              Row(
                children: [
                  Image.asset(
                    'sekil/sessile.png',
                    height: 40,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "DIM",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

               */
              SizedBox(height: 70,),
              Text(
                "İxtisasınıza uyğun qrupu seçin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 50),

              ElevatedButton(
                onPressed: () {
                  birinciQrupSehifesi(context);
                },
                child: Text(
                  "I QRUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  ikinciQrupSehifesi(context);
                },
                child: Text(
                  "II QRUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  ucuncuQrupSehifesi(context);
                },
                child: Text(
                  "III QRUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  dorduncuQrupSehifesi(context);
                },
                child: Text(
                  "IV QRUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  besinciQrupSehifesi(context);
                },
                child: Text(
                  "V QRUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void birinciQrupSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu = MaterialPageRoute(builder: (BuildContext context){
      return BirinciQrup();
    });
    Navigator.push(context, _sehifeYolu);
  }

  void ikinciQrupSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu = MaterialPageRoute(builder: (BuildContext context){
      return IkinciQrup();
    });
    Navigator.push(context, _sehifeYolu);
  }

  void ucuncuQrupSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu = MaterialPageRoute(builder: (BuildContext context){
      return UcuncuQrup();
    });
    Navigator.push(context, _sehifeYolu);
  }

  void dorduncuQrupSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu = MaterialPageRoute(builder: (BuildContext context){
      return DorduncuQrup();
    });
    Navigator.push(context, _sehifeYolu);
  }

  void besinciQrupSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu = MaterialPageRoute(builder: (BuildContext context){
      return BesinciQrup();
    });
    Navigator.push(context, _sehifeYolu);
  }
}
