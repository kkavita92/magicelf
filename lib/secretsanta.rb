require 'yaml'

yaml_file = "../participants.yml"
list = YAML.load_file(yaml_file)

class SecretSantaAssigner
  attr_reader :assignments

  def initialize(list)
    @giftees = list.dup
    @gifters = list.dup
    @assignments = {}
  end

  def allocate_santas
    @gifters.each do |name|
      secret_santa = name #bit hacky
      secret_santa = @giftees.sample until valid_allocation?(secret_santa, name)
      @assignments[name] = secret_santa
      @giftees.delete(secret_santa)
    end
  end

  def valid_allocation?(assignee, person)
    if person[:exclusions]
      assignee != person && !(person[:exclusions].include?(assignee[:name]))
    else
      assignee != person
    end
  end

  def shuffle
    @giftees.shuffle!
  end

end

game =  SecretSantaAssigner.new(list)
game.shuffle
game.allocate_santas

p game.assignments
