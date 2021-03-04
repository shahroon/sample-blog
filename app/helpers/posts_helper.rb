module PostsHelper

  def post_title post
    post.title unless post.new_record?
  end

  def post_details post
    unless post.new_record?
      '<span class="meta">'"Posted by #{ post.user.name} on" "#{post.created_at.strftime("Published on %B, %d - %Y")}" '</span>'.html_safe
    end
  end
end
