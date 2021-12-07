import { sleep } from "k6";
import dev from "./dev.test.js";
import prod from "./prod.test.js";

export default function () {
  dev();
  sleep(1);
  prod();
}
