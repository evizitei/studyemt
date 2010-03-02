class SortingChallenge
  include MongoMapper::Document
  
  key :items,Array
  key :name,String
end