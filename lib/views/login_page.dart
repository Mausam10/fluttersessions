import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navwithgetx/controllers/login_page_controller.dart';
import 'package:navwithgetx/views/multiple_page.dart';

class LoginPage extends StatelessWidget {
  final c = Get.put(LoginPageController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter a Number",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: c.numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => MultiplePage(),
                    arguments: c.numberController.text,
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
