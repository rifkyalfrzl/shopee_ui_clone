import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String? icon;
  final String? label;
  const MenuButton({super.key, this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      
                      width: 60,
                      child: Column(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.grey.shade300
                                )
                              ),
                              child: Image.asset(
                                '$icon',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: SizedBox(
                                width: 60,
                                child: Text(
                                  '$label',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                  textAlign: TextAlign.center,
                                )),
                          )
                        ],
                      ),
                    );
  }
}