import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar:AppBar(
        title: const Text('Card Widget'),
      ) ,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
        children: const [
         
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'Un hermoso paisaje',
            imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg',
            ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg'
            ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Este es el mejor de todos',
            imageUrl: 'https://media-exp1.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0/1582050035728?e=2159024400&v=beta&t=xwPLRsVBBNXQQS3HN3q7hsYXmt6JxJsH6lpnbh9Y1ko'
            ),
          SizedBox(height: 100),

        ],
      )
    );
  }
}

