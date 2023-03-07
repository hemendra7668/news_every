import 'package:flutter/material.dart';

class Signupp extends StatefulWidget {
  const Signupp({super.key});

  @override
  State<Signupp> createState() => _SignuppState();
}

class _SignuppState extends State<Signupp> {
  List<Step> stepList() => [
        const Step(
            title: Text('Account'),
            content: Center(
              child: Text('Account'),
            )),
        const Step(
            title: Text('Address'),
            content: Center(
              child: Text('Address'),
            )),
        const Step(
            title: Text('Confirm'),
            content: Center(
              child: Text('Confirm'),
            ))
      ];
  int activestep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("shdbs")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.white])),
        child: Stepper(
          currentStep: activestep,
          onStepContinue: () {
            if (0 <= activestep && activestep < stepList().length - 1) {
              setState(() {
                activestep += 1;
              });
            }
          },
          onStepCancel: () {
            if (activestep == 0) {
              return;
            } else {
              setState(() {
                activestep -= 1;
              });
            }
          },
          onStepTapped: (index) {
            setState(() {
              activestep = index;
            });
          },
          type: StepperType.vertical,
          steps: stepList(),
        ),
      ),
    );
  }
}
