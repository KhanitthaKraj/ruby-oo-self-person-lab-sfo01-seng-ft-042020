require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account
        @original_amount = @bank_account
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end

    def happy?
        if @happiness > 7
            TRUE
        else
            FALSE
        end
    end

    def clean?
        if @hygiene > 7
            TRUE
        else
            FALSE
        end
    end

    def get_paid(salary)
        @original_amount = @bank_account
        @bank_account = @original_amount + salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene=(@hygiene += 4)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
        binding.pry
    end

    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        convo = "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            return 'blah blah partisan blah lobbyist' 
        elsif topic == 'weather'
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            return 'blah blah sun blah rain'
        else
            self.happiness = self.happiness
            friend.happiness = friend.happiness
            return 'blah blah blah blah blah'
        end
    end

end