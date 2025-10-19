import 'package:bal_hesablayici/orta_ixtisas.dart';
import 'package:bal_hesablayici/qruplar.dart';
import 'package:flutter/material.dart';

class GirisEkran extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(), body: buildBody(context)
    );
  }
  AppBar buildAppbar() {
    return AppBar(
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
        "İmtahan nəticəm",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "İmtahanı seçin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 50),

              ElevatedButton(
                onPressed: () {
                  ortaIxtisasSehifesi(context);
                },
                child: Text(
                  "9-cu sinif imtahanı",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  aliIxtisasSehifesi(context);
                },
                child: Text(
                  "11-ci sinif imtahanı",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              SizedBox(height: 25),

            ],
          ),
        ),
      ),
    );
  }
  
  void ortaIxtisasSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu=MaterialPageRoute(builder: (BuildContext context){
      return OrtaIxtisas();
    });
    Navigator.push(context, _sehifeYolu);
  }
  void aliIxtisasSehifesi(BuildContext context){
    MaterialPageRoute _sehifeYolu=MaterialPageRoute(builder: (BuildContext context){
      return Qruplar();
    });
    Navigator.push(context, _sehifeYolu);
  }
}
