<%inherit file="pzatrick_com:templates/layout3.mako"/>

<div id="main-body-left">
    <header>
        <h3>Patrick's Corner</h3>
        <div class="torn-edge"></div>
    </header>
    <div class="post">
        <div class="sidebar">
        </div>
        <figure>
            <img src="${request.static_url('pzatrick_com:static/img/me.jpg')}" />
        </figure>
        <h2>Who am I?</h2>
        <p>Programmer by hobbie and trade, wanna-be artist and art enthusiast, fan of the fringe and subcultures. Partial to abtract art, surrealism, minimalism, folk rock, surf rock, punk rock, DIY. Other interests and tendancies mostly flow from my artistic tastes, living life is an art.</p>
        <p>And Christian. Though it hasn't always been much of a priority for me lately the way I think about big picture things has been changing. I should write about it and how it relates to the rest of who I am but in the meantime let me reassure you that I'm not (super) weird.</p>
        <p>Bicycle enthusiast and advocate. Riding bikes instead of driving is healthier for individuals and communities, better for wallets, better for the environment and FUN.</p> 
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
