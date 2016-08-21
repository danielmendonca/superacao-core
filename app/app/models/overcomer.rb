# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  uid        :string(255)
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Overcomer < Participant
  has_one :trinity

  def trinities
    single_trinity = self.trinity

    if single_trinity
      [single_trinity]
    else
      single_trinity
    end
  end

end
