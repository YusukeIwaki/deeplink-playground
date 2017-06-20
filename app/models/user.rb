class User < ActiveRecord::Base
    def sexes
        self.woman ? "women" : "men"
    end
end
