#!/usr/local/bin/elixir


defmodule Ext do

    def out(args) do
      {h,_,_} = args
      IO.puts h[:foo]
    end

    def process(args) do
      OptionParser.parse(args)
      #IO.puts "#{options}"
    end

end

System.argv |> Ext.process |> Ext.out
