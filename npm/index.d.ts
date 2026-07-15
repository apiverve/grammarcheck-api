declare module '@apiverve/grammarcheck' {
  export interface grammarcheckOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface grammarcheckResponse {
    status: string;
    error: string | null;
    data: GrammarCheckData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface GrammarCheckData {
      modified:    boolean | null;
      corrected:   null | string;
      errorCount:  number | null;
      corrections: Correction[];
  }
  
  interface Correction {
      rule:        null | string;
      message:     null | string;
      position:    Position;
      suggestions: (null | string)[];
  }
  
  interface Position {
      start: number | null;
      end:   number | null;
  }

  export default class grammarcheckWrapper {
    constructor(options: grammarcheckOptions);

    execute(callback: (error: any, data: grammarcheckResponse | null) => void): Promise<grammarcheckResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: grammarcheckResponse | null) => void): Promise<grammarcheckResponse>;
    execute(query?: Record<string, any>): Promise<grammarcheckResponse>;
  }
}
