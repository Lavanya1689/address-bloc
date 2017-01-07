require_relative '../models/address_book'

RSpec.describe AddressBook do
    describe "attribute" do
       it "responds to entries" do
           book = AddressBook.new
           expect(book).to respond_to(:entries)
        end
       
       it "initializes as an array" do
           book = AddressBook.new
           expect(book.entries).to be_an(Array)
       end
       
       it "initializes entries as empty" do
           book = AddressBook.new
           expect(book.entries.size).to eq(0)
       end
    end
    
    describe "#add_entries" do
        it "adds one entry" do
            book = AddressBook.new
            book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            expect(book.entries.size).to eq(1)
        end
        it "adds the correct information to entries" do
            book = AddressBook.new
            book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            new_entry = book.entries[0]
            
            expect(new_entry.name).to eq('Ada Lovelace')
            expect(new_entry.phone_number).to eq('010.012.1815')
            expect(new_entry.email).to eq('augusta.king@lovelace.com')
        end

    end
    
    describe "#remove_entries" do
        it "removes an entry" do
            book = AddressBook.new
            book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            book.add_entry('Lavanya Tangati', '270.535.7281', 'ltangati@gmail.com')
            
            book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            expect(book.entries.size).to eq(1)
            expect(book.entries.first.name).to eq('Lavanya Tangati')
        end
    end
end
