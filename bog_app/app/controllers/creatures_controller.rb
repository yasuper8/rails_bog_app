class CreaturesController < ApplicationController

  #display all creatures
  def index
    #get all cretures from db and save to instance variable
    @creatures = Creature.all
    #render the index view (it has access to instance variable)
    #remember the default behavior id to rander :index
  end

  #show the new creature form
  def new
    @creature = Creature.new
    # remember the default behavior is to render :new
  end


  # create a new creature in the database
  def create
    #whitelist params and save them to a variable
    creature_params = params.require(:creature).permit(:name, :description)

    #create a new creature from "creature_params"
    creature = Creature.new(creature_params)

    #if creature saves, redirect to route that display all creatures
    if creature.save
      redirect_to creatures_path(creature)
      # redirect_to creatures_path is equivalent to:
      # redirect_to "/creatures"
    end
  end

  def show
    # get the creature id from the url params
    creature_id = params[:id]
    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    @creature = Creature.find_by_id(creature_id)

    # render the show view (it has access to instance variable)
    # remember the default behavior is to render :show
  end


  # show the edit creature form
  def edit
    # get the creature id from the url params
    creature_id = params[:id]
    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    @creature = Creature.find_by_id(creature_id)
    # render the edit view (it has access to instance variable)
    # remember the default behavior is to render :edit
  end


  # update a creature in the database
  def update
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    creature  = Creature.find_by_id(creature_id)
    # whitelist params and save them to a variable
    # creature_params = params.require(:creature).permit(:name, :description)
     # update the creature
    creature.update_attributes(creature_params)
    # redirect to show page for the updated creature
    redirect_to creature_path(creature)
    # redirect_to creature_path(creature) is equivalent to:
    # redirect_to "/creatures/#{creature.id}"
  end


  # delete a creature from the database
  def destroy
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    creature = Creature.find_by_id(creature_id)

    # destroy the creature
    creature.destroy

    # redirect to creatures index
    redirect_to creatures_path
    # redirect_to creatures_path is equivalent to:
    # redirect_to "/creatures"
  end


private

  def creature_params
    # whitelist params return whitelisted version
    params.require(:creature).permit(:name, :description)
  end

end
