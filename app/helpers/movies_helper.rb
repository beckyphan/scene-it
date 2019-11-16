module MoviesHelper

  def thumbs_rating(avg_rating)
    if avg_rating == nil
      html = "<img src='https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Icon-round-Question_mark.svg/1024px-Icon-round-Question_mark.svg.png'>"
      html.html_safe
    elsif avg_rating > 0
      html = "<img src='https://image.flaticon.com/icons/svg/25/25297.svg'>"
      html.html_safe
    else
      html = "<img src='https://image.flaticon.com/icons/png/512/25/25395.png'>"
      html.html_safe
    end
  end

end
