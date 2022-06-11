/*
* Create a FakeAPI
* Go to https://webhook.site
* Create a new webhook
* Copy and Paste the JSON data into the webhook field
* Default status code: 200, Content Type: text/plain, Timeout before response: 0
* Copy the created link and paste it in Postman
* Send the request and see the response, click JSON tab to see the response
* API Link: https://webhook.site/e5180f13-6cfc-4464-ba80-bd81f27469d9
*/

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:api_example/Models/products_model.dart';

class ExampleFive extends StatefulWidget {
  ExampleFive({Key? key}) : super(key: key);

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> {



  Future<ProductsModel> getProductsApi() async {

    final response = await http.get(
        Uri.parse('https://webhook.site/e5180f13-6cfc-4464-ba80-bd81f27469d9'));
    var data = jsonDecode(response.body.toString());
    print(data.length);
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('API Course Example Five'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<ProductsModel>(
                  future: getProductsApi(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        // itemCount: snapshot.data.length,
                        // itemCount: snapshot.data!.length,
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(snapshot.data!.data![index].shop!.name.toString()),
                                subtitle: Text(snapshot.data!.data![index].shop!.shopemail.toString()),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(snapshot.data!.data![index].shop!.image.toString()),
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * .3,
                                width: MediaQuery.of(context).size.width * 1,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.data![index].images!.length,
                                  itemBuilder: (context, position) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * .25,
                                    width: MediaQuery.of(context).size.width * .5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            snapshot.data!.data![index].images![position].url.toString()
                                            ),
                                        ),
                                      ),
                                    ),
                                );                            
                               }),
                             ),
                              Icon(snapshot.data!.data![index].inWishlist! == false
                              ? Icons.favorite
                              : Icons.favorite_outline)
                            ],
                          );
                        });
                    } else {
                      return Text('Loading...');
                    }
                  }
                ),
            ),
          ],
        ),
      ),
    );
  }
}
