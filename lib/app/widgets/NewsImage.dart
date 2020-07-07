import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: 200),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/corona.jpg'),
                colorFilter:
                    ColorFilter.mode(Color(0x6666aaff), BlendMode.overlay),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2)),
          Text(
            'भारत में कोरोना सक्रमण की रिकवरी दर बढ़कर 61 प्रतिशत से पार हो गयी है। प्रति 10 लाख जनसंख्या पर भारत के कोविड-19 के मामले विश्व में काफी देशों से बहुत कम है।',
            style: TextStyle(
              fontSize: 11,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
