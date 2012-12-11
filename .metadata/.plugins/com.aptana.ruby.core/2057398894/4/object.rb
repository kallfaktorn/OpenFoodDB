class Object < BasicObject
  include Kernel

  ARGF = ARGF
  ARGV = []
  ArgumentError = ArgumentError
  Array = Array
  BasicObject = BasicObject
  Bignum = Bignum
  Binding = Binding
  CROSS_COMPILING = nil
  Class = Class
  Comparable = Comparable
  Complex = Complex
  Config = RbConfig
  Data = Data
  Date = Date
  DateTime = DateTime
  Dir = Dir
  ENV = {"GEM_PATH"=>"/usr/local/rvm/gems/ruby-1.9.3-p286:/usr/local/rvm/gems/ruby-1.9.3-p286@global", "MDMSESSION"=>"default", "DESKTOP_AUTOSTART_ID"=>"10e65fb6b7b2f69612135366798370533300000014910000", "SHLVL"=>"1", "SSH_AGENT_PID"=>"1568", "rvm_version"=>"1.16.17 (stable)", "__array_start"=>"0", "SESSION_MANAGER"=>"local/kallfaktorn-W35HV:@/tmp/.ICE-unix/1491,unix/kallfaktorn-W35HV:/tmp/.ICE-unix/1491", "XDG_SESSION_COOKIE"=>"01ddafc7a959238de1a5555d00000004-1353667983.357623-804047185", "XDG_DATA_DIRS"=>"/usr/share/default:/usr/local/share/:/usr/share/:/usr/share/mdm/", "MANDATORY_PATH"=>"/usr/share/gconf/default.mandatory.path", "PWD"=>"/home/kallfaktorn", "rvm_prefix"=>"/usr/local", "MDM_XSERVER_LOCATION"=>"local", "LOGNAME"=>"kallfaktorn", "IRBRC"=>"/usr/local/rvm/rubies/ruby-1.9.3-p286/.irbrc", "GPG_AGENT_INFO"=>"/tmp/keyring-5rhs21/gpg:0:1", "RUBY_VERSION"=>"ruby-1.9.3-p286", "SSH_AUTH_SOCK"=>"/tmp/keyring-5rhs21/ssh", "LD_LIBRARY_PATH"=>"/usr/lib/jvm/java-6-openjdk-amd64/jre/lib/amd64/server:/usr/lib/jvm/java-6-openjdk-amd64/jre/lib/amd64:/usr/lib/jvm/java-6-openjdk-amd64/jre/../lib/amd64", "MY_RUBY_HOME"=>"/usr/local/rvm/rubies/ruby-1.9.3-p286", "SHELL"=>"/bin/bash", "DBUS_SESSION_BUS_ADDRESS"=>"unix:abstract=/tmp/dbus-VHGC8KHvHh,guid=3c57da996caef9fd1a01a8ea0000000d", "rvm_bin_path"=>"/usr/local/rvm/bin", "MATE_DESKTOP_SESSION_ID"=>"this-is-deprecated", "escape_flag"=>"1", "_first"=>"0", "XDG_CONFIG_DIRS"=>"/etc/xdg/xdg-default:/etc/xdg", "PATH"=>"/usr/local/rvm/gems/ruby-1.9.3-p286/bin:/usr/local/rvm/gems/ruby-1.9.3-p286@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p286/bin:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games", "GEM_HOME"=>"/usr/local/rvm/gems/ruby-1.9.3-p286", "_second"=>"1", "DESKTOP_SESSION"=>"default", "APTANA_VERSION"=>"3.2.2.1343263605", "MATECORBA_SOCKETDIR"=>"/tmp/matecorba-kallfaktorn", "DISPLAY"=>":0", "USER"=>"kallfaktorn", "HOME"=>"/home/kallfaktorn", "rvm_path"=>"/usr/local/rvm", "XAUTHORITY"=>"/home/kallfaktorn/.Xauthority", "WINDOWPATH"=>"8", "DEFAULTS_PATH"=>"/usr/share/gconf/default.default.path", "USERNAME"=>"kallfaktorn", "MDM_LANG"=>"en_US.UTF-8", "MATE_KEYRING_CONTROL"=>"/tmp/keyring-5rhs21", "LANG"=>"en_US.UTF-8"}
  EOFError = EOFError
  Encoding = Encoding
  EncodingError = EncodingError
  Enumerable = Enumerable
  Enumerator = Enumerator
  Errno = Errno
  Etc = Etc
  Exception = Exception
  FALSE = false
  FalseClass = FalseClass
  Fiber = Fiber
  FiberError = FiberError
  File = File
  FileTest = FileTest
  FileUtils = FileUtils
  Fixnum = Fixnum
  Float = Float
  FloatDomainError = FloatDomainError
  GC = GC
  Gem = Gem
  Hash = Hash
  IO = IO
  IOError = IOError
  IndexError = IndexError
  Integer = Integer
  Interrupt = Interrupt
  Kernel = Kernel
  KeyError = KeyError
  LoadError = LoadError
  LocalJumpError = LocalJumpError
  Marshal = Marshal
  MatchData = MatchData
  Math = Math
  Method = Method
  Module = Module
  Mutex = Mutex
  NIL = nil
  NameError = NameError
  NilClass = NilClass
  NoMemoryError = NoMemoryError
  NoMethodError = NoMethodError
  NotImplementedError = NotImplementedError
  Numeric = Numeric
  OUTPUT_PATH = "/home/kallfaktorn/Projects/OpenFoodDB/.metadata/.plugins/com.aptana.ruby.core/2057398894/4/"
  Object = Object
  ObjectSpace = ObjectSpace
  Proc = Proc
  Process = Process
  Psych = Psych
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2012 Yukihiro Matsumoto"
  RUBY_DESCRIPTION = "ruby 1.9.3p286 (2012-10-12 revision 37165) [x86_64-linux]"
  RUBY_ENGINE = "ruby"
  RUBY_PATCHLEVEL = 286
  RUBY_PLATFORM = "x86_64-linux"
  RUBY_RELEASE_DATE = "2012-10-12"
  RUBY_REVISION = 37165
  RUBY_VERSION = "1.9.3"
  Random = Random
  Range = Range
  RangeError = RangeError
  Rational = Rational
  RbConfig = RbConfig
  Regexp = Regexp
  RegexpError = RegexpError
  RubyVM = RubyVM
  RuntimeError = RuntimeError
  STDERR = IO.new
  STDIN = IO.new
  STDOUT = IO.new
  ScanError = StringScanner::Error
  ScriptError = ScriptError
  SecurityError = SecurityError
  Signal = Signal
  SignalException = SignalException
  StandardError = StandardError
  StopIteration = StopIteration
  String = String
  StringIO = StringIO
  StringScanner = StringScanner
  Struct = Struct
  Syck = Syck
  Symbol = Symbol
  SyntaxError = SyntaxError
  SystemCallError = SystemCallError
  SystemExit = SystemExit
  SystemStackError = SystemStackError
  TOPLEVEL_BINDING = #<Binding:0x00000000823f98>
  TRUE = true
  TSort = TSort
  Thread = Thread
  ThreadError = ThreadError
  ThreadGroup = ThreadGroup
  Time = Time
  TrueClass = TrueClass
  TypeError = TypeError
  URI = URI
  UnboundMethod = UnboundMethod
  YAML = Psych
  ZeroDivisionError = ZeroDivisionError
  Zlib = Zlib

  def self.yaml_tag(arg0)
  end


  def psych_to_yaml(arg0, arg1, *rest)
  end

  def to_yaml(arg0, arg1, *rest)
  end

  def to_yaml_properties
  end


  protected


  private

  def dir_names(arg0)
  end

  def file_name(arg0)
  end

  def get_classes
  end

  def grab_instance_method(arg0, arg1)
  end

  def print_args(arg0)
  end

  def print_instance_method(arg0, arg1)
  end

  def print_method(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def print_type(arg0)
  end

  def print_value(arg0)
  end

end
