require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Userモデルをnewしたとき, nilでないこと' do
    expect(User.new).not_to eq(nil)
  end
end
