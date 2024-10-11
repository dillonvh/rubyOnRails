class StockService
  def initialize(ticker)
    @ticker = ticker
    cleanedTicker = ticker.upcase.sub(/\.TO/, ":TSE")
    url = "https://www.google.com/finance/quote/#{cleanedTicker}"
    @response = Faraday.get(url)
    # Alpha vantage logic (free tier is too limited)
    # cleanedTicker = ticker.upcase.sub(/\.TO/, ".TRT")
    # @url = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{cleanedTicker}&apikey=#{ENV["ALPHA_VANTAGE_KEY"]}"
    # @stockPrice = nil
  end

  def price
    if @response.status == 200
      document = Nokogiri::HTML5.parse(@response.body)
      priceElement = document.xpath("//div[@class='YMlKec fxKbKc']")
      if priceElement.nil?
        0
      else
        priceElement.text.gsub(/[^\d\.]/, "").to_d
      end
      # Alpha vantage logic (free tier is too limited)
      # body = JSON.parse(response.body)
      # @stockPrice = body["Global Quote"] && body["Global Quote"]["05. price"].to_f || ""
    end
  end

  def name
    if @response.status == 200
      document = Nokogiri::HTML5.parse(@response.body)
      element = document.xpath("//div[@class='zzDege']")
      if element.nil?
        @ticker
      end
        element.text
      # Alpha vantage logic (free tier is too limited)
      # body = JSON.parse(response.body)
      # @stockPrice = body["Global Quote"] && body["Global Quote"]["05. price"].to_f || ""
    end
  end
end