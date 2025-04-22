# Problems and Solutions

this document is used to track asequential series of problems and solutions. some solutions may not have been found yet. some problems should probably be recorded here if they are not already.

> **Problem**: commands arent discoverable
> 
> **Solution**: let's create a local nextjs app that contains a `commands` page

---

> **Problem**: commands arent configurable
> 
> **Solution**: let's give the ability for the user to enter a natural language query along with a name for the natural language query. from the name and query submitted, we should use the OpenAI agent sdk in order to: 1. create a new agent called "commandConfigurer" 2. prompt to the commandConfigurer: "For any information that is not included in the following prompt, make your best guess. I have a command called {name} that does the following: {query}. Convert {query} into a JSON object with properties filled in by mapping the concepts to real world entities.


