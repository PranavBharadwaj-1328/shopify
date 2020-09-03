import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _loginstate();

}
class _loginstate extends State<LoginPage> {
  String _email;
  String _password;

  void validateAndSave() {

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopify Login'),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email'),
                  validator: (value) => value.isEmpty ? 'Email cant be empty': null,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) => value.isEmpty ? 'Email cant be empty': null, 
                ),
                new RaisedButton(
                  child: new Text('Login', style: new TextStyle(fontSize: 20.0),),
                  onPressed: validateAndSave,
                ),
              ],
            ),
        ),
      ),
    );
  }
}