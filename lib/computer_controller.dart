import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'computer_model.dart';

class ComputerController extends GetxController{
  var computer = ComputerModel(
      name: ''.obs,
      color: Colors.white.obs,
  ).obs;

  void switchingComputer(){
    if (computer.value.name.value == 'Mac m1 pro') {
      computer.update((comp) {
        comp?.name.value = 'Samsung Notebook';
        comp?.color.value = Colors.blue;
      });
    } else {
      computer.update((comp) {
        comp?.name.value = 'Mac m1 pro';
        comp?.color.value = Colors.red;
      });
    }
  }
}