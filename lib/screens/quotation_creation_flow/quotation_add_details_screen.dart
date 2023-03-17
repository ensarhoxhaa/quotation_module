import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/components/app_button.dart';
import 'package:quotation_module/components/app_text_field.dart';
import 'package:quotation_module/notifiers/quotation_add_details_notifier.dart';
import 'package:quotation_module/screens/quotation_creation_flow/quotation_add_images_screen.dart';

class QuotationAddDetailsScreen extends ConsumerWidget {
  const QuotationAddDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotation Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextField(
                textEditingController:
                    ref.watch(quotationAddDetailsNotifier).titleController,
                label: "Title",
                maxLines: 1,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(
              height: 10,
            ),
            AppTextField(
                textEditingController: ref
                    .watch(quotationAddDetailsNotifier)
                    .descriptionController,
                label: "Description",
                maxLines: 2,
                showError: false,
                autoFocus: false,
                showIcon: false,
                iconPath: "",
                editable: true),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ref
                    .watch(quotationAddDetailsNotifier)
                    .lineItemsControllers
                    .length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: AppTextField(
                            textEditingController: ref
                                .watch(quotationAddDetailsNotifier)
                                .lineItemsControllers[index]
                                .titleController,
                            label: "Title",
                            maxLines: 1,
                            showError: false,
                            autoFocus: false,
                            showIcon: false,
                            iconPath: "",
                            editable: true),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        flex: 4,
                        child: AppTextField(
                            textEditingController: ref
                                .watch(quotationAddDetailsNotifier)
                                .lineItemsControllers[index]
                                .priceController,
                            label: "Price",
                            maxLines: 1,
                            showError: false,
                            autoFocus: false,
                            showIcon: false,
                            iconPath: "",
                            editable: true),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        flex: 4,
                        child: AppTextField(
                            textEditingController: ref
                                .watch(quotationAddDetailsNotifier)
                                .lineItemsControllers[index]
                                .quantityController,
                            label: "Quantity",
                            maxLines: 1,
                            showError: false,
                            autoFocus: false,
                            showIcon: false,
                            iconPath: "",
                            editable: true),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        flex: 4,
                        child: AppTextField(
                            textEditingController: ref
                                .watch(quotationAddDetailsNotifier)
                                .lineItemsControllers[index]
                                .totalController,
                            label: "Total",
                            maxLines: 1,
                            showError: false,
                            autoFocus: false,
                            showIcon: false,
                            iconPath: "",
                            editable: false),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      ref.watch(quotationAddDetailsNotifier).lineItemsControllers
                                  .length == 1
                          ? SizedBox()
                          : IconButton(
                              onPressed: () {
                                ref.watch(quotationAddDetailsNotifier.notifier)
                                    .removeLineItemByIndex(index);
                              },
                              icon: Icon(Icons.delete))
                    ],
                  );
                }),
            TextButton(
                onPressed: () {
                  ref.watch(quotationAddDetailsNotifier.notifier)
                      .addNewLineItem();
                },
                child: Text("+ Add new line item")),
            SizedBox(
              height: 20,
            ),
            AppButton(
              title: "Next",
              width: double.infinity,
              onTap: () {
                ref.read(quotationAddDetailsNotifier.notifier).goToAddImagesScreen();
              },
              isLoading: false,
            )
          ],
        ),
      ),
    );
  }
}
