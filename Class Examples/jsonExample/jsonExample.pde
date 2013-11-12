
// A JSON object
JSONObject json;

void setup() {
  size(640, 360);
  loadData();
}

void draw() {
  background(255);
}
void loadData() {
  // Load JSON file
  json = loadJSONObject("http://query.yahooapis.com/v1/public/yql?q=SELECT%20*%20FROM%20weather.forecast%20WHERE%20location%3D%2233146%22%20and%20u%3D%22%22&format=json&diagnostics=true&callback=");
  JSONObject results = json.getJSONObject("query").getJSONObject("results").getJSONObject("channel").getJSONObject("wind");
  println(results.getInt("chill"));

}


}

