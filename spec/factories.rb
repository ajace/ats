FactoryGirl.define do
	factory :user do
		name	"admin"
		sequence(:email) { |e| "admin#{e}@admin.com" }
		password	"password"
		password_confirmation	"password"
	end

	factory :candidate do
		name	"John Doe"
		sequence(:email) { |e| "john#{e}@doe.com" }
		phone	"1111111111"
		position "Developer"
		cover_letter "really long string"*10000
	end

	factory :resume do
		
	end
end