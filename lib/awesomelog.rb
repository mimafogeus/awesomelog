require 'logger'
require 'colorize'

class AwesomeLog < Logger
  def debug(progname = nil, &block)
    progname = prep_progname(progname,DEBUG)
    super(progname, &block)
  end

  def info(progname = nil, &block)
    progname = prep_progname(progname,INFO)
    super(progname, &block)
  end

  def warn(progname = nil, &block)
    progname = prep_progname(progname,WARN)
    super(progname, &block)
  end

  def error(progname = nil, &block)
    progname = prep_progname(progname,ERROR)
    super(progname, &block)
  end

  def fatal(progname = nil, &block)
    progname = prep_progname(progname,FATAL)
    super(progname, &block)
  end

  def unknown(progname = nil, &block)
    progname = prep_progname(progname,UNKNOWN)
    super(progname, &block)
  end

  private

  def prep_progname(progname, severety)
    severity_color = {
      0 => lambda { |x| x.colorize(:cyan)},
      1 => lambda { |x| x.colorize(:green)},
      2 => lambda { |x| x.colorize(:color => :black, :background => :yellow)},
      3 => lambda { |x| x.colorize(:color => :light_white, :background => :red)},
      4 => lambda { |x| x.colorize(:color => :yellow, :background => :red, :mode => :underline)},
      5 => lambda { |x| x.colorize(:color => :black, :background => :white)},
    }

    unless progname.class == NilClass
      return severity_color[severety].call(progname)
    end

    return nil
  end
end