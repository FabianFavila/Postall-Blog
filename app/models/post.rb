class Post < ActiveRecord::Base
	validates :title, length: {
    minimum: 5,
    maximum: 30,
    message: "Titulo invalido"
  	}

  	validates :body, length: {
    minimum: 10,
    maximum: 50,
    too_short: "Post muy corto, debe tener al menos %{count} caracteres.",
    too_long: "Post muy largo, debe tener maximo %{count} caracteres."
  	}
end
