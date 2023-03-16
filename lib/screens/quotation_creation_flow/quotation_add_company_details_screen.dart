import 'package:flutter/material.dart';
import 'package:quotation_module/components/app_text_field.dart';

class QuotationAddCompanyDetailsScreen extends StatelessWidget {
  const QuotationAddCompanyDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextField(
                textEditingController: TextEditingController(),
                label: "Company Name",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: TextEditingController(),
                label: "Company Address",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: TextEditingController(),
                label: "Email Address",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: TextEditingController(),
                label: "Email Address",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true)
          ],
        ),
      ),
    );
  }
}
