import 'package:flutter/material.dart';
import 'package:selfcheckout/src/config/theme_settings.dart';
import 'package:selfcheckout/src/module/home_med/bloc/med_bloc.dart';
import 'package:selfcheckout/src/module/home_med/home_view.dart';
import '../module/home_med/bloc/med_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export './custom_text_field.dart';
export './address_widget.dart';

class DateTimePicker extends StatefulWidget {
  final String buttonText;
  final double width;
  final Function(DateTime) onDateTimeSelected;

  DateTimePicker(
      {super.key,
      required this.buttonText,
      required this.width,
      required this.onDateTimeSelected});

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDateTime = DateTime.now();

  Future<void> _selectDateTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDateTime),
      );
      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
        widget.onDateTimeSelected(selectedDateTime);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _selectDateTime,
        child: SizedBox(
          width: widget.width,
          child: Container(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(widget.buttonText)),
        ));
  }
}

class MembershipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedBloc, MedState>(
      builder: (context, state) {
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColor.color7, AppColor.color8],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius:
              BorderRadius.circular(15), // Apply border radius to the container
            ),
            child: Container(
              padding: const EdgeInsets.all(18),
              width: 350,
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Your Loyalytics Balance',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600,
                                color: AppColor.textColorSecondary
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${state.currentCustomer?.loyalyticBalance}',
                            style: const TextStyle(
                                fontSize: 18,
                                color: AppColor.textColorSecondary
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text('${state.currentCustomer?.name}', style: TextStyle(color: AppColor.textColorSecondary),),
                        ],
                      ),
                      Text(
                        "${state.currentCustomer?.loyalyticId}",
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.textColorSecondary),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppMedLogoPng(
                        height: 70,
                        width: 100,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_rounded, color: Colors.green),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Active", style: TextStyle(color: AppColor.textColorSecondary)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class InvertWidgetColors extends StatelessWidget {
  final Widget child;

  const InvertWidgetColors({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.matrix([
        -1, //RED
        0,
        0,
        0,
        255, //GREEN
        0,
        -1,
        0,
        0,
        255, //BLUE
        0,
        0,
        -1,
        0,
        255, //ALPHA
        0,
        0,
        0,
        1,
        0,
      ]),
      child: this.child,
    );
  }
}