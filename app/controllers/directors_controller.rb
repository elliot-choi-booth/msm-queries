class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    d_id = params.fetch("d_id")

    matching_records = Director.where({ :id => d_id })

    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details"})
  end
end 
