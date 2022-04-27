import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Doctor extends StatelessWidget{
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: 392,
                height: 350,
                child: SfCalendar(
                  view: CalendarView.month,
                  firstDayOfWeek: 1,
                ),
              )
            ],
          )
        ],
      ),
    );


      /*SizedBox(
        width: 500,
        height: 350,
        child: SfCalendar(
        view: CalendarView.month,
        firstDayOfWeek: 1,
    ),
    ),
    );*/
  }
}