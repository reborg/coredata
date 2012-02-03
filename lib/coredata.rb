require 'model'

module CoreData

  def self.included(model)
    model.extend Model
  end

  def save
    puts "IMPLEMENTME: save"
  end

  def save!
    puts "IMPLEMENTME: save!"
  end

end
