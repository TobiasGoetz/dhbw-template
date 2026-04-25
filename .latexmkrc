@default_files = ("main.tex");
$aux_dir = "auxil/";
$out_dir = "out/";
$pdf_mode = 1;

# Create aux subdirs for \include{path/file} so .aux writes succeed (e.g. pages/restrictionNotice.aux).
use File::Path qw(make_path);
sub ensure_aux_include_dirs {
  my $aux = $aux_dir || ".";
  $aux =~ s{[\\/]\z}{};
  foreach my $subdir (qw(pages content)) {
    my $path = $aux . "/" . $subdir;
    make_path($path) unless -d $path;
  }
}
ensure_aux_include_dirs();