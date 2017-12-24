require_relative 'lib/secretsanta.rb'
require 'yaml'

yaml_file = "participants.yml"
list = YAML.load_file(yaml_file)

game =  SecretSantaAssigner.new(list)
game.shuffle
game.allocate_santas

mailer = SantaMailer.new(game.assignments)
mailer.send
