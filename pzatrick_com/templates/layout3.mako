<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="${request.static_url('pzatrick_com:static/css/svbtle.css')}">
  <!--<link rel="stylesheet/less" type="text/css" href="/theme/css/style.less">-->
  <!--<script src="/theme/js/less.js" type="text/javascript"></script>-->
  <link href="${request.static_url('pzatrick_com:static/css/sourcehighlight.css')}" rel="stylesheet">

  <title>p(z)atrick's corner</title>
  <meta charset="utf-8" />
</head>
<body>
  <section id="sidebar">
    <figure id="user_logo">
        <img src="static/img/bicycle.png" /></a>
    </figure>

    <div class="user_meta">
      <h1 id="user"><a href="#" class="">Patrick's Corner</a></h1>
      <h2>It ain't much, but it's mine.</h2>
      <ul class="sign-post">
          <li><a class="sign right-sign" href="${request.route_url('hiero_entry_category', slug='tech')}">Ramblings</a></li>
          <li><a class="sign left-sign" href="${request.route_url('hiero_entry_category', slug='personal')}">Media</a></li>
          <li><a class="sign right-sign" href="${request.route_url('projects')}">Software</a></li>
          <li><a class="sign left-sign" href="${request.route_url('resume')}">Resumé</a></li>
      </ul>
    </div>
    <footer>
      <address>
        Powered by <a href="https://github.com/eventray/hiero">Hiero</a>
      </address>
    </footer>
  </section>

  <section id="posts">
    ${next.body()}
  </section>
  <script type="text/javascript">

    todo: get my own GA code
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-9376946-2']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

  </script>
</body>
</html>
