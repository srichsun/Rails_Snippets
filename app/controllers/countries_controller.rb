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

  def get_a_baby
    @baby = {name: 'Kara', color: 'white'}

    # AJAX那邊要求dataType: "json"，這邊就會吃format.json
    respond_to do |format|
      format.html
      format.json { render json: @baby }
    end
  end
end
