import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 62,
            vertical: 17,
          ),
          child: Text(
            'Compartilhamos o que aprendemos como Dev para te ajudar a subir na carreira.',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () async { 
                  const url = 'https://www.instagram.com/devs.senior/';
                  if(await canLaunchUrl(Uri.parse(url))){
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Error $url';
                  }
                  },
                child: SizedBox(
                  width: 21.12,
                  height: 21,
                  child: Image.asset(
                    'assets/imgs/instagram.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:  GestureDetector(
                onTap: () async { 
                  const url = 'https://www.youtube.com/channel/UCvBPEtQUSon3IrrrF4lvEjA';
                  if(await canLaunchUrl(Uri.parse(url))){
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Error $url';
                  }
                  },
                child: SizedBox(
                  width: 27.39,
                  height: 27,
                  child: Image.asset(
                    'assets/imgs/youtube.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
