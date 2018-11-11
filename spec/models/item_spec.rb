require 'rails_helper'

RSpec.describe Item, type: :model do
  describe Item, 'todolist' do

    subject {Item.new}

    it 'is not valid without a name' do
      expect(subject).not_to be_valid
    end

    it 'valid with name' do
      item = Item.create(name: 'cook')
      expect(item.name).to eq'cook'
    end

    it "isn't completed by default"do
    item = Item.create(name: 'cook')
    expect(item.complete).to eq(false)
    end


  end
end
