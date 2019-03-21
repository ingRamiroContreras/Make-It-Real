def maximo(*arr) 
  max = 0
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  (arr.length).times do |i|
    max = max > arr[i] ?  max : arr[i]
  end
  max
end

def minimo(*arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  max = arr[0]
  (arr.length).times do |i|
    max = max < arr[i] ?  max : arr[i]
  end
  max
end

def maximo2(*valores)
  valores.max
end

def minimo3(*valores)
  valores.min
end

p maximo(1)
p minimo(1)
p "---------"
p maximo()
p minimo()
p "---------"
p maximo(1,2,3,4,5,6)
p minimo(100,20,3,49,51,6)