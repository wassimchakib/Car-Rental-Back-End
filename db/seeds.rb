# Create Username Admin
admin = User.create(name: "admin")

# Create 18 cars

# Mercedes Benz G Class
car1 = Car.create(
  name: "MERCEDES BENZ G CLASS",
  description: "MERCEDES G63 AMG - SERIES 21: S21-02",
  color: "White",
  year: "2021",
  price: "210",
  car_type: "Sport",
  user: admin
)
car1_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-611-1047x698.jpg", car: car1)
car1_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-602-1047x698.jpg", car: car1)
car1_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-G63-AMG-Series-21-S21-02-%C2%A9-Vossen-Wheels-2023-613-1047x698.jpg", car: car1)

# Mercedes Benz S Class
car2 = Car.create(
  name: "MERCEDES BENZ S CLASS",
  description: "MERCEDES S580 - HYBRID FORGED SERIES: HF-4T",
  color: "Black",
  year: "2022",
  price: "120",
  car_type: "Coupe",
  user: admin
)
car2_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-S580-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2023-600-1047x698.jpg", car: car2)
car2_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-S580-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2023-618-1047x698.jpg", car: car2)
car2_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-S580-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2023-622-1047x698.jpg", car: car2)

# CHEVROLET / GMC DENALI
car3 = Car.create(
  name: "CHEVROLET / GMC DENALI",
  description: "GMC SIERRA DENALI - HYBRID FORGED SERIES: HF6-4",
  color: "Black",
  year: "2021",
  price: "170",
  car_type: "Pickup",
  user: admin
)
car3_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/GMC-Sierra-Denali-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2023-600-1047x698.jpg", car: car3)
car3_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/GMC-Sierra-Denali-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2023-614-1047x698.jpg", car: car3)
car3_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/GMC-Sierra-Denali-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2023-619-1047x698.jpg", car: car3)
car3_image4 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/GMC-Sierra-Denali-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2023-609-109x73.jpg", car: car3)

# FERRARI SF90
car4 = Car.create(
  name: "FERRARI SF90",
  description: "FERRARI SF90 - NOVITEC X VOSSEN SERIES: NF10",
  color: "White",
  year: "2019",
  price: "320",
  car_type: "Sport",
  user: admin
)
car4_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Ferrari-SF90-Novitec-x-Vossen-Series-NF10-%C2%A9-Vossen-Wheels-2023-3-1047x698.jpg", car: car4)
car4_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Ferrari-SF90-Novitec-x-Vossen-Series-NF10-%C2%A9-Vossen-Wheels-2023-1-1047x698.jpg", car: car4)
car4_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Ferrari-SF90-Novitec-x-Vossen-Series-NF10-%C2%A9-Vossen-Wheels-2023-2-1047x698.jpg", car: car4)

# MCLAREN GT
car5 = Car.create(
  name: "MCLAREN GT",
  description: "MCLAREN GT - LC SERIES: LC-104",
  color: "Red",
  year: "2018",
  price: "300",
  car_type: "Sport",
  user: admin
)
car5_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/McLaren-GT-LC-Series-LC-104-%C2%A9-Vossen-Wheels-2023-16-1047x698.jpg", car: car5)
car5_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/McLaren-GT-LC-Series-LC-104-%C2%A9-Vossen-Wheels-2023-1-1047x698.jpg", car: car5)
car5_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/McLaren-GT-LC-Series-LC-104-%C2%A9-Vossen-Wheels-2023-21-1047x698.jpg", car: car5)
car5_image4 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/McLaren-GT-LC-Series-LC-104-%C2%A9-Vossen-Wheels-2023-5-1047x698.jpg", car: car5)

# MERCEDES BENZ C CLASS
car6 = Car.create(
  name: "MERCEDES BENZ C CLASS",
  description: "MERCEDES C43 AMG - HYBRID FORGED SERIES: HF-7",
  color: "Orange",
  year: "2023",
  price: "190",
  car_type: "Coupe",
  user: admin
)
car6_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-C43-AMG-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2023-1-1047x698.jpg", car: car6)
car6_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-C43-AMG-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2023-7-1047x698.jpg", car: car6)
car6_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-C43-AMG-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2023-6-1047x698.jpg", car: car6)
car6_image4 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-C43-AMG-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2023-9-1047x698.jpg", car: car6)

# MERCEDES BENZ E CLASS
car7 = Car.create(
  name: "MERCEDES BENZ E CLASS",
  description: "MERCEDES E300E - HYBRID FORGED SERIES: HF-5",
  color: "White",
  year: "2023",
  price: "230",
  car_type: "Super",
  user: admin
)
car7_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-E300e-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2023-4-1047x698.jpg", car: car7)
car7_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-E300e-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2023-1-1047x698.jpg", car: car7)
car7_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-E300e-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2023-10-1047x698.jpg", car: car7)
car7_image4 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Mercedes-E300e-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2023-2-1047x698.jpg", car: car7)

# BMW X7
car8 = Car.create(
  name: "BMW X7",
  description: "BMW X7 - HYBRID FORGED SERIES: HF-5",
  color: "Grey",
  year: "2022",
  price: "240",
  car_type: "Super",
  user: admin
)
car8_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/BMW-X7-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2022-24-1047x698.jpg", car: car8)
car8_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/BMW-X7-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2022-11-1047x698.jpg", car: car8)
car8_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/BMW-X7-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2022-8-1047x698.jpg", car: car8)
car8_image4 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/BMW-X7-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2022-21-1047x698.jpg", car: car8)

# TESLA MODEL X
car9 = Car.create(
  name: "TESLA MODEL X",
  description: "TESLA MODEL X PLAID - HYBRID FORGED SERIES: HF-7",
  color: "Menthol",
  year: "2019",
  price: "220",
  car_type: "Super",
  user: admin
)
car9_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/10/Tesla-Model-X-Plaid-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2022-1407-1047x698.jpg", car: car9)
car9_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/10/Tesla-Model-X-Plaid-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2022-1429-1047x698.jpg", car: car9)
car9_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/10/Tesla-Model-X-Plaid-Hybrid-Forged-Series-HF-7-%C2%A9-Vossen-Wheels-2022-1420-1047x698.jpg", car: car9)

# TOYOTA LAND CRUSIER
car10 = Car.create(
  name: "TOYOTA LAND CRUSIER",
  description: "TOYOTA LAND CRUISER - HYBRID FORGED SERIES: HF6-4",
  color: "White",
  year: "2020",
  price: "150",
  car_type: "SUV",
  user: admin
)
car10_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2021/10/Toyota-LandCruiser-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2021-302-1047x698.jpg", car: car10)
car10_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2021/10/Toyota-LandCruiser-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2021-300-1047x698.jpg", car: car10)
car10_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2021/10/Toyota-LandCruiser-Hybrid-Forged-Series-HF6-4-%C2%A9-Vossen-Wheels-2021-301-1047x698.jpg", car: car10)

# KIA SEDONA
car11 = Car.create(
  name: "KIA SEDONA",
  description: "KIA SEDONA - HYBRID FORGED SERIES: HF-4T",
  color: "White",
  year: "2021",
  price: "180",
  car_type: "Micro",
  user: admin
)
car11_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/Kia-Sedona-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2022-864-1047x698.jpg", car: car11)
car11_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/Kia-Sedona-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2022-861-1047x698.jpg", car: car11)
car11_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/12/Kia-Sedona-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2022-863-1047x698.jpg", car: car11)

# LEXUS RX
car12 = Car.create(
  name: "LEXUS RX",
  description: "LEXUS RX300 - SERIES 17: S17-14",
  color: "White",
  year: "2023",
  price: "190",
  car_type: "SUV",
  user: admin
)
car12_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Lexus-RX300-Series-17-S17-14-%C2%A9-Vossen-Wheels-2022-209-1-1047x698.jpg", car: car12)
car12_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Lexus-RX300-Series-17-S17-14-%C2%A9-Vossen-Wheels-2022-204-1-1047x698.jpg", car: car12)
car12_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Lexus-RX300-Series-17-S17-14-%C2%A9-Vossen-Wheels-2022-214-1-1047x698.jpg", car: car12)
car12_image4 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Lexus-RX300-Series-17-S17-14-%C2%A9-Vossen-Wheels-2022-216-1-1047x698.jpg", car: car12)

# PORSCHE CAYENNE
car13 = Car.create(
  name: "PORSCHE CAYENNE",
  description: "PORSCHE CAYENNE GTS - HYBRID FORGED SERIES: HF-5",
  color: "Space Grey",
  year: "2023",
  price: "250",
  car_type: "Sport",
  user: admin
)
car13_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/08/gts1-1047x698.jpg", car: car13)
car13_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/08/gts3-1047x698.jpg", car: car13)
car13_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/08/gts4-1047x698.jpg", car: car13)

# GENESIS GV80
car14 = Car.create(
  name: "GENESIS GV80",
  description: "GENESIS GV80 - HYBRID FORGED SERIES: HF-4T",
  color: "Black",
  year: "2023",
  price: "220",
  car_type: "SUV",
  user: admin
)
car14_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Genesis-GV80-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2022-101-1047x698.jpg", car: car14)
car14_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Genesis-GV80-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2022-105-1047x698.jpg", car: car14)
car14_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/06/Genesis-GV80-Hybrid-Forged-Series-HF-4T-%C2%A9-Vossen-Wheels-2022-106-1047x698.jpg", car: car14)

# JEEP WRANGLER
car15 = Car.create(
  name: "JEEP WRANGLER",
  description: "JEEP WRANGLER - M-X SERIES: M-X4T (3-PIECE)",
  color: "Black",
  year: "2018",
  price: "160",
  car_type: "SUV",
  user: admin
)
car15_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/01/Jeep-Wrangler-M-X-Series-M-X4T-3-Piece-%C2%A9-Vossen-Wheels-2022-2102-1047x698.jpg", car: car15)
car15_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/01/Jeep-Wrangler-M-X-Series-M-X4T-3-Piece-%C2%A9-Vossen-Wheels-2022-2113-1047x698.jpg", car: car15)
car15_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/01/Jeep-Wrangler-M-X-Series-M-X4T-3-Piece-%C2%A9-Vossen-Wheels-2022-2104-1047x698.jpg", car: car15)

# BUGATTI VEYRON
car16 = Car.create(
  name: "BUGATTI VEYRON",
  description: "BUGATTI VEYRON GRAND SPORT VITISSE - LC3 SERIES: LC3-03T",
  color: "Space Grey",
  year: "2020",
  price: "310",
  car_type: "Sport",
  user: admin
)
car16_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Bugatti-Veyron-Grand-Sport-Vitesse-LC3-Series-LC3-03T-%C2%A9-Vossen-Wheels-2023-12-1047x698.jpg", car: car16)
car16_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Bugatti-Veyron-Grand-Sport-Vitesse-LC3-Series-LC3-03T-%C2%A9-Vossen-Wheels-2023-27-1047x698.jpg", car: car16)
car16_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2023/03/Bugatti-Veyron-Grand-Sport-Vitesse-LC3-Series-LC3-03T-%C2%A9-Vossen-Wheels-2023-1-1047x698.jpg", car: car16)

# HYUNDAI PALISADE
car17 = Car.create(
  name: "HYUNDAI PALISADE",
  description: "HYUNDAI PALISADE - HYBRID FORGED SERIES: VFS-2",
  color: "White",
  year: "2019",
  price: "180",
  car_type: "SUV",
  user: admin
)
car17_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/05/Hyundai-Palisade-Hybrid-Forged-Series-VFS-2-%C2%A9-Vossen-Wheels-2022-315-1047x589.jpg", car: car17)
car17_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/05/Hyundai-Palisade-Hybrid-Forged-Series-VFS-2-%C2%A9-Vossen-Wheels-2022-300-1047x589.jpg", car: car17)
car17_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2022/05/Hyundai-Palisade-Hybrid-Forged-Series-VFS-2-%C2%A9-Vossen-Wheels-2022-306-1047x589.jpg", car: car17)

# INFINITI Q50
car18 = Car.create(
  name: "INFINITI Q50",
  description: "INFINITI Q50S HYBRID FORGED SERIES: HF-5",
  color: "White",
  year: "2020",
  price: "100",
  car_type: "Sport",
  user: admin
)
car18_image1 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2021/08/Infiniti-Q50s-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2021-5-1047x696.jpg", car: car18)
car18_image2 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2021/08/Infiniti-Q50s-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2021-4-1047x696.jpg", car: car18)
car18_image3 = Image.create(url: "https://vossen2018.wpenginepowered.com/wp-content/uploads/2021/08/Infiniti-Q50s-Hybrid-Forged-Series-HF-5-%C2%A9-Vossen-Wheels-2021-9-1047x696.jpg", car: car18)
