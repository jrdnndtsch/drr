module Admin
  class TestsController < AdminController
    before_action :set_test, only: [:show, :edit, :update, :destroy]

    # GET /tests
    # GET /tests.json
    def index
      @tests = Test.all
    end

    # GET /tests/1
    # GET /tests/1.json
    def show
      # if params[:score]
      #   percentage = params[:score].to_i / params[:total_questions].to_i
      #   if percentage > 0.8
      #     raise "hell passed"
      #   else
      #     raise "hell failed"
      #   end
      # end
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
          format.html { redirect_to edit_admin_test_path(@test), notice: 'Test was successfully created.' }
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
          format.html { redirect_to edit_admin_test_path(@test), notice: 'Test was successfully updated.' }
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
        params.require(:test).permit(:name, :learning_module_id, :product, questions_attributes:[ :id, :title, :product, :test_id, :_destroy, answers_attributes:[:id, :title, :correct, :question_id, :_destroy]])
      end
  end
end
