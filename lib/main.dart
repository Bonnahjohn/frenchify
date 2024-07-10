// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Pages/controller.dart';
import 'begin/begin.dart';
import 'inter/intermediate.dart';
import 'advan/advance.dart';
import 'Pages/translator.dart';
import 'Pages/feedback.dart';
import 'Pages/about.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SettingsController settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'French Level',
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: settingsController.fontSize.value),
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: settingsController.fontSize.value),
          ),
        ),
        themeMode: settingsController.themeMode.value,
        home: MainScreen(),
      );
    });
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-7469711478511103/3568950315',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {},
      ),
      request: AdRequest(),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    final settingsController = Get.find<SettingsController>();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(100, 149, 237, 1),
          title: Text('French Level'),
          actions: [
            Builder(
              builder: (context) => PopupMenuButton(
                itemBuilder: (_) => [
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('Appearance'),
                      onTap: () {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Appearance Settings'),
                            actions: [
                              ListTile(
                                title: Obx(() => Text(
                                    settingsController.themeMode.value ==
                                            ThemeMode.dark
                                        ? 'Dark Theme'
                                        : 'Light Theme')),
                              ),
                              Center(
                                child: Obx(
                                  () => Switch(
                                    activeColor: Colors.black,
                                    value: settingsController.themeMode.value ==
                                        ThemeMode.dark,
                                    onChanged: (bool value) {
                                      settingsController.updateThemeMode(value
                                          ? ThemeMode.dark
                                          : ThemeMode.light);
                                    },
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.redAccent),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('Text Settings'),
                      onTap: () {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Text Settings'),
                            actions: [
                              ListTile(
                                leading: Icon(Icons.abc_outlined, size: 16),
                                trailing: Icon(Icons.abc_outlined, size: 42),
                              ),
                              Obx(
                                () => Slider(
                                  inactiveColor: Colors.grey[400],
                                  activeColor: Color.fromRGBO(100, 149, 237, 1),
                                  min: 14,
                                  max: 36,
                                  value: settingsController.fontSize.value,
                                  onChanged: (double value) {
                                    settingsController.updateFontSize(value);
                                  },
                                  divisions: 6,
                                  label:
                                      '${settingsController.fontSize.value.round()}',
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.redAccent),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
                icon: Icon(Icons.settings_outlined),
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: Text('Beginner')),
              Tab(child: Text('Intermediate')),
              Tab(child: Text('Advance')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Beginner(),
            Intermediate(),
            AdvanIntro(),
          ],
        ),
        drawer: Down(),
        bottomNavigationBar: _isAdLoaded
            ? Container(
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : SizedBox(height: 50),
      ),
    );
  }
}

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
              '',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, size: 30),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => MyApp())));
            },
          ),
          ListTile(
            leading: Icon(Icons.translate_outlined, size: 30),
            title: Text('Translator'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Translator()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.feedback_outlined, size: 30),
            title: Text('Feedback'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Feedbacks()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outlined, size: 30),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined, size: 30),
            title: const Text('Privacy Policy', style: TextStyle(fontSize: 16)),
            onTap: () {
              launch(
                  'https://sites.google.com/view/frenchify-privacy-policy/home');
            },
          ),
        ],
      ),
    );
  }
}
