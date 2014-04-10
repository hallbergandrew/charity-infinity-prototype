require 'spec_helper'

describe Profile do
  it { should validate_presence_of(:name).on(:update) }
  it { should validate_presence_of(:street).on(:update) }
  it { should validate_presence_of(:city).on(:update) }
  it { should validate_presence_of(:state).on(:update) }
  it { should validate_presence_of(:zip).on(:update) }
  it { should validate_presence_of(:phone).on(:update) }
  it { should belong_to :user}
end
