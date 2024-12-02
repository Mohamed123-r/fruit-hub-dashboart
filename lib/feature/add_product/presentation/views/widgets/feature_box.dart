import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/core/utils/app_colors.dart';
import 'package:fruit_hub_dashboart/core/utils/app_text_styles.dart';

import '../../../../../core/widgets/custom_check_box.dart';

class FeatureBoxWidget extends StatefulWidget {
  const FeatureBoxWidget({super.key, required this.onSelected});

  final Function(bool) onSelected;

  @override
  TermsAndConditionsWidgetState createState() =>
      TermsAndConditionsWidgetState();
}

class TermsAndConditionsWidgetState extends State<FeatureBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          onChecked: (value) {
            setState(() {
              isChecked = value;
              widget.onSelected(value);
            });
          },
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          "Is the product Feature?",
          style: TextStyles.bodySmallRegular.copyWith(
            color: AppColors.grayscale400Color,
          ),
        ),
      ],
    );
  }
}
