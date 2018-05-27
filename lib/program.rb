class Program
  attr_accessor :code
  attr_accessor :status, :stdout, :stderr

  def initialize(code)
    @code = code
  end

  def func
    @status, @stdout, @stderr = systemu("ruby -e '#{code}'")
    true
  end

  def analyze
    raise NotImplementedError
  end
end
