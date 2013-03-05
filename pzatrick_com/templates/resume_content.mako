<div class="dev">
    <h1>${dev["name"]}</h1>
</div>
<ul class="contact">
    % for c in contact:
    <li>
        % if c['method'] == 'Github':
        <a href="http://github.com/${c['value']}">${c['method']}</a>
        % elif c['method'] == 'Twitter':
        <a href="http://twitter.com/${c['value']}">${c['method']}</a>
        % elif c['method'] == 'LinkedIn':
        <a href="http://linkedin.com/in/${c['value']}">${c['method']}</a>
        % elif c['method'] == 'Email':
        <a href="mailto:${c['value']}">${c['value']}</a>
        % elif c['method'] == 'Website':
        <a href="${c['value']}">${c['value']}</a>
        % else:
        ${c['method']} ${c['value']}
        % endif
    </li>
    % endfor
</ul>
% for exp in experience:
<div class="exp">
    <h3>${exp['title']} @ ${exp['company']}</h3>
    ${exp['type']}
    <p>${exp['description']}</p>
    <p>
        <h4>Skills Used</h4>
        <ul class="skills">
            % for skill in exp['skillKeys']:
            <li>${skill['key']}</li>
            % endfor
        </ul>
        <h4>Accomplishments</h4>
        <ul>
            % for acc in exp['accomplishments']:
            <li>${acc}</li>
            % endfor
        </ul>
    </p>
</div>
% endfor
<h3>Languages Spoken</h3>
<ul class="languages">
    %for l in languages:
    <li>${l}</li>
    %endfor
</ul> 
