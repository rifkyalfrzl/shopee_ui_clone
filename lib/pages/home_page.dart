import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopee_ui/pages/widget/custom_app_bar.dart';
import 'package:shopee_ui/pages/widget/flash_sale.dart';
import 'package:shopee_ui/pages/widget/menu_button.dart';
import 'package:shopee_ui/pages/widget/payment_widget.dart';
import 'package:shopee_ui/pages/widget/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(children: [
                Stack(children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        viewportFraction: 1, aspectRatio: 32 / 17.5),
                    items: [
                      "assets/banner/shp_gratis.jpeg",
                      "assets/banner/shp_belanja.jpeg",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return ClipRRect(
                            child: Image.asset(
                              i,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const PaymentWidget(),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    MenuButton(
                      icon: 'assets/icon/shp_voucher.png',
                      label: 'Gratis Ongkir dan Voucher',
                    ),
                    MenuButton(
                      icon: 'assets/icon/shp_pulsa.png',
                      label: 'Pulsa, Tagihan dan Tiket',
                    ),
                    MenuButton(
                      icon: 'assets/icon/shp_pay_disekitar.png',
                      label: 'ShopeePay Sekitarmu',
                    ),
                    MenuButton(
                      icon: 'assets/icon/shp_lokal.png',
                      label: 'Shopee Pilih Lokal',
                    ),
                    MenuButton(
                      icon: 'assets/icon/shp_barokah.png',
                      label: 'Shopee Barokah',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MenuButton(
                      icon: 'assets/icon/shp_cod.png',
                      label: 'Bayar di Tempat',
                    ),
                    const MenuButton(
                      icon: 'assets/icon/shp_elektronik.png',
                      label: 'Elektronik 100% Ori',
                    ),
                    const MenuButton(
                      icon: 'assets/icon/shp_supermarket.png',
                      label: 'Shopee Supermarket',
                    ),
                    const MenuButton(
                      icon: 'assets/icon/shp_murah.png',
                      label: 'Murah Lebay',
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: Icon(
                              Icons.grid_view,
                              color: Colors.orange.shade700,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: SizedBox(
                                width: 60,
                                child: Text(
                                  'Lihat Semua',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                  textAlign: TextAlign.center,
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/banner/promo2.jpeg'),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          'assets/banner/promo1.gif',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const FlashSale(),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Product(image: 'assets/product/boxer.jpeg', price: '50.000', stock: '35 TERJUAL'),
                      Product(image: 'assets/product/baju.jpeg', price: '150.000', stock: '40 TERJUAL'),
                      Product(image: 'assets/product/cermin.jpeg', price: '30.000', stock: '14 TERJUAL'),
                      Product(image: 'assets/product/charger.jpeg', price: '120.000', stock: '10 TERJUAL'),
                      Product(image: 'assets/product/kaos.jpeg', price: '80.000', stock: 'HABIS TERJUAL'),
                    ],
                  ),
                ),
                const Divider(thickness: 10,)
              ]),
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
