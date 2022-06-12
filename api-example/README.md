# API Examples

### Course Repo

Example 1 to 5:  
https://github.com/axiftaj/Flutter-Rest-Api-Tutorials-With-Example

### Userful Resources

Fake Store API  
Fake store rest API for your e-commerce or shopping website prototype  
https://fakestoreapi.com/

Test your front-end against a real API:  
https://reqres.in/

JsonViewer see the json as tree view:  
http://jsonviewer.stack.hu/

Json Formatter:  
https://jsonformatter.org/

fvm | Flutter Version Management  
A simple CLI to manage Flutter SDK versions.  
https://fvm.app/

Displaying images on the web  
https://docs.flutter.dev/development/platform-integration/web-images

Cross-Origin Resource Sharing (CORS)  
https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#what_requests_use_cors

## Packages

https://pub.dev/packages/modal_progress_hud_nsn/  
https://pub.dev/packages/image_picker

## Code snippets

**Code 1**

```
Future<ProductsModel> getProductsApi() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/e5180f13-6cfc-4464-ba80-bd81f27469d9'),
        headers: <String, String>{
          "Access-Control-Allow-Origin": "*",
          "X-Requested-With": "XMLHttpRequest",
          'Content-Type': 'application/json; charset=UTF-8',
          'Access-Control-Allow-Headers': 'Access-Control-Allow-Origin, Accept',
          "Access-Control-Allow-Methods": "*"
        });
        // Option 2
        // headers: {
        //   "Accept": "application/json",
        //   "Access-Control-Allow-Origin": "*"
        // });
    // body: requestBody);
    // print(response.body);
    var data = jsonDecode(response.body.toString());
    print(response.body);
    print(data);
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
    }
  }
```
