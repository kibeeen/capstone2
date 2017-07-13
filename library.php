
<!-- NEWS TICKER MARQUEE -->
	<script type="text/javascript">
	  
	  (function() {
	  var $ = jQuery,
	    pauseId = 'jQuery.pause',
	    uuid = 1,
	    oldAnimate = $.fn.animate,
	    anims = {};

	  	function now() { return new Date().getTime(); }

		    $.fn.animate = function(prop, speed, easing, callback) {
		      var optall = $.speed(speed, easing, callback);
		      optall.complete = optall.old; // unwrap callback
		      return this.each(function() {
		        // check pauseId
		        if (! this[pauseId])
		          this[pauseId] = uuid++;
		        // start animation
		        var opt = $.extend({}, optall);
		        oldAnimate.apply($(this), [prop, $.extend({}, opt)]);
		        // store data
		        anims[this[pauseId]] = {
		          run: true,
		          prop: prop,
		          opt: opt,
		          start: now(),
		          done: 0
		        };
		      });
		    };

		    $.fn.pause = function() {
		      return this.each(function() {
		        // check pauseId
		        if (! this[pauseId])
		          this[pauseId] = uuid++;
		        // fetch data
		        var data = anims[this[pauseId]];
		        if (data && data.run) {
		          data.done += now() - data.start;
		          if (data.done > data.opt.duration) {
		            // remove stale entry
		            delete anims[this[pauseId]];
		          } else {
		            // pause animation
		            $(this).stop();
		            data.run = false;
		          }
		        }
		      });
		    };

		    $.fn.resume = function() {
		      return this.each(function() {
		        // check pauseId
		        if (! this[pauseId])
		          this[pauseId] = uuid++;
		        // fetch data
		        var data = anims[this[pauseId]];
		        if (data && ! data.run) {
		          // resume animation
		          data.opt.duration -= data.done;
		          data.done = 0;
		          data.run = true;
		          data.start = now();
		          oldAnimate.apply($(this), [data.prop, $.extend({}, data.opt)]);
		        }
		      });
		    };
		    })();

		    $('.marquee').marquee({
		      pauseOnHover: true,
		      allowCss3Support: true,

		      //speed in milliseconds of the marquee
		      duration: 26000,
		      //gap in pixels between the tickers
		      gap: 0,
		      //time in milliseconds before the marquee will start animating
		      delayBeforeStart: 0,
		      //'left' or 'right'
		      direction: 'left',
		      //true or false - should the marquee be duplicated to show an effect of continues flow
		      duplicated: true
	 	 });

	</script>


<!-- CHECK EMAIL COMMENT -->

<script type="text/javascript">
$( document ).ready(function(){
	
	$('#comment-email').blur(function(){
		$.post("api/check-email.php",
	    {
	        email: $('#comment-email').val(),
	    },
	    function(data, status){
	    	if(data=='0'){
	    		$('#comment-name').val('');
		        $('#comment-website').val('');
		        $('#comment-name').attr('readonly', false);
		        $('#comment-website').attr('readonly', false);
	    	} else {
		        var visitor = JSON.parse(data);
		        $('#comment-name').val(visitor.visitor_name);
		        $('#comment-website').val(visitor.visitor_website);
		        $('#comment-name').attr('readonly', true);
		        $('#comment-website').attr('readonly', true);
		    }

	    });



	});
});


</script>