module Storyblok::Richtext
  module Nodes
    class CodeBlock < Node

      def matching
        @node['type'] === 'code_block'
      end

      def tag
        [
          'pre',
          {
            tag: 'code',
            attrs: @node['attrs'].slice('class') if !@node['attrs'].nil?
          }
        ]
      end
    end
  end
end
