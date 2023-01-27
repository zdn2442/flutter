import 'dart:ui';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tokped/config/warna.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: tinggi * 0.99,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: tinggi * 0.16,
            decoration: BoxDecoration(color: bgNav),
            padding: EdgeInsets.fromLTRB(20, 80, 20, 35),
            child: Row(
              children: [
                Container(
                  width: lebar * 0.43,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "cari RTX 4090",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search_rounded),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(117, 23, 23, 52)),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  width: lebar * 0.43,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/Group 20.png'),
                      Image.asset('assets/images/Group 19.png'),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              width: lebar,
              height: tinggi * 0.15,
              // margin: EdgeInsets.symmetric(vertical: 10),
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 400.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3)),
                items: [
                  "assets/images/kebut.png",
                  "assets/images/kejuParut.png",
                  "assets/images/bebasOngkir.png"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: lebar,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            child: Image.asset(i),
                          ));
                    },
                  );
                }).toList(),
              )),
          Container(
              margin: EdgeInsets.only(left: 8, top: 20, bottom: 10),
              width: lebar,
              height: tinggi * 0.15,
              child: menu(context)),
          Container(
            padding: EdgeInsets.fromLTRB(40, 5, 20, 20),
            width: lebar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: lebar * 0.5,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 55),
                        child: Text(
                          "Kejar Diskon Spesial",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: lebar * 80,
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Berakhir Dalam",
                              style: TextStyle(color: warnaDasar),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: lebar * 0.25,
                              height: tinggi * 0.03,
                              decoration: BoxDecoration(
                                  color: warnaMerah1,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "00 : 15 : 12",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, right: 10),
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        color: bgLogin1,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [warnaGradient1, warnaGradient2])),
            child: Row(
              children: [
                Container(
                  child: Image.asset("assets/images/kejarDiskon.png"),
                ),
                Container(
                  width: lebar * 0.728,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 35),
                          width: lebar * 0.35,
                          height: tinggi * 0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Container(
                                width: lebar * 0.35,
                                height: tinggi * 0.15,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/softies.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "Rp. 1.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 5),
                                    width: lebar * 0.07,
                                    height: tinggi * 0.02,
                                    padding: EdgeInsets.fromLTRB(3, 3, 3, 4),
                                    color: warnaDiskon,
                                    child: Text(
                                      "92%",
                                      style: TextStyle(
                                          color: warnaMerah1,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3, top: 2),
                                    child: Text(
                                      "Rp 12.546",
                                      style: TextStyle(
                                          color: warnaDasar,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 9, top: 6, right: 2),
                                    width: lebar * 0.05,
                                    height: tinggi * 0.02,
                                    child: Image.asset(
                                      "assets/images/ceklis.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kab.Tangerang",
                                      style:
                                          TextStyle(color: Color(0xff6b6b6b)),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 13),
                                width: lebar * 0.3,
                                child: StepProgressIndicator(
                                  totalSteps: 100,
                                  currentStep: 82,
                                  size: 7,
                                  padding: 0,
                                  selectedColor: warnaMerah1,
                                  unselectedColor: warnaStepKosong,
                                  roundedEdges: Radius.circular(10),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Segera Habis",
                                        style:
                                            TextStyle(color: Color(0xff6b6b6b)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: lebar * 0.35,
                          height: tinggi * 0.27,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Container(
                                width: lebar * 0.35,
                                height: tinggi * 0.15,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/indomie.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "Rp. 103.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 5),
                                    width: lebar * 0.07,
                                    height: tinggi * 0.02,
                                    padding: EdgeInsets.fromLTRB(8, 3, 6, 4),
                                    color: warnaDiskon,
                                    child: Text(
                                      "6%",
                                      style: TextStyle(
                                          color: warnaMerah1,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3, top: 2),
                                    child: Text(
                                      "Rp 109.900",
                                      style: TextStyle(
                                          color: warnaDasar,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 9, top: 6, right: 2),
                                    width: lebar * 0.05,
                                    height: tinggi * 0.02,
                                    child: Image.asset(
                                      "assets/images/ceklis.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Jakarta Timur",
                                      style:
                                          TextStyle(color: Color(0xff6b6b6b)),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 13),
                                width: lebar * 0.3,
                                child: StepProgressIndicator(
                                  totalSteps: 100,
                                  currentStep: 26,
                                  size: 7,
                                  padding: 0,
                                  selectedColor: warnaMerah1,
                                  unselectedColor: warnaStepKosong,
                                  roundedEdges: Radius.circular(10),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Tersedia",
                                        style:
                                            TextStyle(color: Color(0xff6b6b6b)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            width: lebar * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pilihan Promo Hari Ini",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        color: bgLogin1,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 20),
            width: lebar * 0.99,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/ohBeauty.png"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/KamisBebasKuman.png"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/megaElectro.png"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: lebar,
            height: 1,
            color: warnaDasar,
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            width: lebar * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pilihan Promo Hari Ini",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        color: bgLogin1,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.DETAIL),
                      child: ProdukCard(
                          produk: 'Logitech G603 Lightspeed High DPI',
                          daerah: 'Kab. Bandung',
                          diskon: '44%',
                          gambar: 'assets/images/lightspeedMouse.png',
                          harga: 'Rp 609.000',
                          potongan: 'Rp 1.000.000',
                          rating: '4.8',
                          terjual: '312'),
                    ),
                    ProdukCard(
                        produk: 'Logitech G203 Mouse Gaming',
                        daerah: 'Kab. Bandung',
                        diskon: '46%',
                        gambar: 'assets/images/RainbowMouse.png',
                        harga: 'Rp 204.000',
                        potongan: 'Rp 379.000',
                        rating: '4.9',
                        terjual: '6rb'),
                    ProdukCard(
                        produk: 'Logitech G603 Lightspeed High DPI',
                        daerah: 'Kab. Bandung',
                        diskon: '44%',
                        gambar: 'assets/images/mousePad.png',
                        harga: 'Rp 609.000',
                        potongan: 'Rp 1.000.000',
                        rating: '4.8',
                        terjual: '312'),
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  CatalogContainer(
                      text: 'For Zaidan',
                      gradient1: 0xffFA38B1,
                      gradient2: 0xffA92176,
                      widget: Container(
                        width: 25,
                        height: 3,
                        margin: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white),
                      )),
                  CatalogContainer(
                      text: 'Special Discount',
                      gradient1: 0xff8A40FF,
                      gradient2: 0xff462180,
                      widget: Container()),
                  CatalogContainer(
                      text: 'Aktifitasmu',
                      gradient1: 0xff3BD5FF,
                      gradient2: 0xff0C87A9,
                      widget: Container()),
                  CatalogContainer(
                      text: 'Gaming Setups',
                      gradient1: 0xffFFBE53,
                      gradient2: 0xffEE9B12,
                      widget: Container()),
                ],
              ),
            ),
          ),
          Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Wrap(spacing: 15, runSpacing: 20, children: [
                    ProdukCard(
                        gambar: 'assets/images/rivalMouse.png',
                        daerah: 'Jakarta Pusat',
                        diskon: '12%',
                        harga: 'Rp 699.000',
                        potongan: 'Rp 790.000',
                        produk: 'SteelSeries Rival 3 Wireless - Gaming ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '124'),
                    ProdukCard(
                        gambar: 'assets/images/tipi.png',
                        daerah: 'Kota Depok',
                        diskon: '44%',
                        harga: 'Rp 5.949.900',
                        potongan: 'Rp 1.000.000',
                        produk: 'Monitor Lenovo G34W-30 34" ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '23'),
                    ProdukCard(
                        gambar: 'assets/images/colokan.png',
                        daerah: 'Kab. Tangerang',
                        diskon: '44%',
                        harga: 'Rp 3.750',
                        potongan: 'Rp 1.000.000',
                        produk: 'Myvo Steker T Multi Lampu Colokan ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '76'),
                    ProdukCard(
                        gambar: 'assets/images/mousePro.png',
                        daerah: 'Kab. Bandung',
                        diskon: '44%',
                        harga: 'Rp 609.000',
                        potongan: 'Rp 1.000.000',
                        produk: 'Logitech G PRO X SUPERLIGHT ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '1rb'),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
                  width: lebar,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 1, color: abuAbu)),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        'Lihat Selebihnya',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
        ]),
      ),
    ));
  }
}

Widget CatalogContainer({text, gradient1, gradient2, widget}) {
  return Container(
    margin: EdgeInsets.only(right: 12),
    padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
    width: 114,
    height: 66,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(gradient1),
            Color(gradient2),
          ],
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget,
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        )
      ],
    ),
  );
}

Widget menu(BuildContext context) {
  return Container(
    child: Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.0,
      runSpacing: 5.0,
      children: [
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/promo.png"),
              Text(
                "Promo Hari Ini",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/toserba.png"),
              Text(
                "Toserba",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/elektronik.png"),
              Text(
                "Elektronik",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/topUp.png"),
              Text(
                "Top-Up & Tagihan",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/lihatSemua.png"),
              Text(
                "Lihat Semua",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/official.png"),
              Text(
                "Official Store",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/live.png"),
              Text(
                "Live Shopping",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/seru.png"),
              Text(
                "Tokopedia Seru",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/cod.png"),
              Text(
                "Bayar di Tempat",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Image.asset("assets/images/banggaLokal.png"),
              Text(
                "Bangga Lokal",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget ProdukCard(
    {gambar,
    harga,
    diskon,
    potongan,
    daerah,
    terjual,
    rating,
    produk,
    double lebar = 146,
    double tinggi = 316,
    double lebarGambar = 146,
    double tinggiGambar = 146,
    double marginKanan = 15}) {
  String truncate(String text, {length = 7, omission = '...'}) {
    if (length >= text.length) {
      return text;
    }
    return text.replaceRange(length, text.length, omission);
  }

// void main() {
//   print(truncate('Hello, World!', length: 4));
// }
  return Container(
    margin: EdgeInsets.only(right: marginKanan),
    // padding: EdgeInsets.symmetric(vertical: 10),
    width: lebar,
    height: tinggi,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ], borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      children: [
        Container(
          width: lebarGambar,
          height: tinggiGambar,
          child: Image.asset(gambar),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(truncate(produk, length: 25),
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  harga,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6, top: 6),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: warnaDiskon),
                      child: Center(
                        child: Text(
                          diskon,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: warnaMerah1),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        potongan,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: Color(0xff6b6b6b)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset('assets/images/merchant.png'),
                    ),
                    Container(
                      child: Text(
                        daerah,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6b6b6b)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 13,
                        )),
                    Container(
                      child: Text('$rating | Terjual $terjual',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6b6b6b))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
