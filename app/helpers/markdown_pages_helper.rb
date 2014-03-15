module MarkdownPagesHelper
  require 'rdiscount'

  def markdown_read(fname)
    File.read(Rails.root+"app/assets/markdown/"+fname)
  end

  def markdown_readmeFile
    File.read("README.md")
  end

  def renderMarkdown(text)
    markdown = RDiscount.new(text, :autolink, :smart)
    return markdown.to_html.html_safe
  end
end
