module ApplicationHelper

  def full_title(page_title)
    base_title = 'Cypresslab Blog'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def tags_list(post)
    if post.tags.empty?
      return ''
    end

    out = '<ul class="tags">'
    post.tags.each do |tag|
      out += "<li>#{ tag.name }</li>"
    end
    out += '</ul>'
    out
  end

  # @param [Post] post
  def url_for_post(post)
    post_path(slug: post.slug,
              year: post.created_at.strftime('%Y'),
              month: post.created_at.strftime('%m'),
              day: post.created_at.strftime('%d'))
  end
end
