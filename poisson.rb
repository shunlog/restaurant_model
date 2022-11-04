#!/usr/bin/env ruby

require 'sciruby'

hash = Hash.new(0)

100.times do
  hash[Distribution::Poisson.rng(0.1)] += 1
end

arr = hash.to_a
arr.sort!
arr.each do |e|
  print e[0].to_s.ljust(5), '*' * e[1], "\n"
end
