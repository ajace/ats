FactoryGirl.define do
	factory :user do
		email	"John@Doe.com"
		name	"John Doe"
		password	"password"
		password_confirmation	"password"
	end
end