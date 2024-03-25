import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SetupParseServer extends StatelessWidget {
  const SetupParseServer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Material(
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text('Parse Server Login'),
              TextFormField(
                onChanged: onClientKey,
                decoration: const InputDecoration(
                    label: Text('Client Key'), icon: Icon(Icons.key)),
              ),
              TextFormField(
                onChanged: onClientKey,
                decoration: const InputDecoration(
                    label: Text('Parse url'), icon: Icon(Icons.web)),
              ),
              TextFormField(
                onChanged: onClientKey,
                decoration: const InputDecoration(
                    label: Text('Parse id'), icon: Icon(Ionicons.apps)),
              ),
              SizedBox(height: 8,),
              MaterialButton(onPressed: (){},child: Text('Authorize'),color: Colors.yellow,)
            ],
          ),
        ),
      ),
    );
  }

  onClientKey(String text) {}
  
  
  
  
}
