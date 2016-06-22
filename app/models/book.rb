#class Book < ActiveRecord::Base
 # attr_accessible :address, :department, :dob, :fullName, :gender, :phone_number, :year_of_entry
  #validates_presence_of :fullName, :department, :address

  class Book < ActiveRecord::Base
 # attr_accessible :title, :content
  attr_accessible :address, :department, :dob, :fullName, :gender, :phone_number, :year_of_entry
  #validates_presence_of :fullName, :department, :address

  validates :fullName, presence: true, uniqueness: true
  validates :department, presence: true
  validates :phone_number, presence:true, uniqueness: true

  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where('fullName like ?', "%#{query}%")
  end
  end

#end
