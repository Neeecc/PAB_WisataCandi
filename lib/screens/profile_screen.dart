import 'package:flutter/material.dart';
import 'package:wisata_candi/widgets/ProfileInfoItem.dart';

class profileScreen extends StatefulWidget{
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<profileScreen> {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '' ;
  String userName = '' ;
  int favoriteCandiCount = 0;

  //TODO: 5. Implementasi fungsi SignIn
  void SignIn () {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }
  //TODO: 6. Implementasi fungsi signOut
  void signOut () {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200, width: double.infinity, color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO 2. Buat bagian ProfileHeader yang berisi gambar profil
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200-50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if(isSignedIn)
                          IconButton(
                            onPressed: () {}, 
                            icon: Icon(Icons.camera_alt, color: Colors.deepPurple[50],)
                          )
                      ],
                    ),
                  ),
                ),
                //TODO 3. Buat bagian ProfilInfo yang berisi info profil
                SizedBox(height: 20,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                ProfileInfoItem(
                  icon: Icons.lock,
                  label: 'Penggunna',
                  value: userName, 
                  iconColor: Colors.amber 
                ),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                ProfileInfoItem(
                  icon: Icons.person,
                  label: 'Nama', 
                  value: fullName,
                  showEditIcon: isSignedIn,
                  onEditPressed: () {
                    // Tindakan saat ikon edit ditekan, misalnya: Pengeditan nama
                    debugPrint('Icon edit ditekan ...');
                  },
                  iconColor: Colors.blue,
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                ProfileInfoItem(
                  icon: Icons.favorite,
                  label: 'Favorit',
                  value: favoriteCandiCount > 0 ? '$favoriteCandiCount' : '',
                  iconColor: Colors.red,
                ),
                //TODO 4. Buat ProfileActions yang berisi TextButton Sign in/out
                SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 20,),
                isSignedIn ?  TextButton(onPressed: signOut, child: Text('Sign out'))
                  : TextButton(onPressed: SignIn, child: Text('Sign in')),
              ],
            ),
          ),
        ],
      ),
    );
  }  
}