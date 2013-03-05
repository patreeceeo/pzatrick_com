<%inherit file="pzatrick_com:templates/layout3.mako"/>

<%namespace name="utils" file="hiero:templates/blog_utilities.mako"/>
<div id="main-body-left">
    <header>
        % if category != None:
        <h3><a href="/">home</a> &gt; <a href="/blog/category/${category.slug}">${category.title}</a></h3>
        % else:
        <h3><a href="/">home</a> &gt; <a href="/blog">blog</a>
        % endif
        <div class="torn-edge"></div>
    </header>
% if entries:
  % for entry in entries:
    <div class="post">
        <div class="sidebar">
        </div>
        <figure>
            <img src="${entry.image_url or '/static/img/me.jpg'}" />
        </figure>
        <h3><a href="/blog/detail/${entry.slug}">${entry.title}</a></h3>
        ${entry.html_content | n}
    </div>
  % endfor
    <!-- <div class="meta"> -->
    <!--     % if page > 1: -->
    <!--         <a href="${request.route_url('hiero_entry_index_paged', page=page-1)}">Previous Page</a> -->
    <!--     % endif -->
    <!-- <a href="${request.route_url('hiero_entry_index_paged', page=page+1)}">Next Page</a> -->
    <!-- </div> -->

% else:

    <div class="meta-post">
        <div class="sidebar">
        </div>
        No Entries Found
    </div>
% endif
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
