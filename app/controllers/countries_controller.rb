class CountriesController < ApplicationController
  def index
  end

  def get_a_girl
  end

  def get_a_boy
    respond_to do |format|
      format.html
      format.js
    end
  end
end
