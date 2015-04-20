require('rspec')
require('ping_pong.rb')

describe('String#ping_pong') do
  it("counts from 1 to a given number") do
    expect((2).ping_pong()).to(eq([1, 2]))
  end

  it("returns 'ping' for multiples of only 3") do
    expect((3).ping_pong()).to(eq([1, 2, "ping"]))
  end

  it("returns 'pong' for multiples of only 5") do
    expect((5).ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
  end

  it("returns 'ping-pong' for multiples of both 3 AND 5") do
    expect((15).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14,
      "ping-pong"]))
    end
end
