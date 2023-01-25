import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokped/app/routes/app_pages.dart';

import '../../../../config/warna.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: tinggi * 0.99,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: tinggi * 0.16,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.fromLTRB(10, 80, 20, 35),
              child: Row(
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextButton(
                      onPressed: () => Get.toNamed(Routes.HOME),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                    margin: EdgeInsets.only(left: 10),
                    width: lebar * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 30,
                        ),
                        Icon(
                          Icons.shopping_cart,
                          size: 30,
                        ),
                        Icon(
                          Icons.menu,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: lebar * 0.99,
              height: tinggi * 0.45,
              child: Image.asset(
                "assets/images/parfum.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp370.000",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    size: 30,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 25),
              child: Row(
                children: [
                  Container(
                    width: lebar * 0.8,
                    child: Text(
                      "Mine. Perfumery ETHEREAL - 50ml Eau De Parfum",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 25, bottom: 20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      'Terjual 250+',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    width: lebar * 0.74,
                    height: tinggi * 0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: abuAbu),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: bintang,
                              ),
                              Text("4.9 (320)")
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: abuAbu),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("Foto Pembeli (50)")),
                        Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: abuAbu),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("Diskusi (25)"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: lebar,
              height: tinggi * 0.01,
              color: warnaStepKosong,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Text(
                    "Detail produk",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20, bottom: 10),
                  width: lebar * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Berat Satuan",
                        style: TextStyle(fontSize: 17, color: abuAbu),
                      ),
                      Text(
                        "200 g",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: lebar * 0.9,
              height: 3,
              color: warnaStepKosong,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20, bottom: 10),
                  width: lebar * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Etalase",
                        style: TextStyle(fontSize: 17, color: abuAbu),
                      ),
                      Text(
                        "Mine Private Collection",
                        style: TextStyle(
                            fontSize: 17,
                            color: bgNav,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: lebar * 0.9,
              height: 3,
              color: warnaStepKosong,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 25),
              child: Row(
                children: [
                  Text(
                    "Deskripsi produk",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 28),
                  width: lebar * 0.8,
                  child: Text(
                    "Mine. ETHEREAL Eau De Parfum 50mi glass perfume bottle in hard box packaging • ETHEREAL • With facets that highlight a side ...",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10, bottom: 15),
                  child: Text(
                    "Baca Selengkapnya",
                    style: TextStyle(
                        color: bgNav,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              width: lebar,
              height: 3,
              color: warnaStepKosong,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                      width: lebar * 0.2,
                      child: Image.asset(
                        "assets/images/pp.png",
                        fit: BoxFit.contain,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/ceklis.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Mine. Parfumery",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 6),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 4),
                                  child: Text(
                                    "Online",
                                    style: TextStyle(color: abuAbu),
                                  )),
                              Text(
                                "23 Jam lalu",
                                style: TextStyle(
                                    color: abuAbu, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 40, top: 6),
                          child: Text(
                            "Kota Tangerang",
                            style: TextStyle(color: abuAbu),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, top: 35),
                    width: lebar * 0.18,
                    height: tinggi * 0.04,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: bgNav),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () => print("following"),
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              color: bgNav,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  )
                ],
              ),
            ),
            Container(
              width: lebar,
              height: tinggi * 0.01,
              color: warnaStepKosong,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              width: lebar * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lainnya di toko ini",
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
                      ProdukCard(
                          produk: 'Mine. Perfumery FLORAISON ...',
                          daerah: 'Kota Tangerang',
                          diskon: 'Cashback',
                          gambar: 'assets/images/flora.png',
                          harga: 'Rp 370.000',
                          potongan: 'Rp 1.000.000',
                          rating: '4.8',
                          terjual: '312'),
                      ProdukCard(
                          produk: 'Mine. Perfumery TATMI - 50ml ...',
                          daerah: 'Kota Tangerang',
                          diskon: 'Cashback',
                          gambar: 'assets/images/tatmi.png',
                          harga: 'Rp 450.000',
                          potongan: 'Rp 379.000',
                          rating: '4.9',
                          terjual: '150'),
                      ProdukCard(
                          produk: 'Mine. Perfumery LUCID DREA...',
                          daerah: 'Kota Tangerang',
                          diskon: 'Cashback',
                          gambar: 'assets/images/lucid.png',
                          harga: 'Rp 370.000',
                          potongan: 'Rp 1.000.000',
                          rating: '5.0',
                          terjual: '312'),
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: lebar,
              height: tinggi * 0.01,
              color: warnaStepKosong,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              width: lebar * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ulasan pembeli",
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
              margin: EdgeInsets.only(left: 30, top: 15),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.star_rounded,
                      color: bintang,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      "4.9",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "320 rating ∙ 102 ulasan",
                      style: TextStyle(color: abuAbu, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20, bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  review('assets/images/chanel4.png', ''),
                  review('assets/images/chanel3.png', ''),
                  review('assets/images/chanel2.png', ''),
                  review('assets/images/chanel1.png', ''),
                  review('assets/images/chanelBlur.png', '+61'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                color: warnaStepKosong,
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child: Column(children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 13),
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/zain.png'),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('Zain Ekstrom Bothman',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Container(
                                child: Text('31 ulasan lengkap ∙ 17 terbantu',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: abuAbu)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ])),
            Container(
              margin: EdgeInsets.only(right: 13, left: 30, top: 13, bottom: 13),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 7),
                    width: 95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 16,
                        ),
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 16,
                        ),
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 16,
                        ),
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 16,
                        ),
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: Text('10 bulan lalu',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: abuAbu))),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                        'saya selalu tertarik dengan produk lokal, buat saya aroma nomor 2 karena subyektif, Kemasan nomorselanjutnya, tapi yang perlu di',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Baca Selengkapnya',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: bgNav)),
                  ),
                ],
              ),
            ),
            Container(
              width: lebar,
              height: tinggi * 0.01,
              color: warnaStepKosong,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              width: lebar * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Diskusi",
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
              padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Column(
                children: [
                  DiskusiUser(
                      marginBawah: 12,
                      marginKiri: 0,
                      bgProfile: 'assets/images/Rayna.png',
                      comment:
                          'hai! kira-kira kapan restock lagi? thanks in advance',
                      widgetNama: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Rayna Stanton ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: '∙ Apr 2022',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: abuAbu),
                            ),
                          ],
                        ),
                      )),
                  DiskusiUser(
                      marginBawah: 0,
                      bgProfile: 'assets/images/pp.png',
                      comment:
                          'Halo kak, maaf banget yak karena kamu jadi nunggu, saat ini kita masih out of stock ya ...',
                      marginKiri: 32,
                      widgetNama: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 6),
                            width: 70,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: warnaCashback),
                            child: Center(
                              child: Text('Penjual',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: bgNav)),
                            ),
                          ),
                          Container(
                            child: Text('∙ Apr 2022'),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 20),
              width: lebar,
              height: tinggi * 0.01,
              color: warnaStepKosong,
            ),
             Container(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  margin: EdgeInsets.only(bottom: 30, top: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        child: Icon(
                          CupertinoIcons.info_circle,
                          size: 24,
                        ),
                      ),
                      Container(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Produk bermasalah? ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Laporkan',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: bgNav),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1, color: Color(0xffeeeeee)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1.5, color: abuAbu)),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.chat_bubble_text,
                            size: 26,
                          ),
                        ),
                      ),
                      Container(
                        width: lebar * 0.35,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1.5, color: bgNav)),
                        child: Center(
                            child: Text(
                          'Beli Langsung',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: bgNav),
                        )),
                      ),
                      Container(
                        width: lebar * 0.35,
                        height: 50,
                        decoration: BoxDecoration(
                            color: bgNav,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1.5, color: bgNav)),
                        child: Center(
                            child: Text(
                          '+Keranjang',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                )
          ],
        ),
      ),
    ));
  }
}


//custom widget space


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
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: warnaCashback),
                      child: Center(
                        child: Text(
                          diskon,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: bgNav),
                        ),
                      ),
                    ),
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

Widget review(gambar, judul) {
  return Container(
    width: 60,
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(image: AssetImage(gambar)),
    ),
    child: Text(
      judul,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
    ),
  );
}

Widget DiskusiUser(
    {widgetNama,
    bgProfile,
    comment,
    required double marginKiri,
    required double marginBawah}) {
  return Container(
    margin: EdgeInsets.only(left: marginKiri, bottom: marginBawah),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 12),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 12,
                ),
                width: 35,
                height: 35,
                child: Image.asset(bgProfile),
              ),
              Container(
                child: widgetNama,
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            comment,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        )
      ],
    ),
  );
}
