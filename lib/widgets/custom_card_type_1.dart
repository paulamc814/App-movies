import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
         
          const ListTile(
            leading: Icon(Icons.credit_score, color: AppTheme.primary,),
            title: Text ('Soy un título'),
            subtitle: Text ('Officia Lorem nulla ipsum reprehenderit ullamco. Aute est magna dolore incididunt qui. Est esse non sint magna esse aute duis laborum duis in tempor culpa.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                  ),
                  TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                  )
              ],
            ),
          )



        ],
      )
    

    );
  }

}