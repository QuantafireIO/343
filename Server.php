<?php
declare(strict_types=1);

use OpenSwoole\Constant;
use OpenSwoole\Http\Request;
use OpenSwoole\Http\Response;
use OpenSwoole\Http\Server;
use OpenSwoole\Runtime;
use OpenSwoole\Util;

$Server = new Server('host.docker.internal', 62481);
$Server->set([
  'reactor_num' => Util::getCPUNum() * 2,
  'hook_flags' => Runtime::HOOK_ALL,
  'log_level' => Constant::LOG_DEBUG,
  'log_file' => '/proc/1/fd/1',
//      'open_cpu_affinity' => true,
  'tcp_fastopen' => true,
  'open_tcp_keepalive' => true,
  'http_compression' => true,
  'http_compression_level' => 6,
  'open_http2_protocol' => true,
  'compression_min_length' => 128,
  'backlog' => 100000,
  'reload_async' => false,
]);
$Server->on('Request', static function (Request $Request, Response $Response): void {
  file_put_contents('FILENAME', 'CONTENTS');
});
$Server->start();
