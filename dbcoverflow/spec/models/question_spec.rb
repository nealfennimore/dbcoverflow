require 'spec_helper'

describe Question do
  context "#Initialize" do
     let(:question) { Question.new(body: "My List")}
      it "should create a new instance of question" do
      question.should be_an_instance_of Question
    end
      it "should increase the number of questions" do
        expect {question.save}.to change {Question.count}.by(1)
      end
      it "should respond to body" do
        question.should respond_to(:body)
      end
      it "should respond to user" do
        question.should respond_to(:user)
      end
  end

  context "#add" do
    let(:user) {User.new(username: "bobby", email: "bobby@gmail.com", password_hash: "pimpcity")};
    let(:question) { Question.new(body: "My List")};
    it "should add a question to a user" do
      user.questions << question
      expect{user.save}.to change {user.questions.count}.by(1)
    end
  end


end
