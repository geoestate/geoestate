import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:geoestate_client/geoestate_client.dart';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../Models/dataset.dart';
import '../provider/dataset_provider.dart';
import '../src/utils/utils.dart';
import '../src/widgets/custom_textfield.dart';

class ViewDatasetPage extends StatefulWidget {
  final double latitude;
  final double longitude;

  const ViewDatasetPage({
    Key? key,
    this.latitude = 0.0,
    this.longitude = 0.0,
  }) : super(key: key);

  @override
  _ViewDatasetPageState createState() => _ViewDatasetPageState();
}

class _ViewDatasetPageState extends State<ViewDatasetPage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    Provider.of<DatasetProvider>(context, listen: false).loadDatasets();
  }

  TextEditingController updatePartyNameController = TextEditingController();
  TextEditingController updaterefNoController = TextEditingController();

  TextEditingController updateColonyNameController = TextEditingController();
  TextEditingController updateCityVillageNameController =
      TextEditingController();
  TextEditingController updateMarketRateController = TextEditingController();
  TextEditingController updateRemarksController = TextEditingController();
  TextEditingController updateUnitController = TextEditingController();

  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(
      BuildContext context, DateTime initDate, String datasetId) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != initDate) {
      setState(() {
        _selectedDate = picked;

        _updateDateOnFirestore(datasetId);
      });
    }
  }

  Future<void> _updateDateOnFirestore(String datasetId) async {
    try {
      // await FirebaseFirestore.instance
      //     .collection('datasets')
      //     .doc(datasetId)
      //     .update({
      //   'dateOfVisit': DateTime(
      //     _selectedDate.year,
      //     _selectedDate.month,
      //     _selectedDate.day,
      //   ),
      // });
    } catch (e) {
      showAlert(context, e.toString());
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    updaterefNoController.dispose();
    updatePartyNameController.dispose();
    updateColonyNameController.dispose();
    updateCityVillageNameController.dispose();
    updateMarketRateController.dispose();
    updateUnitController.dispose();
    updateRemarksController.dispose();

    super.dispose();
  }

  // _selectDateRange(context) {
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return StatefulBuilder(builder: (context, setState) {
  //         return ContentDialog(
  //           title: const Text(
  //             "Select Date Range for Exporting!",
  //             style: TextStyle(fontSize: 16),
  //           ),
  //           content:
  //           ],
  //         );
  //       });
  //     },
  //   );
  // }

  String selectedColor = 'white'; // Default selected color
  List<String> colors = [
    'red',
    'orange',
    'green',
    'blue',
    'yellow',
    'white',
    'purple',
    'indigo'
  ];

  Color getColor(String colorName) {
    switch (colorName) {
      case 'red':
        return Colors.red;
      case 'orange':
        return Colors.orange;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'purple':
        return Colors.purple;
      case 'indigo':
        return Colors.indigo;
      default:
        return Colors.white; // Default color
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Existing Datasets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.search,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomTextfield(
                      title:
                          'Search [Ref No., Bank Name, Branch Name, Colony Name, City/Village Name]',
                      controller: _searchController,
                      onChanged: (value) {
                        setState(
                            () {}); // Trigger a rebuild when search input changes
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),

                  // const m.VerticalDivider(
                  //   thickness: 5,
                  //   width: 5,
                  //   color: Color.fromARGB(255, 18, 19, 19),
                  // ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // Data Table
            Consumer<DatasetProvider>(
              builder: (context, datasetProvider, child) {
                datasetProvider.loadDatasets();
                final filteredData = datasetProvider.datasets!.where((doc) {
                  if (widget.longitude != 0.0) {
                    final double docLongitude = doc.longitude;
                    return docLongitude == widget.longitude;
                  }
                  final docBankName = doc.bankName.toString().toLowerCase();
                  final docBranchName = doc.branchName.toString().toLowerCase();
                  final partyName = doc.partyName.toString().toLowerCase();
                  final docColonyName = doc.colonyName.toString().toLowerCase();
                  final docCityVillageName =
                      doc.cityVillageName.toString().toLowerCase();
                  final docRefNo = doc.refNo.toString().toLowerCase();
                  final remarks = doc.remarks.toString().toLowerCase();
                  final searchQuery = _searchController.text.toLowerCase();

                  final searchTerms = searchQuery.split(' ');

                  return searchTerms.every(
                    (term) =>
                        docBankName.contains(term) ||
                        docBranchName.contains(term) ||
                        remarks.contains(term) ||
                        partyName.contains(term) ||
                        docColonyName.contains(term) ||
                        docCityVillageName.contains(term) ||
                        docRefNo.contains(term),
                  );
                }).toList();

                if (filteredData.isEmpty) {
                  return noDataIcon();
                }
                return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      elevation: 6,
                      // decoration: BoxDecoration(
                      //   // color: FluentTheme.of(context).activeColor,
                      //   borderRadius: BorderRadius.circular(16),
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.white.withOpacity(0.2),
                      //       spreadRadius: 2,
                      //       blurRadius: 8,
                      //       offset: const Offset(0, 3),
                      //     ),
                      //   ],
                      // ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        // physics: ClampingScrollPhysics(),
                        child: DataTable(
                          columnSpacing: 12,
                          horizontalMargin: 12,
                          headingRowColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 163, 163, 163),
                          ),
                          columns: const [
                            // DataColumn(label: Text('S. No.')),
                            DataColumn(label: Text('Ref. No.')),
                            DataColumn(label: Text('Bank Name')),
                            DataColumn(label: Text('Branch Name')),
                            DataColumn(label: Text('Party Name')),
                            DataColumn(label: Text('Colony Name')),
                            DataColumn(label: Text('City/Village Name')),
                            DataColumn(label: Text('Coordinates')),
                            DataColumn(label: Text('Market Rate (₹)')),
                            DataColumn(label: Text('Unit (per)')),
                            // DataColumn(label: Text('Date of Valuation')),
                            DataColumn(label: Text('Date of Visit')),
                            DataColumn(label: Text('Remarks')),
                            DataColumn(label: Text('Edit')),
                            DataColumn(label: Text('Remove Data')),
                          ],
                          rows: List<DataRow>.generate(
                            filteredData.length,
                            (index) {
                              List<Dataset> data = filteredData.toList();

                              return DataRow(
                                color:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    return getColor(data[index]
                                            .colorMark
                                            .toString()
                                            .toLowerCase())
                                        .withOpacity(0.6);
                                  },
                                ),
                                cells: [
                                  // DataCell(
                                  //   Text(
                                  //     data.length.toString(),
                                  //   ),
                                  // ),
                                  DataCell(
                                    Text(
                                      data[index].refNo.toString(),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      data[index].bankName.toString(),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      data[index].branchName.toString(),
                                    ),
                                  ),
                                  DataCell(
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          data[index].partyName.toString(),
                                        ),
                                      ), onTap: () {
                                    // _navigateToNextPage(context,
                                    //     refNo: data['refNo'],
                                    //     partyName: data['partyName'],
                                    //     address:
                                    //         '${data['colonyName']}, ${data['cityVillageName']}',
                                    //     billId: data['billId'],
                                    //     bankName: data['bankName'],
                                    //     branchName: data['branchName']);
                                  }),
                                  DataCell(Text(
                                    data[index].colonyName.toString(),
                                  )),
                                  DataCell(Text(
                                      data[index].cityVillageName.toString())),
                                  DataCell(
                                    Text(
                                      '${data[index].latitude}°N, ${data[index].longitude}°E',
                                    ),
                                    // onTap: () {
                                    //   Navigator.of(context).pushAndRemoveUntil(
                                    //     MaterialPageRoute(
                                    //       builder: (_) => MapPage(
                                    //         latitude:
                                    //             data['latitude'].toString(),
                                    //         longitude:
                                    //             data['longitude'].toString(),
                                    //         zoom: 20,
                                    //       ),
                                    //     ),
                                    //     (route) => false,
                                    //   );
                                    // },
                                  ),
                                  DataCell(
                                      Text(data[index].marketRate.toString())),
                                  DataCell(Text(data[index].unit.toString())),
                                  // DataCell(Text(DateFormat('yyyy-MM-dd')
                                  //     .format(data['dateOfValuation'].toDate())
                                  //     .toString())),
                                  DataCell(Row(
                                    children: [
                                      Text(
                                        DateFormat('dd-MM-yyyy')
                                            .format(data[index].dateOfVisit),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          _selectDate(
                                              context,
                                              data[index].dateOfVisit,
                                              data[index].datasetId.toString());
                                        },
                                        icon: const Icon(Icons.edit),
                                      )
                                    ],
                                  )),
                                  DataCell(Text(
                                    data[index].remarks.toString(),
                                  )),
                                  DataCell(SizedBox(
                                    child: TextButton(
                                      child: const Text('Edit'),
                                      onPressed: () {
                                        updateDataset(
                                          datasetId: data[index].datasetId,
                                          refNo: data[index].refNo,
                                          partyName: data[index].partyName,
                                          colonyName: data[index].colonyName,
                                          cityVillageName:
                                              data[index].cityVillageName,
                                          marketRate: data[index].marketRate,
                                          unit: data[index].unit,
                                          remarks: data[index].remarks,
                                          colorMark: data[index].colorMark,
                                          datasetName: data[index]
                                              .datasetName, // Keep existing datasetName
                                          bankName: data[index]
                                              .bankName, // Keep existing bankName
                                          latitude: data[index]
                                              .latitude, // Keep existing latitude
                                          branchName: data[index]
                                              .branchName, // Keep existing branchName
                                          longitude: data[index]
                                              .longitude, // Keep existing longitude
                                          dateOfValuation: data[index]
                                              .dateOfValuation, // Keep existing dateOfValuation
                                          entryBy: data[index]
                                              .entryBy, // Keep existing entryBy
                                          createdAt: data[index]
                                              .createdAt, // Keep existing createdAt
                                          dateOfVisit: data[index]
                                              .dateOfVisit, // Keep existing dateOfVisit
                                          billId: data[index]
                                              .billId, // Keep existing billId
                                        );
                                      },
                                    ),
                                  )),
                                  DataCell(SizedBox(
                                    child: TextButton(
                                        child: const Text(
                                          'Remove',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                        onPressed: () {
                                          removeExistingDataset(
                                            data[index].datasetId,
                                          );
                                        }),
                                  )),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }

  // Route _popupScreen() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) =>
  //         const ExportExcelPage(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(1.0, 0.0);
  //       const end = Offset.zero;
  //       const curve = Curves.easeInOut;
  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  //       var offsetAnimation = animation.drive(tween);
  //       return SlideTransition(
  //         position: offsetAnimation,
  //         child: child,
  //       );
  //     },
  //   );
  // }

  updateDataset({
    required String refNo,
    required String datasetName,
    required String bankName,
    required String branchName,
    required String partyName,
    required String colonyName,
    required String cityVillageName,
    required double latitude,
    required double longitude,
    required int marketRate,
    required String unit,
    required DateTime dateOfValuation,
    required String entryBy,
    required DateTime createdAt,
    required String remarks,
    required String colorMark,
    required DateTime dateOfVisit,
    required String billId,
    required String datasetId,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: const Text(
              "Update Dataset",
              style: TextStyle(fontSize: 16),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextfield(
                  title: refNo,
                  controller: updaterefNoController,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  title: partyName,
                  controller: updatePartyNameController,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  title: colonyName,
                  controller: updateColonyNameController,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  title: cityVillageName,
                  controller: updateCityVillageNameController,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  title: '₹$marketRate',
                  controller: updateMarketRateController,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  title: unit.isEmpty ? 'Unit' : unit,
                  controller: updateUnitController,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  title: remarks.isNotEmpty ? remarks : 'Remarks',
                  maxLines: 3,
                  controller: updateRemarksController,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Color Marker: ",
                      style: TextStyle(fontSize: 16),
                    ),
                    DropdownButton<String>(
                      value: colorMark.toLowerCase(),
                      onChanged: (String? newValue) async {
                        setState(() {
                          // selectedColor = newValue!;
                          colorMark = newValue!;
                          selectedColor = newValue;
                        });
                      },
                      items:
                          colors.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: getColor(
                                    value), // Implement getColor onChanged
                                radius: 16.0,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(
                child: const Text(
                  "Cancel",
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                child: const Text(
                  "Update",
                ),
                onPressed: () async {
                  Navigator.pop(context);
                  try {
                    // Create a new Dataset object with existing values
                    Dataset datasetToUpdate = Dataset(
                      refNo: refNo,
                      datasetName: datasetName,
                      bankName: bankName,
                      branchName: branchName,
                      partyName: partyName,
                      colonyName: colonyName,
                      cityVillageName: cityVillageName,
                      latitude: latitude,
                      longitude: longitude,
                      marketRate: marketRate,
                      unit: unit,
                      dateOfValuation: dateOfValuation,
                      entryBy: entryBy,
                      createdAt: createdAt,
                      remarks: remarks,
                      colorMark: colorMark,
                      dateOfVisit: dateOfVisit,
                      billId: billId,
                      datasetId: datasetId,
                    );

                    // Update specific fields if they are not empty
                    if (updaterefNoController.text.isNotEmpty) {
                      datasetToUpdate.refNo =
                          updaterefNoController.text.toUpperCase();
                    }
                    if (updateColonyNameController.text.isNotEmpty) {
                      datasetToUpdate.colonyName =
                          updateColonyNameController.text.toUpperCase();
                    }
                    if (updatePartyNameController.text.isNotEmpty) {
                      datasetToUpdate.partyName =
                          updatePartyNameController.text.toUpperCase();
                    }
                    if (updateCityVillageNameController.text.isNotEmpty) {
                      datasetToUpdate.cityVillageName =
                          updateCityVillageNameController.text.toUpperCase();
                    }
                    if (updateMarketRateController.text.isNotEmpty) {
                      datasetToUpdate.marketRate =
                          int.parse(updateMarketRateController.text);
                    }
                    if (updateUnitController.text.isNotEmpty) {
                      datasetToUpdate.unit =
                          updateUnitController.text.toUpperCase();
                    }
                    if (updateRemarksController.text.isNotEmpty) {
                      datasetToUpdate.remarks =
                          updateRemarksController.text.toUpperCase();
                    }
                    if (colorMark.toString().toUpperCase().isNotEmpty) {
                      datasetToUpdate.colorMark =
                          colorMark.toString().toUpperCase();
                    }

                    // Update the dataset in the provider
                    context
                        .read<DatasetProvider>()
                        .updateDataset(datasetToUpdate);

                    // Clear all text controllers after successful update
                    updaterefNoController.clear();
                    updatePartyNameController.clear();
                    updateCityVillageNameController.clear();
                    updateColonyNameController.clear();
                    updateMarketRateController.clear();
                    updateUnitController.clear();
                    updateRemarksController.clear();
                  } catch (e) {
                    // Show an alert if any error occurs during dataset update
                    showAlert(context, e.toString());
                  }
                },
              )
            ],
          );
        });
      },
    );
  }

  removeExistingDataset(String datasetId) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Are you Sure?",
            style: TextStyle(fontSize: 18),
          ),
          content: const Text(
            "This action will parmanently delete this data.",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Delete'),
            )
          ],
        );
      },
    );
    if (result == null || !result) {
      return;
    }
    try {
      Dataset dataset = context
          .read<DatasetProvider>()
          .datasets!
          .where((element) => element.datasetId == datasetId) as Dataset;

      context.read<DatasetProvider>().deleteDataset(dataset);
    } catch (e) {
      showAlert(context, e.toString());
      return;
    }
  }

  void _navigateToNextPage(BuildContext context,
      {required refNo,
      required String address,
      required partyName,
      required billId,
      required bankName,
      required branchName}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController _phraseController = TextEditingController();

        return AlertDialog(
          title: const Text('Enter Phrase'),
          content: TextField(
            controller: _phraseController,
            decoration: const InputDecoration(labelText: 'Phrase'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                // _navigateToNewPage(
                //   context,
                //   _phraseController.text,
                //   partyName,
                //   refNo,
                //   address,
                //   billId,
                //   bankName,
                //   branchName,
                // );
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

//   void _navigateToNewPage(
//     BuildContext context,
//     String phrase,
//     partyName,
//     refNo,
//     address,
//     billId,
//     bankName,
//     branchName,
//   ) {
//     if (phrase == 'AdminNavigator08') {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => BillingPage(
//             partyName: partyName,
//             refNo: refNo,
//             address: address,
//             billId: billId,
//             bankName: bankName,
//             branchName: branchName,
//           ),
//         ),
//       );
//     } else {
//       // Show an error message or handle the case when the phrase doesn't match
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Error'),
//             content: const Text('Invalid phrase.'),
//             actions: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).pop(); // Close the dialog
//                 },
//                 child: const Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
// }
}
