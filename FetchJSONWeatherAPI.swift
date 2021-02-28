
import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
}

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=f98361d88b418ae928c2a99b148599ac&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchweather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        // create a url
        if let url = URL(string: urlString) {
            // create a url session
            let session = URLSession(configuration: .default)
            // give session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    if let safeData = data {
                        if let weather = self.parseJSON(weatherData: safeData) {
                            delegate?.didUpdateWeather(self, weather: weather)
                        }
                        
                    }
                }
            }
            task.resume()
            
        }
    }
    
    func parseJSON(weatherData: Data) -> WeatherModel? {
        
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            return weather
            
        } catch {
            print(error)
            return nil
        }
    }
}





