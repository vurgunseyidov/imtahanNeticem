import 'package:flutter/material.dart';

class IkinciQrup extends StatefulWidget {
  @override
  State<IkinciQrup> createState() => _BirinciQrupState();
}

class _BirinciQrupState extends State<IkinciQrup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(), body: buildBody());
  }

  // Buraxilis imtahani
  TextEditingController _AzAciqController = TextEditingController();

  TextEditingController _AzQapaliController = TextEditingController();

  TextEditingController _RiyAciqController = TextEditingController();

  TextEditingController _RiyQapaliController = TextEditingController();

  TextEditingController _RiyYaziliController = TextEditingController();

  TextEditingController _DilAciqController = TextEditingController();

  TextEditingController _DilQapaliController = TextEditingController();

  //Blok imtahani
  TextEditingController _riyQapaliDuzController = TextEditingController();

  TextEditingController _riyQapaliYanlisController = TextEditingController();

  TextEditingController _riyAciqDuzController = TextEditingController();

  TextEditingController _riyAciqSituasiyaController = TextEditingController();

  TextEditingController _cogQapaliDuzController = TextEditingController();

  TextEditingController _cogQapaliYanlisController = TextEditingController();

  TextEditingController _cogAciqDuzController = TextEditingController();

  TextEditingController _cogAciqSituasiyaController = TextEditingController();

  TextEditingController _tarQapaliDuzController = TextEditingController();

  TextEditingController _tarQapaliYanlisController = TextEditingController();

  TextEditingController _tarAciqDuzController = TextEditingController();

  TextEditingController _tarAciqSituasiyaController = TextEditingController();

  @override
  void dispose() {
    _AzAciqController.dispose();
    _AzQapaliController.dispose();
    _RiyAciqController.dispose();
    _RiyQapaliController.dispose();
    _RiyYaziliController.dispose();
    _DilAciqController.dispose();
    _DilQapaliController.dispose();

    _riyQapaliDuzController.dispose();
    _riyQapaliYanlisController.dispose();
    _riyAciqDuzController.dispose();
    _riyAciqSituasiyaController.dispose();
    _cogQapaliDuzController.dispose();
    _cogQapaliYanlisController.dispose();
    _cogAciqDuzController.dispose();
    _cogAciqSituasiyaController.dispose();
    _tarQapaliDuzController.dispose();
    _tarQapaliYanlisController.dispose();
    _tarAciqDuzController.dispose();
    _tarAciqSituasiyaController.dispose();
    super.dispose();
  }

  double umumiNetice = 0;
  double buraxilisNetice = 0;
  double blokNetice = 0;

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
        "İkinci qrup",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            _AzAciqController.clear();
            _AzQapaliController.clear();
            _RiyAciqController.clear();
            _RiyQapaliController.clear();
            _RiyYaziliController.clear();
            _DilAciqController.clear();
            _DilQapaliController.clear();

            _riyQapaliDuzController.clear();
            _riyQapaliYanlisController.clear();
            _riyAciqDuzController.clear();
            _riyAciqSituasiyaController.clear();
            _cogQapaliDuzController.clear();
            _cogQapaliYanlisController.clear();
            _cogAciqDuzController.clear();
            _cogAciqSituasiyaController.clear();
            _tarQapaliDuzController.clear();
            _tarQapaliYanlisController.clear();
            _tarAciqDuzController.clear();
            _tarAciqSituasiyaController.clear();

            setState(() {
              umumiNetice = 0;
              buraxilisNetice = 0;
              blokNetice = 0;
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
        SizedBox(width: 20,)
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
                  SizedBox(width: 10),
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
                height: 530,
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
                                "          ",
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
                              SizedBox(width: 40),
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
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 1100,
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
                        "Blok imtahanı",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
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
                          Text(
                            "Qapalı",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Düz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Səhv",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _riyQapaliDuzController,
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
                                  controller: _riyQapaliYanlisController,
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
                          Text(
                            "Açıq",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "    Düz    ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Situasiya",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _riyAciqDuzController,
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
                                  controller: _riyAciqSituasiyaController,
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
                      SizedBox(height: 15),
                      Container(height: 2, color: Colors.black26),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Coğrafiya",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.indigo,
                            ),
                          ),
                          Text(
                            "Qapalı",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Düz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Səhv",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _cogQapaliDuzController,
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
                                  controller: _cogQapaliYanlisController,
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
                          Text(
                            "Açıq",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "    Düz    ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Situasiya",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _cogAciqDuzController,
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
                                  controller: _cogAciqSituasiyaController,
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
                      SizedBox(height: 15),
                      Container(height: 2, color: Colors.black26),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tarix",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.indigo,
                            ),
                          ),
                          Text(
                            "Qapalı",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Düz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Səhv",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _tarQapaliDuzController,
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
                                  controller: _tarQapaliYanlisController,
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
                          Text(
                            "Açıq",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.indigo,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "    Düz    ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "Situasiya",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  controller: _tarAciqDuzController,
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
                                  controller: _tarAciqSituasiyaController,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Fənlərin situasiya xanasına həmin \nfənnin situasiya tapşırıqlarından aldığınız \ntoplam balı daxil etməlisiniz. \nDigər xanalara isə uyğun olaraq \nsual sayını daxil etməlisiniz",
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
                  double buraxilisHesabla() {

                    double riyaziyyat =
                        (((2 * riyaziyyatYazili) +
                                riyaziyyatAciq +
                                riyaziyyatQapali) *
                            25) /
                        8;
                    double azerbaycan =
                        (((2 * azerbaycanAciq) + azerbaycanQapali) * 5) / 2;
                    double dil = (((2 * dilAciq) + dilQapali) * 100) / 37;

                    return riyaziyyat + azerbaycan + dil;
                  }

                  double riyQapaliDuz =
                      double.tryParse(_riyQapaliDuzController.text) ?? 0;
                  double riyQapaliYanilis =
                      double.tryParse(_riyQapaliYanlisController.text) ?? 0;
                  double riyAciqDuz =
                      double.tryParse(_riyAciqDuzController.text) ?? 0;
                  double riySituasiya =
                      double.tryParse(_riyAciqSituasiyaController.text) ?? 0;

                  double cogQapaliDuz =
                      double.tryParse(_cogQapaliDuzController.text) ?? 0;
                  double cogQapaliYanilis =
                      double.tryParse(_cogQapaliYanlisController.text) ?? 0;
                  double cogAciqDuz =
                      double.tryParse(_cogAciqDuzController.text) ?? 0;
                  double cogSituasiya =
                      double.tryParse(_cogAciqSituasiyaController.text) ?? 0;

                  double tarQapaliDuz =
                      double.tryParse(_tarQapaliDuzController.text) ?? 0;
                  double tarQapaliYanilis =
                      double.tryParse(_tarQapaliYanlisController.text) ?? 0;
                  double tarAciqDuz =
                      double.tryParse(_tarAciqDuzController.text) ?? 0;
                  double tarSituasiya =
                      double.tryParse(_tarAciqSituasiyaController.text) ?? 0;
                  double blokHesabla() {

                    double riyQapali =
                        (riyQapaliDuz - ((1 / 4) * riyQapaliYanilis)) *
                        100 /
                        33;
                    double riyAciq =
                        (riyAciqDuz + (2 * riySituasiya)) * 100 / 33;
                    double riyBlok = (riyAciq + riyQapali) * 1.5;
                    if(riyBlok<0){
                      riyBlok=0;
                    }

                    double cogQapali =
                        (cogQapaliDuz - ((1 / 4) * cogQapaliYanilis)) *
                        100 /
                        33;
                    double cogAciq =
                        (cogAciqDuz + (2 * cogSituasiya)) * 100 / 33;
                    double cogBlok = (cogAciq + cogQapali) * 1.5;
                    if(cogBlok<0){
                      cogBlok=0;
                    }

                    double tarQapali =
                        (tarQapaliDuz - ((1 / 4) * tarQapaliYanilis)) *
                        100 /
                        33;
                    double tarAciq =
                        (tarAciqDuz + (2 * tarSituasiya)) * 100 / 33;
                    double tarBlok = tarAciq + tarQapali;
                    if(tarBlok<0){
                      tarBlok=0;
                    }

                    double blokBal = riyBlok + cogBlok + tarBlok;
                    return blokBal;
                  }

                  blokNetice = blokHesabla();
                  if(blokNetice<0){
                    blokNetice=0;
                  }
                  buraxilisNetice = buraxilisHesabla();
                  if(buraxilisNetice<0){
                    buraxilisNetice=0;
                  }
                  if(azerbaycanQapali >20 || azerbaycanQapali<0 ||
                      azerbaycanAciq >10 || azerbaycanAciq<0 ||
                      riyaziyyatQapali >13 || riyaziyyatQapali<0 ||
                      riyaziyyatAciq >5 || riyaziyyatAciq<0 ||
                      riyaziyyatYazili >7 || riyaziyyatYazili<0 ||
                      dilQapali >23 || dilQapali<0 ||
                      dilAciq>7 || dilAciq<0 ||


                      riyQapaliDuz>22 || riyQapaliDuz <0 ||
                      riyQapaliYanilis>22 || riyQapaliYanilis<0 ||
                      riyQapaliDuz+riyQapaliYanilis>22 || riyQapaliDuz+riyQapaliYanilis<0 ||

                      riyAciqDuz>5 || riyAciqDuz <0 ||
                      riySituasiya>3 || riySituasiya<0 ||
                      riyAciqDuz+riySituasiya>8 || riyAciqDuz+riySituasiya<0 ||

                      cogQapaliDuz>22 || cogQapaliDuz <0 ||
                      cogQapaliYanilis>22 || cogQapaliYanilis<0 ||
                      cogQapaliDuz+cogQapaliYanilis>22 || cogQapaliDuz+cogQapaliYanilis<0 ||

                      cogAciqDuz>5 || cogAciqDuz <0 ||
                      cogSituasiya>3 || cogSituasiya<0 ||
                      cogAciqDuz+cogSituasiya>8 || cogAciqDuz+cogSituasiya<0 ||

                      tarQapaliDuz>22 || tarQapaliDuz <0 ||
                      tarQapaliYanilis>22 || tarQapaliYanilis<0 ||
                      tarQapaliDuz+tarQapaliYanilis>22 || tarQapaliDuz+tarQapaliYanilis<0 ||

                      tarAciqDuz>5 || tarAciqDuz <0 ||
                      tarSituasiya>3 || tarSituasiya<0 ||
                      tarAciqDuz+tarSituasiya>8 || tarAciqDuz+tarSituasiya<0
                  ){
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
                  }else{
                    setState(() {
                      umumiNetice = buraxilisNetice + blokNetice;
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
                "Buraxılış imtahanı: ${buraxilisNetice.toStringAsFixed(1)} / 300",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Blok imtahanı: ${blokNetice.toStringAsFixed(1)} / 400",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Ümumi nəticə: ${umumiNetice.toStringAsFixed(1)} / 700",
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
