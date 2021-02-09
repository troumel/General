{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
\
import Foundation\
\
struct CoinManager \{\
    \
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"\
    let apiKey = "EA3B8155-75E1-4427-BEA1-8F61BC6676BE"\
    \
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]\
    \
    var delegate: CoinManagerDelegate?\
\
    \
    func getCoinPrice(for currency: String) \{\
        let url = "\\(baseURL)/\\(currency)?apikey=\\(apiKey)"\
//        print(url)\
        performRequest(with: url)\
    \}\
    \
    func performRequest(with urlString: String) \{\
        \
        if let url = URL(string: urlString) \{\
            let session = URLSession(configuration: .default)\
            let task = session.dataTask(with: url) \{(data, request, error) in\
                if error != nil \{\
                    delegate?.didFailWithError(error: error!)\
                    return\
                \}\
                if let safeData = data \{\
                    if let rate = self.parseJSON(rateData: safeData) \{\
                        delegate?.updateCoin(self, coinData: rate)\
                        \
                    \}\
                \}\
            \}\
            task.resume()\
        \}\
    \}\
    \
    func parseJSON(rateData: Data) -> CoinData? \{\
        let decoder = JSONDecoder()\
        do \{\
            let result = try decoder.decode(CoinData.self, from: rateData)\
            let finalResult = CoinData(rate: result.rate)\
            return finalResult\
        \} catch \{\
            delegate?.didFailWithError(error: error)\
            return nil\
        \}\
    \}\
    \
    \
\}\
\
protocol CoinManagerDelegate \{\
    func updateCoin(_ coinManager: CoinManager, coinData: CoinData)\
    func didFailWithError(error: Error)\
\}\
}