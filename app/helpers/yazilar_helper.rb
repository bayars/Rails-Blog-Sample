# frozen_string_literal: true

# YazilarHelper
module YazilarHelper

# def time(time)
#         t.ctime
# end

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
  # def markdown(text)
  #   options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
  #   syntax_highlighter(Redcarpet.new(text, *options).to_html).html_safe
  # end

  # def markdown(text)
  #   options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
  #   syntax_highlighter(Redcarpet.new(text, *options).to_html).html_safe
  # end
  #
  # def syntax_highlighter(html)
  #   doc = Nokogiri::HTML(html)
  #   doc.search("//pre[@lang]").each do |pre|
  #     pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
  #   end
  #   doc.to_s
  # end
end
