module MarkdownPagesHelper

  def markdown_read(fname)
    File.read(Rails.root+"app/assets/markdown/"+fname)
  end

  def markdown_readmeFile
    File.read("README.md")
  end

  def markdown(content)
    markdown = Kramdown::Document.new(content, options = {
      :auto_ids => false,
      :enable_coderay => true,
      :coderay_line_numbers => nil
      })
    sanitize markdown.to_html
  end
end
