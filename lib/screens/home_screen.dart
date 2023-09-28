import 'package:ecommerce_1/models/model_class.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ModelClass> modelClassList = [
    ModelClass("assets/images/fried.png", "Broast", 1200),
    ModelClass("assets/images/pizza.png", "Pizza", 1100),
    ModelClass("assets/images/rice.png", "Fried Rice", 1000),
    ModelClass("assets/images/roll.png", "Roll", 1000),
    ModelClass("assets/images/fried.png", "Broast", 1200),
    ModelClass("assets/images/pizza.png", "Pizza", 1100),
    ModelClass("assets/images/rice.png", "Fried Rice", 1000),
    ModelClass("assets/images/roll.png", "Roll", 1000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: const Icon(Icons.notes),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(children: [
            Text(
              "Work Place",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_drop_down)
          ]),
          const Text("Choose your delicious meal"),
// sized box height
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
// container 1
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.grey,
                    ))),
// container 2
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ),
            ),
// container 3
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_alt,
                  color: Colors.grey,
                ),
              ),
            ),
// container 4
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.child_friendly,
                  color: Colors.grey,
                ),
              ),
            ),
          ]),
// sizedbox height 2
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemCount: modelClassList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return
// containet
                      InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/meal");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
// image
                              Image(
                                image: AssetImage(modelClassList[index].image),
                                height: 150,
                              ),
                              Text(
                                modelClassList[index].name,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
//row
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      modelClassList[index].price.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add_circle),
                                    ),
                                  ]),
                            ]),
                      ),
                    ),
                  );
                }),
          ),
// sizedbox height 3
          const SizedBox(
            height: 10,
          ),
//container
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
//text
                  Text(
                    "2 Items",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
//text
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
