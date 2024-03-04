// import 'package:cloud_firestore/cloud_firestore.dart';

// class Dataset {
//   String refNo;
//   String datasetName;
//   String bankName;
//   String branchName;
//   String partyName;
//   String colonyName;
//   String cityVillageName;
//   double latitude;
//   double longitude;
//   int marketRate;
//   String unit;
//   Timestamp dateOfValuation;
//   String entryBy;
//   Timestamp createdAt;
//   String remarks;
//   String colorMark;
//   Timestamp dateOfVisit;
//   String billId;
//   String datasetId;

//   Dataset({
//     required this.refNo,
//     required this.datasetName,
//     required this.bankName,
//     required this.branchName,
//     required this.partyName,
//     required this.colonyName,
//     required this.cityVillageName,
//     required this.latitude,
//     required this.longitude,
//     required this.marketRate,
//     required this.unit,
//     required this.dateOfValuation,
//     required this.entryBy,
//     required this.createdAt,
//     required this.remarks,
//     required this.billId,
//     required this.datasetId,
//     required this.dateOfVisit,
//     required this.colorMark,
//   });

//   factory Dataset.fromJson(Map<String, dynamic> map) {
//     return Dataset(
//       refNo: map['refNo'] ?? '',
//       datasetName: map['datasetName'] ?? '',
//       bankName: map['bankName'] ?? '',
//       branchName: map['branchName'] ?? '',
//       partyName: map['partyName'] ?? '',
//       colonyName: map['colonyName'] ?? '',
//       cityVillageName: map['cityVillageName'] ?? '',
//       latitude: map['latitude'] ?? 0.0,
//       longitude: map['longitude'] ?? 0.0,
//       marketRate: map['marketRate'] ?? 0,
//       unit: map['unit'] ?? '',
//       dateOfValuation: map['dateOfValuation'],
//       entryBy: map['entryBy'] ?? '',
//       createdAt: map['createdAt'],
//       remarks: map['remarks'] ?? '',
//       datasetId: map['datasetId'] ?? '',
//       billId: map['billId'] ?? '',
//       dateOfVisit: map['dateOfVisit'], // Parse the timestamp string to DateTime
//       colorMark: map['colorMark'] ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'refNo': refNo,
//       'datasetName': datasetName,
//       'bankName': bankName,
//       'branchName': branchName,
//       'partyName': partyName,
//       'colonyName': colonyName,
//       'cityVillageName': cityVillageName,
//       'latitude': latitude,
//       'longitude': longitude,
//       'marketRate': marketRate,
//       'dateOfValuation': dateOfValuation,
//       'entryBY': entryBy,
//       'createdAt': createdAt,
//       'remarks': remarks,
//       'datasetId': datasetId,
//       'billId': billId,
//       'dateOfVisit': dateOfVisit,
//       // Convert DateTime to a string representation
//       'colorMark': colorMark,
//     };
//   }
// }
