require_relative 'lib/secretsanta.rb'
require 'yaml'

# REPLACE THESE WITH YOUR OWN DETAILS

gmail_username = 'username'
gmail_password = 'password'

# DO NOT CHANGE THESE (unless you know what you're doing)

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

mailer = SantaMailer.new(game.assignments, gmail_username, gmail_password)
mailer.send
