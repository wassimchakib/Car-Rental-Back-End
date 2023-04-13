require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let(:user1) { create(:user) }
  let(:user2) { create(:user, name: 'Josh') }
  let(:car) { create(:car, user: user1) }

  subject do
    Reservation.new(
      city: 'Walter-Rathenau-Straße 1-13',
      starting_date: '07-04-2023',
      ending_date: '12-04-2023',
      user_id: user2.id,
      car_id: car.id
    )
  end

  before { subject.save }

  context 'Reservation model should be valid' do
    it 'city should be present' do
      subject.city = nil
      expect(subject.valid?).to be false
    end

    it 'city should have 3 or more characters' do
      # example valid City: "Walter-Rathenau-Straße 1-13"
      expect(subject.valid?).to be true

      # invalid
      subject.city = 'LA'
      expect(subject.valid?).to be false
    end

    it 'starting_date should be present' do
      subject.starting_date = nil
      expect(subject.valid?).to be false
    end

    it 'ending_date should be present' do
      subject.ending_date = nil
      expect(subject.valid?).to be false
    end

    it 'user id should be present' do
      subject.user_id = nil
      expect(subject.valid?).to be false
    end

    it 'car id should be present' do
      subject.car_id = nil
      expect(subject.valid?).to be false
    end
  end
end
