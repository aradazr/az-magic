import 'package:azmagic/Model/static_items.dart';
import 'package:azmagic/Pages/page_2.dart';
import 'package:azmagic/Pages/page_3.dart';
import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/providers/globalkey_provider.dart';
import 'package:flutter/material.dart';
import 'package:azmagic/Pages/page_1.dart';
import 'package:azmagic/Model/my_colora.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:provider/provider.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var deviceLanguage=Locales.currentLocale(context).toString();
    var size = MediaQuery.of(context).size;
    //* providers
    final keyProvider = Provider.of<GlobalKeyProvider>(context);

    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          key: keyProvider.pageFinalKey,
        
          drawerEnableOpenDragGesture: true,
          appBar: MyAppBar(globalKey: keyProvider.pageFinalKey),
        
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
        
                    Container(
                      height: size.height / 5,
                      width: size.width / 1.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: SolidColors.buttn,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black, width: 3)),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: 
                          
                          deviceLanguage=='en'?
                          LocaleText(
                            textAlign: TextAlign.center,
                            'finalpage',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w800,
                                ),
                          ):LocaleText(
                            textAlign: TextAlign.center,
                            'finalpage',
                            style: textTheme.labelMedium,
                          ),
                        ),
                      ),
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
