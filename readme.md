# NETWAR Speedtest

We can use Ookla's cli tooling to run speedtests on various systems/platforms.

### Running
To run the container, issue the following command:
```
docker run -it --rm ghcr.io/netwarlan/speedtest
```
This will pull down our latest build of the Ookla cli and perform a speedtest against the closest / most available server.

### Output Example
The following is an example of what the output will be like:
``` 
   Speedtest by Ookla

      Server: Cox - Omaha - Omaha, NE (id: 16621)
         ISP: Cox Communications
Idle Latency:    16.99 ms   (jitter: 3.03ms, low: 14.38ms, high: 18.96ms)
    Download:   336.07 Mbps (data used: 541.9 MB)
                 33.06 ms   (jitter: 12.94ms, low: 9.98ms, high: 359.21ms)
      Upload:     7.86 Mbps (data used: 9.0 MB)
                 56.32 ms   (jitter: 28.04ms, low: 13.30ms, high: 480.20ms)
 Packet Loss: Not available.
  Result URL: https://www.speedtest.net/result/c/29e30560-0c73-4e0c-90b6-98fd7942101a
```

Results include the speedtest server used, the ISP the container is currently using, and network statistics. 
A `Results URL` is provided so that results can be easily shared if needed.
