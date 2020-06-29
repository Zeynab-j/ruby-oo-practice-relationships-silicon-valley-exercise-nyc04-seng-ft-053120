class FundingRound

    attr_reader :startup, :venture_capitalist, :type, :investment
    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type

        if investment < 0
            @investment = 0
        else
            @investment = investment.to_f
        end

        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_by_founder(name)
        self.all.find do |startup|
            startup.founder == name
        end
    end

    def self.domains
        self.all.map do |startup|
            startup.domain
        end
    end

end
end