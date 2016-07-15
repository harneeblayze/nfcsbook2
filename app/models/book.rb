#class Book < ActiveRecord::Base
 # attr_accessible :address, :department, :dob, :fullName, :gender, :phone_number, :year_of_entry


  class Book < ActiveRecord::Base
  attr_accessible :address, :department, :dob, :fullName, :gender, :phone_number, :year_of_entry

  validates :fullName, presence: true, uniqueness: true
  validates :department, presence: true
  validates :phone_number, presence:true, uniqueness: true
  paginates_per 10

  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    #"first_name like :search or last_name like :search or city like :search",
        #{search: "%#{search}%"}
    #where('fullName like ?', "%#{query}%")
    where("fullName like :query or department like :query or gender like :query",
          {query: "%#{query}%"})
  end

  end

