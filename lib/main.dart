import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'begin/begin.dart';
import 'inter/intermediate.dart';
import 'advan/advance.dart';
import 'Pages/translator.dart';
import 'Pages/feedback.dart';
import 'Pages/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _mode = ThemeMode.light;
  bool _isSwitch = false;
  double _font = 16;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'French Level',
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: _font),
          ),
        ),
        darkTheme: ThemeData.dark(),
        themeMode: _mode,
        home: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark
                .copyWith(statusBarColor: Color.fromRGBO(100, 149, 237, 1)),
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color.fromRGBO(100, 149, 237, 1),
                  title: Text('French Level'),
                  actions: [
                    Builder(
                        builder: (context) => PopupMenuButton(
                            itemBuilder: (_) => [
                                  //mmmmmmmmmmmmmmmm
                                  //Appearance settings item
                                  //mmmmmmmmmmmmmmmmmmmmmmm
                                  PopupMenuItem(
                                      child: ListTile(
                                    title: Text('Appearance'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                title:
                                                    Text('Appearance Settings'),
                                                actions: [
                                                  ListTile(
                                                    title: Text(_isSwitch
                                                        ? 'Dark Theme'
                                                        : 'Light Theme'),
                                                  ),
                                                  Center(
                                                    child: Transform.scale(
                                                      scale: 2,
                                                      child: Switch(
                                                          activeColor:
                                                              Colors.black,
                                                          value: _mode ==
                                                              ThemeMode.dark,
                                                          onChanged:
                                                              (bool value) {
                                                            setState(() {
                                                              _isSwitch = value;
                                                              _mode = value
                                                                  ? ThemeMode
                                                                      .dark
                                                                  : ThemeMode
                                                                      .light;
                                                            });
                                                          }),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Colors
                                                                      .redAccent)),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Close'))
                                                ],
                                              ));
                                    },
                                  )),
                                  //mmmmmmmmmmmmmmmm
                                  //text settings item
                                  //mmmmmmmmmmmmmmmmmmmmmmm
                                  PopupMenuItem(
                                      child: ListTile(
                                          title: Text('Text Settings'),
                                          onTap: () {
                                            Navigator.pop(context);
                                            showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                      title:
                                                          Text('Text Settings'),
                                                      actions: [
                                                        ListTile(
                                                            leading: Icon(
                                                              Icons
                                                                  .abc_outlined,
                                                              size: 16,
                                                            ),
                                                            trailing: Icon(
                                                              Icons
                                                                  .abc_outlined,
                                                              size: 42,
                                                            )),
                                                        Slider(
                                                          inactiveColor:
                                                              Colors.grey[400],
                                                          activeColor:
                                                              Color.fromRGBO(
                                                                  100,
                                                                  149,
                                                                  237,
                                                                  1),
                                                          min: 14,
                                                          max: 36,
                                                          value: _font,
                                                          onChanged:
                                                              (double value) {
                                                            setState(() {
                                                              _font = value;
                                                            });
                                                          },
                                                          divisions: 6,
                                                          label:
                                                              '${_font.round()}',
                                                        ),
                                                        ElevatedButton(
                                                            style: ButtonStyle(
                                                                backgroundColor:
                                                                    MaterialStatePropertyAll(
                                                                        Colors
                                                                            .redAccent)),
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child:
                                                                Text('Close'))
                                                      ],
                                                    ));
                                          }))
                                ],
                            icon: Icon(Icons.settings_outlined)))
                  ],
                  bottom: TabBar(indicatorColor: Colors.white, tabs: [
                    Tab(
                      child: Text('Beginner'),
                    ),
                    Tab(
                      child: Text('Intermediate '),
                    ),
                    Tab(
                      child: Text('Advance'),
                    ),
                  ]),
                ),
                body: TabBarView(
                    children: [Beginner(), Intermediate(), AdvanIntro()]),
                drawer: Down(),
              ),
            )));
  }
}
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
//bottomnavigationbar
// mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

class Down extends StatefulWidget {
  const Down({Key? key}) : super(key: key);

  @override
  State<Down> createState() => _DownState();
}

class _DownState extends State<Down> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          padding: EdgeInsets.all(28.0),
          width: 100,
          height: 80,
          color: Color.fromRGBO(100, 149, 237, 1),
          child: Text(
            'Frenchify French App',
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home_outlined,
            size: 30,
          ),
          title: Text('Home'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => MyApp())));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.translate_outlined,
            size: 30,
          ),
          title: Text('Translator'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Translator()));
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.feedback_outlined,
            size: 30,
          ),
          title: Text('Feedback'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Feedbacks()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.info_outlined,
            size: 30,
          ),
          title: Text('About Us'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => About()));
          },
        )
      ],
    ));
  }
}
