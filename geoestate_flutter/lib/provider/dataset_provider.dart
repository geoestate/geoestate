// import 'dart:convert';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../Models/dataset.dart';

// class DatasetProvider extends ChangeNotifier {
//   static const String _datasetsListKey = 'datasetsList';

//   List<Dataset> _datasetsList = [];
//   bool isLoading = false;

//   List<Dataset> get datasetsList => _datasetsList;

//   Future<void> fetchDatasetData() async {
//     try {
//       isLoading = true;
//       // notifyListeners();

//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       List<String>? cachedData = prefs.getStringList(_datasetsListKey);

//       if (cachedData != null && !isCacheExpired(prefs)) {
//         _datasetsList = cachedData
//             .map((json) => Dataset.fromJson(jsonDecode(json)))
//             .toList();
//         notifyListeners();
//         return;
//       }

//       QuerySnapshot querySnapshot =
//           await FirebaseFirestore.instance.collection('datasets').get();

//       _datasetsList = querySnapshot.docs
//           .map((doc) => Dataset.fromJson(doc.data() as Map<String, dynamic>))
//           .toList();
//       prefs.setStringList(
//           _datasetsListKey,
//           _datasetsList
//               .map((dataset) => jsonEncode(dataset.toJson()))
//               .toList());

//       notifyListeners();
//     } catch (e) {
//       print('Error fetching and storing Datasets data: $e');
//       // Implement error handling mechanism (e.g., show a snackbar)
//     } finally {
//       isLoading = false;
//       notifyListeners();
//     }
//   }

//   bool isCacheExpired(SharedPreferences prefs) {
//     // Get the timestamp when the data was last cached
//     int? lastCachedTimestamp = prefs.getInt('lastCachedTimestamp');

//     // Calculate the current timestamp
//     int currentTimestamp = DateTime.now().millisecondsSinceEpoch;

//     // Check if the data is cached and if it's expired (e.g., expired after 1 hour)
//     if (lastCachedTimestamp != null) {
//       // Define the expiration duration (e.g., 1 hour)
//       const int expirationDuration =
//           1 * 60 * 60 * 1000; // 1 hour in milliseconds

//       // Compare the current time with the last cached time plus the expiration duration
//       return currentTimestamp > (lastCachedTimestamp + expirationDuration);
//     } else {
//       // Cache is considered expired if data was never cached
//       return true;
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:geoestate_client/geoestate_client.dart';

import '../main.dart';

class DatasetProvider extends ChangeNotifier {
  List<Dataset>? _datasets;
  Exception? _connectionException;

  List<Dataset>? get datasets => _datasets;
  Exception? get connectionException => _connectionException;

  Future<void> loadDatasets() async {
    try {
      final datasets = await client.datasets.getAllDatasets();
      _datasets = datasets;
      notifyListeners();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  void _connectionFailed(dynamic exception) {
    _datasets = null;
    _connectionException = exception;
    notifyListeners();
  }

  Future<void> createDataset(Dataset dataset) async {
    try {
      await client.datasets.createDataset(dataset);
      await loadDatasets();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  Future<void> updateDataset(Dataset datasetToUpdate) async {
    try {
      await client.datasets.updateDataset(datasetToUpdate);

      await loadDatasets();
    } catch (e) {
      _connectionFailed(e);
    }
  }

  Future<void> deleteDataset(Dataset dataset) async {
    try {
      await client.datasets.deleteDataset(dataset);
      await loadDatasets();
    } catch (e) {
      _connectionFailed(e);
    }
  }
}
