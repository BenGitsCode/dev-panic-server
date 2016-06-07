class SymptomsController < ApplicationController
  before_action :set_symptom, only: [:show, :update, :destroy]

  # GET /symptoms
  # GET /symptoms.json
  def index
    @symptoms = Symptom.all

    render json: @symptoms
  end

  # GET /symptoms/1
  # GET /symptoms/1.json
  def show
    render json: @symptom
  end

  # POST /symptoms
  # POST /symptoms.json
  def create
    @symptom = Symptom.new(symptom_params)

    if @symptom.save
      render json: @symptom, status: :created, location: @symptom
    else
      render json: @symptom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /symptoms/1
  # PATCH/PUT /symptoms/1.json
  def update
    @symptom = Symptom.find(params[:id])

    if @symptom.update(symptom_params)
      head :no_content
    else
      render json: @symptom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /symptoms/1
  # DELETE /symptoms/1.json
  def destroy
    @symptom.destroy

    head :no_content
  end

  def getsolutions
    @title = symptom_params['title']
    @symptoms = Symptom.find_by title: @title
    render json: @symptoms
  end

  private

  def set_symptom
    @symptom = Symptom.find(params[:id])
  end

  def symptom_params
    params.require(:symptom).permit(:title, :solution, :url, :media, :private)
  end
end
