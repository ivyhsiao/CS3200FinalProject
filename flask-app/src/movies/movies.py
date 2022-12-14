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
    
    query = f'INSERT INTO movie(MovieLanguage, Description, YearMade, ProductionCost, Title, \
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

    query = 'SELECT m.Title, m.Description, (a.FirstName, a.LastName as ActorName), p.companyname \
    FROM Movie m JdOIN starred_movies s ON m.movieid = s.movieid \
    JOIN actors a ON a.actorid = s.actorid \
    JOIN studio_movie sm ON sm.movieid = m.movieid \
    JOIN ProductionCompany p on sm.studioid = p.studioid \
    WHERE studioid = {0} \
    ORDER BY m.numoflikes DESC \
    LIMIT 4'.format(studioid);

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
    query = ('SELECT m.Title, m.Description, (a.FirstName, a.LastName as ActorName), \
        FROM Movie m JOIN starred_movies s ON m.MovieID = s.MovieID \
        JOIN actors a ON a.ActorID = s.ActorID \
        JOIN streamed_movies sm ON sm.MovieID = m.MovieID \
        JOIN StreamingCompany sc on sm.StreamingCompanyid = sc.companyid \
        WHERE m.streamingcompanyid = {0} \
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
    query = ('SELECT * FROM Movie m JOIN starred_movies s ON m.MovieID = s.MovieID JOIN actors a ON a.ActorID = s.ActorID WHERE m.MovieID = {0}'.format(movieid))
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