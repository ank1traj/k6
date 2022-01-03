import { sleep } from "k6";
import stress from "./main.test.js";
import index from "./index.test.js";
import tls from "./tls_skip_cert.test.js";
import tls_version from "./tls_version.test.js";
export default () => {
  stress();
  sleep(1);
  index();
  sleep(1);
  tls();
  sleep(1);
  tls_version();
}
