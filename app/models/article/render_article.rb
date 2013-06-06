module Article::RenderArticle
  extend ActiveSupport::Concern

  def render_article
    renderer = PygmentizeHTML.new(hard_wrap: true, filter_html: true)
    extensions = {
      autolink:           true,
      no_intra_emphasis:  true,
      fenced_code_blocks: true,
      lax_spacing:        true,
      strikethrough:      true,
      superscript:        true,
      underline:          true
    }
    self.rendered_content = Redcarpet::Markdown.new(renderer, extensions).render(content)
  end

  class PygmentizeHTML < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer:language)
    end
  end
end
