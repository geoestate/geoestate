import 'package:flutter/material.dart';
import 'package:geoestate_client/geoestate_client.dart';

import '../main.dart';

class BankProvider extends ChangeNotifier {
  List<Bank>? _banks;
  Exception? _connectionException;

  List<Bank>? get banks => _banks;
  Exception? get connectionException => _connectionException;

  Future<void> loadBanks() async {
    try {
      final banks = await client.banks.getAllBanks();
      _banks = banks;
      notifyListeners();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  void _connectionFailed(dynamic exception) {
    _banks = null;
    _connectionException = exception;
    notifyListeners();
  }

  Future<void> createBank(Bank bank) async {
    try {
      await client.banks.createBank(bank);
      await loadBanks();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  Future<void> deleteBank(Bank bank) async {
    try {
      await client.banks.deleteBank(bank);
      await loadBanks();
    } catch (e) {
      _connectionFailed(e);
    }
  }
}
