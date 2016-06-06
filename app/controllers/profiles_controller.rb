class ProfilesController < ApplicationController
	# GET /articles
	# GET /articles.json
	def index
	  @profiles = Profile.all
	end

	# GET /articles/1
	# GET /articles/1.json
	def show
	end

	# GET /articles/new
	def new
	  @profile = Profile.new
	  @first = params[:first]
	  @last = params[:last]
	end

	# GET /articles/1/edit
	def edit
	end

	# POST /articles
	# POST /articles.json
	def create
	  @profile = Profile.new(profile_params)
	  @profile.user = current_user
	  respond_to do |format|
	    if @profile.save
	      format.html { redirect_to root_path, notice: 'Profile was successfully created.' }
	      format.json { render :show, status: :created, location: @profile }
	    else
	      format.html { render :new }
	      format.json { render json: @profile.errors, status: :unprocessable_entity }
	    end
	  end
	end

	# PATCH/PUT /articles/1
	# PATCH/PUT /articles/1.json
	def update
	  respond_to do |format|
	    if @profile.update(article_params)
	      format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
	      format.json { render :show, status: :ok, location: @profile }
	    else
	      format.html { render :edit }
	      format.json { render json: @profile.errors, status: :unprocessable_entity }
	    end
	  end
	end

	# DELETE /articles/1
	# DELETE /articles/1.json
	def destroy
	  @profile.destroy
	  respond_to do |format|
	    format.html { redirect_to profiles_path, notice: 'Profile was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_profile
	    @profile = Profile.friendly.find(params[:id])
	  end

	  # Never trust parameters from the scary internet, only allow the white list through.
	  def profile_params
	    params.require(:profile).permit(:first_name, :last_name, :phone, :address, :retailer, :store_number, :store_name, :years_experience, :skin_concern, :email_list, :terms, :role, :birthday, :city, :province, :postal_code, :country)
	  end
end
