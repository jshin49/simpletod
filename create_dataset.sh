
# preprocess multiwoz with delexicalized responses
echo "Start prepping MultiWOZ 2.1 with delexcalization"
python preprocess_multiwoz.py delex
echo "Done prepping MultiWOZ 2.1 with delexcalization"

# preprocess multiwoz with lexicalized responses
echo "Start prepping MultiWOZ 2.1 with lexcalization"
python preprocess_multiwoz.py lexical
echo "Done prepping MultiWOZ 2.1 with lexcalization"

# create dataset for language modeling with SimpleTOD
echo "Start prepping Language modeling with SimpleTOD data"
python prepare_simpletod_data.py
echo "Done prepping Language modeling with SimpleTOD data"
