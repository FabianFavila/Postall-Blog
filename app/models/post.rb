class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates_presence_of :title
	validates_length_of :title, :in => 5..30, :message => "Tamaño de titulo invalido"
	validates_presence_of :body
	validates :body, length: {
    	minimum: 10,
    	maximum: 50,
    	tokenizer: lambda { |str| str.split(/\s+/) },
    	too_short: "El cuerpo del post es muy corto",
    	too_long: "El cuerpo del post es muy grande"
	}
	has_many :comments, dependent: :destroy
end
