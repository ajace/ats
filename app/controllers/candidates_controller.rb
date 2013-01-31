class CandidatesController < ApplicationController

  before_filter :authenticate, except: [:new, :create]

  # GET /candidates
  def index
    @candidates = Candidate.all
  end 

  # GET /candidates/1
  # redirect to edit
  def show
    @candidate = Candidate.find(params[:id])
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
    @candidate.build_resume          #create instance of resume for nested form, update to 3.2 method?
    # @candidate = Candidate.new(resume: Resume.new)  # not working
  end

  # GET /candidates/1/edit
  def edit
    @candidate = Candidate.find(params[:id])
  end

  # POST /candidates
  def create
    @candidate = Candidate.new(params[:candidate])

    if @candidate.save
      if current_user
        redirect_to candidates_path, notice: 'New candidate created' 
      else
        redirect_to new_candidate_path, notice: 'Successfully submitted'
      end
    else
      flash.now[:error] = "Could not submit information. See below"
      render :new
    end
  end

  # PUT /candidates/1
  def update
    @candidate = Candidate.find(params[:id])

      if @candidate.update_attributes(params[:candidate])
        redirect_to @candidate, notice: 'Candidate was successfully updated.' 
      else
        flash.now[:error] = "Could not submit information. See below"
        render :edit
      end
  end

  # DELETE /candidates/1
  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy

    redirect_to candidates_path, notice: 'Candidate deleted.'
  end

end



