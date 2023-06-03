import 'package:flutter/material.dart';
import 'package:sneaker_app/constants/color.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});
  static const routerName = "/payment";
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined,
                size: 18, color: Colors.black),
          ),
          title: const Text("Confirm Order",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: _type == 1
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.3, color: Colors.grey)),
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: UIColor.KPrimary,
                                ),
                                Text("Amazone Pay",
                                    style: _type == 1
                                        ? const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                        : const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset("assets/icons/amazon-pay.png",
                                width: 70, height: 70, fit: BoxFit.cover)
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: _type == 2
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.8, color: Colors.grey)),
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: UIColor.KPrimary,
                                ),
                                Text("Credit card",
                                    style: _type == 2
                                        ? const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                        : const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              "assets/icons/visa.png",
                              width: 30,
                            ),
                            const SizedBox(width: 8),
                            Image.asset(
                              "assets/icons/mastercard.png",
                              width: 30,
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 55,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: _type == 3
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.8, color: Colors.grey)),
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: UIColor.KPrimary,
                                ),
                                Text("Paypal",
                                    style: _type == 3
                                        ? const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                        : const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset(
                              "assets/icons/paypal.png",
                              width: 50,
                            ),
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 110),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub-total",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                    Text("\$240.00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping fee",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                    Text("\$240.00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 1,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    Text("\$290.00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.redAccent)),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PaymentScreen.routerName);
                  },
                  child: Container(
                    height: 45,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text("Confirm",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15))),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
