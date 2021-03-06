class Product

  attr_accessor :name
  attr_reader :reviews

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def reviews 
    @reviews
  end
  
  def self.list_products
    @@all.each.with_index do |p, index|
      puts "#{index +1} - #{p.name}"
    end
  end
  
  def add_review(review)
    review.product = self 
    @reviews << review 
  end
  
  def self.list_reviews(product)
      product.reviews.each.with_index do |r, index|
        puts "#{index +1}: #{r.date} - #{r.title}"
    end
  end
end
