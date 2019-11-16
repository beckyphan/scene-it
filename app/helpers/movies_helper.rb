module MoviesHelper

  def thumbs_rating(rating)
    if rating == 0 || rating == nil
      html = "<img src='https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Icon-round-Question_mark.svg/1024px-Icon-round-Question_mark.svg.png'>"
      html.html_safe
    elsif rating > 0.5
      html = "<img src='https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjNm_C3puvlAhVNSN8KHR-yBjEQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fthumbs-up_25297&psig=AOvVaw2LJ98o02wytNDcOnjU2ZSr&ust=1573875811649241'>"
      html.html_safe
    else
      html = "<img src='https://image.flaticon.com/icons/png/512/25/25395.png'>"
      html.html_safe
    end
  end

  def thumbs_up_button
    html = "'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjNm_C3puvlAhVNSN8KHR-yBjEQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fthumbs-up_25297&psig=AOvVaw2LJ98o02wytNDcOnjU2ZSr&ust=1573875811649241'"
    html.html_safe
  end

  def thumbs_down_button
    html = "'https://image.flaticon.com/icons/png/512/25/25395.png'"
    html.html_safe
  end


end
