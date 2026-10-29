void setup() {
  size(600, 600);
  background(245, 240, 225);
  noStroke();

  int day = 0;
  
  WeatherDay day1 = new WeatherDay(1, "Sunny", 22, "Low");
  WeatherDay day2 = new WeatherDay(2, "Rainy", 14, "High");
  WeatherDay day3 = new WeatherDay(3, "Cloudy", 17, "Low");
  
  println(day1.weather);
  println(day2.weather);
  println(day3.weather);
  

  for (int row = 0; row < 10; row++) { //
    for (int col = 0; col < 10; col++) {
      day++;

      float x = 60 + col * 52;
      float y = 60 + row * 52;

      if (day % 4 == 0) {
        // Rainy day
        fill(100, 170, 220);
        ellipse(x, y, 28, 28);
      } else if (day % 3 == 0) {
        // Cloudy Day
        fill(175, 175, 180);
        ellipse(x, y, 32, 24);
      } else {
        // Sunny day
        fill(255, 190, 70);
        ellipse(x, y, 28, 28);
      }
    }
  }
}
  class WeatherDay {

    //Store weather information for one day
    int day;
    String weather;
    int temperature;
    String wind;

    //Set information when creating WeatherDay object
    WeatherDay(int day, String weather, int temperature, String wind) {
      this.day = day;
      this.weather = weather;
      this.temperature = temperature;
      this.wind = wind;
    } 
  }
