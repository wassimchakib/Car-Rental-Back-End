require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:user) { create(:user) }
  let(:car) do
    Car.create(
      name: 'MERCEDES BENZ G CLASS',
      description: 'MERCEDES G63 AMG - SERIES 21: S21-02',
      color: 'White',
      year: '2021',
      price: '210',
      car_type: 'Sport',
      user:
    )
  end
  let(:image1) do
    Image.create(url: 'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-611-1047x698.jpg',
                 car:)
  end
  let(:image2) do
    Image.create(url: 'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-602-1047x698.jpg',
                 car:)
  end
  let(:image3) do
    Image.create(url: 'https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-613-1047x698.jpg',
                 car:)
  end

  it 'is not valid without a name' do
    car.name = nil
    expect(car).to_not be_valid
  end

  it 'is not valid without a name greater or equal to 3' do
    car.name = 'wa'
    expect(car).to_not be_valid
  end

  it 'is not valid with a description greater than 1000' do
    car.description = 'Contrary to popular belief, Lorem Ipsum is not simply random text.
    It has roots in a piece of classical Latin literature from 45 BC, making it over 2000
    years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
    looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going
    through the cites of the word in classical literature, discovered the undoubtable source.
    Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The
    Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of
    ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
    amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s
    is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
    Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions
    from the 1914 translation by H. Rackham.'
    expect(car).to_not be_valid
  end

  it 'is not valid without a year' do
    car.year = nil
    expect(car).to_not be_valid
  end
  it 'is not valid without a car type' do
    car.car_type = nil
    expect(car).to_not be_valid
  end
  it 'is not valid without a price' do
    car.price = nil
    expect(car).to_not be_valid
  end
  it 'is not valid without a price greater than 0' do
    car.price = -50
    expect(car).to_not be_valid
  end
end
