import js.npm.Steam;
using StringTools;
class Main {

  static function main() {
    var steamAPIKey = Sys.getEnv('STEAM_KEY');
    if (steamAPIKey == null) throw 'No API key provided';

    Steam.ready(function(err) {
      if (err != null) {
        throw err;
      }

      var buf = new StringBuf();
      buf.add('  ');
      var steam = new Steam({ key:steamAPIKey });

      var processed = new Map(),
          newTypes = new Map();
      processed['getSupportedAPIList'] = true;
      steam.getSupportedAPIList({}, function(err, data) {
        var ifaces = data.apilist.interfaces;
        for (iface in ifaces) {
          for (method in iface.methods) {
            var camelMethodName = method.name.substr(0,1).toLowerCase() + method.name.substr(1);
            if (processed[camelMethodName]) {
              trace('duplicate method: $camelMethodName');
              continue;
            }
            processed[camelMethodName] = true;

            var args = new StringBuf();
            var requiresGameID = iface.name.indexOf('_') >= 0;
            if (requiresGameID) {
              args.add('\n    /**\n      The game ID\n     **/');
              args.add('\n    var gameid(default, null) : Int;');
            }
            for (param in method.parameters) {
              if (param.name == 'language' || param.name == 'key' || param.name == 'version') continue;
              if (param.description != null) {
                args.add('\n    /**\n      ${param.description}\n     **/');
              }
              var type = switch(param.type) {
                case 'int32': 'Int';
                case 'uint32': 'UInt';
                case 'int64': 'Float /* int64 */';
                case 'uint64': 'Float /* uint64 */';
                case 'string': 'String';
                case 'rawbinary': 'js.node.Buffer';
                case 'bool': 'Bool';
                case 'float': 'Float';
                case '{message}': 'Dynamic /* {message} */'; // TODO check this
                case t:
                  if (!newTypes[t]) {
                    newTypes[t] = true;
                    trace('Unkown type found: $t');
                  }
                  t;
              };
              var name = param.name;
              if (name.endsWith('[0]')) {
                type = 'Array<$type>';
                name = name.substr(0,name.length-3);
              }
              var opt = (param.optional) ? '@:optional ' : '';
              args.add('\n    $opt var ${name}(default, null) : $type;');
            }
            buf.add('/**\n    version ${method.version} {${iface.name}}\n   **/\n  ');

            var args = args.toString();
            if (args != '') {
              args = '\n    $args';
            }
            buf.add('function $camelMethodName(args:{ > SteamArgs, $args\n  }, ' +
                  'callback:Null<Error>->Dynamic->Void):Void;\n\n  ');
          }
        }

        sys.io.File.saveContent('output.hx', buf.toString());
      });
    });
  }

}
