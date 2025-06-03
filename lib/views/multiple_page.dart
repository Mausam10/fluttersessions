import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiplePage extends StatelessWidget {
  const MultiplePage({super.key});

  @override
  Widget build(BuildContext context) {
    int? args = int.tryParse(Get.arguments);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("The Twice of $num is ${(args ?? 0) * 2}"),
              SizedBox(height: 20),
              Text("Multiplication Table of ${args ?? 0}:"),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  int multiplier = index + 1;
                  return Card(
                    color: Colors.deepPurple.shade50,
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Text(
                            "${args ?? 0} * $multiplier = ${(args ?? 0) * multiplier}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              // fontWeight: FontWeight.w500,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
