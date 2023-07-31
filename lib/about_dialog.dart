import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About'),
      ),
      body: const SingleChildScrollView(child: AboutCards()),
    );
  }
}

class AboutCards extends StatelessWidget {
  const AboutCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 6),
          child: Card(
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/88382789?v=4',
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Krishna Vishwakarma',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text(
                'Web/App Developer',
              ),
              trailing: Wrap(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      FluentIcons.code_24_filled,
                      color: Colors.white,
                    ),
                    tooltip: 'Github',
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://github.com/Spyou'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 6),
          child: Card(
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/104021711?v=4',
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Ashutosh Pandey',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text(
                'Web/App Developer',
              ),
              trailing: Wrap(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      FluentIcons.code_24_filled,
                      color: Colors.white,
                    ),
                    tooltip: 'Github',
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://github.com/Ashutosp'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
