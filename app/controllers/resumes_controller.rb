class ResumesController < ApplicationController

  # before_filter :authenticate, except: [:new, :create]
  before_filter :get_candidate, except: [:new, :create, :show]

  # find candidate this resume belongs_to
  def get_candidate
     @candidate  = Candidate.find(params[:candidate_id]) if params[:candidate_id]
  end

  # GET /resumes/1
  def show
    @resume = Resume.find(params[:id])
  end


  # # GET /resumes/new
  # def new
  #   @resume = Candidate.resume.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #   end
  # end

  # # GET /resumes/1/edit
  # def edit
  #   @resume = Resume.find(params[:id])
  # end

  # # POST /resumes
  # def create
  #   @resume = Candidate.resume.new(params[:resume])

  #   respond_to do |format|
  #     if @resume.save
  #       format.html { redirect_to @resume, notice: 'Resume was successfully created.' }
  #     else
  #       format.html { render action: "new" }
  #     end
  #   end
  # end

  # # PUT /resumes/1
  # def update
  #   @resume = Resume.find(params[:id])

  #   respond_to do |format|
  #     if @resume.update_attributes(params[:resume])
  #       format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
  #     else
  #       format.html { render action: "edit" }
  #     end
  #   end
  # end

  # DELETE /resumes/1
  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy

    redirect_to candidate_path(@candidate)
  end
end
