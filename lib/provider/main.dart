import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_one/provider/fontSize.dart';
import 'package:provider_one/provider/rate.dart';
import 'getFaces.dart';

void main() {
  runApp(ProviderMy());
}
class ProviderMy extends StatelessWidget {
  const ProviderMy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (BuildContext context)=> RateNotifire(),
      ),
      ChangeNotifierProvider(
      create: (BuildContext context)=> fontSizeNotifier(),
      )
    ],
      child: MainScreen(),
    );

  }
}



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var fontSizeprovider=Provider.of<fontSizeNotifier>(context);
    var rateprovider=Provider.of<RateNotifire>(context);
    print('the bulid tree has been rebulid');
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          body: Column(
            // mainAxisAlignment:MainAxisAlignment.center ,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Text('Rate us',
                style: TextStyle(
                    fontSize: fontSizeprovider.fontsize,
                    color: Colors.red),),
              SizedBox(
                height: 30,
              ),
              getFaces(rateprovider.rate.toInt()),
              Expanded(child: Container()),
              Text('Chang the text size' , style: TextStyle(fontSize: 14, color: Colors.blue)),
              Slider(
                value: fontSizeprovider.fontsize,
                onChanged: (newValue){
                  fontSizeprovider.changeFontSize(newValue);
                },
                max:50,
                min: 20,
              ),
              Text('rate them',style: TextStyle(fontSize: 14, color: Colors.white)),
              Slider(
                value: rateprovider.rate,
                onChanged: (newValue){
                rateprovider.changeRating(newValue);
                },
                max:4,
                min: 0,
              ) ,
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}



