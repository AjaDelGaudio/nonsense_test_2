require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:text) }
  it { should validate_presence_of(:multiple_choice)}
end
