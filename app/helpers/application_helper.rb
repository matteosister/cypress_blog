module ApplicationHelper
  def full_title(page_title)
    base_title = 'Cypresslab Blog'
    if page_title.nil? or page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def tags_list(post)
    if post.tags.empty?
      return ''
    end
    render(template: 'tags/_list.html.erb', locals: { tags: post.tags })
  end

  # @param [Post] post
  def url_for_post(post)
    post_path(slug: post.slug,
              year: post.created_at.strftime('%Y'),
              month: post.created_at.strftime('%m'),
              day: post.created_at.strftime('%d'))
  end
end
