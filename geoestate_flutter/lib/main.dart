import 'package:geoestate_client/geoestate_client.dart';
import 'package:flutter/material.dart';
import 'package:geoestate_flutter/pages/home_page.dart';
import 'package:geoestate_flutter/provider/dataset_provider.dart';
import 'package:geoestate_flutter/provider/marker_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'pages/sign_in_page.dart';
import 'provider/bank_provider.dart';
import 'src/serverpod_client.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeServerpodClient();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MarkerProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BankProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DatasetProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'GeoEstate',
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            toolbarHeight: 40,
            elevation: 6,
            titleTextStyle: GoogleFonts.barlow(
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodyMedium: GoogleFonts.barlow(textStyle: textTheme.bodyMedium),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const MyHomePage(title: 'GeoEstate'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    // Make sure that we rebuild the page if signed in status changes.
    sessionManager.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return sessionManager.isSignedIn ? const HomePage() : const LoginPage();
  }
}
