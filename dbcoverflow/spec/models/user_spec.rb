require 'spec_helper'


describe User do
  context "#initialize" do
    let(:user) {User.new(email: "Reid@shopcube.com", username: "reidcovington")}
    it "should create a new instance of User" do
      user.should be_an_instance_of User
    end
    it "should increase the number of users" do
      expect{user.save}.to change{User.count}.by(1)
    end
  end

  context "associations" do
    it { should have_many :questions }
    it { should have_many :answers }
    it { should have_many :comments }
    it { should have_many :votes }
  end

  context "validations" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    # it { should validate_length_of :email, :minimum => 3 }
    it { should_not allow_value("blah").for(:email) }
    it { should_not allow_value("b lah").for(:email) }
    it { should allow_value("a@b.com").for(:email) }
    it { should_not allow_value("a.com").for(:email) }
    it { should allow_value("asdf@asdf.com").for(:email) }
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should ensure_length_of(:username).is_at_least(3).
              with_message(/must be at least 3 characters, fool!/) }
    # it { should validate_uniqueness_of :username }
  end


end
