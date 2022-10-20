# A plugin for embedding videos from Vimeo using a simple Liquid tag, ie: {% vimeo 12345678 %}.
# Based of the Youtube plugin from http://www.portwaypoint.co.uk/jekyll-youtube-liquid-template-tag-gist/

module Jekyll
    class VimeoEmbed < Liquid::Tag
      @@width = 500
      @@height = 281
  
      def initialize(name, id, title, tokens)
        super
        @id = id
        @title = title
      end
  
      def render(context)
        "<iframe width='#{@@width}' height='#{@@height}' src='https://player.vimeo.com/video/#{@id}?h=9f44f3fcd0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479' frameborder='0' allow="autoplay; fullscreen; picture-in-picture" title=#{{{ page.title }}} webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>"
      end
    end
  end
  
  Liquid::Template.register_tag('vimeoEmbed', Jekyll::VimeoEmbed)

# 
#  <iframe src="https://player.vimeo.com/video/320975679?h=9f44f3fcd0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Hypatia Learning - Hva vi gj&amp;oslash;r."></iframe>
#