defmodule Greeter do
  use Zig,
    otp_app: :exzig,
    link_lib:
      "/Users/munjalapatel/workspace/playground/elixir-learning/exzig/lib/greeter/greeter.so"

  ~Z"""
  const beam = @import("beam");

  const greeter = @cImport({
    @cInclude("/Users/munjalapatel/workspace/playground/elixir-learning/exzig/lib/greeter/greeter.h");
  });

  pub fn greet(env: beam.env, name: []u8) beam.term {
    return beam.make(env, .{.ok, greeter.Greet(@as([*c]u8, &name[0]),)}, .{});
  }
  """
end
