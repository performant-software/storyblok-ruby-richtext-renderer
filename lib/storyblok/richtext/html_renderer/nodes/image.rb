module Storyblok::Richtext
  module Nodes
    class Image < Node

      def matching
        @node['type'] === 'image'
      end

      def single_tag
        [{
          tag: "img",
          attrs: @node['attrs'].slice('src', 'alt', 'title') if !@node['attrs'].nil?
        }]
      end
    end
  end
end
