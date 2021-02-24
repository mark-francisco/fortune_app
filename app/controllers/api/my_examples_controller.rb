class Api::MyExamplesController < ApplicationController

  def random_fortune_method
    number = rand()
    if number < 0.33
      @message = "your fortune is AWESOME"
    elsif number < 0.66
      @message = "your fortune is ALRIGHT"
    else
      @message = "your fortune is BAD"
    end
    render "random_fortune_view.json.jb"
  end

  def random_numbers_method
    @array = []
    index = 0
    while index < 6
      @number = rand() * 60
      @array << @number.to_i
      index += 1
    end
    render "random_numbers_view.json.jb"
  end

  def page_visits_method
    # we probably can't render # of page visits to a page because the method gets re-run for every route call/render. it's hard to track a variable where the value persists across multiple route requests.
    @visits = 0
    @visits += 1
    render "page_visits.json.jb"
  end

  def ninety_nine_bottles_method
    render "ninety_nine_bottles_view.json.jb"
  end

  def terminal_method
    puts "this working?"
  end

end
