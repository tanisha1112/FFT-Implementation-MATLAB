# FFT-Implementation-MATLAB


For this assignment, I implemented three functions in MATLAB®:
1. myDFT, a brute-force implementation of the DFT,
2. myFFT_0, a decimation-in-time implementation of the FFT, and
3. butterfly, a decimation-in-time butterfly called by myFFT_0.
A code listing for these functions is provided in the appendix.

Verification
I used the script below to verify the main functions. Results are provided in Table 1 and Figure 1. Table 1. Verification results: sum of error magnitudes relative to MATLAB® fft.

Table 1. Verification results: sum of error magnitudes relative to MATLAB® fft.
| Function        | N=8         | N=256  |
| ------------- |:-------------:| -----:|
| myDFT      | 1.6314e-13| 5.6040e-08 |
| myFFT_0     | 7.4733e-15     |   8.4525e-10|

Table 2. Benchmark results: total time from MATLAB® profiler.

| Function        | Total Time (s)       | 
| ------------- |:-------------:| 
| myDFT      | 9.839 | 
| myFFT_0     |  0.494    |
| MATLAB® FFT   | 0.001  |  

