import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

import '../../../../../../../widgets/items/item_medical_record.dart';

class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.MedicalRecord.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 20.h),
                  shrinkWrap: true,
              itemBuilder: (context, index) => const ItemMedicalRecord(),
              itemCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}
