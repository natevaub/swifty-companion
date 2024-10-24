# Step1: Base Image
FROM node:20-alpine

# Step2: Set the working directory inside the container
WORKDIR /app

# Step3: Install Expo CLI globally
RUN npm install -g expo-cli

# Step4: Copy the package.json and package-lock.json files to the working directory
COPY app/package*.json ./

# Step5: Install dependencies
RUN npm install

# Step6: Copy the rest of the application files to the working directory
COPY app/ .

# Step7: Expose necessary ports
EXPOSE 19000 19001 19002

# Step8: Start the application
# CMD ["npm", "run", "start"]
CMD ["npx", "expo", "start"]