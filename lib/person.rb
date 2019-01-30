require 'pry'
class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name

  def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8



#  puts "Hello! My name is #{@name}"
  end

  def hygiene=(hygiene)
    @hygiene= hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end


  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
      return @hygiene
    elsif @hygiene < 0
      @hygiene = 0
      return @hygiene
    else
      return @hygiene
    end

  end


  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"

  end


  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def take_bath
    self.hygiene += 4

     "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3

    hygiene
    happiness

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3

    hygiene
    happiness

    return "Hi #{friend.name}! It's #{@name}. How are you?"

  end

def start_conversation(friend, topic)
  if topic == "politics"
    friend.happiness -= 2
    self.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    friend.happiness += 1
    self.happiness += 1
     return "blah blah sun blah rain"
  else
   return "blah blah blah blah blah"
  end

  hygiene

  if friend.happiness <= 0
    friend.happiness = 0

  end

  happiness

  if friend.happiness >= 10
    friend.happiness = 10

  end

end



end

kyle = Person.new("Kyle")
sam = Person.new("Sam")
