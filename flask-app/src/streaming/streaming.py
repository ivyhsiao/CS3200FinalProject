from flask import Blueprint, request, jsonify, make_response
import json
from src import db


streaming = Blueprint('streaming', __name__)

@streaming.route("/addmovie", methods = ['POST'])
def post_movie():
    app.logger.info(request.form)
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

    query = '''
        SELECT m.Title, m.description
        FROM movie m JOIN starred_movies s ON m.movieid = s.movieid
        JOIN streamed_movies sm ON sm.movieid = m.movieid
        JOIN streamingcompany sc on sm.streamingcompanyid = sc.streamingcompanyid
        WHERE m.streamingcompanyid = {0}'.format(streamingcompid)
        ORDER BY m.numoflikes DESC
        LIMIT 6;
        '''

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

# get the top 5 streaming from the database
@streaming.route('/othersmovies', methods=['GET'])
def get_others_movies(streamingcompid):
    cursor = db.get_db().cursor()
    query = '''
        SELECT m.Title, m.description, sc.companyname
        FROM movie m JOIN starred_movies s ON m.movieid = s.movieid
        JOIN streamed_movies sm ON sm.movieid = m.movieid
        WHERE NOT sm.streamingcompanyid = {0}'.format(streamingcompid)
        ORDER BY m.numoflikes DESC
        LIMIT 6;
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