# your code goes here
require 'pry'

class Person
    
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness >10
        @happiness
    end

    def hygiene
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
        @hygiene
    end



    def clean?
        self.hygiene > 7
    end

    def happy?
      self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+= 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-= 3
        self.happiness+= 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness+= 3
        self.happiness+= 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic.downcase == "politics"
            self.happiness-= 2
            friend.happiness-= 2
            "blah blah partisan blah lobbyist"
        elsif topic.downcase == "weather"
            self.happiness+= 1
            friend.happiness+= 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end
    

end
