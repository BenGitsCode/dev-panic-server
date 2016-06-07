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

  private

    def set_symptom
      @symptom = Symptom.find(params[:id])
    end

    def symptom_params
      params.require(:symptom).permit(:title, :solution, :url, :media, :private)
    end
end

def getSolutions

  @symptoms1 = Symptom.find_by title: 'I have Imposter Syndrome'
  @symptoms2 = Symptom.find_by title: 'I am having an anxiety attack'
  @symptoms3 = Symptom.find_by title: 'I don not want to be a developer anymore'
  @symptoms4 = Symptom.find_by title: 'I hate networking'
  @symptoms5 = Symptom.find_by title: 'My code is breaking and I do not know why'
  @symptoms6 = Symptom.find_by title: 'I just want a Sleepy-Roberto pep talk'
end
