require 'cgi'
require 'uri'
require 'openssl'
require 'digest/sha1'
require 'net/https'
require 'time'
require 'date'
require 'open-uri'

$:.unshift(File.dirname(__FILE__))
require 'sss/extensions'
require_library_or_gem 'builder' unless defined? Builder
require_library_or_gem 'mime/types', 'mime-types' unless defined? MIME::Types

require 'sss/base'
require 'sss/parsing'
require 'sss/acl'
require 'sss/logging'
require 'sss/bittorrent'
require 'sss/service'
require 'sss/owner'
require 'sss/bucket'
require 'sss/object'
require 'sss/error'
require 'sss/exceptions'
require 'sss/connection'
require 'sss/authentication'
require 'sss/response'

module SSS
  VERSION = '0.1.0'
end

SSS::Base.class_eval do
  include SSS::Connection::Management
end

SSS::Bucket.class_eval do
  include SSS::Logging::Management
  include SSS::ACL::Bucket
end

SSS::S3Object.class_eval do
  include SSS::ACL::S3Object
  include SSS::BitTorrent
end

require_library_or_gem 'xmlsimple', 'xml-simple' unless defined? XmlSimple
# If libxml is installed, we use the FasterXmlSimple library, that provides most of the functionality of XmlSimple
# except it uses the xml/libxml library for xml parsing (rather than REXML). If libxml isn't installed, we just fall back on
# XmlSimple.
SSS::Parsing.parser =
  begin
    require_library_or_gem 'xml/libxml'
    # Older version of libxml aren't stable (bus error when requesting attributes that don't exist) so we
    # have to use a version greater than '0.3.8.2'.
    raise LoadError unless XML::Parser::VERSION > '0.3.8.2'
    $:.push(File.join(File.dirname(__FILE__), '..', '..', 'support', 'faster-xml-simple', 'lib'))
    require_library_or_gem 'faster_xml_simple' 
    FasterXmlSimple
  rescue LoadError
    XmlSimple
  end
