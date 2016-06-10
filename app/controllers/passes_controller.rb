class PassesController < ProtectedController
  before_action :set_pass, only: [:show, :update, :destroy]

  # GET /passes
  # GET /passes.json
  def index
    @passes = Pass.all

    render json: @passes
  end

  # GET /passes/1
  # GET /passes/1.json
  def show
    render json: @pass
  end

  # POST /passes
  # POST /passes.json
  def create
    @pass = Pass.new(pass_params)

    if @pass.save
      render json: @pass, status: :created, location: @pass
    else
      render json: @pass.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /passes/1
  # PATCH/PUT /passes/1.json
  def update
    @pass = Pass.find(params[:id])

    if @pass.update(pass_params)
      head :no_content
    else
      render json: @pass.errors, status: :unprocessable_entity
    end
  end

  # DELETE /passes/1
  # DELETE /passes/1.json
  def destroy
    @pass.destroy

    head :no_content
  end

  private

    def set_pass
      @pass = Pass.find(params[:id])
    end

    def pass_params
      params.require(:pass).permit(:crud, :user_id)
    end
end
