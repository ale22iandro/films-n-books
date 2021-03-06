class Film < Product
  attr_accessor :price
  def initialize(year = "", director = "")
    super
    @year = year
    @director = director
  end

  def show_params
    ["year", "director"]
  end

  def to_s
    "Фильм #{@title} снят в #{@year} году, режиссер #{@director}\n
Стоит #{@price} руб. \nНа складе есть #{@amount} экземляров\n"
  end

  def add_params(params)

    @price = params["price"]
    @amount = params["amount"]
    @title = params["title"]
    @year = params["year"]
    @director = params["director"]
  end

end

