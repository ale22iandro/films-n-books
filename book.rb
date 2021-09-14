class Book < Product
  def initialize(genre= "", writer = "")
    super
    @genre = genre
    @writer = writer
  end

  def show_params
    ["genre", "writer"]
  end

  def to_s
    "Книга #{@title} в жанре #{@genre}, автор #{@writer}\n
Стоит #{@price} руб. \nНа складе есть #{@amount} экземляров"
  end

  def add_params(params)

    @price = params["price"]
    @amount = params["amount"]
    @title = params["title"]
    @writer = params["writer"]
    @genre = params["genre"]
  end

end


