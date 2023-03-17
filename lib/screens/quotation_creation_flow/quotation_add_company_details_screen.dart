import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/components/app_button.dart';
import 'package:quotation_module/components/app_text_field.dart';
import 'package:quotation_module/notifiers/quotation_add_company_details_notifier.dart';
import 'package:quotation_module/screens/quotation_creation_flow/quotation_add_details_screen.dart';

class QuotationAddCompanyDetailsScreen extends ConsumerWidget {
  const QuotationAddCompanyDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Company Details"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextField(
                textEditingController: ref.watch(quotationAddCompanyDetailsNotifier).companyNameController,
                label: "Company Name",
                maxLines: 1,
                errorText: "Company name can't be empty",
                showError: ref.watch(quotationAddCompanyDetailsNotifier).companyNameError,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: ref.watch(quotationAddCompanyDetailsNotifier).companyAddressController,
                label: "Company Address",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: ref.watch(quotationAddCompanyDetailsNotifier).emailAddressController,
                label: "Email Address",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: ref.watch(quotationAddCompanyDetailsNotifier).vatNumberController,
                textInputType: TextInputType.number,
                label: "VAT Number",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 20,),
            AppButton(
                title: "Next",
                width: double.infinity,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => QuotationAddDetailsScreen()));
                  ref.read(quotationAddCompanyDetailsNotifier.notifier).goToAddDetailsScreen();
                },
                isLoading: false,
            )
          ],
        ),
      ),
    );
  }
}
