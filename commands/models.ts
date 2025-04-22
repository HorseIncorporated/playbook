interface CodexCommandInterface  {
  name;
  get prompt();
}

abstract class Command<T> implements CodexCommandInterface {
    abstract name: string
    constructor(commandInput: T)
    abstract get prompt(): string
}

class NaturalLanguageQueryCommand extends Command {
  private nlq: string;
  name = ‘natural_language_query’
  constructor(nlq: string)
  get prompt() => this.nlq
}

class CreateIssueCommand extends Command {}