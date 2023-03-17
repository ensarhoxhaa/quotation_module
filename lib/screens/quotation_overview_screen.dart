import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/design/text_styles.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/routes.dart';
import 'package:quotation_module/screens/quotation_creation_flow/quotation_add_company_details_screen.dart';

class QuotationOverviewScreen extends ConsumerWidget {
  const QuotationOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotation Overview"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.watch(navigatorProvider).goToPage(quotationAddCompanyDetailsScreen);
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Title",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Amount",
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Company",
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                  itemBuilder: (context, index) {
                return Container(
                  child: InkWell(
                    onTap: () {

                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: 4),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                8.0),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text("Quotation 1",style: defaultTextStyle)
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "16\$",
                                  style: defaultTextStyle,
                                  overflow: TextOverflow
                                      .ellipsis,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Test Company",
                                  style: defaultTextStyle,
                                  overflow: TextOverflow
                                      .ellipsis,),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
