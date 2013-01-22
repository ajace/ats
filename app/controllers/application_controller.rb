class ApplicationController < ActionController::Base
	protect_from_forgery
	
	# force_ssl; TO implement
  	helper_method :current_user
  	helper_method :resume_name
    helper_method :remove_resumefile

  	def resume_name
  		if @candidate.resume?
    		@resumefilename = File.basename(@candidate.resume.path)
  		else
  			@resumefilename = "Please upload resume"
  		end
  	end

  def remove_resumefile
    @candidate = Candidate.find(params[:id])
    
    @candidate.remove_resume! if @candidate.resume

    respond_to do |format|
      format.html { render action: "edit" }
    end
  end

	private

	def current_user
	   @current_user  ||= User.find(session[:user_id]) if session[:user_id]
	end
	
	def authenticate
    	redirect_to login_path, alert: "Not authorized" if current_user.nil?
  	end
end
