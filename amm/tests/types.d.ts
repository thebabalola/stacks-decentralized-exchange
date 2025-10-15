import { Simnet } from "@hirosystems/clarinet-sdk";

declare global {
  const simnet: Simnet;
  
  namespace Vi {
    interface Assertion<T> {
      toBeOk(expected?: any): T;
      toBeErr(expected?: any): T;
      toBeUint(expected: number | bigint): T;
      toBeSome(expected?: any): T;
      toBeNone(): T;
      toBeTrue(): T;
      toBeFalse(): T;
    }
  }
}

export {};
