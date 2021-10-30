class Person
  attr_accessor :name, :age
  attr_reader :status
  def happy!
    @status = 'Sentindo-se Feliz!'
  end
  def sad!
    @status = 'Sentindo-se Triste!'
  end
  def shy!
    @status = 'Sentindo-se Timido!'
  end 
end
