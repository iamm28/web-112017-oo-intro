# everything is an object

# takes up some space in memory

# has some characteristics
# encapsulates state

# does something
# encapusalates behavior

class Book

@@all =  []

  def initialize(title, authors)
    puts 'we are making books!'
    @title = title
    @authors = authors
  end

  def title
    @title.split(' ').map {|word| word.capitalize }.join(' ')
  end

  def authors
    @authors.join(' & ')
  end

  def to_s
    "#{self.title} by #{self.authors}"
  end

  def self.all
    @@all << "<Book @title= #{self.title}>"
  end
end


book1 = Book.new("the title", ["Array Of", "Authors Names"])
book2 = Book.new("the goose", ["Jame Laf", "John Smith"])




#Book.all
#=> [<Book @title='hjkdfj'>, <Book @title='hjs'>, ..]

#Book.new
Book.all
Book.all.length
#=> 3
