import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  final String title = 'Schedule';

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  var _selectedRouteIndex = 0;

  final Map<String, List<Map<String, dynamic>>> _schedule = {
    'route 1': [
      {
        'title': 'Sonipat to PIET',
        'stopage': {
          'Sonipat': '7:00 AM',
          'Ganaur': '7:30 AM',
          'Samalkha': '7:45 AM',
          'Panipat': '8:00 AM',
          'PIET': '8:30 AM',
        },
      },
      {
        'title': 'PIET to Sonipat',
        'stopage': {
          'PIET': '4:00 PM',
          'Panipat': '4:30 PM',
          'Samalkha': '4:45 PM',
          'Ganaur': '5:00 PM',
          'Sonipat': '5:30 PM',
        },
      },
    ],
    'route 2': [
      {
        'title': 'Delhi to PIET',
        'stopage': {
          'Delhi': '7:00 AM',
          'Sonipat': '8:00 AM',
          'PIET': '8:30 AM',
        },
      },
      {
        'title': 'PIET to Delhi',
        'stopage': {
          'PIET': '4:00 PM',
          'Sonipat': '4:30 PM',
          'Delhi': '5:30 PM',
        },
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        shadowColor: Theme.of(context).shadowColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 20), child: CircleAvatar(
              radius: 50,
              child: Icon(Icons.schedule, size: 50),
            ),),
          //   select route dropdown
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Select Route',
                ),
                value: _selectedRouteIndex,
                onChanged: (index) {
                  setState(() {
                    _selectedRouteIndex = index!;
                  });
                },
                items: [
                  for (var route in _schedule.keys)
                    DropdownMenuItem(
                      value: _schedule.keys.toList().indexOf(route),
                      child: Text(route),
                    ),
                ],
              ),
            ),
          //   schedule
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _schedule.values.toList()[_selectedRouteIndex].length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _schedule.values.toList()[_selectedRouteIndex][index]['title'],
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 10),
                          for (var stop in _schedule.values.toList()[_selectedRouteIndex][index]['stopage'].keys)
                            ListTile(
                              title: Text(stop),
                              trailing: Text(_schedule.values.toList()[_selectedRouteIndex][index]['stopage'][stop]),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
