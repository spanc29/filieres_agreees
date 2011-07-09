module ApplicationHelper

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function("effacer", "remove_fields(this)",:class=> "button negative")
  end

  def link_to_add_fields(name, f, association) #ajoute le formulaire au dessus du lien
      new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.simple_fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s + "/form", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", :class => "button positive")
  end


  def img_boolean(test ='false',tex = 'faux')
      if test
      image_tag("tick-button.png", :alt => tex, :title => tex)
      else
      image_tag("cross-button.png", :alt => tex, :title => tex)
      end
  end

def aide(ancre=nil)
  lien="/aide.html"
  if ancre
    lien = lien + "#" + ancre
  end
    link_to image_tag("help.png", :alt =>"aide", :title =>"voir l'aide"), lien, :target => "_blank"
end
end
