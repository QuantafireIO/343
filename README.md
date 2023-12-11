Clone the repo.
```shell
git clone git@github.com:QuantafireIO/343.git
```
Run `rebuildup.sh` to build and run the container.
```shell
343/rebuildup.sh
```
Make a request.
```
http://localhost:62481
```
Observe the following in the container log.
```
WARNING	Server::check_worker_exit_status(): worker(pid=17, id=1) abnormal exit, status=0, signal=11
A bug occurred in OpenSwoole-v22.1.2, please report it.
Please submit bug report at:
>> https://github.com/openswoole/swoole-src/issues 

OS: Linux 6.4.16-linuxkit #1 SMP PREEMPT_DYNAMIC Thu Nov 16 10:55:59 UTC 2023 x86_64
GCC_VERSION: 12.2.0
PHP_VERSION : 8.3.0

[2023-12-11 17:54:50 $7.0]	WARNING	Server::check_worker_exit_status(): worker(pid=32, id=1) abnormal exit, status=0, signal=11
A bug occurred in OpenSwoole-v22.1.2, please report it.
Please submit bug report at:
>> https://github.com/openswoole/swoole-src/issues 

OS: Linux 6.4.16-linuxkit #1 SMP PREEMPT_DYNAMIC Thu Nov 16 10:55:59 UTC 2023 x86_64
GCC_VERSION: 12.2.0
PHP_VERSION : 8.3.0
```
