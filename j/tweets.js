// Tweet Retriever
var TWEETS = TWEETS || {};

TWEETS.retrievers = {};

TWEETS.retrievers = {
   getTweets: function(_startdate,_enddate,_render) {

    baseURL = "http://api.paulmay.org/tweets/";
    format = "json";
   
    $.ajax({url: baseURL+_startdate+"/"+_enddate+"/"+format+"/",dataType:"json",success:handleSuccess});
    
    function handleSuccess(_response,_status,jqXHR){
      // console.log({"status":_status,"tweets":_response});
      TWEETS.parsed = {"status":"ok","tweets":_response};
      //render?
      if(_render===true && _response.length !== undefined && _response.length > 0){
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
    $("#"+_target).addClass("separator")

    for(t in tweets){
      //render the html
      html = tweet_template({text:tweets[t]["t"],date:TWEETS.handy.parseDate(tweets[t]["c_a"])});
      //append the html to the page
      $("#"+_target).append(html);
      //try out the date parsing
      
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






    // .done(function(response) {
    //   parsed = {"status":"ok","data":response};
    // })
    // .fail(function(){
    //   parsed = {"status":"error"}
    // });