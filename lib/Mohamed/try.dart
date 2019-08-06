




import 'package:flutter/material.dart';
import 'package:parallax_image/parallax_image.dart';

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => new MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  final _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return new ListView(controller: _controller,
    scrollDirection: Axis.horizontal,
     children: [
      new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        extent: 100.0,
        child: new Text('January'),
        controller: _controller,
      ),new ParallaxImage(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg/810px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),new ParallaxImage(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg/1024px-Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),new ParallaxImage(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Vincent_van_Gogh_-_Worn_Out_%28F997%29.jpg/800px-Vincent_van_Gogh_-_Worn_Out_%28F997%29.jpg'),
        extent: 100.0,
        child: new Text('January'),
        controller: _controller,
      ),new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),
      new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),
      new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),
      new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),
      new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),
      new ParallaxImage(
        image: NetworkImage('http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg'),
        // Extent of this widget in scroll direction.
        // In this case it is vertical scroll so extent defines
        // the height of this widget.
        // The image is scaled with BoxFit.fitWidth which makes it
        // occupy full width of this widget.
        // After image is scaled it should normally have height greater
        // than this value to allow for parallax effect to be
        // visible.
        extent: 100.0,
        // Optionally specify child widget.
        child: new Text('January'),
        // Optinally specify scroll controller.
        controller: _controller,
      ),
      // ...add more list items
    ]);
  }
}