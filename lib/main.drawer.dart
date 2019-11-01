import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
	@override
	_MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State {
	_currenttime() {
		return "${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}";
	}

	@override
	Widget build(BuildContext context) {
		final mediaQuery = MediaQuery.of(context);

		return Drawer(
			child: Scaffold(
				backgroundColor: Colors.grey[900],
				appBar: AppBar(
					title: Text("TIMER",
						style: TextStyle(
							fontSize: mediaQuery.size.height / 25,
						),
					),
					elevation: 15.0,
					backgroundColor: Colors.deepOrange,
				),
				body: Center(
					child: (
							Material(
								borderRadius: BorderRadius.all(Radius.circular(50.0)),
								elevation: 50.0,
								color: Colors.deepOrange,
								child: Container(
									width: 280,
									height: 280,
									child: Center(
										child: Text(
											_currenttime(),
											style: TextStyle(
												color: Colors.white,
												fontSize: 50,
											),
										),
									),
								),
							)),
				),
			),
		);
	}
}

