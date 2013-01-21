class CandidatesController < ApplicationController

  before_filter :authenticate, except: [:new, :create]

  # GET /candidates
  def index
    @candidates = Candidate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @candidates }
    end
  end

  # GET /candidates/1
  def show
    @candidate = Candidate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to candidates_url, notice: 'Successfully submitted.'}
      else
        format.html { render action: "new" }
      end
    end
  end

  # GET /candidates/1/edit
  def edit
    @candidate = Candidate.find(params[:id])
  end

  # POST /candidates
  def create
    @candidate = Candidate.new(params[:candidate])

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to candidates_url, notice: 'Successfully submitted.'}
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /candidates/1
  def update
    @candidate = Candidate.find(params[:id])

    respond_to do |format|
      if @candidate.update_attributes(params[:candidate])
        format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /candidates/1
  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy

    respond_to do |format|
      format.html { redirect_to candidates_url }
      format.json { head :no_content }
    end
  end

  # DELETE resume /candidates/1
  # def remove_resumefile
  #   @candidate = Candidate.find(params[:id])
    
  #   @candidate.remove_resume! if @candidate.resume
  #   # @candidate.save

  #   respond_to do |format|
  #     format.html { render action: "edit" }
  #   end
  # end

end



