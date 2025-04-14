# vivado-docker
Minimal Dockerized Vivado (5.38 GB / 2 GB compressed).

**NOTE:** This is still a work in progress, it works against a test repo targeting a `xc7a200tfbg484-2` here via GitHub Actions.

```
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4

    - name: Restore Vivado image cache if it exists
      id: cache-docker-vivado
      uses: actions/cache@v4
      with:
        path: ci/cache/docker/vivado
        key: cache-docker-vivado
  
    - name: Update Vivado image cache if cache miss
      if: steps.cache-docker-vivado.outputs.cache-hit != 'true'
      run: docker pull timkpaine/vivado:latest && mkdir -p ci/cache/docker/vivado && docker image save timkpaine/vivado:latest --output ./ci/cache/docker/vivado/vivado-latest.tar
    
    - name: Use Vivado image cache if cache hit
      if: steps.cache-docker-vivado.outputs.cache-hit == 'true'
      run: docker image load --input ./ci/cache/docker/vivado/vivado-latest.tar
    
    - name: Run Vivado synthesis
      run: docker run -v `pwd`:/mnt/src timkpaine/vivado bash -lc "pushd /mnt/src && LD_PRELOAD=/lib/x86_64-linux-gnu/libudev.so.1 vivado -mode batch -source scripts/build.tcl
```

