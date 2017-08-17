module ItemHelper 

def categorize_items(items)
    categories = [[],[],[],[]]
    items.each do |item|
      if item.category == "game" 
        categories[0] << item
      elsif item.category == "movie" 
       categories[1] << item
      elsif item.category == "book" 
        categories[2] << item
      else 
        categories[3] << item
      end
    end
    categories
  end


end