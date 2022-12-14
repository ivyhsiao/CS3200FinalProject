from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


users = Blueprint('users', __name__)

# Add User
@users.route('/users/adduser', methods=['POST'])
def add_user():
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

# add liked movie
@users.route("/addliked", methods = ['POST'])
def like_movie():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    movieid = request.form['movieid']
    userid = request.form['userid']

    query = f'Insert INTO liked_movies(movieid, userid) VALUES( \"{movieid}\", \"{userid}\")'

    cursor.execute(query)
    db.get_db().commit()
    return "success"

# get all the liked movies by a user
@users.route('/liked/<userid>')
def get_liked(userid):
    cursor = db.get_db().cursor()
    query = 'SELECT DISTINCT m.MovieID, m.Title, m.Description, m.NumOfLikes, m.YearMade, g.genrename \
        FROM Movie m JOIN liked_movies lm ON m.movieid = lm.movieid \
        JOIN users u ON u.userid = lm.userid \
        JOIN movie_genre mg ON m.movieid = mg.movieid \
        JOIN Genre g ON mg.genreid = g.genreid \
        WHERE u.userid = {0}'.format(userid)

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