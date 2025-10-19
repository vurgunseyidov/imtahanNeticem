import 'package:bal_hesablayici/birinci_qrup.dart';
import 'package:bal_hesablayici/giris_ekran.dart';
import 'package:bal_hesablayici/qruplar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AnaProgram());
}

class AnaProgram extends StatelessWidget {
  const AnaProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GirisEkran(),
    );
  }
}
