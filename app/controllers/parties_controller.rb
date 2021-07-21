class PartiesController < ApplicationController
  def index
    @parties = Party.all
    @parties_by_date = Party.list_by_date
  end

  def new
    @party = Party.new
    @party.build_category
  end

  def create
    @party = Party.new(party_params)
    #byebug
    if !@party.save 
      render :new
    end
    @party.save
    redirect_to party_path(@party)
  end

  def show
  @party = Party.find(params[:id])
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
    # if !@party.update
     
    # end
    @party.update(party_params)
    if valid?
      redirect_to party_path(@party)
    end
    render :edit
  end


  #index, new, show, create, edit, update, destroy

  private

  def party_params
    params.require(:party).permit(:name, :date, :budget, :private, :category_id, category_attributes: [:name] )
  end
  
end
