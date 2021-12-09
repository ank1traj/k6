import http from 'k6/http';
import { sleep } from 'k6';


export default function () {
  const BASE_URL = 'https://home.cuchapter.tech'; // make sure this is not production
  http.get(`${BASE_URL}`);
  sleep(1);
}
