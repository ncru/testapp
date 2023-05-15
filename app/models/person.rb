class Person < ApplicationRecord
    enum clothing: { jacket: 0, suit: 1, tuxedo: 2 }
end
