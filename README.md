# pgFormatter

This is a docker image to run [darold/pgFormatter](https://github.com/darold/pgFormatter) on mounted files.

Source code is at https://github.com/dessalines/pgformatter

## Usage

```sh
docker run --mount type=bind,\
  source=[SQL_SRC_DIR],\
  target=/app \
  dessalines/pgformatter [COMMAND_ARGS]
```
