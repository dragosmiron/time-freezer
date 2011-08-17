class Time
  attr_accessor :freezed_time
  class << self
    alias_method :now2, :now
  end
  def self.freeze
    @freezed_time = Time.now
  end
  def self.unfreeze
    @freezed_time = nil
  end
  def self.now
    @freezed_time.nil? ? now2 : @freezed_time
  end
end