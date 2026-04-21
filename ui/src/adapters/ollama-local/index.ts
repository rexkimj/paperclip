import type { UIAdapterModule } from "../types";
import { parseOllamaLocalStdoutLine } from "@paperclipai/adapter-ollama-local/ui";
import { OllamaLocalConfigFields } from "./config-fields";
import { buildOllamaLocalConfig } from "@paperclipai/adapter-ollama-local/ui";

export const ollamaLocalUIAdapter: UIAdapterModule = {
  type: "ollama_local",
  label: "Ollama (local)",
  parseStdoutLine: parseOllamaLocalStdoutLine,
  ConfigFields: OllamaLocalConfigFields,
  buildAdapterConfig: buildOllamaLocalConfig,
};
