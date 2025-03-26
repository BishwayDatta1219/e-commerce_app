import 'package:e_commerce_app/domain/entities/user_entity.dart';
import 'package:e_commerce_app/presentaion/ui/pages/home_page/widgets/user_item..dart';
import 'package:flutter/material.dart';

class UserContent extends StatefulWidget {
  const UserContent({super.key});

  @override
  State<UserContent> createState() => _UserContentState();
}

class _UserContentState extends State<UserContent> {
  List<UserEntity> user = [
    UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ), UserEntity(
      userName: 'Bishway Datta',
      phoneNumber: 01897674012,
      homeAddress: "103/1 R.M Das Road",
      imagePath:
      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      lastDailed: '27-03-2025',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return UserItem(
          user: user[index],
        );
      },
      itemCount: user.length,
    );
  }
}
