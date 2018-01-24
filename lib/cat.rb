class Cat
  attr_accessor :mood
  def initialize(name)
    @name=name
    @mood="nervous"
  end
  def name
    @name.dup.freeze
  end
  def name=(name)
    raise SettingWriterError,"#{self.name} received, none expected."
  end
end
