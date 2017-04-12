class Cat
  attr_accessor :mood
  attr_reader :name
  def initialize(name)
    @name=name
    @mood="nervous"
  end
  def name=(name)
    raise SettingWriterError,"#{self.name} received, none expected."
  end
end
