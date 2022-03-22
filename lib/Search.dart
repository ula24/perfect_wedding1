import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
class Person {
  final String name, surname;
  final num age;
  Person(this.name, this.surname, this.age);
}
class Search extends StatelessWidget {
  static List<Person> people = [
    Person('Mike', 'Barron', 64),
    Person('Todd', 'Black', 30),
    Person('Ahmad', 'Edwards', 55),
    Person('Anthony', 'Johnson', 67),
    Person('Annette', 'Brooks', 39),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title: const Text('Search',style: TextStyle(color: Color(0xffF1B7B7),fontSize: 25),),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context,'/');
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffF1B7B7),
        ),
      ),
      body: Stack(
          alignment: Alignment.topCenter,
          children:[
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffA6523F),
              ),
              child: null /* add child content here */,
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors:[
                        Color(0xffE8C8C8),
                        Colors.transparent
                      ],
                      begin: Alignment.bottomCenter,
                      end:Alignment.topCenter
                  )
              ),
            ),
           ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  final Person person = people[index];
                  return ListTile(
                    textColor: Color(0xffF1B7B7),
                    style: ListTileStyle.list,
                    title: Text(person.name,style: TextStyle(fontSize: 18),),
                    subtitle: Text(person.surname),
                    trailing: Text('${person.age} yo'),
                  );
            },
          ),

      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffA6523F),
        tooltip: 'Search people',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Person>(
            onQueryUpdate: (s) => print(s),
            items: people,
            searchLabel: 'Search people',
            suggestion: const Center(
              child: Text('Filter people by name, surname or age',style: TextStyle(fontSize:18,color: Color(0xffA6523F)),),
            ),
            failure: const Center(
              child: Text('No person found :('),
            ),
            filter: (person) => [
              person.name,
              person.surname,
              person.age.toString(),
            ],
            builder: (person) => ListTile(
              title: Text(person.name),
              subtitle: Text(person.surname),
              trailing: Text('${person.age} yo'),
            ),
          ),
        ),
        child: const Icon(Icons.search,color: Color(0xffF1B7B7),),
      ),
    );
  }
}