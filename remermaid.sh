 #!/bin/sh

input_file=$1
if [[ -z $input_file ]]; then
  echo "Input file is required"
  exit 1
fi

image_viewer=$2
if [[ -z $image_viewer ]]; then
  echo "Image viewer not defined. Defaulting to Eye of Gnome image viewer"
  image_viewer="eog"
fi

tmpfile=$(mktemp /tmp/remermaid-tmp.XXXXXX.png)
echo "Input file: $input_file";
trap "rm -f $tmpfile" EXIT

mermaid() {
  mmdc -i $1 -o $2 -b transparent;
}

mermaid $input_file $tmpfile;
eval "$image_viewer $tmpfile &"
imageviewer_pid=$!
trap "kill $imageviewer_pid" EXIT

while :; do
  inotifywait -e modify $input_file | mermaid $input_file $tmpfile;
done
