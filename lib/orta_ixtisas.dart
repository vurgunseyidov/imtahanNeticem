import 'package:flutter/material.dart';

class OrtaIxtisas extends StatefulWidget {
  @override
  State<OrtaIxtisas> createState() => _OrtaIxtisasState();
}

class _OrtaIxtisasState extends State<OrtaIxtisas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(), body: buildBody());
  }

  TextEditingController _AzAciqController = TextEditingController();
  TextEditingController _AzQapaliController = TextEditingController();

  TextEditingController _RiyAciqController = TextEditingController();
  TextEditingController _RiyQapaliController = TextEditingController();
  TextEditingController _RiyYaziliController = TextEditingController();

  TextEditingController _DilAciqController = TextEditingController();
  TextEditingController _DilQapaliController = TextEditingController();
  TextEditingController _DilDinlemeController = TextEditingController();

  @override
  void dispose() {
    _AzQapaliController.dispose();
    _AzAciqController.dispose();
    _RiyQapaliController.dispose();
    _RiyAciqController.dispose();
    _RiyYaziliController.dispose();
    _DilQapaliController.dispose();
    _DilAciqController.dispose();
    _DilDinlemeController.dispose();
    super.dispose();
  }

  double netice = 0;

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
        "9-cu sinif",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            _AzQapaliController.clear();
            _AzAciqController.clear();
            _RiyQapaliController.clear();
            _RiyAciqController.clear();
            _RiyYaziliController.clear();
            _DilQapaliController.clear();
            _DilAciqController.clear();
            _DilDinlemeController.clear();

            setState(() {
              netice=0;
            });
          },
          child: Icon(Icons.refresh, size: 25),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }

  Widget buildBody() {
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
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
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
              SizedBox(height: 10),

              Container(
                height: 620,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buraxılış imtahanı",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(height: 20),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Azərbaycan dili",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "  Qapalı",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Yazılı",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "           ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _AzQapaliController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                              SizedBox(width: 40),
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _AzAciqController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Riyaziyyat",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "   Qapalı",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Açıq",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Yazılı    ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _RiyQapaliController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _RiyAciqController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _RiyYaziliController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Xarici dil",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "  Qapalı",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Yazılı",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Dinləmə  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _DilQapaliController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _DilAciqController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _DilDinlemeController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: "0",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Ingilis dilində yazdığınız\nesse markerlər tərəfindən\nqiymətləndiriləcəyinə görə hesablama\nzamanı esse balı nəzərə alınmır. \n(Essedən maksimum 5 bal ala bilərsiz)",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  double riyaziyyatQapali =
                      double.tryParse(_RiyQapaliController.text) ?? 0;
                  double riyaziyyatAciq =
                      double.tryParse(_RiyAciqController.text) ?? 0;
                  double riyaziyyatYazili =
                      double.tryParse(_RiyYaziliController.text) ?? 0;

                  double azerbaycanQapali =
                      double.tryParse(_AzQapaliController.text) ?? 0;
                  double azerbaycanAciq =
                      double.tryParse(_AzAciqController.text) ?? 0;

                  double dilQapali =
                      double.tryParse(_DilQapaliController.text) ?? 0;
                  double dilAciq =
                      double.tryParse(_DilAciqController.text) ?? 0;
                  double dilDinleme =
                      double.tryParse(_DilDinlemeController.text) ?? 0;

                  double hesabla() {
                    double riyaziyyat =
                        (((2 * riyaziyyatYazili) +
                                riyaziyyatAciq +
                                riyaziyyatQapali) *
                            100) /
                        29;
                    double azerbaycan =
                        (((2 * azerbaycanAciq) + azerbaycanQapali) * 100) / 34;
                    double dil =
                        ((dilDinleme + dilAciq + dilQapali) * 100) / 30;

                    return riyaziyyat + azerbaycan + dil;
                  }


                    if (azerbaycanQapali > 20 || azerbaycanQapali < 0 ||
                        azerbaycanAciq >10 || azerbaycanAciq < 0 ||

                        dilDinleme >4 || dilDinleme<0 ||
                        dilQapali >19 || dilQapali <0 ||
                        dilAciq >2 || dilAciq <0 ||

                        riyaziyyatQapali >15 || riyaziyyatQapali<0 ||
                        riyaziyyatAciq > 6 || riyaziyyatAciq <0 ||
                        riyaziyyatYazili > 4 || riyaziyyatYazili <0
                    ) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                Text(
                                  "Dəyərlər düzgün daxil edilməyib",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Daxil etdiyiniz dəyərlərin doğru olduğundan əmin olun",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),

                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Oldu", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  minimumSize: Size(100, 50)
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      setState(() {
                        netice = hesabla();
                        if(netice<0){
                          netice=0;
                        }
                      });
                    }

                },
                child: Text(
                  "Hesabla",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),
                  foregroundColor: Colors.indigo,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 30),

              Text(
                "Ümumi nəticə: ${netice.toStringAsFixed(1)} / 300",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
