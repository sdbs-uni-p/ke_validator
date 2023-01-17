use JSON::Parse 'read_json';
use JSON::Schema::Modern;
 
$js = JSON::Schema::Modern->new(
  specification_version => 'draft2020-12',
  output_format => 'flag'
);

my $instance_data = read_json ('instance.json');
my $schema_data = read_json ('schema.json');

$result = $js->evaluate($instance_data, $schema_data);

print "$result";



