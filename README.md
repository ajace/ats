Simple Applicant Tracking System built on Rails, using PostGreSQL for small to medium sized companies / entities (managers, leads, or single HR manager) can manage candidates. 

FEATURES/PLANNED FEATURES

Candidates can submit their information directly
Candidates can submit their information using LinkedIn

Users can view, sort, search candidates who have applied

TODO:  

Information Architecture

Home (part of the company site. use server routing to point to User or Candidate)  
	User
		Register User
		Login User (all users are admins)
			Candidates Dashboard (new session)  
				Candidates#Index as main page
				Message Board on the right to share messages between team  
				Edit User

	Candidate (does not need to be able to login)
		Candidate registration page		

Add Twitter Bootstrap for quick styling
Add the secret controller to initialize a user: this probably isn't the best way to kick off the start of the users database but it works for now