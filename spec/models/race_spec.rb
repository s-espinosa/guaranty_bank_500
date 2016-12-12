require 'rails_helper'

describe 'Race' do
  xit 'has a year' do
    # Create a `:race` factory to make this test pass.
    race = create(:race)

    expect(race.year).to eq(2015)
  end

  xit 'can be passed a year' do
    # Using the same race factory from above, create a race with Factory Girl that passes.
    # Pass a specific year to the Factory to override the default.

    expect(race.year).to eq(2012)
  end
end
