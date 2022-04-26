
import 'package:flutter/material.dart';
import 'package:flutter_application/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Checks') 
        ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled 
            ? (value){
              _sliderValue = value;
              setState(() {});
              
              }
            : null 
            ),

            // Checkbox(
            //   value: _sliderEnabled, 
            //   onChanged: (value){
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   }
            //   ),


            // Switch(
            //   value: _sliderEnabled, 
            //   onChanged: (value) => setState(() {_sliderEnabled = value;})
            //   ),

    
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value ?? true;})
              ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value;})
              ),

            const AboutListTile(),

      
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image:const NetworkImage('https://i.pinimg.com/originals/e3/19/80/e319803871c63918a4579fde97527b76.png') ,
                  fit: BoxFit.contain,
                  width: _sliderValue, 
                  ),
              ),
            ),
      
           
      
        ],
        )
    );
  }
}