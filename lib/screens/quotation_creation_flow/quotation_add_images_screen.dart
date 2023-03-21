import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/components/app_button.dart';
import 'package:quotation_module/components/app_text_field.dart';
import 'package:quotation_module/notifiers/quotation_add_images_notifier.dart';

class QuotationAddImagesScreen extends ConsumerWidget {
  const QuotationAddImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Images"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextField(
                textEditingController: ref.watch(quotationAddImagesNotifier).titleController,
                label: "Title",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                editable: false),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: ref.watch(quotationAddImagesNotifier).descriptionController,
                label: "Description",
                maxLines: 2,
                showError: false,
                autoFocus: false,
                editable: false),
            SizedBox(height: 10,),
            AppTextField(
                textEditingController: ref.watch(quotationAddImagesNotifier).totalPriceController,
                label: "Total Price",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                editable: false),
            SizedBox(height: 10,),
            TextButton(onPressed: () {}, child: Text("+ Attach new image")),
            SizedBox(height: 20,),
            AppButton(
              title: "Save",
              width: double.infinity,
              onTap: () {
                ref.read(quotationAddImagesNotifier.notifier).completeQuotationCreationFlow();
              },
              isLoading: false,
            )
          ],
        ),
      ),
    );
  }
}
