import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/Model/my_colora.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';



import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Pages/page_1.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  
  @override




void initState(){

Future.delayed(const Duration(seconds: 3)).then((value){

Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page1()));

});

  super.initState();
}
  
  
  @override
  Widget build(BuildContext context) {
   var textTheme = Theme.of(context).textTheme;
   
   var deviceLanguage=Locales.currentLocale(context).toString();

//with extension
context.currentLocale;
   return SafeArea(
     child: Scaffold(body: 
     Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.magic.image(width: 200),
         

          
         deviceLanguage=='en'?
          LocaleText(
            
            'welcome',
            
            style: textTheme.bodyMedium,):LocaleText(
            
            'welcome',
            
            style: textTheme.labelSmall,)
            
           ,
          const SizedBox(height: 50,),
          const SpinKitPulsingGrid(
  color:SolidColors.tab ,
  size: 50.0
         )
        ],
       ),
     )
     
     ,),
   );
  }
}