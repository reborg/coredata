require File.dirname(__FILE__) + "/spechelper"
require 'mom'

describe "creation of a managed object model" do
  
  describe "from a bundle" do

    before do
      @mom = NSManagedObjectModel.mom
    end

    it 'should always create a default mom' do
      @mom.should.not.be == nil
    end

    it 'the default mom pointing at the current dir has no entities' do
      @mom.entities.size.should.be == 0
    end

    it 'creates a default mom if the given mom file is not found in Resources' do
      NSManagedObjectModel.instance_from_bundled_file("some.mom").entities.size.should.be == 0
    end

    after do
    end

  end

end
