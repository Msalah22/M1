import 'package:flutter/material.dart';
import 'package:my_app/data.dart';
import 'final.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('favLocations'),
      ),
      body: _buildListView(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (_, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Final(location: LocationsAll().listobj[index])));
              },
              child: Image.network(LocationsAll().listobj[index].imageUrl),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Final(location: LocationsAll().listobj[index])));
                },
                child: ListTile(
                    title: Text(
                      LocationsAll().listobj[index].name,
                      textAlign: TextAlign.center,
                      style: (TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    subtitle: Text(
                      LocationsAll().listobj[index].theme,
                      textAlign: TextAlign.center,
                    ))),
          ]),
        );
      },
    );
  }
}
