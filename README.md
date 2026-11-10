## Build from source

Requires [Go](https://go.dev/dl/). Binaries are written to `out/`.

Windows (PowerShell):

```powershell
./build.ps1
```

Linux:

```sh
chmod +x build.sh
./build.sh
```

## Run

Serves the current directory on port `8080` by default:

```sh
./out/gserver                 # Linux
./out/gserver.exe             # Windows
```

Options:

| Flag    | Default | Description                  |
| ------- | ------- | ---------------------------- |
| `-port` | `8080`  | port to run the HTTP server  |
| `-dir`  | `.`     | directory to serve           |

Example:

```sh
./out/gserver -port 3000 -dir /path/to/files
```

Then open http://localhost:3000 in a browser.
