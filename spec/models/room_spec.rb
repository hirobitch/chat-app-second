require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end
  
  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it "nameが存在すれば登録できる" do
        expect(@room).to be_valid
      end
    end
    context '新規登録できない場合' do
      it 'nameが空では登録できない' do
        @room.name = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end

