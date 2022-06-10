import 'package:flutter/material.dart';
class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String dropdownValue = 'No Region';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,

      icon: const Icon(
          Icons.arrow_drop_down,),
      iconSize: 24,
      elevation: 10,
      style: const TextStyle(
        color: Colors.black,

        letterSpacing: 1.0,
        fontSize: 30,
      ),

      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['No Region','Ariana', 'Béja', 'Ben Arous', '	Bizerte',
        'Gabès','Gafsa','Jendouba','Kairouan','Kasserine','Kébili','LeKef',
        'Mahdia','La Manouba','Médenine','Monastir','Nabeul',
        'Sfax','Sidi Bouzid','Siliana','Sousse','Tataouine','Tozeur','Tunis','Zaghouan',
      ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width:50,),
              Text(value,),
            ],
          ),
        );
      })
          .toList(),
    );
  }}