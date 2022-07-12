import 'package:flutter/material.dart';
import '../providers/addressProvider.dart';
import '../widgets/app_bar.dart';
import '../utilities/constants.dart';
import '../models/charging_types.dart';
import '../models/power_types.dart';
import '../widgets/button.dart';
import './selectAddress.dart';
import 'package:provider/provider.dart';

class AddStationScreen extends StatefulWidget {
  //AddStationScreen({Key? key}) : super(key: key);
  static const routeName = 'add_station';

  @override
  State<AddStationScreen> createState() => _AddStationScreenState();
}

class _AddStationScreenState extends State<AddStationScreen> {
  bool _value = false;
  // final _chrgingTypeList = [
  //   ChargingType(title: 'Fast'),
  //   ChargingType(title: 'Slow'),
  // ];

  // final _powerTypeList = [
  //   PowerType(title: 'AC'),
  //   PowerType(title: 'DC'),
  // ];

  final List<String> _powerTypeList = ['AC', 'DC'];

  Widget _buildSingleCheckbox(ChargingType chargingType) =>
      _buildCheckbox(chargingType);

  Widget _buildCheckbox(ChargingType chargingType) => Container(
        width: MediaQuery.of(context).size.width * 0.35,
        child: ListTile(
          leading: Checkbox(
            value: chargingType.value,
            onChanged: (value) => setState(
              () {
                chargingType.value = value!;
              },
            ),
          ),
          title: Container(
            width: 100,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                chargingType.title,
              ),
            ),
          ),
        ),
      );

  // Widget _buildSingleCheckboxPowerType(PowerType powerType) =>
  //     _buildCheckboxPowerType(powerType);

  // Widget _buildCheckboxPowerType(PowerType powerType) => Container(
  //       width: MediaQuery.of(context).size.width * 0.35,
  //       child: ListTile(
  //         leading: Checkbox(
  //           value: powerType.value,
  //           onChanged: (value) => setState(
  //             () {
  //               powerType.value = value!;
  //               print('Value: $value');
  //             },
  //           ),
  //         ),
  //         title: Text(powerType.title),
  //       ),
  //     );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final addressProvider =
        Provider.of<LocationProvider>(context).newAddressSet;

    return Scaffold(
      appBar: MyAppBar('Add Station', true),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.09),
            child: Row(
              children: const [
                Text(
                  'Station Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.02,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff00ffba),
                    offset: Offset(2, 2),
                    blurRadius: 10,
                    spreadRadius: 0.2),
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(-4, -4),
                  blurRadius: 10,
                )
              ],
            ),
            child: TextField(
              onChanged: (value) {},
              cursorColor: Theme.of(context).primaryColor,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Station Name'),
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.09),
            child: Row(
              children: const [
                Text(
                  'Station License Number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.02,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff00ffba),
                    offset: Offset(2, 2),
                    blurRadius: 10,
                    spreadRadius: 0.2),
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(-4, -4),
                  blurRadius: 10,
                )
              ],
            ),
            child: TextField(
              onChanged: (value) {},
              cursorColor: Theme.of(context).primaryColor,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Station License Number'),
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.09),
            child: Row(
              children: const [
                Text(
                  'Contact Number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.02,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff00ffba),
                    offset: Offset(2, 2),
                    blurRadius: 10,
                    spreadRadius: 0.2),
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(-4, -4),
                  blurRadius: 10,
                )
              ],
            ),
            child: TextField(
              onChanged: (value) {},
              cursorColor: Theme.of(context).primaryColor,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Contact Number'),
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.09),
            child: Row(
              children: const [
                Text(
                  'Station Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.02,
          ),
          InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SelectAddress())),
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              padding: EdgeInsets.only(
                  left: mediaQuery.width * 0.04,
                  top: mediaQuery.height * 0.01,
                  right: mediaQuery.width * 0.04),
              height: mediaQuery.height * 0.12,
              decoration: BoxDecoration(
                color: Color(0xff1f1f1f),
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff00ffba),
                      offset: Offset(2, 2),
                      blurRadius: 10,
                      spreadRadius: 0.2),
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(-4, -4),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Text(
                addressProvider == '' ? 'Station Address' : addressProvider,
                style: const TextStyle(color: Color(0xff62676e), fontSize: 14),
              ),
              // child: TextField(
              //   onChanged: (value) {},
              //   cursorColor: Theme.of(context).primaryColor,
              //   decoration:
              //       kTextFieldDecoration.copyWith(hintText: 'Contact Number'),
              // ),
            ),
          ),
          // SizedBox(
          //   height: mediaQuery.height * 0.05,
          // ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.09),
          //   child: Row(
          //     children: const [
          //       Text(
          //         'Charging Type',
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: mediaQuery.height * 0.02,
          // ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.01),
          //   child: Row(
          //     children: _chrgingTypeList
          //         .map((item) => _buildSingleCheckbox(item))
          //         .toList(),
          //   ),
          // ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.09),
            child: Row(
              children: const [
                Text(
                  'Power Type',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.01),
            // child: Row(
            //   children: _powerTypeList
            //       .map((item) => _buildSingleCheckboxPowerType(item))
            //       .toList(),
            // ),
            child: Row(
              children: [],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
          Center(child: Button('NEXT', () {})),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
        ],
      ),
    );
  }
}
