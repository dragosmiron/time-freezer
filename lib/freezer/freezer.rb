class Time
  attr_accessor :freezed_time
  class << self
    alias_method :now2, :now
  end
  def self.freeze
    @freezed_time = Time.now
  end
  def self.reset
    @freezed_time = nil
  end
  def self.now
    @freezed_time.nil? ? now2 : @freezed_time
  end
  
  def self.travel(at)
    if at.is_a? Time
      @freezed_time = at
    else
      raise "#{at} is not of Time type!"
    end
  end
end

