import 'package:flutter/material.dart';
import 'package:quotation_module/components/app_button.dart';
import 'package:quotation_module/components/app_text_field.dart';

class QuotationAddImagesScreen extends StatelessWidget {
  const QuotationAddImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Images"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextField(
                textEditingController: TextEditingController(),
                label: "Title",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: TextEditingController(),
                label: "Description",
                maxLines: 2,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(height: 10,),
            TextButton(onPressed: () {}, child: Text("+ Attach new image")),
            SizedBox(height: 20,),
            AppButton(
              title: "Save",
              width: double.infinity,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuotationAddImagesScreen()));
              },
              isLoading: false,
            )
          ],
        ),
      ),
    );
  }
}
