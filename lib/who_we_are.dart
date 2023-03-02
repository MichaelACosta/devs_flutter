import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Text(
            'Quem Somos',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 46,
            vertical: 10,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SizedBox(
                    width: 60,
                    height: 62,
                    child: Image.asset(
                      'assets/imgs/myphoto.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 145,
                  child: Text(
                    'Desenvolvedor front-end e Mestre em Computação pela Universidade Federal de Pelotas. Sua dissertação apresenta a proposta e criação de um escalonador para STM, entitulado LTMS, que melhorou o desempenho dos principais benchmarks. Trabalha com React, JavaScript, TypeScript, HTML, CSS, Node e outras tecnologias.',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap:  () async { 
                  const url = 'https://www.instagram.com/costa_michael/';
                  if(await canLaunchUrl(Uri.parse(url))){
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Error $url';
                  }
                  },
                child: SizedBox(
                  width: 20.55,
                  height: 20,
                  child: Image.asset(
                    'assets/imgs/instagram.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap:  () async { 
                  const url = 'https://github.com/MichaelACosta';
                  if(await canLaunchUrl(Uri.parse(url))){
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Error $url';
                  }
                  },
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(
                    'assets/imgs/github.png',
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
