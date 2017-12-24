require 'yaml'

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

  def shuffle
    @giftees.shuffle!
  end

  private

  def valid_allocation?(assignee, person)
    person[:exclusions] ? assignee != person && !(person[:exclusions].include?(assignee[:name])) : assignee != person
  end

end
