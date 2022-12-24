import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var numeralSystems = NumeralSystems();

  TextEditingController getDigit = TextEditingController();

  String result = '';
  String toValue = 'Binary';
  String fromValue = 'Binary';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: getDigit,
              decoration: InputDecoration(
                  labelText: 'Enter the Digit',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: DropdownButton<String>(
                          value: toValue,
                          underline: Container(),
                          items: <String>[
                            'Binary',
                            'Octal',
                            'Decimal',
                            'Hexadecimal'
                          ]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(fontSize: 22),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              toValue = newValue!;
                            });
                          }
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: DropdownButton<String>(
                          value: fromValue,
                          underline: Container(),
                          items: <String>[
                            'Binary',
                            'Octal',
                            'Decimal',
                            'Hexadecimal'
                          ]
                              .map<DropdownMenuItem<String>>((String fvalue) {
                            return DropdownMenuItem<String>(
                              value: fvalue,
                              child: Text(
                                fvalue,
                                style: const TextStyle(fontSize: 22),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? nValue) {
                            setState(() {
                              fromValue = nValue!;
                            });
                          }
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (toValue == "Decimal" && fromValue == "Binary") {
                  numeralSystems.convert(NUMERAL_SYSTEMS.decimal, getDigit.text);
                  String bvalue = '${numeralSystems.binary.stringValue}';
                  result = bvalue;
                  setState(() {});
                }else if (toValue == "Decimal" && fromValue == "Octal") {
                  numeralSystems.convert(NUMERAL_SYSTEMS.decimal, getDigit.text);
                  String ovalue = '${numeralSystems.octal.stringValue}';
                  result = ovalue;
                  setState(() {});
                }else if (toValue == "Decimal" && fromValue == "Hexadecimal") {
                  numeralSystems.convert(NUMERAL_SYSTEMS.decimal, getDigit.text);
                  String hvalue = '${numeralSystems.hexadecimal.stringValue}';
                  result = hvalue;
                  setState(() {});
                }else if(toValue == "Binary" && fromValue == "Decimal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.binary, getDigit.text);
                  String devalue = '${numeralSystems.decimal.stringValue}';
                  result = devalue;
                  setState(() {});
                }else if(toValue == "Binary" && fromValue == "Octal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.binary, getDigit.text);
                  String ocvalue = '${numeralSystems.octal.stringValue}';
                  result = ocvalue;
                  setState(() {});
                }else if(toValue == "Binary" && fromValue == "Hexadecimal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.binary, getDigit.text);
                  String hevalue = '${numeralSystems.hexadecimal.stringValue}';
                  result = hevalue;
                  setState(() {});
                }else if(toValue == "Octal" && fromValue == "Decimal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.octal, getDigit.text);
                  String decvalue = '${numeralSystems.decimal.stringValue}';
                  result = decvalue;
                  setState(() {});
                }else if(toValue == "Octal" && fromValue == "Binary"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.octal, getDigit.text);
                  String bivalue = '${numeralSystems.binary.stringValue}';
                  result = bivalue;
                  setState(() {});
                }else if(toValue == "Octal" && fromValue == "Hexadecimal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.octal, getDigit.text);
                  String hexvalue = '${numeralSystems.hexadecimal.stringValue}';
                  result = hexvalue;
                  setState(() {});
                }else if(toValue == "Hexadecimal" && fromValue == "Binary"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, getDigit.text);
                  String binvalue = '${numeralSystems.binary.stringValue}';
                  result = binvalue;
                  setState(() {});
                }else if(toValue == "Hexadecimal" && fromValue == "Octal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, getDigit.text);
                  String octavalue = '${numeralSystems.decimal.stringValue}';
                  result = octavalue;
                  setState(() {});
                }else if(toValue == "Hexadecimal" && fromValue == "Decimal"){
                  numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, getDigit.text);
                  String decavalue = '${numeralSystems.decimal.stringValue}';
                  result = decavalue;
                  setState(() {});
                }else{
                  result = "Error";
                  setState(() {});
                }
              },
              child: Container(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: const Color(0xff303030),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Convert",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Text(
              result,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xff303030),
              ),
            ),
          ],
        ),
      ),
    );
  }
}