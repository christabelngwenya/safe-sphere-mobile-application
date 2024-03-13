import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'nav.dart';

class OrientationInfo extends StatefulWidget {
  @override
  _OrientationInfo createState() => _OrientationInfo();
}

class _OrientationInfo extends State<OrientationInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Safe Sphere',
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor: Colors.purple[700],
      ),
      body: Container(
        child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Facts About Abuse ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  '''Recognizing Signs of Abuse:
                      Recognizing signs of abuse is crucial for early intervention and prevention.
                       Here are some common signs of abuse:

                  a) Physical Abuse:\n

          Unexplained bruises, injuries, or marks on the body.
      Frequent accidents or injuries with inconsistent explanations.
          Signs of restraint, such as rope marks on the wrists.\n
          b) Emotional Abuse:

        Frequent belittling, humiliation, or insults.
    Isolation from friends and family.
    Extreme jealousy and possessiveness from a partner or caregiver.\n
        c) Sexual Abuse:

    Unwanted or non-consensual sexual advances.
    Forced sexual acts or coerced participation.
    Signs of physical trauma or discomfort in intimate areas.
    d) Financial Abuse:\n

    Controlling or limiting access to finances.
    Misuse of funds or stealing money.
    Forcing someone to work or controlling their employment.
    e) Psychological Abuse:\n

    Manipulation and control tactics.
    Gaslighting or distorting reality.
    Threats of harm to oneself, loved ones, or pets.\n
    Remember that every situation is unique, and signs of abuse may vary. \n
    We encourage you to trust your instincts and seek professional help or support if they suspect abuse.\n

    Personal Safety for Females at a University Campus:\n
    a) Awareness and Vigilance:\n

    Be aware of your surroundings, especially in secluded or dimly lit areas.
    Trust your instincts and stay vigilant. If something feels wrong, remove yourself from the situation.\n
    b) Traveling and Walking Alone:\n

    Whenever possible, avoid walking alone, especially at night.
    Use well-lit and populated paths or walkways.
    Consider using personal safety apps or services that offer real-time tracking or emergency contacts.\n
    c) Safety Spots and Locations:\n

    Familiarize yourself with designated safety spots or emergency call boxes on campus.\n
    Identify nearby buildings, public areas, or campus security stations where you can seek help if needed.\n
    d) Communication:

    Share your schedule or whereabouts with a trusted friend or family member.
    Utilize the buddy system and walk with a friend, especially during late hours.
    e) Campus Resources:\n

    Learn about the campus security office and their contact details.\n
    Explore the availability of self-defense classes or workshops provided by the university.\n
    f) Reporting Incidents:\n

    We Encourage you to report any suspicious or unsafe incidents to campus security or local authorities.
    We Encourage you to report any suspicious or unsafe incidents to campus security or local authorities.\n
    Familiarize yourself with the reporting procedures and support services offered by the university.''',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}