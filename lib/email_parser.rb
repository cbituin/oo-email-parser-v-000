require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails
  
  @@all = []
  
<<<<<<< HEAD
  def initialize(emails)
    # @@all << self
    @emails = emails
  end
  
  # def parse
  #   emails.split(/,|\s/).each do |emails|
  #     # binding.pry
  #     if emails.include?(/[a-z]/)
  #       @@all << emails
  #     end
  #   end
  #   @@all
  # end
  def parse
    emails.split.map do |email| #map takes enumerable object and a block, and executes the block for each element
      email.split(',')
    end.flatten.uniq # #flatten turns multi dimensional array into single array by extracting elements into new array; #uniq removes duplicate elements
  end
  
  
=======
  def initialize
    # @@all << self
    self.parse
  end
  
  def self.parse(emails)
    emails.split(/,|\s/)
  end
  
>>>>>>> b24fb5201b05c20834dac005c0fd095967481f9d
end