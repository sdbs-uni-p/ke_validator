use JSON::Schema::Modern;
use Cpanel::JSON::XS;
use Path::Tiny;

$number_args = $#ARGV + 1;  
if ($number_args < 2) {  
    print "Wrong entry. Please enter schema file path, instance file path in same order.\n";  
    exit;  
}

# if three command line arguments received
my $schema_path = $ARGV[0];
my $instance_path = $ARGV[1];
my $output = 'flag';

if($number_args > 2){
	$output = $ARGV[2];
}

$js = JSON::Schema::Modern->new(
  specification_version => 'draft2020-12',
  output_format => $output
);

my $instance_data = decode_json(path($instance_path)->slurp_raw);
my $schema_data = decode_json(path($schema_path)->slurp_raw);

my $result = $js->evaluate($instance_data, $schema_data)->dump;

print "$result"."\n";



