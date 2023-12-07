import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoCalendar extends StatefulWidget {
  const DemoCalendar({super.key});

  @override
  _DemoCalendar createState() => _DemoCalendar();
}

class _DemoCalendar extends State<DemoCalendar> {
  DateTime? _selectedDate1;
  List<DateTime>? _selectedDate2;
  DateTime? _selectedDate3;
  List<DateTime>? _selectedDate4;
  List<DateTime>? _selectedDate5;
  DateTime? _selectedDate6;
  DateTime? _selectedDate7;

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  String formatDateWithMonth(DateTime date) {
    return DateFormat('MM/dd').format(date);
  }

  String formatDateWithYear(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          CellGroup(
            children: <Widget>[
              Cell(
                title: AppLocalizations.of(context)!.select_single_date,
                value: _selectedDate1 != null
                    ? formatDateWithYear(_selectedDate1!)
                    : '',
                isLink: true,
                onClick: () => Calendar(
                  defaultDate: _selectedDate1,
                  maxDate: DateTime.now().add(const Duration(days: 40)),
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate1 = date;
                    });
                  },
                ).show(context),
              ),
              Cell(
                title: AppLocalizations.of(context)!.select_date_range,
                value: _selectedDate2 != null
                    ? "${formatDateWithMonth(_selectedDate2![0])} - ${formatDateWithMonth(_selectedDate2![1])}"
                    : '',
                isLink: true,
                onClick: () => Calendar(
                  type: "range",
                  defaultDate: _selectedDate2,
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate2 = date;
                    });
                  },
                ).show(context),
              ),
            ],
          ),
          title(AppLocalizations.of(context)!.quick_select),
          CellGroup(
            children: <Widget>[
              Cell(
                title: AppLocalizations.of(context)!.select_single_date,
                value: _selectedDate3 != null
                    ? formatDateWithYear(_selectedDate3!)
                    : '',
                isLink: true,
                onClick: () => Calendar(
                  showConfirm: false,
                  defaultDate: _selectedDate3,
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate3 = date;
                    });
                  },
                ).show(context),
              ),
              Cell(
                title: AppLocalizations.of(context)!.select_date_range,
                value: _selectedDate4 != null
                    ? "${formatDateWithMonth(_selectedDate4![0])} - ${formatDateWithMonth(_selectedDate4![1])}"
                    : '',
                isLink: true,
                onClick: () => Calendar(
                  type: "range",
                  showConfirm: false,
                  defaultDate: _selectedDate4,
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate4 = date;
                    });
                  },
                ).show(context),
              ),
            ],
          ),
          title(AppLocalizations.of(context)!.custom_calendar),
          CellGroup(
            children: <Widget>[
              Cell(
                title: AppLocalizations.of(context)!.custom_color,
                isLink: true,
                value: _selectedDate5 != null
                    ? "${DateFormat('MM/dd').format(_selectedDate5![0])} - ${DateFormat('MM/dd').format(_selectedDate5![1])}"
                    : '',
                onClick: () => Calendar(
                  color: Colors.green,
                  type: "range",
                  defaultDate: _selectedDate5,
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate5 = date;
                    });
                  },
                ).show(context),
              ),
              Cell(
                title: AppLocalizations.of(context)!.custom_date_range,
                isLink: true,
                value: _selectedDate6 != null
                    ? formatDateWithYear(_selectedDate6!)
                    : '',
                onClick: () => Calendar(
                  defaultDate: _selectedDate6,
                  minDate: DateFormat('yyyy-MM-dd').parse("2010-01-01"),
                  maxDate: DateFormat('yyyy-MM-dd').parse("2010-01-31"),
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate6 = date;
                    });
                  },
                ).show(context),
              ),
              Cell(
                title: AppLocalizations.of(context)!.custom_button_text,
                isLink: true,
                value: _selectedDate7 != null
                    ? formatDateWithYear(_selectedDate7!)
                    : '',
                onClick: () => Calendar(
                  confirmText: AppLocalizations.of(context)!.finish,
                  defaultDate: _selectedDate7,
                  onConfirm: (date) {
                    setState(() {
                      _selectedDate7 = date;
                    });
                  },
                ).show(context),
              ),
            ],
          ),
          title(AppLocalizations.of(context)!.tiled_display),
          Calendar(
            poppable: false,
            showConfirm: false,
            title: AppLocalizations.of(context)!.calendar,
            type: "range",
            defaultDate: [
              DateFormat('yyyy-MM-dd').parse("2012-11-10"),
              DateFormat('yyyy-MM-dd').parse("2012-11-12")
            ],
            minDate: DateFormat('yyyy-MM-dd').parse("2012-11-10"),
            maxDate: DateFormat('yyyy-MM-dd')
                .parse("2012-11-10")
                .add(const Duration(days: 120)),
            onSelect: (date) {
              Utils.toast(date.toString());
            },
          ).show(context),
        ]));
  }
}
