import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';

class DatePicker extends StatefulWidget {
  final Function(int, int, int) onchange;
  const DatePicker({Key? key, required this.onchange}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  int selectedDay = DateTime.now().day;
  int selectedMonth = DateTime.now().month;
  int selectedYear = DateTime.now().year;

  List<int> daysInMonth(DateTime date) {
    final firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    final firstDayNextMonth = new DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return List<int>.generate(
        firstDayNextMonth.difference(firstDayThisMonth).inDays, (i) => i + 1);
  }

  List<int> genrateYears() =>
      List<int>.generate(100, (i) => DateTime(DateTime.now().year).year - i);

  List<int> generateListofMonths(DateTime time) =>
      List<int>.generate(12, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 40,
            color: AppColors.white.withOpacity(0.25),
            alignment: AlignmentDirectional.centerStart,
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<int>(
                    elevation: 0,
                    value: selectedDay,
                    style: AppTextStyles.semiBold13,
                    isExpanded: true,
                    dropdownColor: AppColors.primaryPink.withOpacity(0.8),
                    icon:
                        Icon(Icons.keyboard_arrow_down, color: AppColors.white),
                    items:
                        daysInMonth(DateTime(selectedYear, 1)).map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Center(
                          child: new Text(
                            value.toString(),
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBold13
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() => selectedDay = val!);
                      widget.onchange(selectedYear, selectedMonth, selectedDay);
                    },
                  )),
            ),
          )),
          Container(height: 40, width: 1, color: Colors.white),
          Expanded(
              child: Container(
            height: 40,
            color: AppColors.white.withOpacity(0.25),
            alignment: AlignmentDirectional.centerStart,
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<int>(
                    value: selectedMonth,
                    style: AppTextStyles.semiBold13,
                    isExpanded: true,
                    elevation: 0,
                    dropdownColor: AppColors.primaryPink.withOpacity(0.8),
                    icon:
                        Icon(Icons.keyboard_arrow_down, color: AppColors.white),
                    items: generateListofMonths(DateTime(selectedYear))
                        .map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Center(
                          child: new Text(
                            DateFormat(DateFormat.ABBR_MONTH)
                                .format(DateTime(DateTime.now().year, value)),
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBold13
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() => selectedMonth = val!);
                      widget.onchange(selectedYear, selectedMonth, selectedDay);
                    },
                  )),
            ),
          )),
          Container(height: 40, width: 1, color: Colors.white),
          Expanded(
              child: Container(
            height: 40,
            color: AppColors.white.withOpacity(0.25),
            alignment: AlignmentDirectional.centerStart,
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<int>(
                    value: selectedYear,
                    style: AppTextStyles.semiBold13,
                    isExpanded: true,
                    elevation: 0,
                    dropdownColor: AppColors.primaryPink.withOpacity(0.8),
                    icon:
                        Icon(Icons.keyboard_arrow_down, color: AppColors.white),
                    items: genrateYears().map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Center(
                          child: new Text(
                            value.toString(),
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBold13
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() => selectedYear = val!);
                      widget.onchange(selectedYear, selectedMonth, selectedDay);
                    },
                  )),
            ),
          )),
        ],
      ),
    );
  }
}
