
import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/view/widget/CustomAppBar.dart';
import 'package:bookly/features/home/presentation/view/widget/CustomListBooks.dart';
import 'package:bookly/features/home/presentation/view/widget/ListViewBook.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
     return Scaffold(
           backgroundColor: KprimaryColor,
           body: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16.0),
             child: CustomScrollView(
               physics: const BouncingScrollPhysics(),
               slivers: [
                 SliverToBoxAdapter(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                       const CustomAppBar(),
                       const CustomListViewBook(),
                       const SizedBox(height: 50.0),
                       Text("Best Seller",
                         style: Styles.getTextStyle(),
                       ),
                       const SizedBox(
                         height: 20,
                       )
                     ],
                   ),
                 ),
                 const SliverFillRemaining(
                   child: ListViewBook(),
                 )
               ],
             ),
           ),
          );
  }
}










