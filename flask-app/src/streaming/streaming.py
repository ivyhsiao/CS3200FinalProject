from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


streaming = Blueprint('streaming', __name__)

@streaming.route("/addmovie", methods = ['POST'])
def post_movie():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    movieid = request.form('movieid')
    streamingcompanyid = request.form('streamingcompanyid')

    query = f'Insert INTO streamed_movies(movieid, streamingcompanyid) VALUES( \"{movieid}\", \"{streamingcompanyid}\"'

    cursor.execute(query)
    db.get_db().commit()
    return "success"

# Get all the movies from the streaming database ranked by popularity
@streaming.route('/allmovies/<streamingcompid>', methods=['GET'])
def get_our_movies(streamingcompid):
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    query = 'SELECT DISTINCT m.Title, m.description, m.numoflikes, m.movielength \
        FROM Movie m JOIN starred_movies s ON m.movieid = s.movieid \
        JOIN streamed_movies sm ON sm.movieid = m.movieid \
        JOIN StreamingCompany sc on sm.StreamingCompanyId = sc.companyid \
        WHERE sm.StreamingCompanyId = {0} \
        ORDER BY m.numoflikes DESC;'.format(streamingcompid)

    # use cursor to query the database for a list of streaming
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

# get all streaming services that stream a certain movie
@streaming.route('/streamed/<movieid>')
def streamed_on(movieid):
    cursor = db.get_db().cursor()
    query = ('SELECT sc.CompanyName, sm.link\
        FROM Movie m JOIN streamed_movies sm ON sm.MovieID = m.MovieID \
        JOIN StreamingCompany sc on sm.StreamingCompanyid = sc.companyid \
        WHERE m.MovieID = {0}'.format(movieid))

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