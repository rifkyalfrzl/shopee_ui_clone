import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String image;
  final String price;
  final String stock;
  const Product({super.key, required this.image, required this.price, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        height: 230,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: SizedBox(
                                height: 130,
                                width: double.infinity,
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rp',
                                  style: TextStyle(
                                      color: Colors.orange.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(price,
                                    style: TextStyle(
                                        color: Colors.orange.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 18,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange.shade900,
                              ),
                              child: Center(
                                  child: Text(
                                stock,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      );
  }
}