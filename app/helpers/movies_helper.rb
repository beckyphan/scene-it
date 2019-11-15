module MoviesHelper
  def thumbs_rating(rating)
    if rating == 0 || rating == nil
      html = "<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKc9pjuelkLMBUz6Tdymf55busqunhBxEucIaoGJnPWG6gKbr3&s'>"
      html.html_safe
    elsif rating > 0.5
      html = "<img src='https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjNm_C3puvlAhVNSN8KHR-yBjEQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fthumbs-up_25297&psig=AOvVaw2LJ98o02wytNDcOnjU2ZSr&ust=1573875811649241'>"
      html.html_safe
    else
      html = "<img src='https://image.flaticon.com/icons/png/512/25/25395.png'>"
      html.html_safe
    end
  end
end
