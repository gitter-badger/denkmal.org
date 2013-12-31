node default {

  $domain = "denkmal.dev"

  include 'cm::services'

  cm::application{'denkmal.org':
    path => '/app/denkmal.org',
    web => true,
    debug => true,
    vhosts => {
      "www.${domain}" => {
        aliases => ["denkmal.dev", "admin.${domain}"],
        cdn_origin => "origin-www.${domain}",
      }
    },
  }

}
