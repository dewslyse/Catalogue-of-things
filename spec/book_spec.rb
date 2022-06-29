# require_relative '../classes/book'

# describe Book do
#   context 'Testing Book class' do
#     before :each do
#       @book1 = Book.new('2010-03-14', 'Cambridge', 'good')
#       @book2 = Book.new('2020-01-24', 'Oxford', 'good')
#       @book3 = Book.new('2018-10-06', 'Penguin', 'bad')
#     end

#     it 'returns child of Item' do
#       expect(@book1).to be_kind_of(Item)
#     end

#     it 'returns instance of Book' do
#       expect(@book1).to be_instance_of(Book)
#     end

#     it 'returns published date' do
#       expect(@book1.published_date).to eq Date.parse('2010-03-14')
#     end

#     it 'checks if book can be achived' do
#       expect(@book1.can_be_archived?).to eq true
#     end

#     it 'checks if book can be achived' do
#       expect(@book2.can_be_archived?).to eq false
#     end

#     it 'checks if book can be achived' do
#       expect(@book3.can_be_archived?).to eq true
#     end
#   end
# end
