import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Doctor extends StatelessWidget{
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'animal_name',
        ),
      ),
        body: SfCalendar(
          view: CalendarView.month,
          firstDayOfWeek: 1,
        ),
    );
  }
}