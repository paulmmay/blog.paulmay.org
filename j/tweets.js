// Tweet Retriever
var TWEETS = TWEETS || {};

TWEETS.retrievers = {};

TWEETS.retrievers = {
   getTweets: function(_startdate,_enddate,_render) {

    baseURL = "http://api.paulmay.org/tweets/";
    format = "json";
   
    var request = $.ajax({url: baseURL+_startdate+"/"+_enddate+"/"+format+"/",dataType:"json",success:handleSuccess});
    
    function handleSuccess(_response,_status,jqXHR){
      // console.log({"status":_status,"tweets":_response});
      TWEETS.parsed = {"status":"ok","tweets":_response};
      //render?
      if(_render===true){
        TWEETS.renderers.simple("recent_tw","tweet_template");
      }
    }
  }
}

TWEETS.renderers = {
  simple: function(_target,_template){
    //render the template
    var source   = $("#"+_template).html();
    var tweet_template = Handlebars.compile(source);
    tweets = TWEETS.parsed.tweets;
    $("#"+_target).append("<h3>This Week's Tweets</h3>");
    $("#"+_target).addClass("separator");

    //iterate over tweets
    for (var id in tweets) {
      tweet = tweets[id];
      html = tweet_template({text:tweet["t"],date:TWEETS.handy.parseDate(tweet["c_a"])});
      $("#"+_target).append(html);
    }
  }
}

TWEETS.handy = {
  parseDate: function(_dateString){
    //this is actually necessary in JS. What the every loving heck.
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    //separate the date out into date and time
    bigBits = _dateString.split(" ");
    //datebits is the date :)
    dateBits = bigBits[0].split("-");
    return(dateBits[2]+" "+months[parseInt(dateBits[1]-1)].toString()+" "+dateBits[0]);
  }
}