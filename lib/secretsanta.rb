require 'yaml'
require 'gmail'

class SantaMailer

  def initialize(assignments, host_username, host_password)
    @assignments = assignments
    @gmail = Gmail.connect(host_username, host_password)
  end

  def send
    @assignments.each do |gifter, giftee|
      mail_to(gifter, giftee)
    end
  end

  def mail_to(gifter, giftee)
    @gmail.deliver do
      to      gifter[:email]
      subject '🎁 Secret Santa 2k18 🎁'
      text_part do
        body    "You are buying a gift for: \n\n🎄 #{ giftee[:name].upcase } 🎄"
      end
    end
  end

end

class SecretSantaAssigner
  attr_reader :assignments

  def initialize(list)
    @giftees = list.dup
    @gifters = list.dup
    @assignments = {}
  end

  def allocate_santas
    @gifters.each do |name|
      secret_santa = name
      secret_santa = @giftees.sample until valid_allocation?(secret_santa, name)
      @assignments[name] = secret_santa
      @giftees.delete(secret_santa)
    end
  end

  def shuffle
    @giftees.shuffle!
  end

  private

  def valid_allocation?(assignee, person)
    person[:exclusions] ? assignee != person && !(person[:exclusions].include?(assignee[:name])) : assignee != person
  end

end
