module ApplicationHelper

  def img_boolean(test ='false',tex = 'faux')
      if test
      image_tag("tick-button.png", :alt => tex, :title => tex)
      else
      image_tag("cross-button.png", :alt => tex, :title => tex)
      end
  end

end
