require_relative '../classes/label'
require_relative '../classes/item'

describe Label do
  context 'Testing Label class' do
    before :each do
      @label = Label.new(23, 'Atomic Habits', 'White')
      @item = Item.new('2020-03-12')
    end

    it 'returns instance of Label' do
      expect(@label).to be_instance_of(Label)
    end

    it 'returns title on label' do
      expect(@label.title).to eq 'Atomic Habits'
    end

    it 'returns color on label' do
      expect(@label.color).to eq 'White'
    end

    it 'checks if label contains items' do
      expect(@label.add_item(@item)).to include(@item)
    end
  end
end
