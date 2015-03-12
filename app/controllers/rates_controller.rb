class RatesController < ApplicationController

  def show
    @last_rate = Rate.all.last
  end

end
