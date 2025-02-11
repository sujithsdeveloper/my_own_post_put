import 'package:flutter/material.dart';

class AppContoller extends ChangeNotifier {
  bool isObscure = true;
  bool checkBoxCheked = false;
  bool isEmailSelected = true;
  bool isButtonColored = false;
  bool singleFieldColored = false;
  int currentIndex=0;
  int pageIndex = 0;
  String email = "";
  String phoneNumber = "";
  String password = "";

  void clearState() {
    isEmailSelected = true;
    isButtonColored = false;
    notifyListeners();
  }

  void toggleObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }

  void chnageBottomNav({required int index}){
currentIndex=index;
notifyListeners();
  }

  void toggleCheckBox({required bool value}) {
    checkBoxCheked = value;
    notifyListeners();
  }

  void toggleEmailPhoneNumber(bool value) {
    isEmailSelected = value;
    notifyListeners();
  }

  void changeButtonColor() {
    if ((email.isNotEmpty && password.isNotEmpty) ||
        (!isEmailSelected && phoneNumber.isNotEmpty && password.isNotEmpty)) {
      isButtonColored = true;
    } else {
      isButtonColored = false;
    }
    notifyListeners();
  }

  void changeSingleFeildButtonColor({required String controller}) {
    if (controller.isEmpty) {
      singleFieldColored = true;
    } else {
      singleFieldColored = false;
    }

    notifyListeners();
  }

  bool setupPop({required int index, required PageController pageController}) {
    if (index != 0) {
      pageController.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);

      return false;
    } else {
      return true;
    }
  }
}
