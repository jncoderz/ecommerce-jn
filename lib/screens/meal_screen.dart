import 'package:flutter/material.dart';

class MealScreen extends StatefulWidget {
  const MealScreen({super.key});

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Column(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
// image
              child: Column(children: [
                const Image(
                  image: AssetImage("assets/images/fried.png"),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                    ]),
              ]),
            ),
//row1
            Row(children: [
              const Text("Fried Chicken"),
              Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              const Spacer(),
//row2
              Row(children: [
                const Icon(Icons.add_box),
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  color: Colors.white,
                  child: const Text(
                    "2",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Icon(Icons.remove_outlined),
              ]),
            ]),
          ]),
// sixed box height
          const SizedBox(
            height: 10,
          ),
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// sixed box height
            SizedBox(
              height: 10,
            ),
            Text(
              "\$ 15.00",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
// sixed box height
            SizedBox(
              height: 10,
            ),
            Text(
              "Recipe",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
// sixed box height
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ]),
//sized box height
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.location_on)),
//sized box width
            const SizedBox(
              width: 10,
            ),
            const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

//sized box height
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Near karachi",
                    style: TextStyle(),
                  ),
                ]),
          ]),

//sized box height
          const SizedBox(
            height: 15,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.access_time_filled)),
//sized box width
            const SizedBox(
              width: 10,
            ),
            const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery time",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

//sized box height
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "30 Minute",
                    style: TextStyle(),
                  ),
                ]),
          ]),

// sizedbox height 3
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Colors.greenAccent,
            ),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2 Items",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "\$ 207.00",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
