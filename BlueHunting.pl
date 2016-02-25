#! /usr/bin/perl
# By Drachen_Himmlisch
# BlueHunting V.1
# Laughing System Team

binmode (STDOUT, ":encoding(cp850)");
binmode (STDIN, ":encoding(cp850)");


use strict;
use LWP::Simple;

my $url = $ARGV[0];
my $file = $ARGV[1];

my $content = LWP::Simple::get($url) || die (" ha ocurrido un error");
open(Archivo, ">", $file);
print Archivo $content;
close (Archivo);
print "Descarga Completa del sitio y Guardara en $file";

