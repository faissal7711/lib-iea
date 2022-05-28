import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../services/theme.dart';
import '../conestants.dart';

class GuidanceScreen extends StatelessWidget {
  static const routeName = 'guidance_screen';

  Widget buildContainerImage(BuildContext context, String imagePath) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(6.0),
      child: Image.asset(imagePath, fit: BoxFit.fill),
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(8.0),
//        image: DecorationImage(
//          image: Image.asset(imagePath).image,
//          fit: BoxFit.cover,
//        ),
//      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("إرشادات لمستخدمي التطبيق"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              'assets/images/img_guidence.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: KBackgroundColor,
//                height: MediaQuery.of(context).size.height * .3,
//                width: MediaQuery.of(context).size.width,
                child: Text(
                  'نتمني نحن القائمين علي هذا البرنامج أن نكون قد وفقنا فيه لتيسير عملية التعلم علي أبناءنا ، و كذلك فقد يسرنا علي سيادتكم تدريب أبناءكم علي منهج اللغة العربية للمستوي الرابع الابتدائى ( مدارس التربية الفكرية ) الفصل الدراسي الأول'
                  'إليك بعض الإرشادات عند استخدام البرنامج',
                  style: TextStyle(fontSize: 22, color: KTextColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: KBackgroundColor,
//                height: MediaQuery.of(context).size.height,
//                width: MediaQuery.of(context).size.width,
                child: Text(
                  '1 => عزيزي ولي الأمر عليك أولا قم بتحميل البرنامج ثم بعد ذلك تقوم بتسجل الدخول علي البرنامج'
                  'ثم ساعد التلميذ في حل الأنشطة الخاصة بالمراجعة قبل البدء في موضوعات المنهج'
                  'وفي كل موضوع من موضوعات المنهج عليك اولا التأكد من فهم التلميذ  للدرس عن طريق النصوص المكتوبة و فيديوهات الشرح ثم الإنتقال للأنشطة',
                  style: TextStyle(fontSize: 22, color: KTextColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: KBackgroundColor,
//                height: MediaQuery.of(context).size.height,
//                width: MediaQuery.of(context).size.width,
                child: Text(
                  '2 => وفي كل موضوع من موضوعات المنهج عليك اولا التأكد من فهم التلميذ  للدرس عن طريق النصوص المكتوبة و فيديوهات الشرح ثم الإنتقال للأنشطة'
                      'عزيزي المعلم الرجاء عدم الإنتقال إلي الموضوع التالي قبل التأكد من أن التلميذ قد تعلم الموضوع الحالي بالقدر المطلوب',
                  style: TextStyle(fontSize: 22, color: KTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*

نتمني نحن القائمين علي هذا البرنامج أن نكون قد وفقنا فيه لتيسير عملية التعلم علي أبناءنا ، و كذلك فقد يسرنا علي سيادتكم تدريب أبناءكم علي منهج اللغة العربية للمستوي الرابع الابتدائى ( مدارس التربية الفكرية ) الفصل الدراسي الأول
إليك بعض الإرشادات عند استخدام البرنامج
عزيزي ولي الأمر عليك أولا قم بتحميل البرنامج ثم بعد ذلك تقوم بتسجل الدخول علي البرنامج
 ثم ساعد التلميذ في حل الأنشطة الخاصة بالمراجعة قبل البدء في موضوعات المنهج
وفي كل موضوع من موضوعات المنهج عليك اولا التأكد من فهم التلميذ  للدرس عن طريق النصوص المكتوبة و فيديوهات الشرح ثم الإنتقال للأنشطة
عزيزي المعلم الرجاء عدم الإنتقال إلي الموضوع التالي قبل التأكد من أن التلميذ قد تعلم الموضوع الحالي بالقدر المطلوب
 */
