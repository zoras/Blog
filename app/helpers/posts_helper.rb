module PostsHelper
  def show_commenter(name)
    if name.length > 5
      raw "<h4>#{name}</h4>"
    else
      raw "<h5>#{name.reverse}</h5>"
    end
  end
end
