module Storyblok::Richtext
  module Nodes
    class Image < Node

      def matching
        @node['type'] === 'image'
      end

      def single_tag
        sliceed = {}
        if !@node['attrs'].nil?
          sliced = @node['attrs'].slice('src', 'alt', 'title')
        end
        return [{
          tag: "img",
          attrs: sliced
        }]
      end
    end
  end
end
