class StockPriceService
  def initialize(ticker)
    cleanedTicker = ticker.upcase.sub(/\.TO/, ".TRT")
    @url = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{cleanedTicker}&apikey=#{ENV["ALPHA_VANTAGE_KEY"]}"
    @stockPrice = nil
  end

  def call
    response = Faraday.get(@url)
    if response.status == 200
      body = JSON.parse(response.body)
      @stockPrice = body["Global Quote"]["05. price"]
    end
  end
end