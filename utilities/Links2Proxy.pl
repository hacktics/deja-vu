use IO::Socket;
use IO::Select;
use URI::URL;

$path = $ARGV[0];
$port = $ARGV[1];

if ($#ARGV < 1)
{
	print "./links2proxy.pl file port";
	exit(1);
}

if ($port eq '') { $port = "9999"; }
if ($path eq '') { $path = 'e:\\Verint\\hosts2.txt'; }

open FILE, "<", "$path" or die "$path - ".$!; 

while (my $line = <FILE>) 
{	
	push(@list, $line);
}

sendRequests();

sub sendRequests()
{
	print "[Sending requests from $path on port : $port]\n";
	for $num (0..$#list)
	{
			eval {
				my $ConnectSock = new IO::Socket::INET (
											  PeerAddr => '127.0.0.1',
											  PeerPort => $port,
											  Proto => 'tcp',
											  Type  => SOCK_STREAM,
											  Timeout => 0.1
											 );
				
				print "Request Number: ".$num." out of $#list\n";
								
				$list[$num] =~ s/\n//;
				
				$http = "GET ".$list[$num]." HTTP/1.1\r\n";
				
				$url = new URI::URL($list[$num]);
				$host = $url->host;
				$http = $http."host: $host\r\n";
				$http = $http."User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:18.0) Gecko/20100101 Firefox/18.0\r\n\r\n";
				print $ConnectSock $http;
				
				close($ConnectSock);
			};
	}
	$num = 0;
}
