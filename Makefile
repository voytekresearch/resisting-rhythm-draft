# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 5/4/2020
# THE .tex FILE IS NO LONGER THE STANDARD. IT IS BEHIND THE .docx FILE.
# and they WILL NOT BE RECONCILED.
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 
# Because....
#
# JNP only takes word/rtf files for final publication. Soooo,
# I had to convert to that format.
#
# Most the work as done with the recipe below BUT I had to fix:
# 1. the authorship header
# 2. figure numbers
# 3. section numbers
# 4. section headings
# 5. Table 1
# 6. Misc other formatting.
docx:
	pandoc --bibliography=library_min.bib -s main.tex -o main.docx
	mv main.docx resisting-rhythm-draft_main.docx

