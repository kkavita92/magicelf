file_path = File.expand_path("../../participants.txt", __FILE__)
list = File.read(file_path).split("\n")

class SecretSantaAssigner

  attr_reader :assignments


  def initialize(list)
    @list = list.dup
    @assignments = {}
  end

  def allocate_santas
    @list.each do |name|
      secret_santa = name #bit hacky
      secret_santa = @list.sample until secret_santa != name
      @assignments[name] = secret_santa
    end
  end

  def shuffle
    @list.shuffle!
  end

end

game =  SecretSantaAssigner.new(list)
game.shuffle
game.allocate_santas

p game.assignments
