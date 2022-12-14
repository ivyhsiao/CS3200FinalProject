from flask import Blueprint, request, jsonify, make_response
import json
from src import db

movies = Blueprint('movies', __name__)

@movies.route("/addmovie", methods = ['POST'])
def post_movie():
    title = request.form['Movie Title']
    language = request.form['Language']
    yearmade = request.form['Year Made']
    production_cost = request.form['Production Cost']
    length = request.form['Movie Length']
    description = request.form['Movie Description']
    actor = request.form['Actor']
    genre = request.form['Genre']
    
    query = f'INSERT INTO Movie(MovieLanguage, Description, YearMade, ProductionCost, Title, \
            MovieLength) VALUES( \"{language}\", \"{description}\", \"{yearmade}\",\
            \"{production_cost}\", \"{title}\, \"{length}\"'

    cursor.execute(query)
    db.get_db().commit()
    return "success"

# Get top 4 movies produced by rivalry production company
@movies.route('/top4movies/<studioid>', methods=['GET'])
def get_top4_movies(studioid):
    # get a cursor object from database
    cursor = db.get_db().cursor()

    query = 'SELECT m.Title, m.Description, a.FirstName, a.LastName, p.studioname, m.NumOfLikes \
    FROM Movie m JOIN starred_movies s ON m.MovieID = s.MovieID \
    JOIN actors a ON a.ActorID = s.ActorID \
    JOIN produced_by_comp pb ON pb.MovieID = m.MovieID \
    JOIN ProductionCompany p on pb.StudioID = p.studioid \
    WHERE p.studioid = {0} \
    ORDER BY m.NumOfLikes DESC \
    LIMIT 4;'.format(studioid)

    # use cursor to query the database for a list of products
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

# get all movies from desired streaming service ranked by popularity (number of likes)
@movies.route('/moviesstreamed/<streamingcompid>')
def moviesstreamed(streamingcompid):
    cursor = db.get_db().cursor()
    query = ('SELECT sc.CompanyName, m.Title, m.Description, a.FirstName, a.LastName \
        FROM Movie m JOIN starred_movies s ON m.MovieID = s.MovieID \
        JOIN actors a ON a.ActorID = s.ActorID \
        JOIN streamed_movies sm ON sm.MovieID = m.MovieID \
        JOIN StreamingCompany sc on sm.StreamingCompanyid = sc.companyid \
        WHERE sc.companyid = {0} \
        ORDER BY m.NumOfLikes DESC'.format(streamingcompid))
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

# get all the actors of a movie and their contacts
@movies.route('/actors/<movieid>')
def get_actors(movieid):
    cursor = db.get_db().cursor()
    query = ('SELECT a.FirstName, a.LastName, a.email, a.phone, a.country, a.gender \
    FROM Movie m JOIN starred_movies s ON m.MovieID = s.MovieID JOIN actors a ON a.ActorID = s.ActorID WHERE m.MovieID = {0}'.format(movieid))
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