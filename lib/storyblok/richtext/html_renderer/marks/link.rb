module Storyblok::Richtext
  module Marks
    class Link < Mark

      def matching
        @node['type'] === 'link'
      end

      def tag
        attrs = @node['attrs']

        if !attrs.nil? && !attrs['anchor'].nil? && attrs['anchor'].is_a?(String) && !attrs['anchor'].empty?
          attrs['href'] = "#{attrs['href']}##{attrs['anchor']}"
        end

        sliced = {} 
        if !attrs.nil?
          sliced = attrs.slice('href', 'target')
        end

        [{
          tag: "a",
          attrs: sliced
        }]
      end
    end
  end
end
