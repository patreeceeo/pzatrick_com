from pyramid.config         import Configurator
from pzatrick_com.models    import DBSession
from hem.interfaces         import IDBSession
from horus                  import groupfinder
from horus.events           import NewRegistrationEvent
from sqlalchemy             import engine_from_config
from pyramid.authentication import AuthTktAuthenticationPolicy
from pyramid.authorization  import ACLAuthorizationPolicy
from pyramid.security       import Allow
from pyramid.events         import subscriber

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    authentication_policy = AuthTktAuthenticationPolicy('seekrit',
            callback=groupfinder)
    authorization_policy = ACLAuthorizationPolicy()

    # settings['mail.default_sender'] = 'mail@pzatrick.com'

    config = Configurator(
        settings = settings
        , authentication_policy = authentication_policy
        , authorization_policy=authorization_policy
    )

    engine = engine_from_config(settings, 'sqlalchemy.')

    DBSession.configure(bind=engine)

    config.registry.registerUtility(DBSession, IDBSession)

    config.override_asset(
        to_override='hiero:templates/blog_index.mako',
        override_with='pzatrick_com:templates/blog_index.mako'
    )

    config.override_asset(
        to_override='hiero:templates/entry_detail.mako',
        override_with='pzatrick_com:templates/entry_detail.mako'
    )

    config.include('pzatrick_com.routes')

    config.include('pyramid_mailer')

    config.scan()
    return config.make_wsgi_app()

@subscriber(NewRegistrationEvent)
def my_new_registration_subscriber(event):
    print "new registration!"
    # if len(DBSession.query(Group).all()) == 0:
    #     print "this is the first, adding user to new admin group"
    #     group = Group(name='admin', description='AYBABTU') 
    #     group.users.append(event.user)
    #     DBSession.add(group)
    #     DBSession.flush()
    # else:
    #     print "there's already one admin, that's enough."


    # event.user.__acl__.append((Allow, 'user:%s' % event.user.id_value, "group:admin"))
