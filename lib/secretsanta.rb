require 'yaml'

# file_path = File.expand_path("../../participants.txt", __FILE__)
# input = File.read(file_path).split("\n")
# list = input.map { |participant_details| participant_details.split(",").map(&:strip) }

yaml_file = "../participants.yml"
list = YAML.load_file(yaml_file)

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
