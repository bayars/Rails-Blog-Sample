# frozen_string_literal: true

# ApplicationHelper
module ApplicationHelper
  # ApplicationHelper
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown_to_html(markdown_str)
    options = {
      filter_html: true,
      link_attributes: { rel: 'nofollow', target: '_blank' },
      no_styles: true
    }

    extensions = {
      autolink: true,
      fenced_code_blocks: true,
      footnotes: true,
      highlight: true,
      no_intra_emphasis: true,
      quote: true,
      space_after_headers: true,
      strikethrough: true,
      superscript: true,
      tables: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(markdown_str).html_safe
  end
end
