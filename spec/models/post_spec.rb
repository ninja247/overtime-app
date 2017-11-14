# spec/models/post_spec.rb

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
      @post = Post.create(date: Date.today, rationale: "anything", user: @user)
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date and rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end

  it 'has a list of posts' do
    post1 = Post.create(date: Date.today, rationale: "Post1", user_id: @user.id)
    post2 = Post.create(date: Date.today, rationale: "Post2", user_id: @user.id)
    visit posts_path
    expect(page).to have_content(/Post1|Post2/)
  end



end
