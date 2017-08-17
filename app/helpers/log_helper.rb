module LogHelper 

  def categorize(logs)
    categories = [[],[],[]]
    logs.each do |log|
      if log.item.category == "game" && log.complete == false
        categories[0] << log.item
      elsif log.item.category == "movie" && log.complete == false
       categories[1] << log.item
      elsif log.item.category == "book" && log.complete == false
        categories[2] << log.item
      end
    end
    categories
  end

  def complete?(log)
    return true if log.complete == true
  end


end