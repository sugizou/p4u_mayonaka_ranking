#coding: utf-8

module ApplicationHelper

  def list_tag(collection, prop)
    content_tag(:ul) do
      collection.each do |element|
        concat content_tag(:li, element.attributes[prop])
      end
    end
  end

  def private?(str)
    if str.blank? || str.to_s == "0"
      str = "<p class=\"private\">非公開</p>".html_safe
    else
      str
    end
  end
end
