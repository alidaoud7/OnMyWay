import 'package:flutter/material.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({Key? key}) : super(key: key);

  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  String dropValue = 'No City';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropValue,
      alignment: AlignmentDirectional.center,
      icon: Row(
        children: [
          const Icon(
            Icons.arrow_drop_down,),
        ],
      ),
      iconSize: 24,
      elevation: 10,
      style: const TextStyle(
        color: Colors.black,
        letterSpacing: 1.0,
        fontSize: 30,
      ),

      onChanged: (String? newValue) {
        setState(() {
          dropValue = newValue!;
        });
      },
      items: <String>['No City','Akouda', 'Bouficha', 'Enfida', '	Hammam Sousse',
        'Hergla','Kalâa Kebira','Kalâa Seghira','Kondar','Msaken','Sidi Bou Ali','Sidi El Hani',
        'Sahloul','Sousse Médina','Sousse Riadh','Sidi Abdelhamid'
      ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(

            children: [

              Text(value,),
            ],
          ),
        );
      })
          .toList(),
    );
  }}
