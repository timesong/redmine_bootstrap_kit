module FontAwesomeHelper

  def checked_image2(checked = true)
    if checked
      image_tag 'toggle_check.png'
    else
      image_tag 'exclamation.png'
    end
  end


  def label_with_icon(label, icon, icon_opts = {})
    fa_icon(icon, icon_opts) + label
  end


  def fa_icon(icon, opts = {})
    inverse = opts.delete(:inverse){ false }
    fixed   = opts.delete(:fixed){ false }
    css_class = [ 'fa', 'fa-lg' ]
    css_class.push(icon)
    css_class.push('fa-inverse') if inverse
    css_class.push('fa-fw') if fixed
    css_class.delete('fa-lg') if fixed
    klass = [opts.delete(:class), css_class].flatten.compact
    content_tag(:i, '', class: klass)
  end

end
