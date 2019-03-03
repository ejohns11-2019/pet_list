class OwnersController < ApplicationController

  before_action :choose_owner, only: [:show, :update, :edit, :destroy]

  def index
    @owner = Owner.all
  end

  def show
  end

  def new
    @owner = Owner.new
    render partial: 'owners/form'
  end

  def edit
    render partial: 'owners/form'
  end

  def create
    @owner = Owner.new(owner_params)
      if @owner.save
        redirect_to owners_path
      else
        render :new
      end
    end

  def update
    if @owner.update(owner_params)
      redirect_to @owner
    else
      render :edit
    end
  end

  def destroy
    @owner.destroy
    redirect_to owners_path
  end

private
  def choose_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:owner_name, :age, :dog_name, :city)
  end

end
