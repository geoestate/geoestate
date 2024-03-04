import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'analytics_page.dart';
import 'map_page/map_page.dart';
import 'view_dateset_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoEstate'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1439694458393-78ecf14da7f9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: SizedBox(
              width: 800,
              height: 600,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const MapPage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 6,
                      child: SizedBox(
                        height: 240,
                        width: 260,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      15) // Adjust the radius as needed
                                  ),
                              child: const Icon(
                                FontAwesomeIcons.map,
                                size: 100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Map',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const ViewDatasetPage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 6,
                      child: SizedBox(
                        height: 240,
                        width: 260,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      15) // Adjust the radius as needed
                                  ),
                              child: const Icon(
                                FontAwesomeIcons.database,
                                size: 100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Datasets',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const AnalyticsPage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 6,
                      child: SizedBox(
                        height: 240,
                        width: 260,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      15) // Adjust the radius as needed
                                  ),
                              child: const Icon(
                                FontAwesomeIcons.barsProgress,
                                size: 100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Analytics',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => const ExportExcelPage(),
                      //   ),
                      // );
                    },
                    child: Card(
                      elevation: 6,
                      child: SizedBox(
                        height: 240,
                        width: 260,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      15) // Adjust the radius as needed
                                  ),
                              child: const Icon(
                                FontAwesomeIcons.google,
                                size: 100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Gemini',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => const ExportExcelPage(),
                      //   ),
                      // );
                    },
                    child: Card(
                      elevation: 6,
                      child: SizedBox(
                        height: 240,
                        width: 260,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      15) // Adjust the radius as needed
                                  ),
                              child: const Icon(
                                FontAwesomeIcons.download,
                                size: 100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Export',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
