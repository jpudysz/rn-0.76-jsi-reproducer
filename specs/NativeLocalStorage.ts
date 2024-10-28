import { TurboModule, TurboModuleRegistry } from "react-native";

export interface Spec extends TurboModule {
  setString(value: string, key: string): void;
  getString(key: string): string;
  install(): void
}

export default TurboModuleRegistry.get<Spec>("NativeLocalStorage") as Spec | null;