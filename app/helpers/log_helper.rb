module LogHelper 

  def categorize(logs)
    categories = [[],[],[]]
    logs.each do |log|
      if log.item.category == "game"
        categories[0] << log.item
      elsif log.item.category == "movie"
       categories[1] << log.item
      else
        categories[2] << log.item
      end
    end
    categories
  end


end