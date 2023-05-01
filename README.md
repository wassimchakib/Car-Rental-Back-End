<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [Frontend](#frontend)
  - [🚀 Api documentation](#api-documentation)
  - [🚀 Kanban board](#kanban)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Car Rental <a name="about-project"></a>

**Car Rental** contains the backend code for a Car Rental App, which allows users to reserve a car, add new cars, and delete existing ones. The backend is built using Ruby On Rails and communicates with the frontend of the app to provide a seamless user experience. The backend includes functionality for user authentication and authorization, allowing only authorized users to perform actions such as adding or deleting cars. It also includes a Postgresql database to store information about the cars available for rental, as well as information about user reservations.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Language</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://www.postgresql.org/">Postgresql</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **See various car models**
- **Reserve cars**
- **Add cars**
- **Delete cars**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Front End app <a name="frontend"></a>

Click [here](https://github.com/wassimchakib/Car-Rental-Front-End) to access the front end app that was built with react

### API Documentation <a name="api-documentation"></a>

- Check [swagger documentation](https://car-rental-j96f.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Kanban board <a name="kanban"></a>

- [Link to board](https://github.com/users/wassimchakib/projects/13)
- Our team consists of 4 members: @Profsain, @wassimchakib, @Kweeka1, and @KIsmoilov

### Initial state
![image](https://user-images.githubusercontent.com/50754458/229162056-02f608c7-85bb-4730-83b0-a05739f9ee11.png)

### After 1 iteration (Week)
![image](https://user-images.githubusercontent.com/50754458/230520114-ea73d082-a77e-4646-8a32-3d757f0c41b9.png)

### Table
![image](https://user-images.githubusercontent.com/50754458/230520228-763ffb77-8116-49d4-8f83-4e4e755d9449.png)

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

### Prerequisites <a name="prerequisites"></a>

In order to run this project you need:

- Install [ruby](https://www.ruby-lang.org/en/) on your computer or run it with docker.
- Install [Postgrsql](https://www.postgresql.org/).

### Setup <a name="setup"></a>

- First, clone this repository by using the command line :

```sh
git clone https://github.com/wassimchakib/Car-Rental-Back-End.git
```

- Open `.env.example` file at root directory and fill parameters accordingly

Example:

```shell
RAILS_DATABASE_USER=user
RAILS_DATABASE_PASSWORD=12345678
JWT_SECRET_KEY=JDo6W3hMWX5TVTlVcysxR3tBdkwhdQ
```

- Rename the file to `.env`

### Install <a name="install"></a>

Install this project with:

```shell
bundle install
```

### Usage <a name="usage"></a>

To run the project, follow the next steps:

- Create database with the following command:

```shell
rails db:create
```

- Apply migrations with the following command:

```shell
rails db:migrate
```

- [Optional] Run the following command to fill the database with data:

```shell
rails db:seed
```

- Run the app by executing:

```shell
rails s --port=1800
```

### Run tests <a name="tests"></a>

To run tests, execute the following command:

```sh
rspec spec --exclude-pattern "spec/requests/swagger/**/*_spec.rb"
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Deployment <a name="deployment"></a>

You can deploy this project on [render](https://render.com/):

- Follow the steps in this [documentation](https://render.com/docs/deploy-rails) to deploy a rails app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Wassim Chakib**

- GitHub: [@wassimchakib](https://github.com/wassimchakib)
- Twitter: [@wassim_chakib](https://twitter.com/wassim_chakib)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/wassimchakib/)

👤 **Khusniddin Ismoilov**

- GitHub: [@KIsmoilov](https://github.com/KIsmoilov)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/khusniddin-ismoilov-185575157/)

👤 **Mohamed Talbi**

- GitHub: [@Kweeka1](https://github.com/Kweeka1)
- LinkedIn: [Mohamed Talbi](https://www.linkedin.com/in/moetalbi/)

👤 **Husseini Mudi Profsain**

- GitHub: [@githubhandle](https://github.com/Profsain)
- Twitter: [@twitterhandle](https://twitter.com/profsain)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/profsain)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add rating system**
- **Updating car details**
- **Filter users by their roles**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/wassimchakib/Car-Rental-Back-End/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project by staring it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for project inspiration.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
