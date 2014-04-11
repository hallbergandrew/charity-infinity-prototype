require 'spec_helper'

describe Profile do
  it { should validate_presence_of(:name).on(:update) }
  it { should validate_presence_of(:street).on(:update) }
  it { should validate_presence_of(:city).on(:update) }
  it { should validate_presence_of(:state).on(:update) }
  it { should validate_presence_of(:zip).on(:update) }
  it { should validate_presence_of(:phone).on(:update) }

  it { should ensure_length_of(:zip).is_equal_to(5).on(:update)}
  it { should ensure_length_of(:phone).is_at_least(10).is_at_most(14).on(:update)}

  it { should belong_to :user}
end
