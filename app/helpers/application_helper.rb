module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "John J. Makis"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def markdown_tag(fname)
    File.read(Rails.root+"app/assets/markdown/"+fname)
  end

  # Markdown implementation
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(
        :hard_wrap => true, :filter_html => true, :safe_links_only => true),
        :no_intraemphasis => true, :autolink => true)
    return markdown.render(text).html_safe
  end
end
