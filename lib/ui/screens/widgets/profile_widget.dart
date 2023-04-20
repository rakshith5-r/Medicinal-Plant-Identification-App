
import 'package:flore/constants.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const ProfileWidget({
    Key? key,required this.icon, required this.title,
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children: [
              Icon(icon,color: Constants.blackColor.withOpacity(0.5),size: 24.0,),
              const SizedBox(
                width: 16.0,
              ),
              Text(title,style: TextStyle(
                color: Constants.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),),
            ],
          ),
          Icon(Icons.arrow_forward_ios,color: Constants.blackColor.withOpacity(0.4),size: 16.0,),

        ],
      ),
    );
  }
}