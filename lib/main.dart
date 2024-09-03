import 'package:computer_model1/computer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ComputerController controller = Get.put(ComputerController());

    return MaterialApp(
      home: Scaffold(
        body: Center(
           child: Obx(() => Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 controller.computer.value.name.value,
               ),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: controller.computer.value.color.value,
                 ),
                   onPressed: (){
                     controller.switchingComputer();
                   },
                   child: const Text('버튼'))
             ],
           )),
        ),
      ),
    );
  }
}
