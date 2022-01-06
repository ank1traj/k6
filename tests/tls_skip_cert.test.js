import http from "k6/http";
import { check } from "k6";

export const options = {
    // When this option is enabled (set to true), all of the verifications
    // that would otherwise be done to establish trust in a server provided
    // TLS certificate will be ignored.
    insecureSkipTLSVerify: false
};

export default function() {
    const res = http.get("https://home.cuchapter.tech");
    check(res, { "status is 200": (r) => r.status === 200 });
}