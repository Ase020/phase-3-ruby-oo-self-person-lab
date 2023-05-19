# your code goes here
class Person
  attr_reader :name
  attr_accessor :happiness, :hygiene, :bank_account
  def initialize(name, bank_account=25, hygiene=8,happiness=8)
    @name =name
    @bank_account = bank_account
    @hygiene = hygiene
    @happiness = happiness
  end

  def bank_account=(value)
    @bank_account = value
  end

  def happiness=(value)
    @happiness = value.clamp(0,10)
    end

  def hygiene=(value)
    @hygiene = value.clamp(0,10)
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid amount
    self.bank_account += amount
     "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
     "♪ another one bites the dust ♫"
  end

  def call_friend friend
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end



ase = Person.new('Felix')
obilo = Person.new('Obilo')
# ase.bank_account = 100
# ase.get_paid 15
# ase.hygiene = 0
# ase.take_bath
# ase.work_out
# ase.take_bath
# puts "
#     Name: #{ase.name}, Bank a/c: #{ase.bank_account}, Happiness: #{ase.happiness =7}, Hygiene: #{ase.hygiene}"
ase.call_friend obilo

puts ase.happiness