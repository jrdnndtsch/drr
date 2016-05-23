require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ClinicalTrialsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ClinicalTrial. As you add validations to ClinicalTrial, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ClinicalTrialsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all clinical_trials as @clinical_trials" do
      clinical_trial = ClinicalTrial.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:clinical_trials)).to eq([clinical_trial])
    end
  end

  describe "GET #show" do
    it "assigns the requested clinical_trial as @clinical_trial" do
      clinical_trial = ClinicalTrial.create! valid_attributes
      get :show, {:id => clinical_trial.to_param}, valid_session
      expect(assigns(:clinical_trial)).to eq(clinical_trial)
    end
  end

  describe "GET #new" do
    it "assigns a new clinical_trial as @clinical_trial" do
      get :new, {}, valid_session
      expect(assigns(:clinical_trial)).to be_a_new(ClinicalTrial)
    end
  end

  describe "GET #edit" do
    it "assigns the requested clinical_trial as @clinical_trial" do
      clinical_trial = ClinicalTrial.create! valid_attributes
      get :edit, {:id => clinical_trial.to_param}, valid_session
      expect(assigns(:clinical_trial)).to eq(clinical_trial)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ClinicalTrial" do
        expect {
          post :create, {:clinical_trial => valid_attributes}, valid_session
        }.to change(ClinicalTrial, :count).by(1)
      end

      it "assigns a newly created clinical_trial as @clinical_trial" do
        post :create, {:clinical_trial => valid_attributes}, valid_session
        expect(assigns(:clinical_trial)).to be_a(ClinicalTrial)
        expect(assigns(:clinical_trial)).to be_persisted
      end

      it "redirects to the created clinical_trial" do
        post :create, {:clinical_trial => valid_attributes}, valid_session
        expect(response).to redirect_to(ClinicalTrial.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved clinical_trial as @clinical_trial" do
        post :create, {:clinical_trial => invalid_attributes}, valid_session
        expect(assigns(:clinical_trial)).to be_a_new(ClinicalTrial)
      end

      it "re-renders the 'new' template" do
        post :create, {:clinical_trial => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested clinical_trial" do
        clinical_trial = ClinicalTrial.create! valid_attributes
        put :update, {:id => clinical_trial.to_param, :clinical_trial => new_attributes}, valid_session
        clinical_trial.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested clinical_trial as @clinical_trial" do
        clinical_trial = ClinicalTrial.create! valid_attributes
        put :update, {:id => clinical_trial.to_param, :clinical_trial => valid_attributes}, valid_session
        expect(assigns(:clinical_trial)).to eq(clinical_trial)
      end

      it "redirects to the clinical_trial" do
        clinical_trial = ClinicalTrial.create! valid_attributes
        put :update, {:id => clinical_trial.to_param, :clinical_trial => valid_attributes}, valid_session
        expect(response).to redirect_to(clinical_trial)
      end
    end

    context "with invalid params" do
      it "assigns the clinical_trial as @clinical_trial" do
        clinical_trial = ClinicalTrial.create! valid_attributes
        put :update, {:id => clinical_trial.to_param, :clinical_trial => invalid_attributes}, valid_session
        expect(assigns(:clinical_trial)).to eq(clinical_trial)
      end

      it "re-renders the 'edit' template" do
        clinical_trial = ClinicalTrial.create! valid_attributes
        put :update, {:id => clinical_trial.to_param, :clinical_trial => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested clinical_trial" do
      clinical_trial = ClinicalTrial.create! valid_attributes
      expect {
        delete :destroy, {:id => clinical_trial.to_param}, valid_session
      }.to change(ClinicalTrial, :count).by(-1)
    end

    it "redirects to the clinical_trials list" do
      clinical_trial = ClinicalTrial.create! valid_attributes
      delete :destroy, {:id => clinical_trial.to_param}, valid_session
      expect(response).to redirect_to(clinical_trials_url)
    end
  end

end