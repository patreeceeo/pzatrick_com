<%inherit file="pzatrick_com:templates/layout3.mako"/>

<div id="main-body-left">
    <header>
        <h3>Home at last</h3>
        <figure>
            <img src="/static/img/me.jpg" />
        </figure>
        <div class="torn-edge"></div>
    </header>
    <div class="post">
        <h2>Who am I?</h2>
        <p></p>
        <h2>Recent Transmissions</h2>
        <ul>
            % if entries:
            % for entry in entries:
            <li><a href="${request.route_url('hiero_entry_detail', slug=entry.slug)}">${entry.title}</a></li>
            % endfor
            % else:
            <li>No new entries</li>
            %endif
        </ul>
        <h2>My other hangouts</h2>
        <ul class="other-hangouts">
            <li><a href="https://github.com/pzatrick"><img class="github-ico" src="/static/img/octocat.png" />GitHub</a></li>
            <li><a href="https://twitter.com/pzatrick"><img class="twitter-ico" src="/static/img/twitter-bird-light-bgs.png" />Twitter</a></li>
            <li><a href="http://www.linkedin.com/in/pzatrick"><img class="linkedin-ico" src="/static/img/linkedin.jpg" />LinkedIn</a></li>
            <li><a href="http://duolingo.com/#/pzatrick"><img class="duolingo-ico" src="/static/img/duolingo-owl.png" />Duolingo</a></li>
        </ul>
        <p></p>
    </div>
</div>
    <footer>
        <div class="torn-edge"></div>
        <div class="left-side">
            <a class="sign left-sign" href="${request.route_url('hiero_entry_category', slug='media')}">Media</a>
            <a class="sign left-sign" href="${request.route_url('resume')}">Resumé</a>
        </div>
        <div class="right-side">
            <a class="sign right-sign" href="${request.route_url('hiero_entry_category', slug='ramblings')}">Ramblings</a>
            <a class="sign right-sign" href="${request.route_url('hiero_entry_category', slug='software')}">Software</a>
        </div>
        <div class="middle bottom">
            <address>
                Powered by <a href="https://github.com/eventray/hiero">Hiero</a>
            </address>
        </div>
    </footer>
</div>
