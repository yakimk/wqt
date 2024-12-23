module Jekyll
    module NumberHeadingsFilter
      def number_headings(input)
        level_counts = Hash.new(0)
  
        input.gsub(/<h([1-6])>(.*?)<\/h\1>/) do |match|
          level = $1.to_i
          text = $2
  
          # Reset lower levels when a higher level is encountered
          level_counts[level] += 1
          (level+1..6).each { |lvl| level_counts[lvl] = 0 }
  
          # Generate the heading number (e.g., "1.1.2")
          numbering = (1..level).map { |lvl| level_counts[lvl] }.join(".")
  
          # Replace the heading with the numbered version
          "<h#{level}>#{numbering} #{text}</h#{level}>"
        end
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::NumberHeadingsFilter)