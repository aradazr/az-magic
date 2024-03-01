import 'package:azmagic/Model/static_items.dart';
import 'package:azmagic/Pages/page_3.dart';
import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/Model/my_colora.dart';
import 'package:azmagic/providers/globalkey_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  const Page2({super.key});

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
          key: keyProvider.page2Key,
        
          drawerEnableOpenDragGesture: true,
          appBar: MyAppBar(globalKey: keyProvider.page2Key),
        
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
                      'page2title',
                      style: textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ):LocaleText(
                      'page2title',
                      style: textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
        
                    SizedBox(
                      height: size.height / 64,
                    )
                    //دکمه بنفش رنگ
                    ,
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: SolidColors.buttn,
                            fixedSize:
                                Size(size.width / 2.79, size.height / 14.96)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page3()),
                          );
                        },
                        child: 
                        deviceLanguage=='en'?
                        LocaleText(
                          'yesbttn',
                          style: textTheme.displaySmall,
                        ):FittedBox(
                          child: LocaleText(
                            'yesbttn',
                            style: textTheme.labelMedium,
                          ),
                        )
                        ),
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
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          icon: const Icon(Icons.turn_left_rounded, shadows: [
                            Shadow(
                              blurRadius: 15,
                              offset: Offset(0, 3),
                              color: Colors.black,
                            )
                          ]),
                          color: Colors.black,
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
