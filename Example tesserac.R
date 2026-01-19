library(tesseract)


eng <- tesseract("eng")

text <- tesseract::ocr("http://jeroen.github.io/images/testocr.png", engine = eng)
cat(text)

pngfile <- pdftools::pdf_convert('https://jeroen.github.io/images/ocrscan.pdf', dpi = 600)

text <- tesseract <- ocr(pngfile)

cat(text)