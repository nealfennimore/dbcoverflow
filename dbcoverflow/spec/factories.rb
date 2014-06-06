FactoryGirl.define do
	factory :user do
		username { Faker::Internet.user_name }
		email { Faker::Internet.email }
		password_hash { "youlittleshit" }
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
