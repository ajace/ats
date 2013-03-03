class ResumesController < ApplicationController

  before_filter :get_candidate, except: [:new, :show]

  def get_candidate
     @candidate  = Candidate.find(params[:candidate_id]) if params[:candidate_id]
  end

  # GET /resumes/1
  def show
    @resume = Resume.find(params[:id])
  end


  # # GET /resumes/new
  def new
    @resume = Resume.new
  end

  # GET /resumes/1/edit
  def edit
    @resume = @candidate.resume
  end

  # POST /resumes
  def create
    @resume = @candidate.resume.build(params[:candidate_id])

    if @resume.save
      respond_to do |format|
        format.html { redirect_to candidate_path(@candidate), notice: "Successfully updated resume" }
        format.js
      end
    else
      render :new
    end
  end

  # PUT /resumes/1
  def update
    @resume = @candidate.resume

    if @resume.update_attributes(params[:resume])
      respond_to do |format|
        format.html {redirect_to candidate_path(@candidate), notice: 'Resume was successfully updated.'}
        format.js
      end
    else
      render action: "edit"
    end
  end

  # DELETE /resumes/1
  def destroy
    @resume = @candidate.resume
    @resume.destroy

    respond_to do |format|
      format.html { redirect_to candidate_path(@candidate) }
      format.js
    end
  end

end
