import 'package:flutter/material.dart';

class searchDelegate implements SearchDelegate<String> {
  @override
  String query;

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Colors.white,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
      primaryColorBrightness: Brightness.light,
      primaryTextTheme: theme.textTheme,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.cancel),
        onPressed: (){
          query='';
          showSuggestions(context);
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: (){
        close(context,null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        color: Colors.lightBlue,
        child: Center(child: Text(query),),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suhhestionList = query.isEmpty?morenList:list.where((input)=> input.startsWith(query)).toList();
    return ListView.builder(
      itemCount:suhhestionList.length,
        itemBuilder: (context,index){
          return ListTile(
            title: RichText(
                text: TextSpan(
                  text: suhhestionList[index].substring(0,query.length),
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: suhhestionList[index].substring(query.length),
                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                    )
                  ]
                ),
            ),
          );
        }
    );
  }

  @override
  void close(BuildContext context, String result) {
    // TODO: implement close
  }

  @override
  void showResults(BuildContext context) {
  }

  @override
  void showSuggestions(BuildContext context) {
    // TODO: implement showSuggestions
  }

  @override
  // TODO: implement transitionAnimation
  Animation<double> get transitionAnimation => null;

}






const list = [
  'jiejie-大长腿',
  'jiejie-小蛮腰',
  'gege-大长腿',
  'gege-厉害了'
];

const morenList = [
  '推荐1',
  '推荐2',
  '推荐3',
  '推荐4',
];