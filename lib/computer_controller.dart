import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'computer_model.dart';

class ComputerController extends GetxController{

  var computer = ComputerModel(name: '아래 버튼을 눌러주세요',color: Colors.yellow).obs;
  void switchingComputer(){
    if (computer.value.name == 'Samsung Notebook') {
      computer.update((comp) {
        comp?.name = 'MAC M1 Pro';
        comp?.color = Colors.red;
      });
    } else {
      computer.update((comp) {
        comp?.name = 'Samsung Notebook';
        comp?.color = Colors.blue;
      });
    }
  }
}