import 'package:flutter/material.dart';
import 'package:trybu_comform/constant.dart';
import 'package:trybu_comform/models/api_response.dart';
import 'package:trybu_comform/services/user_service.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF603e3d),
                      radius: 60,
                      backgroundImage: AssetImage('img/logo2.jpg'),
                    ),
                  ),
                )),
                Expanded(
                    flex: 1,
                    child: Container(
                      //color: Colors.red,
                      child: Center(
                        child: Text(
                          'Bem-vindo',
                          style: TextStyle(
                              color: Color(0xFF603e3d),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico'),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      //color: Colors.black,
                      child: Image(
                        image: AssetImage('img/tribus_logo2.jpg'),
                      ),
                    )),
                TextButton(onPressed: (){
                 
                },

                    child: Text('Login', style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFF603e3d)),
                    padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(vertical: 10))
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
