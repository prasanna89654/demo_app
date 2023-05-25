import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  List<String> items = [
    'धन्यवाद',
    'तपाई लाई कस्तो छ',
    'स्वागतम्',
    'यहाँ काम गर्दै',
    'जब देखि म उनलाई आएको छु     rt',
    'धन्यवाद',
    'तपाई लाई कस्तो छ',
    'स्वागतम्',
    'यहाँ काम गर्दै',
    'जब देखि म उनलाई आएको छु     rt',
    'धन्यवाद',
    'तपाई लाई कस्तो छ',
    'स्वागतम्',
    'यहाँ काम गर्दै',
    'जब देखि म उनलाई आएको छु     rt'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        title: Text(
          "Demo Name App",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200, // Maximum width of each item
                        childAspectRatio:
                            3 / 2, // Width to height ratio of each item
                        crossAxisSpacing: 10, // Spacing between columns
                        mainAxisSpacing: 10, // Spacing between rows
                      ),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.blue[800],
                          elevation: 3,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              items[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                        );
                      },
                    ),
                    Container(
                      height: 150,
                      // width: 200,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          Card(
                            elevation: 3,
                            color: Colors.green[800],
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Text(
                                "सेवाहरू",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    child: Card(
                                      color: Colors.green[600],
                                      child: Padding(
                                        padding: const EdgeInsets.all(25.0),
                                        child: Center(
                                          child: Text(
                                            "सेवाहरू",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          widgetmaker("कर्मचारी"),
                          widgetmaker("कर्मचारी"),
                          widgetmaker("कर्मचारी"),
                          widgetmaker("कर्मचारी"),
                          widgetmaker("कर्मचारी"),
                          widgetmaker("कर्मचारी"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 300,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "सुचनाहरु",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 500,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2024-02-14",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red.shade800),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "लिंगभेनेक्स अनुवाद अनुप्रयोगहरूले तपाईंलाई कुनै पनि समयमा मद्दत गर्नेछ! एन्ड्रोइड, आईओएस, म्याकबुक, गुगल, अमेजन एलेक्सा",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 10,
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

widgetmaker(String text) {
  return Container(
    width: 200,
    child: Card(
      elevation: 3,
      color: Colors.red.shade800,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
