FactoryGirl.define do
	sequence(:email) { |e| "john#{e}@doe.com" }

	factory :user do
		name	"admin"
		email	
		password	"password"
		password_confirmation	"password"
	end

	factory :candidate do
		name	"John Doe"
		email
		phone	"1111111111"
		position "Developer"
	end
end