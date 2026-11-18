import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';

class SearchScreen extends StatefulWidget{
  const SearchScreen ({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State <SearchScreen> {
  //TODO 1. Deklerasikan variabel yang dibutuhkan
  List<Candi> _filteredCandis = candiList;
  String _SearchQuery = ' ';
  final TextEditingController _SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2. Buat appbar dengan judul Pencarian Candi
      appBar: AppBar(title: Text('Pencarian Candi'),),
      //TODO 3. Buat body berupa column
      body: Column(
        children: [
        //TODO 4. Buat TextField pencarian sebagai anak dari column
        Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.deepPurple[50],
            ),
            child: TextField(
              autofocus: false,
              //TODO 6. Implementasikan Fitur pencarian
              decoration: InputDecoration(
                hintText: 'Cari Candi...',
                prefixIcon: Icon(Icons.search),
                //TODO 7. Implementasikan pengosongan input
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: 
                BorderSide(
                  color: Colors.deepPurple,
                )
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
          ),
        ),  
        //TODO 5. Buat ListView hasil pencarian sebagai anak dari column
          ListView.builder(
            itemCount: _filteredCandis.length,
            itemBuilder: (context, index){
              final Candi = _filteredCandis[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          Candi.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //Informasi Candi
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Candi.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4,),

                            Text(Candi.location)
                          ],
                        ),
                    )
                  ],
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}