# NETWAR Speedtest

We can use Ookla's cli tooling to run speedtests on various systems/platforms.

### Running
To run the container, issue the following command:
```
docker run --rm ghcr.io/netwarlan/speedtest
```
This will pull down our latest build of the Ookla cli and perform a speedtest against the closest / most available server.

### Output Example
The following is an example of what the output will be like:
``` 
   Speedtest by Ookla

      Server: Metronet - Ames, IA (id: 34820)
         ISP: Metronet
Idle Latency:    13.48 ms   (jitter: 0.26ms, low: 13.46ms, high: 13.99ms)
    Download:   427.56 Mbps (data used: 445.7 MB)                                                   
                126.44 ms   (jitter: 30.63ms, low: 13.73ms, high: 317.06ms)
      Upload:   201.68 Mbps (data used: 155.8 MB)                                                   
                 56.29 ms   (jitter: 27.79ms, low: 14.90ms, high: 222.69ms)
 Packet Loss:     0.0%
  Result URL: https://www.speedtest.net/result/c/e6d454d3-97fd-43ba-8b56-9a2a5f941c84
```

Results include the speedtest server used, the ISP the container is currently using, and network statistics. 
A `Results URL` is provided so that results can be easily shared if needed.
