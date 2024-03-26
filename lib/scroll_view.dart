// import 'package:flutter/material.dart';

// class ScrollView extends StatefulWidget {
//   const ScrollView({super.key});

//   @override
//   State<ScrollView> createState() => _ScrollViewState();
// }

// class _ScrollViewState extends State<ScrollView> {
//   final List<Map<String, dynamic>> gridmap = [
//     {
//       "title": "Hydrangea in Talc White", //
//       "price": "220.-",
//       "image": "assets/images/White_Hydrangea.jpg",
//     },
//     {
//       "title": "Purple Lilac", //
//       "price": "1,500.-",
//       "image": "assets/images/Purple_Lilac.jpg",
//     },
//     {
//       "title": "Pink Cream Lilac", //
//       "price": "250.-",
//       "image": "assets/images/Pink_Lilac.jpg",
//     },
//     {
//       "title": "Ilex Berry Branch", //
//       "price": "270.-",
//       "image": "assets/images/Winterberry_Branch.jpg",
//     },
//     {
//       "title": "Tabletop Poinsettia Tree", //
//       "price": "2,500.-",
//       "image": "assets/images/Tabletop_Poinsettia.jpg",
//     },
//     {
//       "title": "Roses", //
//       "price": "1,200.-",
//       "image": "assets/images/Roses.jpg",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 12.0,
//           mainAxisSpacing: 12.0,
//           mainAxisExtent: 300),
//       itemCount: gridmap.length,
//       itemBuilder: (_, index) {
//         return Container(
//           decoration: BoxDecoration(
//             color: Colors.grey,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(16),
//                     topRight: Radius.circular(16)),
//                 child: Image.network(
//                   "${gridmap.elementAt(index)['images']}",
//                   height: 170,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "${gridmap.elementAt(index)['title']}",
//                       style: Theme.of(context).textTheme.subtitle1!.merge(
//                             TextStyle(fontWeight: FontWeight.w700),
//                           ),
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       "${gridmap.elementAt(index)['price']}",
//                       style: Theme.of(context).textTheme.subtitle2!.merge(
//                             TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.black),
//                           ),
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
