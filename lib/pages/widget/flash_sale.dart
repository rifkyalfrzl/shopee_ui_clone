import 'package:flutter/material.dart';
import 'package:shopee_ui/pages/widget/countdown_widget.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'F',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.flash_on_rounded,
                        color: Colors.orange.shade900,
                        size: 20,
                      ),
                      Text('ASH ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.orange.shade900,
                              fontWeight: FontWeight.bold)),
                      Text('SALE',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.orange.shade900,
                              fontWeight: FontWeight.w400)),
                      const CountdownWidget(),
                      const Spacer(),
                      Text(
                        'Lihat Semua ',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: Colors.grey.shade600,
                      )
                    ],
                  ),
                );
  }
}