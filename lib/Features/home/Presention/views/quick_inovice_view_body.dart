import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/custom_grid_item.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/quick_invoice_custom_button.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/quick_invoice_view_header.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/user_info_list_tile_list.dart';

class QuickInvoiceViewBody extends StatelessWidget {
  const QuickInvoiceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceViewHeader(),
            UserInfoListTileList(),
            // Divider(
            //   height: 48,
            //   color: Color(0xffF1F1F1),
            // ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomgridItem(
                      title: 'Customer name',
                      hint: 'Type customer name',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomgridItem(
                      title: 'Item name',
                      hint: 'Type customer name',
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomgridItem(
                      title: 'Customer Email',
                      hint: 'Type customer Email',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomgridItem(
                      title: 'Item Mount',
                      hint: 'Mount in USD',
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: QuickInvoiceCustomButton(
                      title: 'Add more details', color: Colors.white, textColor: Color(0xFF4DB7F2),),
                ),
                Expanded(
                  child: QuickInvoiceCustomButton(
                      title: 'Send Money', color: Color(0xFF4DB7F2), textColor: Colors.white,),
                )
              ],
            )
          ],
        ));
  }
}
