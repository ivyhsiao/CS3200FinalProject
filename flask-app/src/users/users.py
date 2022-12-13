from flask import Blueprint, request, jsonify, make_response
import json
from src import db


users = Blueprint('users', __name__)

# Add User
@users.route('/users/<userID>', methods=['POST'])
def add_customer(userID):
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    userID = request.form['userID']
    email = request.form['email']
    password = request.form['password']
    fname = request.form['fname']
    lname = request.form['lname']
    query = f'Insert INTO users(userid, email, password, fname, lname) VALUES( \"{userID}\", \
     \"{email}\", \"{password}\", \"{fname}\", \"{lname}\"'
    cursor.execute(query)
    db.get_db().commit()
    return "success"


# get the top 5 movies to recommend from the database
@users.route('/top5recomm')
def get_most_pop_products():
    cursor = db.get_db().cursor()
    query = '''
        SELECT m.title, m.NumOfLikes, m.YearMade
        FROM movies m JOIN user u on m.movieId = u.movieId
        ORDER BY m.NumOfLikes DESC
        LIMIT 5;
    '''
    cursor.execute(query)
       # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# get all the liked movies
@users.route('/like')
def get_actors(movieid):
    cursor = db.get_db().cursor()
    query = '''
        SELECT m.Title, (a.FirstName, a.LastName as ActorName), a.email, a.phone, a.country
        FROM movie m JOIN liked_movies lm ON m.movieid = lm.movieid
        JOIN user u ON u.userid = lm.userid
        WHERE m.movieid = {0}'.format(p.movieid)
    '''
    cursor.execute(query)
       # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)