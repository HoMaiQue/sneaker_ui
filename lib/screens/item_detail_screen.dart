import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sneaker_app/screens/cart_screen.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});
  static const routerName = "/detail";

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home, size: 25, color: Colors.black),
        title: const Text(
          "Shopping",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(
                right: 17,
              ),
              child: FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.red,
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: size.width, child: Image.asset('assets/images/item.png')),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('NIKE men\'s Shoes',
                style: TextStyle(fontSize: 13, color: Colors.grey)),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nike Air Huarche",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  Text("\$120", style: TextStyle(color: Colors.redAccent)),
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text("sizes",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              const SizedBox(width: 10),
              _makeSizeButton("US7", true),
              const SizedBox(width: 8),
              _makeSizeButton("US7.5", false),
              const SizedBox(width: 8),
              _makeSizeButton("US8", true),
              const SizedBox(width: 8),
              _makeSizeButton("US8.5", false),
              const SizedBox(width: 8),
              _makeSizeButton("US9", true),
              const SizedBox(width: 8),
              _makeSizeButton("US9.5", true),
            ]),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text("*Faster Shipping options may be available",
                style: TextStyle(fontSize: 13, color: Colors.grey)),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text("Description",
                style: TextStyle(fontSize: 15, color: Colors.black)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
                "Consequatur dicta molestiae. Eum optio et nihil ipsa eum repudiandae ea. Consequatur sed nisi accusamus.Sint temporibus laborum et harum repudiandae autem quaerat asperiores. Consequatur sunt sint impedit explicabo quasi. Quia similique iusto est eum non.Quo et ut vitae amet odit et repellat. Rerum reprehenderit error ipsam libero in eius. Commodi corrupti corrupti placeat nihil magni vel distinctio repellendus ut. Et error similique amet at porro optio. Impedit exercitationem minus reprehenderit amet ipsa molestiae quo accusamus sapiente",
                style:
                    TextStyle(fontSize: 13, color: Colors.grey, height: 1.5)),
          )
        ],
      ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CartScreen.routerName);
        },
        backgroundColor: Colors.black,
        child: const Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _makeSizeButton(String size, bool available) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: available
            ? Border.all(color: Colors.grey, width: 0.3)
            : Border.all(color: Colors.transparent, width: 0),
        color: available ? Colors.white : Colors.grey[300],
      ),
      child: Center(
          child: Text(size,
              style: available
                  ? const TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)
                  : TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[50]))),
    );
  }
}
