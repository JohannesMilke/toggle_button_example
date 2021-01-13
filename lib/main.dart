import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_button_example/widget/toggle_buttons_1.dart';
import 'package:toggle_button_example/widget/toggle_buttons_2.dart';
import 'package:toggle_button_example/widget/toggle_buttons_3.dart';
import 'package:toggle_button_example/widget/toggle_buttons_4.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Toggle Buttons';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.lightBlue.shade900,
        ),
        home: MainPage(),
      );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildHeader(
                  title: 'Single + Required',
                  child: ToggleButtons1(),
                ),
                SizedBox(height: 32),
                buildHeader(
                  title: 'Single + Not Required',
                  child: ToggleButtons2(),
                ),
                SizedBox(height: 32),
                buildHeader(
                  title: 'Multiple + Required',
                  child: ToggleButtons3(),
                ),
                SizedBox(height: 32),
                buildHeader(
                  title: 'Multiple + Not Required',
                  child: ToggleButtons4(),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildHeader({
    @required Widget child,
    @required String title,
  }) =>
      Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          child,
        ],
      );
}
