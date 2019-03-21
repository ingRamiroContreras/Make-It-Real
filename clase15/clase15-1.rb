@name = []

def defaults(hash)
    hash[:temperature] = 10 if !hash[:temperature]
    hash[:altitude] = 12000 if !hash[:altitude]
    hash[:pressure] = 500 if !hash[:pressure]
    hash
end

def defaults2(hash)
    p @name = [1,2,3,4,5]
    { temperature: 10, altitude: 12000, pressure: 500 }.merge(hash)
end


p defaults2({temperature: 10})