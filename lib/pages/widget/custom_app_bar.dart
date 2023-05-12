import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15.0),
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.grey[200]
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Icon(Icons.search, color: Colors.grey,),
                                ),
                                Text('Klaim Voucher Diskon 25RB', style: TextStyle(color: Colors.orange[700], fontWeight: FontWeight.w400)),
                                const Padding(
                                  padding: EdgeInsets.only(left:35.0),
                                  child: Icon(Icons.camera_alt_outlined, color: Colors.grey,),
                                ),
                              ],
                            ),
                        ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          child: const Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 25,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:15.0),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            child: const Icon(Icons.chat_outlined, color: Colors.white, size: 25,),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
  }
}