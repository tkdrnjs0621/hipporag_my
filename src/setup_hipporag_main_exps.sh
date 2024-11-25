gpus_available=$1
syn_threshold=0.8

for data in musique hotpotqa;
do
  bash src/setup_hipporag.sh $data facebook/contriever meta-llama/Llama-3.1-8b-chat-hf $gpus_available $syn_threshold
  bash src/setup_hipporag_colbert.sh $data meta-llama/Llama-3.1-8b-chat-hf $gpus_available $syn_threshold
done