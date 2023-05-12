import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: const EdgeInsets.only(top: 200, left: 10, right: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 1,
                        blurRadius: 10
                      )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.qr_code_scanner, color: Colors.grey,),
                          const VerticalDivider(
                            width: 1,
                            thickness: 2,
                            indent: 2,
                            endIndent: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.account_balance_wallet_outlined, color: Colors.orange.shade700,),
                                  ),
                                  const Text('Rp100.000')
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical:1.0),
                                child: Text('Isi Saldo', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),),
                              )
                            ],
                          ),
                          const VerticalDivider(
                            width: 1,
                            thickness: 2,
                            indent: 2,
                            endIndent: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.orange.shade700
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'S',
                                          style: TextStyle(
                                            color: Colors.orange.shade700,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text('15')
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical:3),
                                child: Text('Ayo Check-in', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),),
                              )
                            ],
                          ),
                          const VerticalDivider(
                            width: 1,
                            thickness: 2,
                            indent: 2,
                            endIndent: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.orange.shade700
                                        )
                                      ),
                                      child: Center(child: Icon(Icons.compare_arrows, size: 20, color: Colors.orange.shade700,))),
                                  ),
                                  const Text('Transfer')
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical:3.0),
                                child: Text('Gratis', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
  }
}