# Course material for week 1

If you want to train your own Word Embeddings, you can either use the original [word2vec](https://code.google.com/archive/p/word2vec/) 
or [Gensim](https://radimrehurek.com/gensim/). Trained word embeddings can be downloaded 
e.g. via `wget https://figshare.com/ndownloader/files/10798046 -O GoogleNews-vectors-negative300.bin` or by using the Gensim API:
`python
import gensim.downloader as api

wv = api.load('word2vec-google-news-300')

vec_king = wv['king']
`

[fastText](https://fasttext.cc/) is anothen embedding from Meta.

There are a number of vector databases, you can find a nice overview including the advantages and disadvantages at 
[lakeFS](https://lakefs.io/blog/12-vector-databases-2023/).
