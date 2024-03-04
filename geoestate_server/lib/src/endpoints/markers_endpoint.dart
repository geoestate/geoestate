import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class MarkersEndpoint extends Endpoint {
  Future<List<Marker>> getAllMarkers(Session session) async {

    return await Marker.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }

  Future<void> createMarker(Session session, Marker marker) async {
    await Marker.db.insertRow(session, marker);
  }

  Future<void> deleteMarker(Session session, Marker marker) async {
    await Marker.db.deleteRow(session, marker);
  }
}