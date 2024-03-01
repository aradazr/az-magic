import 'package:azmagic/Model/static_items.dart';
import 'package:azmagic/Pages/page_2.dart';
import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/Model/my_colora.dart';
import 'package:azmagic/providers/globalkey_provider.dart';


import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:provider/provider.dart';



//برای دکمه تغییر تم
int yum = 0;

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
          key: keyProvider.page1Key,
        
          drawerEnableOpenDragGesture: true,
          //اپ بار
          appBar: MyAppBar(globalKey: keyProvider.page1Key),
        
          drawer: DraWer(),
        
          body: Stack(children: [
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  deviceLanguage=='en'? LocaleText(
                    "page1title",
                    style: textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ):LocaleText(
                    "page1title",
                    style: textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height / 64,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: SolidColors.buttn,
                          fixedSize:
                              Size(size.width / 2.79, size.height / 14.96)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page2()),
                        );
                      },
                      child:
                      deviceLanguage=='en'?
                      LocaleText(
                        'yesbttn',
                        style: textTheme.displaySmall,
                      ):
                      FittedBox(
                        child: LocaleText(
                          'yesbttn',
                          style: textTheme.labelMedium,
                        ),
                      )
                      
                      //نوشته فارسی
                      
                      )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
