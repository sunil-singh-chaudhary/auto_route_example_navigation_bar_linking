import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashbordDetails extends StatefulWidget {
  const DashbordDetails({super.key});

  @override
  State<DashbordDetails> createState() => _DashbordDetailsState();
}

class _DashbordDetailsState extends State<DashbordDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashbord Details')),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            //put inside column so both widget on same screen shows
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(child: Text('$index')),
                      title: Text('Loren ipsum Loren $index'),
                      onTap: () {
                        //show form here the container not direactly
                        context.router
                            .replace(LoreumDetailsPageRoute(index: index));
                        //pass argument to other widget
                      },
                    );
                  },
                ),
              ),
              Container(
                color: Colors.green,
                height: 200,
                child: const AutoRouter(),
              )
            ],
          )),
    );
  }
}
