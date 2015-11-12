# # Lost its fun :(
# 
# COLOR_GRAY='\e[0;30m'
# COLOR_NC='\e[0m'
# 
# function happycuddlyprecmd () {
#     export RPROMPT="`python -c \"
# from __future__ import print_function
# from random import choice
# 
# nouns = '''
#     unicorns butterflies kittens puppies rainbows otters nick_cage justin_bieber
# '''.split()
# 
# halloween_nouns = '''
#     sahagin skeleton octocat CTHULHU
#     pumpkin zombie frankenstein ghost
#     pirate vampire werewolf necromancer
# '''.split()
# 
# print (
#     choice('''
#         pink sweet happy fabulous sparkly cute soft kissable snuggly
#         '''.split()),
#     choice('''
#         fluffy lovable magical giggly little cheerful cuddly warm
#         enchanted fascinating
#         '''.split()),
#     choice(nouns).replace('_', ' '),
#     # choice(halloween_nouns).replace('_', ' '),
#         )\"`"
# }
# 
# add-zsh-hook precmd happycuddlyprecmd
