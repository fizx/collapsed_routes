module CollapsedRoutes
  def collapsed_routes(*names)
    names.map!(&:to_s)
    names.each_with_index do |name, i|
      next if i == 0
      subset = names.first(i + 1)
      collapse subset
    end
  end
  
private

  def backtrack(list)
    back = []
    list.each_with_index do |_, i|
      back << list.first(i + 1).join(".")
    end
    back.reverse.join(", ")
  end

  def collapse(names)
    base = names[-1].singularize
    parent = names[-2].singularize
    series = names.map(&:singularize).join("_")
    reversed = names.reverse.map(&:singularize)
    
    backtrack_base = backtrack reversed
    reversed.shift
    backtrack_parent = backtrack reversed

    %w[path url].each do |path|
      ActionController::UrlWriter.module_eval <<-RUBY
        def #{base}_#{path}(#{base} = @#{base})
          #{series}_#{path}(#{backtrack_base})
        end

        def edit_#{base}_#{path}(#{base} = @#{base})
          edit_#{series}_#{path}(#{backtrack_base})
        end

        def new_#{base}_#{path}(#{parent} = @#{parent})
          new_#{series}_#{path}(#{backtrack_parent})
        end

        def #{base.pluralize}_#{path}(#{parent} = @#{parent})
          #{series.pluralize}_#{path}(#{backtrack_parent})
        end
      RUBY
    end
  end
  
  extend self
end