import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navwithgetx/controllers/home_page_controller.dart';
import 'package:navwithgetx/views/details_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final c = Get.put((HomePageController()));
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => DetailsPage(), arguments: c.product);
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      c.product['imageUrl'],
                      height: Get.height / 4,
                      width: Get.height / 4,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      c.product['name'],
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      c.product['category'],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      c.product['price'],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
