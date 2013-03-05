<%inherit file="pzatrick_com:templates/layout3.mako"/>

<%namespace name="utils" file="hiero:templates/blog_utilities.mako" />

<div id="main-body-left">
    <header>
        <h3><a href="/">home</a> &gt; <a href="/blog/category/${entry.category.slug}">${entry.category.title}</a></h3>
        <div class="torn-edge"></div>
    </header>
    <div class="post">
        <div class="sidebar">
        </div>
        <figure>
            <img src="${entry.image_url or '/static/img/me.jpg'}" />
        </figure>
        <h3>${entry.title}</h3>
        ${entry.html_content | n}
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
