require_relative '../classes/label'

describe Label do
  context 'It should create a label' do
    id = 8
    title = 'Yellow'
    color = 'white'

    label = Label.new(id, title, color)

    it 'should create an instance of class book' do
      expect(label).to be_an_instance_of(Label)
    end

    it 'should check id and name of genre' do
      expect(label.id).to eq(id)
      expect(label.title).to eq(title)
      expect(label.color).to eq(color)
    end
  end
end
