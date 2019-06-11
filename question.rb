module Question

  attr_reader :expected_answer

  def initialize
    @a = Random.rand(1..100)
    @b = Random.rand(1..100)
    @expected_answer = 0
    chooseQuestion
  end

  def chooseQuestion
    question_builder = Random.rand(1..3)
    case question_builder
    when 1
      additionQuestion
    when 2
      subtractionQuestion
    when 3
      multiplicationQuestion
    end
  end

  def additionQuestion
    puts "What is #{@a} + #{@b}?"
    @expected_answer = @a + @b
  end

  def subtractionQuestion
    puts "What is #{@a} - #{@b}?"
    @expected_answer = @a - @b
  end

  def multiplicationQuestion
    puts "What is #{@a} x #{@b}?"
    @expected_answer = @a * @b
  end
end