import 'package:flutter/material.dart';
import 'package:quotation_module/screens/qoutation_details_screen.dart';
import 'package:quotation_module/screens/quotation_creation_flow/quotation_add_company_details_screen.dart';
import 'package:quotation_module/screens/quotation_creation_flow/quotation_add_details_screen.dart';
import 'package:quotation_module/screens/quotation_creation_flow/quotation_add_images_screen.dart';
import 'package:quotation_module/screens/quotation_overview_screen.dart';

const quotationOverviewScreen = MaterialPage(
  key: ValueKey("/quotationOverview"),
  child: QuotationOverviewScreen(),
);

const quotationDetailsScreen = MaterialPage(
  key: ValueKey("/quotationDetailsScreen"),
  child: QuotationDetailsScreen(),
);

const quotationAddDetailsScreen = MaterialPage(
  key: ValueKey("/quotationAddDetailsScreen"),
  child: QuotationAddDetailsScreen(),
);

const quotationAddCompanyDetailsScreen = MaterialPage(
  key: ValueKey("/quotationAddCompanyDetailsScreen"),
  child: QuotationAddCompanyDetailsScreen(),
);

const quotationAddImagesScreen = MaterialPage(
  key: ValueKey("/quotationAddImagesScreen"),
  child: QuotationAddImagesScreen(),
);