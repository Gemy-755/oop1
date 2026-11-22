class Movie{

  String title;
  String studio;
  String rating;


  Movie(this.title,this.studio,[this.rating="PG"]);


  static List<Movie> getPG(List<Movie> movie){
    List<Movie> list = [];
    for(int i = 0 ; i < movie.length ; i++){
      if(movie[i].rating.contains("PG")){
        list.add(movie[i]);
      }
    }
    return list;
  }
}


void main(){

  Movie m1 = Movie("Casino Royal", "Eon Productions" , "PG13");
  Movie m2 = Movie("Harry Potter", "Warner Bros");
  Movie m3 = Movie("The Dark Knight", "Warner Bros " ,  "NG-17");
  Movie m4 = Movie("Oppenheimer", "Universal Pictures" , "R");

  List<Movie> list = [m1,m2,m3,m4];

  List<Movie> pgMovie = Movie.getPG(list);

  for(int i = 0 ; i < pgMovie.length ; i++) {
    print({pgMovie[i].title});
  }
}