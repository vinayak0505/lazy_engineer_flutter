import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/HomeScreen/book_description_screen/data/bd_modal.dart';

class BDRepository {
  BDRepository() {
    getInfo();
  }
  Future<BDModal?> getInfo() async {
    try {
      // await Future.delayed(const Duration(seconds: 3));
      return BDModal.dummy();
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
