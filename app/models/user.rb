class User
  include MongoMapper::Document
  
  key :email, String, :required=>true
end
