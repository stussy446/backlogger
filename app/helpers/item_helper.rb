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

  def already_owned(user, item)
    log = Log.where(user_id: user.id, item_id: item.id)
    return true if log.length > 0
  end


end