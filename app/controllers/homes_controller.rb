class HomesController < ApplicationController
  def index
  end

  def second
    # win = [2, 6, 10, 14, 18, 22, 26, 30]
    @numb = params[:numb]
    @last = @numb.split(",")[-1].to_i
    @target = @last
    
    if @last%4 == 2
      @flag = "lose"
    else
      while true
        if @target%4 == 2
          @flag = @target
          break
        end
        @target += 1
      end
    end
    
  end
end
