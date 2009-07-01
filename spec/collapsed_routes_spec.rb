require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

# ActionController::Base.default_url_options[:host] = "localhost"
include ActionController::UrlWriter
ActionController::Base.default_url_options[:host] = "localhost"

describe "UrlWriter" do
  before do 
    @user = User.create :name => "Buddy Holly"
    @post = @user.posts.create :title => "Hi world", :body => "foo bar"
    @comment = @post.comments.create :title => "Hello back", :body => "who?"
  end
  
  it "should have routes already defined" do
    user_path(@user).should == "/users/#{@user.id}"
    user_posts_path(@user).should == "/users/#{@user.id}/posts"
    user_post_path(@user, @post).should == "/users/#{@user.id}/posts/#{@post.id}"
    user_post_comment_path(@user, @post, @comment).should == "/users/#{@user.id}/posts/#{@post.id}/comments/#{@comment.id}"
  end
  
  it "should define collapsed paths" do
    comment_path(@comment).should == user_post_comment_path(@user, @post, @comment)
    comment_path.should == user_post_comment_path(@user, @post, @comment)
    edit_comment_path(@comment).should == edit_user_post_comment_path(@user, @post, @comment)
    new_comment_path(@post).should == new_user_post_comment_path(@user, @post)
    comments_path(@post).should == user_post_comments_path(@user, @post)
    comments_path.should == user_post_comments_path(@user, @post)
  end
  it "should define collapsed urls" do    
    comment_url(@comment).should == user_post_comment_url(@user, @post, @comment)
    comment_url.should == user_post_comment_url(@user, @post, @comment)
    edit_comment_url(@comment).should == edit_user_post_comment_url(@user, @post, @comment)
    new_comment_url(@post).should == new_user_post_comment_url(@user, @post)
    comments_url(@post).should == user_post_comments_url(@user, @post)
    comments_url.should == user_post_comments_url(@user, @post)
  end  
end
