module Storyblok::Richtext
  module Nodes
    class CodeBlock < Node

      def matching
        @node['type'] === 'code_block'
      end

      def tag
        sliceed = {}
        if !@node['attrs'].nil?
          sliced = @node['attrs'].slice('class')
        end
        return [
          'pre',
          {
            tag: 'code',
            attrs: sliced
          }
        ]
      end
    end
  end
end
