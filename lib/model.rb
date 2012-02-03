module Model

  def create(attributes = {})
    _create(attributes)
  end

  def create!(attributes = {})
    _create(attributes, true)
  end

  def _create(attributes, just_do_it = false)
    resource = new(attributes)
    resource.__send__(just_do_it ? :save! : :save)
    resource
  end

  def all
    puts "IMPLEMENTME: all"
    []
  end

end
