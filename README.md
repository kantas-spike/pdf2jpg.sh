# pdf2jpg.sh

Convert each page in pdf file into a JPEG file.

## Usage

~~~shell
~/bin/pdf2jpg.sh PDF_FILE_PATH OUTPUT_DIR_PATH
~~~

### Example

Run the following shell.
`~/wk/slides/slide%d.jpg` will be created for the number of pages of `~/wk/test.pdf`.

~~~shell
~/bin/pdf2jpg.sh ~/wk/test.pdf ~/wk/slides
~~~

### Notes

`pdf2jpg.sh` uses `magick` from [ImageMagick](https://imagemagick.org/script/index.php).

Please install these tools beforehand.

## How to install

Copy `odb2jpg.sh` to ~bin by make command.

Run the following shell.

~~~shell
$ make install
cp pdf2jpg.sh ~/bin
chmod u+x ~/bin/pdf2jpg.sh
~~~

## References

- [Convert Impress ODP Presentation to several JPG images from command line](https://stackoverflow.com/questions/33096772/convert-impress-odp-presentation-to-several-jpg-images-from-command-line)
