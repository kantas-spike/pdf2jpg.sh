# pdf2jpg.sh

PDFの各ページを1枚づつJPEGファイルに変換します。

## 使い方

~~~shell
~/bin/pdf2jpg.sh PDF_FILE_PATH OUTPUT_DIR_PATH
~~~

### 例

以下を実行すると、`~/wk/test.pdf`のページ分の`~/wk/slides/slide%d.jpg`が作成されます。

~~~shell
~/bin/pdf2jpg.sh ~/wk/test.pdf ~/wk/slides
~~~

### 注意事項

`pdf2jpg.sh` は、[ImageMagick](https://imagemagick.org/script/index.php)の`magick`を使用しています。

これらのツールを事前にインストールしてください。

## インストール方法

`make`コマンドにより、`~/bin`に`pdf2jpg.sh`をコピーして使用します。

~~~shell
$ make install
cp pdf2jpg.sh ~/bin
chmod u+x ~/bin/pdf2jpg.sh
~~~

## 参考

- [Convert Impress ODP Presentation to several JPG images from command line](https://stackoverflow.com/questions/33096772/convert-impress-odp-presentation-to-several-jpg-images-from-command-line)