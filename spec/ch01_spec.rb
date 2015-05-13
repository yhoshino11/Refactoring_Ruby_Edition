require 'spec_helper'

describe 'ch01' do
  subject(:title)      { 'Star Wars' }
  subject(:price_code) { 0 }
  subject(:movie)      { Movie.new(title, price_code) }
  context Movie do
    it 'has title' do
      expect(movie.title).to eq(title)
    end

    it 'has price_code' do
      expect(movie.price_code).to eq(price_code)
    end

    it 'allows accessing to const' do
      expect(Movie::REGULAR).to eq 0
    end
  end

  subject(:days_rented) { 3 }
  subject(:rental)      { Rental.new(movie, days_rented) }
  context Rental do
    it 'has movie' do
      expect(rental.movie).to eq(movie)
    end

    it 'has days_rented' do
      expect(rental.days_rented).to eq(days_rented)
    end
  end

  subject(:name)     { 'Steve Jobs' }
  subject(:customer) { Customer.new(name) }
  context Customer do
    it "has customer's name" do
      expect(customer.name).to eq(name)
    end

    let(:initial_response) { "Rental Record for #{name}\nAmount owed is 0\nYou earned 0 frequent renter points" }
    it 'initial statement' do
      expect(customer.statement).to eq(initial_response)
    end

    let(:response)         { "Rental Record for #{name}\n\t#{title}\t3.5\nAmount owed is 3.5\nYou earned 1 frequent renter points" }
    it 'add rental' do
      customer.add_rental(rental)
      expect(customer.statement).to eq(response)
    end
  end
end
