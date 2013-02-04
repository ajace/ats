FactoryGirl.define do
	factory :user do
		sequence(:name)	{ |d| "admin #{e}" }
		sequence(:email) { |f| "admin#{e}@admin.com" }
		password	"password"
		password_confirmation	"password"
	end

	factory :candidate do
		name	"John Doe"
		sequence(:email) { |e| "john#{e}@doe.com" }
		phone	"1111111111"
		position "Developer"
		cover_letter "long string"
	end

	factory :resume do
		
	end
end