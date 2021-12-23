class Role < ActiveRecord::Base
    has_many :auditions

    def auditions
        self.auditions.map do |audition|
            "#{self.audition}"
        end
    end

    def actors
        self.auditions.map do |a|
            self.a.actor
        end
    end

    def location 
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        actor = self.auditions.find{|audition| audition.hired}
        if actor
            actor
        else
            puts 'no actor has been hired for this role'
        end
    end

    def understudy
        actors = self.auditions.filter{|audition| audition.hired}
        if actors
            actors.second 
        else
            puts 'no actor has been hired for this role'
        end
    end


end