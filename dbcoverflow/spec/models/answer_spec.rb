require 'spec_helper'

describe Answer do
  user = FactoryGirl.build :user
  question = FactoryGirl.build :question
  answer = Answer.new(body: "Random question")
  answer.question = question
  answer.user = user
  answer.save
  p answer
  let (:answer) { answer }

# ========= Field classes
  it { answer.should be_an_instance_of(Answer)}
  it { answer.user.should be_an_instance_of(User)}
  it { answer.question.should be_an_instance_of(Question)}
  it { answer.body.should be_an_instance_of(String)}

  it { answer.body.should eq "Random question" }

# ========= Responses on migrations
  it { answer.should respond_to(:body) } 
  it { answer.should respond_to(:question) }
  it { answer.should respond_to(:user) }
  it { answer.should have_many :votes}
  it { answer.should have_many :comments}
	
end