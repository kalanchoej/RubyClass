collection = [12, 23, 456, 123, 4579]
 
def even_odd?(collection)
  collection.sort.each do |num| 
    puts "%#{collection.max.to_s.size}d is %s" % [num, num.even? ? :even : :odd]
  end
end
 
even_odd?(collection)