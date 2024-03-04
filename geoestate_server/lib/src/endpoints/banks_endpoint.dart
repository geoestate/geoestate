import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class BanksEndpoint extends Endpoint {
  Future<List<Bank>> getAllBanks(Session session) async {
    return await Bank.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<void> createBank(Session session, Bank bank) async {
    await Bank.db.insertRow(session, bank);
  }

  Future<void> deleteBank(Session session, Bank bank) async {
    await Bank.db.deleteRow(session, bank);
  }
}
