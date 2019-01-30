# your code goes here

require "pry"

class Person
	attr_accessor :bank_account
	attr_reader :name, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

#Long hand version of the attr_writer part of attr_accessor
	def happiness=(happiness)
		@happiness = happiness
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		end
	end

	def hygiene=(hygiene)
		@hygiene = hygiene
		@hygiene = 10 if @hygiene > 10
		@hygiene = 0 if @hygiene < 0
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
	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end
	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end
	def work_out
		self.happiness += 2
		self.hygiene -=3
		"♪ another one bites the dust ♫"
	end
	def call_friend(friend)
		friend.happiness += 3
		self.happiness += 3
		{self => friend, friend => self}.each do |caller, callee|
          return "Hi #{callee.name}! It's #{caller.name}. How are you?"
        end
	end
	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			person.happiness += 1
			"blah blah sun blah rain"
		else 
			"blah blah blah blah blah"
		end
	end
end




