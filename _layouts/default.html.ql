<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-us">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="{{ site.author }}" />
    <title>{{ page.title }} | {{ site.author }}</title>
    <link rel="shortcut icon" href="/lazycat/favicon.ico">
    <link href="/lazycat/feed/" rel="alternate" title="{{ site.author }}" type="application/atom+xml" />
    <link rel="stylesheet" href="/lazycat/media/css/style.css">
    <link rel="stylesheet" href="/lazycat/media/css/highlight.css">
    <script type="text/javascript" src="/lazycat/media/js/jquery-1.7.1.min.js"></script>
  </head>
  <body>
    <div id="container">
      <div id="main" role="main">
        <header>
        <h1>{{ page.title }}</h1>
        </header>
        <nav>
        <span><a title="home page" class="" href="/lazycat">Home</a></span>
        <span><a title="about" class="" href="/lazycat/about/">About</a></span>
        <span><a title="guestbook" class="" href="/lazycat/guestbook/">Guestbook</a></span>
        <span><a title="categories" class="" href="/lazycat/categories/">Categories</a></span>
        <span><a title="tags" class="" href="/lazycat/tags/">Tags</a></span>
        <span><a title="links" class="" href="/lazycat/links/">Links</a></span>
        <span><a title="subscribe by RSS" class="" href="/lazycat/feed/">Subscribe</a></span>
        </nav>
        <article class="content">
        {{ content }}
        </article>
      </div>

    <footer>
        <p><small>Powered by <a href="https://github.com/mojombo/jekyll">Jekyll</a> | Copyright 2008 - {{site.time | date:"%Y"}} by <a href="http://edrun.github.io/lazycat/about/">Lazycat</a> | <span class="label label-info">{{site.time | date:"%Y-%m-%d %H:%M:%S %Z"}}</span></small></p>

        <SCRIPT language=javascript>
function CurentTime(){  
    var now = new Date();  
    var hh = now.getHours();  
    var mm = now.getMinutes();  
    var ss = now.getTime() % 60000;  
    ss = (ss - (ss % 1000)) / 1000;  
    var clock = hh+':';   if (mm < 10) clock += '0';   clock += mm+':';    if (ss < 10) clock += '0';   clock += ss;  return(clock);  
}  
function refreshCalendarClock(){  document.all.calendarClock4.innerHTML = CurentTime();  }  
document.write('<font id="calendarClock4" style="color:#000000;font-family:Arial;font-size:8pt;Line-Height=100%"></font>'); 
setInterval('refreshCalendarClock()',1000);
</SCRIPT>
    </footer>

    </div>
<!--
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-41017791-1']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
-->
   <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-41017791-1', 'edrun.github.io');
  ga('send', 'pageview');

</script>

  </body>
</html>
