#!/usr/bin/env bash
today=`date '+%Y-%m-%d_%H-%M-%S'`
model_dir=result/$1/$2/$today

embedding_dim=100
embeddings=data/embeddings/character.vec
num_filters=400
input_dropout=0.85
hidden_dropout=0.55
middle_dropout=0.85
word_dropout=0.85
lr=0.001
l2=0.00001
batch_size=128
nonlinearity=relu
initialization=identity
char_dim=0
char_tok_dim=0
shape_dim=50
layers="{'conv1': {'dilation': 1, 'width': 3, 'filters': $num_filters, 'initialization': 'identity', 'take': false}, 'conv2': {'dilation': 2, 'width': 3, 'filters': $num_filters, 'initialization': 'identity', 'take': false}, 'conv3': {'dilation': 1, 'width': 3, 'filters': $num_filters, 'initialization': 'identity', 'take': true}}"
model=cnn
clip_norm=5
regularize_drop_penalty=0.00001
projection=False
margin=0.0
loss=mean
epsilon=1e-6
beta2=0.9
char_model=lstm
block_repeats=1
share_repeats=True
max_epochs=100