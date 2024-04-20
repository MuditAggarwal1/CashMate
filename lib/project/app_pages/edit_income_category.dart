import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:CashMate'
    '/project/classes/app_bar.dart';
import 'package:CashMate'
    '/project/classes/constants.dart';
import 'package:CashMate'
    '/project/localization/methods.dart';
import 'package:provider/provider.dart';
import '../provider.dart';
import 'add_category.dart';
import 'income_category.dart';

class EditIncomeCategory extends StatelessWidget {
  final BuildContext? buildContext;
  EditIncomeCategory(this.buildContext);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangeIncomeItemEdit>(
        create: (context) => ChangeIncomeItemEdit(),
    child: Builder(
        builder: (contextEdit) => Scaffold(
        backgroundColor: blue1,
        appBar: EditCategoryAppBar(
          AddCategory(
            contextIn: this.buildContext,
            contextInEdit: contextEdit  ,
              type: 'Income',
              appBarTitle: getTranslated(context, 'Add Income Category')!,
              description: ''),
        ),
        body: IncomeCategoryBody( context: this.buildContext, contextEdit: contextEdit,editIncomeCategory: true))));
  }
}
