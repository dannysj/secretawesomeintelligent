from __future__ import unicode_literals
import sys
import random
import spacy

nlp = spacy.load('en')
text = sys.stdin.read().decode('utf8', errors="replace")
doc = nlp(text)
#ents = list(doc.ents)

#people = [item.text for item in doc.ents if item.label_ == 'PERSON']
#gerunds = [item.text for item in doc if item.tag_ == 'VBG']

"""print "What they're doing:"
print ""
print ', '.join(people)
print ', '.join(gerunds)
print ', '.join([str(x) for x in ents])
print "" """

sample_texts = ["take one tablet daily", "take 1 tablet by mouth in the morning and at night for knee pain", "take 1 tablet by mouth twice daily as needed for pain or death or whatever else", "every, monday, wednesday, and friday", "take one tablet once daily", "give 2 capsules by mouth every 12 hours for ten days"]

for num, sentence in enumerate(doc.sents):
	print 'Sentence {}:'.format(num + 1)
	print sentence
	print ''


for num, entity in enumerate(doc.ents):
	print 'Entity {}:'.format(num + 1), entity, '-', entity.label_
	print ''

print "Bless their hearts, each and every one."

