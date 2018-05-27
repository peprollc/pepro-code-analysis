class Analyzer
  attr_accessor :code

  def initialize(code)
    @code = code
  end

  def func
    code
  end
end
