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

  
  def print_item(item)
    if item.category != "book"
       "#{item.title} -- Genre: #{item.genre} -- Length: #{item.length} hours"
    else
       "#{item.title} -- Genre: #{item.genre} -- Length: #{item.length} pages"
    end
  end

end