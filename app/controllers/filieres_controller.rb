class FilieresController < ApplicationController

  def index
  @search = Filiere.search(params[:search])
  @filieres = @search.all
  end

  def comparo
    @filieres = Filiere.all
    @filier1 = Filiere.find_by_num_agrement(params[:id1])
    @filier2 = Filiere.find_by_num_agrement(params[:id2])
  end

  def show
    @filiere = Filiere.find(params[:id])
  end

  def new
    @filiere = Filiere.new
            @filiere.techniques.build
            @filiere.entretiens.build
            @filiere.poses.build
            @filiere.couts.build
  end

  def create
    @filiere = Filiere.new(params[:filiere])
    if @filiere.save
      redirect_to @filiere, :notice => "Successfully created filiere."
    else
      render :action => 'new'
    end
  end

  def edit
    @filiere = Filiere.find(params[:id])
  end

  def update
    @filiere = Filiere.find(params[:id])
    if @filiere.update_attributes(params[:filiere])
      redirect_to @filiere, :notice  => "Successfully updated filiere."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @filiere = Filiere.find(params[:id])
    @filiere.destroy
    redirect_to filieres_url, :notice => "Successfully destroyed filiere."
  end
end
