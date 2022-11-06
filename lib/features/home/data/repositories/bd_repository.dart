import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/home/data/models/bd_modal.dart';

class BDRepository {
  BDRepository() {
    getInfo();
  }
  Future<BDModal?> getInfo() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return BDModal.dummy();
      // return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
