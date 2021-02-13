class Hero

    attr_reader :name, :power, :biography
    @@all = []

    def initialize(params)
        params.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

end