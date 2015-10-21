module UsersHelper
  def posts_heading(user)
    if user.posts.empty?
      "#{user.name} has not submitted any posts yet."
    else
      "Posts"
    end
  end

  def comments_heading(user)
    if user.comments.empty?
      "#{user.name} has not submitted any comments yet."
    else
      "Comments"
    end
  end
end
