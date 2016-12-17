class CreaturesController < ApplicationController

  #display all creatures
  def index
    #get all cretures from db and save to instance variable
    @creatures = Creature.all
    #render the index view (it has access to instance variable)
    #remember the default behavior id to rander :index
  end
end
