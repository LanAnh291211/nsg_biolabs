import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'NSG Biolab',
            style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
          ),
        ),
        body: Stack(
          children: [
            Align(alignment: Alignment(-1, -1), child: Image.asset('assets/images/png/Polygon9.png')),
            Align(alignment: Alignment(1, -1), child: Image.asset('assets/images/png/Polygon10.png')),

            // _retote(1, -1, -45, Colors.green[100]!, MediaQuery.of(context).size.width / 3, MediaQuery.of(context).size.height * 2),
            // _retote(-1, -1, 45, Colors.pink[50]!, MediaQuery.of(context).size.width / 2, MediaQuery.of(context).size.height * 1),

            // Center(child: Column(
            //   children: [
            //     Text('You have no active bookings',
            //     style: CustomTextStyle.bold(color: AppColors.black,fontSize: FontSize.veryLarge),),
            //     Row(
            //       children: [
            //         Text('Click the',
            //     style: CustomTextStyle.regular(color: AppColors.black,fontSize: FontSize.small),),
            //     SvgPicture.asset("assets/images/ic_show_page.svg"),
            //      Text('below to add new bookings',
            //     style: CustomTextStyle.regular(color: AppColors.black,fontSize: FontSize.small),),

            //       ],
            //     )
            //   ],
            // )),
          ],
        ));
  }

//   Align _retote(double offsetx, double offsety, double rt, Color backgroundColor, double height, double width) {
//     return Align(
//       alignment: Alignment(offsetx, offsety),
//       child: RotationTransition(
//         turns: AlwaysStoppedAnimation(rt / 360),
//         child: Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(color: backgroundColor),
//         ),
//       ),
//     );
//   }
}
