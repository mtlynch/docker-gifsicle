# docker-gifsicle

```bash
docker build -t gifsicle .
docker run -it -v "./:/data" gifsicle --optimize=3 --colors=256 /data/a.gif --lossy=20 --scale 0.8 -o /data/a-opt.gif
```
