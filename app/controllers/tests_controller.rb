class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  before_action :ensure_profile
  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    if params[:score]
      percentage = params[:score].to_f / params[:total_questions].to_f
      if percentage >= 0.8
      # raise 'hell'
        UserTest.create(user_id: current_user.id, test_id: @test.id)
        begin
          TestMailer.user_notification(current_user).deliver
        rescue Errno::ECONNREFUSED
          logger.info "!!! Warning: Failed to deliver email, skipping"
        end
      else
        raise "hell failed"
      end
    end
    @learnign_module = LearningModule.find(@test.learning_module_id.to_i)
    
  end

  # GET /tests/new
  def new
    @test = Test.new
    # @question = @test.questions.new
    # raise 'hell'
  end

  # GET /tests/1/edit
  def edit

    # @question = @test.questions.all
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update

    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name, :learning_module_id, questions_attributes:[ :id, :title, :test_id, :_destroy, answers_attributes:[:id, :title, :correct, :question_id, :_destroy]])
    end
end
