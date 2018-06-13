require 'rails_helper'

RSpec.describe Allien, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :image }
  it { should validate_presence_of :desc }

end
