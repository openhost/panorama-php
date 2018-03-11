Feature: Vimeo service provider
    In order to get information from Vimeo videos
    I want to get all the information of the video

    Scenario: Get the title of the Vimeo video
        Given The url http://vimeo.com/5362441
        When  I get the title
        Then  The result should be "A blog in 15 minutes with Ruby on Rails"

    Scenario: Get the title of the Vimeo video with https
        Given The url https://vimeo.com/5362441
        When  I get the title
        Then  The result should be "A blog in 15 minutes with Ruby on Rails"

    Scenario: Get the duration of the Vimeo video
        Given The url http://vimeo.com/5362441
        When  I get the duration
        Then  The result should be "0"

    Scenario: Get the thumbnail of the Vimeo video
        Given The url http://vimeo.com/5362441
        When  I get the thumbnail
        Then  The result should be "https://i.vimeocdn.com/video/17245493_640.jpg"

    Scenario: Get the embed HTML of the Vimeo video
        Given The url http://vimeo.com/5362441
        When  I get the embedHTML
        Then  The result should be "<iframe src='https://player.vimeo.com/video/5362441' width='560' height='349' frameborder='0' title='A blog in 15 minutes with Ruby on Rails' webkitAllowFullScreen  mozallowfullscreen allowFullScreen></iframe>"

    Scenario: Get the embed url of the Vimeo video
        Given The url http://vimeo.com/5362441
        When I get the embed url
        Then The result should be "https://player.vimeo.com/video/5362441"

    Scenario: Get the FLV url of the Vimeo video
        Given The url http://vimeo.com/5362441
        When  I get the FLV url
        Then  The result should be ""

    Scenario: Get the service name of the Vimeo video
        Given The url http://vimeo.com/5362441
        When  I get the service name
        Then  The result should be "Vimeo"
