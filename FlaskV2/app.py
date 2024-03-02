from flask import Flask, request, jsonify
from flask_mail import Mail,Message
from flask_pymongo import PyMongo
from pymongo import MongoClient
from bson.json_util import dumps
import logging
import random
import string
import secrets
import os
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
app.config['MAIL_SERVER']='smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = 'vsrigadi@gmail.com'
app.config['MAIL_PASSWORD'] = 'fzby tcjx loyv dugt'
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
mail = Mail(app)
# mail.init_app(app)
app.config["MONGO_URI"] = "mongodb+srv://myuser1:root@cluster0.5gnt3by.mongodb.net/vinay?retryWrites=true&w=majority"
mongo = PyMongo(app)
user_collection = mongo.db.demo
##API for signup
@app.route('/signup', methods=['POST'])
def signup():
    # Get user data from request
    user_data = request.json

    # Check if required fields are present
    if not all(field in user_data for field in ['username', 'password', 'email','mobile_number']):
        return jsonify({'error': 'Missing fields'}), 400

    # Check if the username or email or Mobile num already exists 
    if user_collection.find_one({'$or': [{'username': user_data['username']}, {'email': user_data['email']} , {'mobile_number': user_data['mobile_number']}]}) is not None:
        return jsonify({'error': 'Username or email already exists'}), 400

    # Insert the new user into the database
    user_id = user_collection.insert_one(user_data).inserted_id

    # Return success message
    return jsonify({'message': 'User created successfully', 'user_id': str(user_id)}), 201

##API for Login
@app.route('/login', methods=['POST'])
def login():
    try:
        # Get user data from request
        user_data = request.json

        # Check if required fields are present
        if not all(field in user_data for field in ['username', 'password']):
            return jsonify({'error': 'Missing fields'}), 400

        # Find the user by username in the database
        user = user_collection.find_one({'username': user_data['username']})

        # Check if user exists and the password is correct        
        if user and user['password'] == user_data['password']:
            return jsonify({'message': 'Login successful'}), 200
        else:
            return jsonify({'error': 'Invalid username or password'}), 401

    except Exception as e:
        logging.error(f"An error occurred during login: {str(e)}")
        return jsonify({'error': 'An error occurred during login'}), 500        

tokens = {}
##API for Sending token mail
@app.route('/send_token', methods=['POST'])
def forgot_password():
    email = request.json.get('email')  
    
    # Generate a unique token
    token = secrets.token_urlsafe(16)

    # Store the token (in memory, but ideally in a database)
   
    user = user_collection.find_one({'email': email})
    userid = user['username']
    if user:
        # Send the email with the token
        user_collection.update_one({'_id': user['_id']}, {'$set': {'reset_token': token}})
    
        # Send the token to the user via email
        msg = Message('Password Reset Request', sender='vsrigadi@gmail.com', recipients=[email])
        msg.body = f'Your password reset token is: {token} and Your user Id : {userid}'
     
        mail.send(msg)

        return jsonify({'message': 'Reset token sent to your email'}), 200
    else:
        return jsonify({'error': 'User with provided email not found'}), 404




@app.route('/reset_newpassword', methods=['POST'])
def reset_password():
    try:
        reset_data = request.json
        reset_token = reset_data.get('reset_token')
        new_password = reset_data.get('new_password')

        # Check if both reset_token and new_password are provided
        if not reset_token or not new_password:
            return jsonify({'error': 'Reset token and new password are required'}), 400

        # Find user by reset token
        user = user_collection.find_one({'reset_token': reset_token})
        if user:
            # Update user's password and remove the reset token
            user_collection.update_one({'_id': user['_id']}, {'$set': {'password': new_password}, '$unset': {'reset_token': 1}})
            return jsonify({'message': 'Password reset successful'}), 200
        else:
            return jsonify({'error': 'Invalid or expired reset token'}), 400
    except Exception as e:
        return jsonify({'error': 'An error occurred'}), 500


@app.route('/append', methods=['POST'])
def append():
    try:
        username = request.json.get("username")
        data = request.json.get("data")

        user = user_collection.find_one({"username": username})
        print(username)
        print(data)

        if user:
            user_collection.update_one(
                {"username": username},
                {"$push": {"entries": data}}
            )
            #  jsonify(username),

            return jsonify({"message": "Data appended successfully"}), 200
           
        else:
            user_collection.insert_one(
                {"username": username, "entries": [data]}
            )
            return jsonify({"message": "User created and data appended successfully"}), 201
    except Exception as e:
        return jsonify({'error': 'An error occurred'}), 500



@app.route('/moodtrack', methods=['POST'])
def moodtrack():
    try:
        username = request.json.get("username")
        data = request.json.get("text")

        user = user_collection.find_one({"username": username})
        print(username)
        print(data)

        if user:
            user_collection.update_one(
                {"username": username},
                {"$push": {"entries": data}}
            )
            #  jsonify(username),

            return jsonify({"message": "Data appended successfully"}), 200
           
        else:
            user_collection.insert_one(
                {"username": username, "entries": [data]}
            )
            return jsonify({"message": "User created and data appended successfully"}), 201
    except Exception as e:
        return jsonify({'error': 'An error occurred'}), 500

if __name__ == '__main__':
    app.run(debug=True)
