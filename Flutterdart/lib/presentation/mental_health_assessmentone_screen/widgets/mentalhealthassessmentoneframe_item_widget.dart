// import 'package:flutter/material.dart';
// import 'package:treesa_s_application2/core/app_export.dart';

// // ignore: must_be_immutable
// // ignore: must_be_immutable
// class MentalhealthassessmentoneframeItemWidget extends StatefulWidget {
//   final String text;
//   final String imagePath;
//   final VoidCallback onTapText;
//   final bool selected;
//   final Color color;

//   MentalhealthassessmentoneframeItemWidget({
//     required this.text,
//     required this.imagePath,
//     required this.onTapText,
//     required this.color,  required this.selected,
//   });
//   @override
//   _MentalhealthassessmentoneframeItemStatefulWidgetState createState() => _MentalhealthassessmentoneframeItemStatefulWidgetState();
// }
// class _MentalhealthassessmentoneframeItemStatefulWidgetState extends State<MentalhealthassessmentoneframeItemWidget> {
//   late Color _color;
// late Color _selectedTextColor;
// @override
// void initState() {
//   super.initState();
//   _color = widget.selected ? Colors.blue : widget.color;
//   _selectedTextColor = widget.selected ? Colors.white : Colors.black;
// }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//        onTap: () {
//         setState(() {
//           _color = _color == widget.color ? Colors.blue : widget.color;
//         });
//         widget.onTapText();},
//       child: Container(
//         padding: EdgeInsets.all(16.h),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadiusStyle.circleBorder28.copyWith(
//             // border: Border.all(color: color),
//           ),
//           color: _color,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CustomImageView(
//               imagePath:widget.imagePath,
//               height: 24.adaptSize,
//               width: 24.adaptSize,
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 8.h,
//                 bottom: 2.v,
//               ),
//               child: Text(
//                 widget.text,
//                   textAlign: TextAlign.center,
//                 style: CustomTextStyles.titleMediumGray80002Bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }