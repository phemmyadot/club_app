import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var selecetedDay = DateTime.now().day;
  var selecetedMonth = DateFormat(DateFormat.ABBR_MONTH).format(DateTime.now());
  var selecetedYear = DateTime.now().year;
  List<int> daysInMonth(DateTime date) {
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return List<int>.generate(
        firstDayNextMonth.difference(firstDayThisMonth).inDays, (i) => i + 1);
  }

  List<int> genrateYears() {
    return List<int>.generate(
        100, (i) => DateTime(DateTime.now().year).year - i);
  }

  List<String> generateListofMonths(DateTime time) {
    List<String> months = [];
    for (int i = 0; i < 12; i++) {
      months.add(DateFormat(DateFormat.ABBR_MONTH)
          .format((DateTime(time.year, i, time.day))));
    }
    return months;
  }

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
                    value: selecetedDay,
                    style: AppTextStyles.semiBold13,
                    isExpanded: true,
                    dropdownColor: AppColors.primaryPink.withOpacity(0.8),
                    icon:
                        Icon(Icons.keyboard_arrow_down, color: AppColors.white),
                    items: daysInMonth(DateTime(selecetedYear, 1))
                        .map((int value) {
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
                    onChanged: (val) => setState(() => selecetedDay = val!),
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
                  child: DropdownButton<String>(
                    value: selecetedMonth,
                    style: AppTextStyles.semiBold13,
                    isExpanded: true,
                    elevation: 0,
                    dropdownColor: AppColors.primaryPink.withOpacity(0.8),
                    icon:
                        Icon(Icons.keyboard_arrow_down, color: AppColors.white),
                    items: generateListofMonths(DateTime(selecetedYear))
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: new Text(
                            value,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.semiBold13
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) => setState(() => selecetedMonth = val!),
                    // icon: Icon(Icons.keyboard_arrow_down,
                    //     color: CMColors.emerald),
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
                    value: selecetedYear,
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
                    onChanged: (val) => setState(() => selecetedDay = val!),
                    // icon: Icon(Icons.keyboard_arrow_down,
                    //     color: CMColors.emerald),
                  )),
            ),
          )),
        ],
      ),
    );
  }
}
