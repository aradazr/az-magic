import 'dart:ui';
import 'package:azmagic/Model/my_colora.dart';
import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

int yum = 0;

class DraWer extends StatelessWidget {
  DraWer({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceLanguage=Locales.currentLocale(context).toString();
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    final Uri myGitHub = Uri.parse('https://github.com/aradazr/aradazr');
    final Uri contacttMe = Uri.parse('https://aradazarpanah27@gmail.com');
  //برای باز کردن لینک گیت هاب
  Future<void> launchGitHubUrl() async{
    try{
      await launchUrl(myGitHub);

    // ignore: empty_catches
    }catch (err){
  //برای باز کردن ارتباط با من
    }
  }Future<void> launchWebsiteUrl() async{
    try{
      await launchUrl(contacttMe);

    // ignore: empty_catches
    }catch (err){

    }
  }
  

    return SizedBox(
      child: Drawer(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: ListView(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  //لاین سیاه دیوایدر را حذف میکند
                  dividerTheme:
                      const DividerThemeData(color: Colors.transparent),
                ),
                //عکس بالای دراور
                child: DrawerHeader(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Center(
                      //عکس بالای دراوور
                      child: Assets.images.drawer.image(),
                    )),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),

                //خط دیوایدر
                child: Divider(
                  color: SolidColors.words,
                  indent: 30,
                ),
              ),

              //انتخب زبان
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: 
                  deviceLanguage=='en'?
                  LocaleText(
                    'language',
                    style: textTheme.headlineMedium,
                  ):LocaleText(
                    'language',
                    style: textTheme.labelLarge,
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Stack(
                              children: [
                                Dialog(
                                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                                  surfaceTintColor: Color.fromARGB(0, 0, 0, 0),
                                  child: Container(
                                    height: size.height / 3.2,
                                    width: size.width / 1.2,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 49.6,
                                            color: Color.fromARGB(
                                                100, 239, 60, 255))
                                      ],
                                      borderRadius: BorderRadius.circular(60),
                                      border: Border.all(
                                          width: 2, color: Colors.black),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          //زبان انگلیسی
                                          child: TextButton(
                                              onPressed: () {Locales.change(context, 'en');},
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: size.height / 15,
                                                width: size.width / 1.6,
                                                decoration: BoxDecoration(
                                                  color: SolidColors.tab,
                                                  borderRadius:
                                                      BorderRadius.circular(74),
                                                ),
                                                child: FittedBox(
                                                  fit: BoxFit.none,
                                                  child: Text(
                                                    'English',
                                                    style:
                                                        textTheme.headlineLarge,
                                                  ),
                                                ),
                                              )),

                                          //زبان قارسی
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Locales.change(context, 'fa');
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: size.height / 15,
                                              width: size.width / 1.6,
                                              decoration: BoxDecoration(
                                                  color: SolidColors.tab,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          74)),
                                              child: FittedBox(
                                                fit: BoxFit.none,
                                                child: Text(
                                                  'persian',
                                                  style:
                                                      textTheme.headlineLarge,
                                                ),
                                              ),
                                            )),
                                        //دکمه تایید
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: size.height / 15,
                                              width: size.width / 3.5,
                                              decoration: BoxDecoration(
                                                  color: SolidColors.backBttn,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          74)),
                                              child: FittedBox(
                                                child: Text(
                                                  'ok',
                                                  style:
                                                      textTheme.headlineLarge,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ));
                },
              ),

              //درباره ی من
              ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: deviceLanguage=='en'?
                  LocaleText(
                    'aboutme',
                    style: textTheme.headlineMedium,
                  ):LocaleText(
                    'aboutme',
                    style: textTheme.labelLarge,
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Stack(
                              children: [
                                Dialog(
                                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                                  surfaceTintColor: Color.fromARGB(0, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //باکس نوشته ها
                                      Container(
                                        height: size.height / 3.2,
                                        width: size.width / 1.2,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                blurRadius: 49.6,
                                                color: Color.fromARGB(
                                                    100, 239, 60, 255))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 1,
                                              left: 24,
                                              right: 24,
                                              top: 1),
                                          child: SingleChildScrollView(
                                            physics:
                                                const BouncingScrollPhysics(),
                                            child: 
                                            deviceLanguage=='en'?
                                            LocaleText(
                                              'aboutmewords',
                                              style: textTheme.headlineMedium,
                                              textAlign: TextAlign.center,
                                            ): LocaleText(
                                              'aboutmewords',
                                              style: textTheme.labelLarge,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      //دکمه ی اوکی
                                      Container(
                                        alignment: Alignment.center,
                                        height: size.height / 13,
                                        width: size.width / 3.5,
                                        decoration: BoxDecoration(
                                            color: SolidColors.tab,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: FittedBox(
                                                child: Text(
                                              'ok',
                                              style: textTheme.headlineLarge,
                                            ))),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ));
                },
              ),

              //ارتباط با من
              ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: deviceLanguage=='en'?
                  LocaleText(
                    'contactme',
                    style: textTheme.headlineMedium,
                  ):LocaleText(
                    'contactme',
                    style: textTheme.labelLarge,
                  ),
                ),
                onTap: ()  {
                  launchWebsiteUrl();
                },
              ),

              //گیت هاب من
              ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: deviceLanguage=='en'?
                  LocaleText(
                    'github',
                    style: textTheme.headlineMedium,
                  ):LocaleText(
                    'github',
                    style: textTheme.labelLarge,
                  ),
                ),
                onTap: () {
                  launchGitHubUrl();
                },
              ),

              //دکمه تغییر تم
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 295, 240, 0),
                child: InkWell(
                  onTap: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                    //اینجا یه متغیر تعریف کردم گفتم اگر یک بتر دکمه تغییرو بزنی متغیر رو یک کن
                    //و حالا اگگرم متغیر یک بود یکی ازش کم کن
                    if (yum == 0) {
                      yum++;
                    } else {
                      yum--;
                    }
                  },
                  child: yum == 0
                      ? ImageIcon(
                          AssetImage(
                            Assets.images.moon.path,
                          ),
                          size: 50)
                      : Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: ImageIcon(AssetImage(Assets.images.sun.path),
                              size: 50),
                        ),
                ),
              )
            ],
          )),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const MyAppBar({required this.globalKey, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        
        elevation: 0,
        actions: [
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: SolidColors.words,
                  ),
                  onPressed: () => globalKey.currentState!.openDrawer()),
              const SizedBox(
                width: 310,
              ),
              Assets.images.asa.image(height: 50)
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
