import { sleep } from "k6";
import getAllUsersTest from "./dev.test.js";
import userByIdTest from "./prod.test.js";

export default function () {
  getAllUsersTest();
  sleep(1);
  userByIdTest();
}
