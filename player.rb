module Player
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def loseLife
    @life = @life - 1
    puts "#{@name} lost a life."
    if @life > 0
      puts "#{@name} has #{@life} chances left."
    end
  end
end