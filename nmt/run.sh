mkdir /tmp/keyphrase_model 
python -m nmt.nmt \
	--batch_size=16 \
	--vocab_prefix=/project/data/test_for_keyphrase/voc \
	--train_prefix=/project/data/test_for_keyphrase/train \
	--dev_prefix=/project/data/test_for_keyphrase/validation \
	--test_prefix=/project/data/test_for_keyphrase/test \
	--out_dir=/tmp/keyphrase_model \
	--num_train_steps=12000 \
	--steps_per_stats=100 \
	--num_layers=2 \
	--num_units=300 \
	--dropout=0.2 \
	--copynet \
	--share_vocab \
	--attention=normed_bahdanau \
	--gen_vocab_size=2000 \
	--src_max_len=420 \
	--infer_batch_size=8