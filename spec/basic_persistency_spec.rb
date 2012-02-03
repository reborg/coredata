require File.dirname(__FILE__) + "/spechelper"
require 'coredata'

class Book 
  include CoreData
end

describe "basic CRUD operations on persistent objects" do
  
  before do
    @book = Book.new
  end

  it 'there are no persisted books at startup' do
    Book.all.size.should.be == 0
  end

  #it 'persistent objects are given an ID' do
  #  Book.create.id.should.not.be nil 
  #end

  #it 'retrieves all persistent objects in one go' do
  #  Book.create 
  #  Book.create 
  #  Book.all.size.should.be == 2
  #end

  #after do
  #  Database.cleanup
  #end

end
