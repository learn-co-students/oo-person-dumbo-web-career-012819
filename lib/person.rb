class Person


      attr_reader :name
      attr_accessor :bank_account, :happiness, :hygiene


    def initialize(name)
      @name = name
      @hygiene = 8
      @happiness = 8
      @bank_account = 25
    end

    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def clean?
      @hygiene > 7 ? true : false
    end


    def happy?
      @happiness > 7 ? true : false
    end

    def call_friend(friend)

      @friend = Person.new(name)

      self.happiness += 3

      friend.happiness += 3

      "Hi #{friend.name}! It's #{@name}. How are you?"
      end

    def get_paid(salary)
      @bank_account += salary
      "all about the benjamins"
      end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end

    def happiness
      if @happiness < 0
        @happiness = 0
      elsif @happiness > 10
        @happiness = 10
      else
        @happiness
     end
   end

   def hygiene
     if @hygiene < 0
       @hygiene = 0
     elsif @hygiene > 10
       @hygiene = 10
     else
       @hygiene
    end
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
end

end
end
