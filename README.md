# E-Commerce Website For Electronic Devices

This E-Commerce Website for Electronic Devices is a modern full-stack web application designed to provide users with a seamless online shopping experience. The platform allows customers to browse a wide range of electronic products, view detailed specifications, and make secure purchases with ease. It focuses on performance, user-friendly design, and secure transactions. The system ensures smooth interaction between frontend and backend while maintaining data integrity and scalability. With responsive design and efficient search functionality, users can access the platform from any device and quickly find the products they need.

This application serves as a reference implementation for building scalable e-commerce solutions with a modern technology stack.



<img width="1906" height="1041" alt="image" src="https://github.com/user-attachments/assets/359a1697-4425-4173-9ef1-5cd71b0ef9c7" />
<img width="1919" height="1102" alt="image" src="https://github.com/user-attachments/assets/3433cf17-4f70-48fe-92b1-65b38e959f70" />

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
e-commerce website for electronic devices/
├── backend files/           # Node.js server
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

Thank you
