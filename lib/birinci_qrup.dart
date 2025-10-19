import 'package:flutter/material.dart';

class BirinciQrup extends StatefulWidget {
  @override
  State<BirinciQrup> createState() => _BirinciQrupState();
}

class _BirinciQrupState extends State<BirinciQrup> {
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

  TextEditingController _fizQapaliDuzController = TextEditingController();

  TextEditingController _fizQapaliYanlisController = TextEditingController();

  TextEditingController _fizAciqDuzController = TextEditingController();

  TextEditingController _fizAciqSituasiyaController = TextEditingController();

  TextEditingController _kimQapaliDuzController = TextEditingController();

  TextEditingController _kimQapaliYanlisController = TextEditingController();

  TextEditingController _kimAciqDuzController = TextEditingController();

  TextEditingController _kimAciqSituasiyaController = TextEditingController();

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
    _fizQapaliDuzController.dispose();
    _fizQapaliYanlisController.dispose();
    _fizAciqDuzController.dispose();
    _fizAciqSituasiyaController.dispose();
    _kimQapaliDuzController.dispose();
    _kimQapaliYanlisController.dispose();
    _kimAciqDuzController.dispose();
    _kimAciqSituasiyaController.dispose();
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
        "Birinci qrup",
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
            _fizQapaliDuzController.clear();
            _fizQapaliYanlisController.clear();
            _fizAciqDuzController.clear();
            _fizAciqSituasiyaController.clear();
            _kimQapaliDuzController.clear();
            _kimQapaliYanlisController.clear();
            _kimAciqDuzController.clear();
            _kimAciqSituasiyaController.clear();

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
                                "    Düz      ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "İsbat   ",
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
                            "Fizika",
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
                                  controller: _fizQapaliDuzController,
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
                                  controller: _fizQapaliYanlisController,
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
                                  controller: _fizAciqDuzController,
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
                                  controller: _fizAciqSituasiyaController,
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
                            "Kimya / İnformatika",
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
                                  controller: _kimQapaliDuzController,
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
                                  controller: _kimQapaliYanlisController,
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
                                  controller: _kimAciqDuzController,
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
                                  controller: _kimAciqSituasiyaController,
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

                  double fizQapaliDuz =
                      double.tryParse(_fizQapaliDuzController.text) ?? 0;
                  double fizQapaliYanilis =
                      double.tryParse(_fizQapaliYanlisController.text) ?? 0;
                  double fizAciqDuz =
                      double.tryParse(_fizAciqDuzController.text) ?? 0;
                  double fizSituasiya =
                      double.tryParse(_fizAciqSituasiyaController.text) ?? 0;

                  double kimQapaliDuz =
                      double.tryParse(_kimQapaliDuzController.text) ?? 0;
                  double kimQapaliYanilis =
                      double.tryParse(_kimQapaliYanlisController.text) ?? 0;
                  double kimAciqDuz =
                      double.tryParse(_kimAciqDuzController.text) ?? 0;
                  double kimSituasiya =
                      double.tryParse(_kimAciqSituasiyaController.text) ?? 0;

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

                    double fizQapali =
                        (fizQapaliDuz - ((1 / 4) * fizQapaliYanilis)) *
                        100 /
                        33;
                    double fizAciq =
                        (fizAciqDuz + (2 * fizSituasiya)) * 100 / 33;
                    double fizBlok = (fizAciq + fizQapali) * 1.5;
                    if(fizBlok<0){
                      fizBlok=0;
                    }

                    double kimQapali =
                        (kimQapaliDuz - ((1 / 4) * kimQapaliYanilis)) *
                        100 /
                        33;
                    double kimAciq =
                        (kimAciqDuz + (2 * kimSituasiya)) * 100 / 33;
                    double kimBlok = kimAciq + kimQapali;
                    if(kimBlok<0){
                      kimBlok=0;
                    }

                    double blokBal = riyBlok + fizBlok + kimBlok;
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
                  
                      
                      fizQapaliDuz>22 || fizQapaliDuz <0 ||
                      fizQapaliYanilis>22 || fizQapaliYanilis<0 ||
                      fizQapaliDuz+fizQapaliYanilis>22 || fizQapaliDuz+fizQapaliYanilis<0 ||

                      fizAciqDuz>5 || fizAciqDuz <0 ||
                      fizSituasiya>3 || fizSituasiya<0 ||
                      fizAciqDuz+fizSituasiya>8 || fizAciqDuz+fizSituasiya<0 ||

                      kimQapaliDuz>22 || kimQapaliDuz <0 ||
                      kimQapaliYanilis>22 || kimQapaliYanilis<0 ||
                      kimQapaliDuz+kimQapaliYanilis>22 || kimQapaliDuz+kimQapaliYanilis<0 ||

                      kimAciqDuz>5 || kimAciqDuz <0 ||
                      kimSituasiya>3 || kimSituasiya<0 ||
                      kimAciqDuz+kimSituasiya>8 || kimAciqDuz+kimSituasiya<0 ||

                      riyQapaliDuz>22 || riyQapaliDuz <0 ||
                      riyQapaliYanilis>22 || riyQapaliYanilis<0 ||
                      riyQapaliDuz+riyQapaliYanilis>22 || riyQapaliDuz+riyQapaliYanilis<0 ||

                      riyAciqDuz>5 || riyAciqDuz <0 ||
                      riySituasiya>3 || riySituasiya<0 ||
                      riyAciqDuz+riySituasiya>8 || riyAciqDuz+riySituasiya<0
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
