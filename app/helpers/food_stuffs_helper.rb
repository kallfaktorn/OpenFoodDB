module FoodStuffsHelper
  def error_messages
    return unless object.respond_to?(:errors) && object.errors.any?

    errors_list = ""
    errors_list << @template.content_tag(:span, "There are errors!", :class => "title-error")
    errors_list << object.errors.full_messages.map { |message| @template.content_tag(:li, message) }.join("\n")

    @template.content_tag(:ul, errors_list.html_safe, :class => "error-recap round-border")
  end

  def column(arg1, arg2)
  	unless arg2.blank?
  	  render :partial => "column", :locals => { :arg1 => arg1, :arg2 => arg2 }
  	end
  end

  def mark_in_foodstuff(markName, foodStuffMarkNames)
    names = foodStuffMarkNames.split(/,/)

    for n in names do
      if n == markName
        return true
      end
    end

    return false
  end

  def display_segment( node )

    html = "<li>"
    node_class = node.children.length == 0 ? "file" : "folder"
    html << "<span class=\"#{node_class}\"><%= label_tag t(:FoodStuff_Image) %> <%= file_field_tag :food_stuff_image %></span>"
    html << "<ul id=\"children_of_#{h(node.sid)}\">"
    node.children.each{|child_node|

      html << display_segment( child_node )
    }
    html << "</ul></li>"

    render :inline =>
      html
  end
end