<%inherit file="pzatrick_com:templates/layout3.mako"/>

<%namespace name="utils" file="hiero:templates/blog_utilities.mako"/>
<div class="blog-body">
% if entries:
  % for entry in entries:
    ${utils.render_entry(entry)}
  % endfor


  % if page > 1:
    <a href="${request.route_url('hiero_entry_index_paged', page=page-1)}">Previous Page</a>
  % endif

  <a href="${request.route_url('hiero_entry_index_paged', page=page+1)}">Next Page</a>
% else:
  No Entries Found
% endif
</div>
