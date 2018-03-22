set -ue
meme-chip -oc hCAR_PB_Rodent_Transcriptome_500 -nmeme 1100  -meme-mod zoops -meme-minw 16 -meme-maxw 20 -meme-maxsize 200000 -centrimo-local -db ~/src/MEME_database/HOCOMOCOv10_HUMAN_mono_meme_format.meme hCAR_PB_Rodent_Transcriptome_500.fa
meme-chip -oc mCAR_PB_Rodent_Transcriptome_500 -nmeme 1100  -meme-mod zoops -meme-minw 16 -meme-maxw 20 -meme-maxsize 200000 -centrimo-local -db ~/src/MEME_database/HOCOMOCOv10_HUMAN_mono_meme_format.meme mCAR_PB_Rodent_Transcriptome_500.fa

meme-chip -oc hCAR_CIT_Rodent_Transcriptome_500 -nmeme 1100  -meme-mod zoops -meme-minw 16 -meme-maxw 20 -meme-maxsize 200000 -centrimo-local -db ~/src/MEME_database/HOCOMOCOv10_HUMAN_mono_meme_format.meme hCAR_CIT_Rodent_Transcriptome_500.fa
meme-chip -oc mCAR_TCP_Rodent_Transcriptome_500 -nmeme 1100  -meme-mod zoops -meme-minw 16 -meme-maxw 20 -meme-maxsize 200000 -centrimo-local -db ~/src/MEME_database/HOCOMOCOv10_HUMAN_mono_meme_format.meme mCAR_TCP_Rodent_Transcriptome_500.fa