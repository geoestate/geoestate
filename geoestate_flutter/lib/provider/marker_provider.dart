// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:geo_estate/Models/my_marker.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MyMarkerProvider extends ChangeNotifier {
//   List<MyMarker> _myMarkersList = [];

//   List<MyMarker> get myMarkersList => _myMarkersList;

//   set setMyMarkersList(List<MyMarker> myMarkers) {
//     _myMarkersList = myMarkers;
//     notifyListeners();
//   }

//   Future<void> fetchMyMarkerData() async {
//     try {
//       QuerySnapshot querySnapshot =
//           await FirebaseFirestore.instance.collection('markers').get();

//       List<MyMarker> myMarkersList = querySnapshot.docs.map((e) {
//         return MyMarker.fromJson(e.data() as Map<String, dynamic>);
//       }).toList();

//       List<Map<String, dynamic>> myMarkersListJson =
//           myMarkersList.map((dataset) => dataset.toJson()).toList();

//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setStringList('MyMarkersList',
//           myMarkersListJson.map((json) => json.toString()).toList());

//       _myMarkersList = myMarkersList;

//       print(_myMarkersList);
//       notifyListeners();
//     } catch (e) {
//       print('Error fetching and storing MyMarkers data: $e');
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:geoestate_client/geoestate_client.dart';

import '../main.dart';

class MarkerProvider extends ChangeNotifier {
  List<Marker>? _markers;
  Exception? _connectionException;

  List<Marker>? get markers => _markers;
  Exception? get connectionException => _connectionException;

  Future<void> loadMarkers() async {
    try {
      final markers = await client.markers.getAllMarkers();
      _markers = markers;
      notifyListeners();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  void _connectionFailed(dynamic exception) {
    _markers = null;
    _connectionException = exception;
    notifyListeners();
  }

  Future<void> createMarker(Marker marker) async {
    try {
      await client.markers.createMarker(marker);
      await loadMarkers();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  Future<void> deleteMarker(Marker marker) async {
    try {
      await client.markers.deleteMarker(marker);
      await loadMarkers();
    } catch (e) {
      _connectionFailed(e);
    }
  }
}
