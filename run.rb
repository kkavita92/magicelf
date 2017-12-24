require_relative 'lib/secretsanta.rb'
require 'yaml'

SAVE_OUTPUT = ENV['SAVE_OUTPUT']

yaml_file = "participants.yml"
list = YAML.load_file(yaml_file)

game =  SecretSantaAssigner.new(list)
game.shuffle
game.allocate_santas

if SAVE_OUTPUT
  f = File.new('./masterlist', 'w')
  game.assignments.each {|gifter, giftee| f.write("#{gifter[:name]} -> #{giftee[:name]}\n") }
  f.close
end

mailer = SantaMailer.new(game.assignments)
mailer.send
