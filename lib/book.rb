

class Book

  attr_reader :title, :authors, :description
  attr_writer :title, :authors, :description

  @@all = []
  # ALL = []

  def initialize(title, authors, description)
    puts 'we are making books!'
    @title = title
    @authors = authors
    @description = description
    # here is where that code should go
  end

  #
  # def description
  #   @description
  # end
  #
  # def authors
  #   @authors
  # end

  def formatted_title
    self.title.split(' ').map {|word| word.capitalize }.join(' ')
  end



  def formatted_authors
    @authors.join(' & ')
  end



  def to_s
    "\"#{self.formatted_title}\" by #{self.formatted_authors}"
  end

  def self_printer
    self
  end

  def self.all
    @@all << "<Book @title= #{self.formatted_title}>"
  end

end


book1 = Book.new("the title", ["Array Of", "Authors Names"],"a nice story")
book2 = Book.new("the goose", ["Jame Laf", "John Smith"], "a bad story")

puts Book.all
puts Book.all.length
