import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mera_akhbar/app/widgets/NewsImage.dart';

class ReaderPage extends StatelessWidget {
  const ReaderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, right: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/paper_background.jpg'),
          colorFilter: ColorFilter.mode(Color(0x6666aaff), BlendMode.overlay),
          fit: BoxFit.fill,
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'प्रति 10 लाख जनसंख्या पर भारत में कोविड-19 के मामले विश्व के कई देशों से बहुत कम',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Khand',
              fontSize: 24,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                      'विश्व स्वास्थ्य संगठन की 6 जुलाई, 2020 की स्थिति रिपोर्ट से पता चलता है कि प्रति 10 लाख जनसंख्या पर भारत के कोविड-19 के मामले विश्व में काफी देशों से बहुत कम हैं। भारत में प्रति 10 लाख जनसंख्या पर 505.37 मामले सामने आए हैं, जबकि इतनी ही जनसंख्या पर विश्व की औसत 1453.25 बनती है। चिली में प्रति 10 लाख जनसंख्या पर कोविड-19 के 15,459.8 मामले सामने आए, जबकि पेरु में 9,070.8, अमरीका में 8,560.5, ब्राजील में 7,419.1 और स्पेन में 5,358.7 मामले प्रति 10 लाख की जनसंख्या पर दर्ज किए गए।',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Baloo 2',
                          fontSize: 16,
                          color: Color(0xff555555),
                          wordSpacing: 2),
                    ),
                    Padding(padding: EdgeInsets.all(12)),
                    NewsImage(),
                    Padding(padding: EdgeInsets.all(14)),
                    Text(
                      'विश्व स्वास्थ्य संगठन की इस स्थिति रिपोर्ट से पता चलता है कि प्रति 10 लाख जनसंख्या पर भारत में मौतों की संख्या काफी देशों के मुकाबले बहुत कम है। भारत में प्रति 10 लाख जनसंख्या पर 14.27 मृत्यु होने की खबर है, जबकि वैश्विक स्तर पर यह संख्या 68.29 बनती है, जो कि भारत में मौतों की संख्या से चार गुणा से अधिक है। ब्रिटेन में प्रति 10 लाख की आबादी पर कोविड-19 से संबंधित 651.4 मौतें हुईं, जबकि स्पेन में 607.1, इटली 576.6, फ्रांस में 456.7 और अमरीका में प्रति 10 लाख की आबादी पर 391 मौतें हुईं।',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Baloo 2',
                          fontSize: 16,
                          color: Color(0xff555555),
                          wordSpacing: 2),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      'भारत ने मामलों से पर्याप्त और प्रभावी रूप से निपटने के लिए अस्पतालों के ढांचे का विस्तार किया है। इन मामलों से निपटने की तैयारियों में ऑक्सीजन की व्यवस्था आईसीयू और वेंटिलेटर सुविधाएं शामिल हैं। 07 जुलाई, 2020 की स्थिति के अनुसार देश में 1201 विशेष कोविड अस्पताल, 2611 विशेष कोविड स्वास्थ्य केन्द्र और 9,909 कोविड केयर सेंटर हैं, जहां कोविड-19 के बेहद गंभीर और बहुत कम लक्षण वाले मरीजों का उपचार किया जाता है। इस प्रकार की तैयारी से रिकवरी दर में लगातार सुधार और मृत्यु दर के मामलों में कमी हुई है।',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Baloo 2',
                          fontSize: 16,
                          color: Color(0xff555555),
                          wordSpacing: 2),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      'पिछले 24 घंटे के दौरान कोविड-19 के कुल 15,515 रोगी स्वस्थ हुए। अब तक स्वस्थ हुए रोगियों की कुल संख्या 4,39,947 हो गई है। कोविड-19 की रिकवरी दर भी बढ़कर 61.13 प्रतिशत हो गई है। ‘टेस्ट ट्रेस ट्रीट’ की रणनीति पर विशेष ध्यान देते हुए विभिन्न उपायों से  केन्द्र सरकार और राज्यों तथा केन्द्र शासित प्रदेशों द्वारा कोविड-19 की जांच की संख्या बढ़ाने में मदद मिली है। पिछले 24 घंटे में 2,41,430 नमूनों की जांच की गई। अब कुल जांच की संख्या 1,02,11,092 हो गई है।',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Baloo 2',
                          fontSize: 16,
                          color: Color(0xff555555),
                          wordSpacing: 2),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
