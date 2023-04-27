import 'package:firstapp/Export%20Folder/ExportedFiles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.7,
          decoration:  const BoxDecoration(
            // color: AppColors.backgroundColor,
            gradient: LinearGradient(
                transform: GradientRotation(90),
                
                colors: [
              AppColors.backgroundColor,
              AppColors.lightbackgroundColor,
              
            ]

            )

          ),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
            IconButton(
            icon: isDarkModeEnabled ? const Icon(Icons.wb_sunny) :const Icon(Icons.nightlight_round),
        onPressed: () {
            setState(() {
              isDarkModeEnabled = !isDarkModeEnabled;
            });
        },
      ),
  ]
    ),


                const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.IconColor,
                        width: 4.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person_outline_outlined,

                        size: 50.0,
                        color: AppColors.IconColor,
                      ),
                    ),
                  ),
                ],
              ),
                const SizedBox(height: 10,),
            const Text('John Doe', style: TextStyle( color: AppColors.TextColor, fontSize: 20, fontWeight: FontWeight.bold),),
            const Text('john.doe@example.com', style: TextStyle( color: AppColors.TextColor,fontSize: 17, fontWeight: FontWeight.w500),),
                const SizedBox(height: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.IconColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    // Do something when the button is pressed
                  },
                  child: const Text('Upgrade to PRO', style: TextStyle( color: Colors.black, fontWeight: FontWeight.w900),),
                ),

                DropDown(name: 'Privacy',icon: const Icon(Icons.privacy_tip_outlined, color: AppColors.TextColor,)),
                DropDown(name: 'Purchased History',icon: const Icon(Icons.history, color: AppColors.TextColor,)),
                DropDown(name: 'Help and Support',icon:const Icon(Icons.help_outline, color: AppColors.TextColor,)),
                DropDown(name: 'setting',icon:const Icon(Icons.settings_outlined, color: AppColors.TextColor,)),
                DropDown(name: 'Invite a Friend',icon:const Icon(Icons.person_add_alt_1_outlined, color: AppColors.TextColor,)),
                const SizedBox(height: 10,),
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.logOutBtnColor,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(double.infinity, 50),

                    ),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                    child:const Text('Logout', style: TextStyle( fontWeight: FontWeight.w900),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
