import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class Formulaire extends StatefulWidget {
  @override
  State<Formulaire> createState() => _FormulaireState();
}


class _FormulaireState extends State<Formulaire> {
  bool _switchValue = false;
  final _formKey = GlobalKey<FormState>();
  String email = 'yanis@gmail.com';
  String password = '123456';

  final RegExp regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');



  void submit() {
    _formKey.currentState!.validate();
  }

  String? testEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'veuillez saisir un email';
    }
    if (!EmailValidator.validate(value)) {
      return 'email invalide !';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'saisir mdp';
    }
    if(!regex.hasMatch(value)){
      return 'veuillez saisir un mot de passe correct !';
    }

  }


  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Text('Connexion à twitter', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
            TextFormField(

              decoration: const InputDecoration(
                labelText: 'Identifiant',
              ),
              validator: testEmail,
              onSaved: (value) {
                email = value!;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
              ),
              validator: passwordValidator,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
                Text('Mémoriser moi')],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: submit,
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                child: const Text('Connexion', style: TextStyle(color: Colors.white),) ),

              ),

          ],
        ));
  }
}

