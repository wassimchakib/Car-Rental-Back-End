FactoryBot.define do
  factory :car do
    name { 'Mitsubishi Eclipse Cross' }
    description do
      'The Mitsubishi Eclipse Cross comes in four trims: ES, LE, SE and SEL. All come ' \
        'with a 152-horsepower turbocharged 1.5-liter four-cylinder engine, a continuously variable automatic ' \
        'transmission (CVT) and all-wheel drive. The LE trim is the best place for most shoppers to start, as it ' \
        'adds infotainment and convenience features that are not available in the base model. For niceties ' \
        'such as heated rear seats, a head-up display and adaptive cruise control, you\'ll have to step up to the ' \
        'top-of-the-line SEL and add an optional package.'
    end
    color { 'white' }
    price { 25_795 }
    year { '05-01-2023' }
    association :user, factory: :user
  end
end
