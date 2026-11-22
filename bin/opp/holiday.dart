class Holiday{

  String name;
  int day;
  String month;


  Holiday(this.name , this.day , this.month);


  static bool inSameMonth(Holiday h1 ,Holiday h2 ){
    return h1.month == h2.month;
  }


  static double avgDate(List<Holiday> holidays){
    int sum = 0;
    for(int i = 0 ; i < holidays.length ; i++){
      sum+=holidays[i].day;
    }
    return sum / holidays.length;
  }
}

void main(){

  Holiday h1 = Holiday("Independence Day", 4, "July");
  Holiday h2 = Holiday("Christmas", 25, "December");
  Holiday h3 = Holiday("Sham El-Nessim", 13, "April");
  Holiday h4 = Holiday("The 23rd Revolution", 23, "July");

  print(Holiday.inSameMonth(h1, h4));

  print(Holiday.inSameMonth(h2, h3));

  List<Holiday> list = [h1 , h2 , h3 , h4];

  print(Holiday.avgDate(list));
}