import 'package:azmagic/Model/static_items.dart';
import 'package:azmagic/Pages/page_1.dart';
import 'package:azmagic/Pages/page_2.dart';
import 'package:azmagic/Pages/page_3.dart';
import 'package:azmagic/Pages/final_page.dart';
import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/providers/globalkey_provider.dart';
import 'package:flutter/material.dart';
import 'package:azmagic/Model/my_colora.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:provider/provider.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    var deviceLanguage=Locales.currentLocale(context).toString();
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    //* providers
    final keyProvider = Provider.of<GlobalKeyProvider>(context);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          key: keyProvider.page4Key,
        
          drawerEnableOpenDragGesture: true,
          appBar: MyAppBar(globalKey: keyProvider.page4Key),
        
          drawer: DraWer(),
        
          //شکل ستاره ها
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              Positioned(
                right: 0,
                bottom: 0,
                top: -50,
                left: 60,
                child: Container(
                  child:
                      Assets.images.goldenstar.image(height: 1000, width: 1000),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 0,
                  child: Container(
                    child: Assets.images.magicstar.image(),
                  )),
              Positioned(
                  bottom: 60,
                  left: 0,
                  child: Container(
                    child: Assets.images.starwood.image(),
                  )),
        
              //متن و بقیه دکمه ها
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),

                    deviceLanguage=='en'?
                    LocaleText(
                      'page4title',
                      style: textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ):LocaleText(
                      'page4title',
                      style: textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
        
                    Container(
                      alignment: Alignment.topCenter,
                      height: size.height / 8.75,
                      width: size.width / 4,
                      decoration: BoxDecoration(
                        color: SolidColors.backBttn,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        '${numbers.plus.isEmpty ? '' : numbers.plus.reduce((value, element) => value + element)}',
                        style: textTheme.bodyLarge,
                      ),
                    ),
        
                    SizedBox(
                      height: size.height / 64,
                    )
                    //دکمه بنفش رنگ
                    ,
        
                    //دکمه کارت
                    Container(
                      height: size.height / 14,
                      width: size.width / 3,
                      decoration: BoxDecoration(
                          color: SolidColors.buttn,
                          borderRadius: BorderRadius.circular(30)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FinalPage()),
                          );
                        },
                        child: const ImageIcon(
                          AssetImage('assets/images/cards.png'),
                          color: Colors.black,
                        ),
                      ),
                    ),
        
                    SizedBox(width: size.width / 32),
        
                    const Spacer(),
        
                    //دکمه زرد رنگ
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height / 12,
                        width: size.width / 6,
                        decoration: BoxDecoration(
                            color: SolidColors.backBttn,
                            borderRadius: BorderRadius.circular(17)),
                        child: IconButton(
                          onPressed: () {
                            numbers.plus.clear();
        
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => Page3()),
                            );
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => Page1()),
                            );
                          },
                          icon: const Icon(Icons.home_filled,
                              color: SolidColors.words),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
