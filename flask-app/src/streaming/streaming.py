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

# Get all the movies from the streaming database
@streaming.route('/ourmovies/<streamingcompid>', methods=['GET'])
def get_our_movies(streamingcompid):
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    query = 'SELECT m.Title, m.description \
        FROM Movie m JOIN starred_movies s ON m.movieid = s.movieid \
        JOIN streamed_movies sm ON sm.movieid = m.movieid \
        JOIN StreamingCompany sc on sm.StreamingCompanyId = sc.companyid \
        WHERE sm.StreamingCompanyId = {0} \
        ORDER BY m.numoflikes DESC \
        LIMIT 6;'.format(streamingcompid)

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

# get the top 6 popular streamed from other companies from the database
@streaming.route('/othersmovies/<streamingcompid>', methods=['GET'])
def get_others_movies(streamingcompid):
    cursor = db.get_db().cursor()
    query = 'SELECT m.Title, m.description, sc.companyname \
        FROM Movie m JOIN starred_movies s ON m.movieid = s.movieid \
        JOIN streamed_movies sm ON sm.movieid = m.movieid \
        JOIN StreamingCompany sc on sm.StreamingCompanyid = sc.companyid \
        WHERE NOT sm.streamingcompanyid = {0} \
        ORDER BY m.numoflikes DESC \
        LIMIT 6;'.format(streamingcompid)

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