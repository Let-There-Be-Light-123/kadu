import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kadu_ngo/theme/color.dart';

class LivingStateSelector extends StatefulWidget {
  @override
  _LivingStateSelectorState createState() => _LivingStateSelectorState();
}

class _LivingStateSelectorState extends State<LivingStateSelector> {
  String selectedGender = ''; // To store the selected gender

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomRadioButton(
          label: 'Homeless',
          selected: selectedGender == 'Homeless',
          onSelect: () {
            selectGender('Homeless');
          },
        ),
        CustomRadioButton(
          label: 'Unemployed',
          selected: selectedGender == 'Unemployed',
          onSelect: () {
            selectGender('Unemployed');
          },
        ),
      ],
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onSelect;

  CustomRadioButton({
    required this.label,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: selected ? AppColors.primaryColorOrange : Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            color: selected
                ? AppColors.textColorPrimary
                : AppColors.textColorSecondary,
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
