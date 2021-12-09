import { sleep } from "k6";
import stress from "./stress.test.js";

export default function () {
  stress();
  sleep(1);
}
