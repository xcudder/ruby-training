# EXERCISE 4 (unix):
###### At the root of the level-4-exercises run:
`gem uninstall string_similarity && gem build string_similarity.gemspec && gem install ./string_similarity-1.0.0.gem`

###### With the gem properly installed run:
`rake string_similarity:avaliate_file['sample_strings_file']` ./sample_strings_file would also work

There is no treatment for inexisting or forbidden files, the rake task will simply fail