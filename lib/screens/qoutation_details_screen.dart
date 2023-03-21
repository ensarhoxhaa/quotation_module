import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/components/row_data.dart';
import 'package:quotation_module/design/text_styles.dart';
import 'package:quotation_module/notifiers/quotation_details_notifier.dart';

class QuotationDetailsScreen extends ConsumerWidget {
  const QuotationDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotation Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RowData(
                title: "Company name",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .costumerInfo
                    .companyName),
            SizedBox(height: 4,),
            RowData(
                title: "Company address",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .costumerInfo
                    .companyAddress),
            SizedBox(height: 4,),
            RowData(
                title: "Company email",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .costumerInfo
                    .companyEmail),
            SizedBox(height: 4,),
            RowData(
                title: "VAT number",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .costumerInfo
                    .vatNumber
                    .toString()),
            SizedBox(height: 4,),
            RowData(
                title: "Title",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .quotationInfo
                    .title),
            SizedBox(height: 4,),
            RowData(
                title: "Description",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .quotationInfo
                    .description),
            SizedBox(height: 4,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Item title",
                    style: boldTextStyle,
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Text("Price", style: boldTextStyle)),
                Expanded(
                  flex: 1,
                    child: Text("Quantity", style: boldTextStyle)),
                Expanded(
                  flex: 1,
                    child: Text("Total Price", style: boldTextStyle)),
              ],
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .quotationInfo
                    .lineItems
                    .length,
                itemBuilder: (context, index) => Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Text(
                            ref
                                .read(quotationDetailsNotifier)
                                .quotation!
                                .quotationInfo
                                .lineItems[index]
                                .title,
                            style: defaultTextStyle,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                              ref
                                  .read(quotationDetailsNotifier)
                                  .quotation!
                                  .quotationInfo
                                  .lineItems[index]
                                  .price
                                  .toString(),
                              style: defaultTextStyle),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                              ref
                                  .read(quotationDetailsNotifier)
                                  .quotation!
                                  .quotationInfo
                                  .lineItems[index]
                                  .quantity
                                  .toString(),
                              style: defaultTextStyle),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                              ref
                                  .read(quotationDetailsNotifier)
                                  .quotation!
                                  .quotationInfo
                                  .lineItems[index]
                                  .totalPrice
                                  .toString(),
                              style: defaultTextStyle),
                        ),
                      ],
                    )),
            SizedBox(height: 4,),
            RowData(
                title: "Total Price",
                data: ref
                    .read(quotationDetailsNotifier)
                    .quotation!
                    .totalPrice
                    .toString())
          ],
        ),
      ),
    );
  }
}
