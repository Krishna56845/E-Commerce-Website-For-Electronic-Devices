# Full-Stack E-Commerce Platform

Welcome to this **Full-Stack E-Commerce Platform**! This project demonstrates a complete web application built using modern web technologies. It includes user authentication, shopping cart functionality, checkout process, and product management features.

This application serves as a reference implementation for building scalable e-commerce solutions with a modern technology stack.

## Table of Contents

1. [Introduction](#introduction)
2. [Live Deployment](#live-deployment)
3. [User Interface](#user-interface)
   - [Home Page](#home-page)
   - [Full Product List](#full-product-list)
   - [Cart Page](#cart-page)
   - [Checkout Page](#checkout-page)
4. [Features](#features)
5. [Technologies Used](#technologies-used)
6. [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
7. [Project Structure](#project-structure)
8. [Running the Application](#running-the-application)
9. [Product Recommendations with Vector Database](#product-recommendations-with-vector-database)
10. [Testing the APIs](#testing-the-apis)
11. [Unit & Integration Testing](#unit--integration-testing)
    - [Backend Tests](#backend-tests)
    - [Frontend Tests](#frontend-tests)
12. [Swagger API Documentation](#swagger-api-documentation)
13. [OpenAPI Specification](#openapi-specification)
    - [Using the `openapi.yaml` File](#using-the-openapiyaml-file)
14. [Deployment](#deployment)
15. [Containerization](#containerization)
16. [GitHub Actions & CI/CD](#github-actions--cicd)
17. [Contributing](#contributing)
18. [License](#license)
19. [Creator](#creator)
<img width="1906" height="1041" alt="image" src="https://github.com/user-attachments/assets/359a1697-4425-4173-9ef1-5cd71b0ef9c7" />
<img width="1919" height="1102" alt="image" src="https://github.com/user-attachments/assets/3433cf17-4f70-48fe-92b1-65b38e959f70" />

## Introduction

This project is a demonstration of building an e-commerce application using the MERN stack, which consists of MongoDB (database), Express.js (server), React.js (frontend), and Node.js (runtime environment). The application allows users to browse products, add them to a shopping cart, proceed to checkout, and simulate the order processing. It includes comprehensive validations for user inputs and simulates the checkout process on the backend.

The application is designed to be user-friendly and responsive, providing a seamless shopping experience. It also includes features such as product search, user authentication, and order confirmation. Additionally, it uses Pinecone (with optional Weaviate support) for product recommendations based on vector search, enhancing the user experience by suggesting relevant products.

<p align="center">
  <a href="https://react.dev">
    <img src="https://img.shields.io/badge/React-18.x-61DAFB?logo=react&logoColor=white" alt="React badge" />
  </a>
  <a href="https://nodejs.org/">
    <img src="https://img.shields.io/badge/Node.js-18.x-339933?logo=node.js&logoColor=white" alt="Node.js badge" />
  </a>
  <a href="https://expressjs.com/">
    <img src="https://img.shields.io/badge/Express-4.x-000000?logo=express&logoColor=white" alt="Express badge" />
  </a>
  <a href="https://www.mongodb.com/">
    <img src="https://img.shields.io/badge/MongoDB-6.x-47A248?logo=mongodb&logoColor=white" alt="MongoDB badge" />
  </a>
  <a href="https://jestjs.io/">
    <img src="https://img.shields.io/badge/Jest-29.x-C21325?logo=jest&logoColor=white" alt="Jest badge" />
  </a>
  <a href="https://mui.com/">
    <img src="https://img.shields.io/badge/Material--UI-5.x-007FFF?logo=mui&logoColor=white" alt="Material UI badge" />
  </a>
  <a href="https://weaviate.io/">
    <img src="https://img.shields.io/badge/Weaviate-Vector%20Database-FF6F00?logo=weblate&logoColor=white" alt="Weaviate badge" />
  </a>
  <a href="https://www.pinecone.io/">
    <img src="https://img.shields.io/badge/Pinecone-Vector%20Database-0f9d58?logo=pinecone&logoColor=white" alt="Pinecone badge" />
  </a>
  <a href="https://https://ai.meta.com/tools/faiss/">
    <img src="https://img.shields.io/badge/FAISS-Vector%20Search-00A4FF?logo=facebook&logoColor=white" alt="FAISS badge" />
  </a>
  <a href="https://www.langchain.com">
    <img src="https://img.shields.io/badge/LangChain-LLM%20Framework-00A4FF?logo=langchain&logoColor=white" alt="LangChain badge" />
  </a>
  <a href="https://www.npmjs.com/">
    <img src="https://img.shields.io/badge/npm-Node%20Package%20Manager-CB3837?logo=npm&logoColor=white" alt="npm badge" />
  </a>
  <a href="https://kubernetes.io/">
    <img src="https://img.shields.io/badge/Kubernetes-Container%20Orchestration-326CE5?logo=kubernetes&logoColor=white" alt="Kubernetes badge" />
  </a>
  <a href="https://aws.amazon.com/">
    <img src="https://img.shields.io/badge/AWS-Cloud%20Platform-FF9900?logo=amazonaws&logoColor=white" alt="AWS badge" />
  </a>
  <a href="https://vercel.com/">
    <img src="https://img.shields.io/badge/Vercel-Deploy-000000?logo=vercel&logoColor=white" alt="Vercel badge" />
  </a>
  <a href="https://www.render.com/">
    <img src="https://img.shields.io/badge/Render-Deploy-46E3B7?logo=render&logoColor=white" alt="Render badge" />
  </a>
  <a href="https://swagger.io/">
    <img src="https://img.shields.io/badge/Swagger-API%20Docs-85EA2D?logo=swagger&logoColor=black" alt="Swagger badge" />
  </a>
  <a href="https://www.docker.com/">
    <img src="https://img.shields.io/badge/Docker-Containerized-2496ED?logo=docker&logoColor=white" alt="Docker badge" />
  </a>
  <a href="https://jestjs.io/">
    <img src="https://img.shields.io/badge/Jest-Testing-C21325?logo=jest&logoColor=white" alt="Jest badge" />
  </a>
  <a href="https://reactjs.org/">
    <img src="https://img.shields.io/badge/React%20Testing%20Library-Testing-FF4088?logo=react&logoColor=white" alt="React Testing Library badge" />
  </a>
  <a href="https://git-scm.com/">
    <img src="https://img.shields.io/badge/Git-VersionControl-F05032?logo=git&logoColor=white" alt="Git badge" />
  </a>
  <a href="https://www.postman.com/">
    <img src="https://img.shields.io/badge/Postman-API%20Testing-FF6C37?logo=postman&logoColor=white" alt="Postman badge" />
  </a>
  <a href="https://axios-http.com/">
    <img src="https://img.shields.io/badge/Axios-HTTP%20Client-5A29E4?logo=axios&logoColor=white" alt="Axios badge" />
  </a>
  <a href="https://reactrouter.com/">
    <img src="https://img.shields.io/badge/React%20Router-Routing-DD0031?logo=reactrouter&logoColor=white" alt="React Router badge" />
  </a>
  <a href="https://babel.io/">
    <img src="https://img.shields.io/badge/Babel-Transpiler-F9DC3E?logo=babel&logoColor=black" alt="Babel badge" />
  </a>
  <a href="https://webpack.js.org/">
    <img src="https://img.shields.io/badge/Webpack-Bundler-8DD6F9?logo=webpack&logoColor=black" alt="Webpack badge" />
  </a>
  <a href="https://craco.js.org/">
    <img src="https://img.shields.io/badge/CRACO-Configuration-61DAFB?logo=react&logoColor=white" alt="CRACO badge" />
  </a>
  <a href="https://react-hook-form.com/">
    <img src="https://img.shields.io/badge/React%20Hook%20Form-Forms-EC5990?logo=reacthookform&logoColor=white" alt="React Hook Form badge" />
  </a>
  <a href="https://fkhadra.github.io/react-toastify/">
    <img src="https://img.shields.io/badge/React%20Toastify-Notifications-FF8800?logo=react&logoColor=white" alt="React Toastify badge" />
  </a>
  <a href="https://www.npmjs.com/package/react-credit-cards-2">
    <img src="https://img.shields.io/badge/React%20Credit%20Cards-Credit%20Card-FFCA28?logo=creditcard&logoColor=black" alt="React Credit Cards badge" />
  </a>
</p>

## Live Deployment

This application can be deployed to various cloud platforms including Vercel, Render, AWS, and others.

## User Interface

The application provides a comprehensive user interface for browsing products, managing shopping carts, and completing purchases.

## Features

- **Product Management**: Browse and view products with detailed information
- **Shopping Cart**: Add/remove items and calculate totals
- **User Authentication**: Registration, login, and password management
- **Checkout Process**: Multi-step checkout with validation
- **Search Functionality**: Find products by name and description
- **Responsive Design**: Works on all device sizes

## Technologies Used

- **Frontend**: React.js, Material-UI, Axios
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **Authentication**: JWT
- **Testing**: Jest, React Testing Library

## Project Structure

```
ecommerce-platform/
├── backend/           # Node.js server
├── src/              # React frontend
├── public/           # Static assets
├── docs/             # Documentation
└── package.json      # Dependencies
```

## Getting Started

### Prerequisites

Before running this project, ensure you have the following installed:

- Node.js (with npm)
- MongoDB (with either local or remote instance)
- Git

### Installation

1. Open the repository:
   ```bash

   cd Online-Commerce_MERN-Stack

2. Install project dependencies:
   ```bash
   # Install server (backend) dependencies
   cd backend
   npm install
   
   # Note: If you encounter any issues with the backend/package-lock.json not updating, run the following command from root directory:
   npm install --no-workspaces --prefix backend

   # Install client (frontend) dependencies
   cd ..
   npm install
   ```
   
3. Set up the backend:

   - Create a `.env` file in the `backend/` directory and add the following environment variable (replace the URI with your MongoDB connection string):
     ```
     MONGO_URI=mongodb://localhost:27017/Ecommerce-Products
     JWT_SECRET=your_secret_key
     ```
     
     For your information, I am using MongoDB Atlas for this project. You can create a free account and get your connection string from there if you want to deploy the application to the cloud.
 
    - Ensure that your MongoDB server is running. If you're using Mac, you can start the MongoDB server with the following command:
     ```bash
     brew services start mongodb-community
     ``` 

   - Seed the database with sample data:
     ```bash
     cd backend/seed
     node productSeeds.js dev
     ```
     
   - Run the backend server: (first `cd` into the backend directory)
     ```bash
     cd ..
     npm start
     ``` 
     
4. Set up the frontend:
   - First, `cd` into the `root` directory if you are not already there:
     ```bash
     cd ..
     ```
     Or
        ```bash
        cd fullstack-ecommerce
        ```
   - Start the frontend development server:
     ```bash
     npm start
     ```
> [!TIP]
> The frontend server will run on `http://localhost:3000` by default. If you encounter any errors when starting related to the `react-credit-cards-2` package, it is OK to just ignore them as the application will still run correctly.

## Running the Application

- Open your browser and navigate to `http://localhost:3000` to view the application.

## Testing

Run tests with:
```bash
npm test
```

## Unit & Integration Testing

Run tests with:
```bash
cd backend
npm test

cd ..
npm test
```

## API Documentation

API documentation is available via Swagger at `http://localhost:5000/api-docs`.

## Deployment

This application supports deployment to various cloud platforms including Vercel, Render, AWS, and others.

## Containerization

```bash
docker compose up --build
```

## Contributing

Contributions are welcome! Feel free to submit pull requests or report issues.

## License

This project is licensed under the **MIT License**.

---

Thank you for using this application!

**Happy coding! 🚀**
