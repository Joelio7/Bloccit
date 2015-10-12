module UsersHelper
  def post_and_comments(user)
    if user.posts || user.post.comments = nil
      "{user.name} has not submitted any posts yet."
    end
end
end
