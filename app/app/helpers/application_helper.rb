module ApplicationHelper
  def type_label(type)
      pt_br = {'Archangel': 'Arcanjo', 'Angel': 'Anjo', 'Overcomer':'Superador'}
      return pt_br[type.to_sym]
  end

  def missions_alert_level(missions)
    if missions > 5
      return 'danger'
    elsif  missions > 2
      return 'warning'
    else
      return 'default'
    end
  end
end
