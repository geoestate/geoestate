import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class DatasetsEndpoint extends Endpoint {
  Future<List<Dataset>> getAllDatasets(Session session) async {
    return await Dataset.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<void> createDataset(Session session, Dataset dataset) async {
    await Dataset.db.insertRow(session, dataset);
  }

  Future<void> updateDataset(Session session, Dataset dataset) async {
    await Dataset.db.updateRow(session, dataset);
  }

  Future<void> deleteDataset(Session session, Dataset dataset) async {
    await Dataset.db.deleteRow(session, dataset);
  }
}
