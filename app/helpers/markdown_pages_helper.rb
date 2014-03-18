module MarkdownPagesHelper

  class HTMLwRouge < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end

  def markdown_read(fname)
    File.read(Rails.root+"app/assets/markdown/"+fname)
  end

  def markdown_readmeFile
    File.read("README.md")
  end

  def markdown(content)
    markdown = Redcarpet::Markdown.new(HTMLwRouge.new, {
      :no_intra_emphasis => true,
      :fenced_code_blocks => true,
      :autolink => true,
      :disable_indented_code_blocks => true,
      :lax_spacing => true,
      :superscript => true,
      :footnotes => true
    })
    markdown.render(content).html_safe
  end
end
