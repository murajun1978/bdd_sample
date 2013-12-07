module ApplicationHelper
  def have_title
    case controller.action_name
    when 'index'
      I18n.t('title.index')
    when 'new'
      I18n.t('title.new')
    when 'show'
      I18n.t('title.show')
    end
  end
end
