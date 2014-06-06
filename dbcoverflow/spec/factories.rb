FactoryGirl.define do
	factory :user do
		username { Faker::Name.user_name }
		email { Faker::Internet.email }
		password { Faker::Internet.password }
	end

	factory :question do
		body { Faker::Lorem.sentence }
	end

	factory :answer do
		body { Faker::Name.name }
	end

	factory :comment do
		body { Faker::Lorem.paragraph }
	end


	factory :vote do
		score { [1,-1].sample }
	end

end
