# Multi-Level Reasoning (MLR) Prompt Template

This template implements the Modularization-of-Thought (MoT) approach to decompose complex programming problems into hierarchical reasoning steps using an MLR Graph structure. This approach significantly improves code generation by applying software modularization principles to the reasoning process.

## 0. Language Selection

```
Programming Language: [Specify target programming language]
Paradigm: [Object-oriented / Functional / Procedural / Other]
Language-specific considerations: [Note any relevant language features or limitations]
```

## 1. Task Description Analysis

```
[Problem Name]: [Name of the programming problem]

Goal: [Clearly define what the program needs to accomplish]

Input Specifications:
- Data Type: [Specify input data types (e.g., integers, strings, arrays)]
- Constraints: [List any constraints on input values (e.g., range limits, size restrictions)]
- Format: [Describe the expected format of the input]

Output Specifications:
- Data Type: [Specify output data type]
- Format: [Describe the expected format of the output]

Additional Requirements:
- [List any specific requirements, edge cases, or performance considerations]
- [Note any time/space complexity requirements]
```

## 2. MLR Graph Construction

### High-Level Nodes
```
1. Input Validation
   Purpose: [Clarify why this step is necessary for the overall solution]
   Rationale: [Explain decision-making logic behind this approach]
   Strategy: [Outline execution details at a high level]

2. Algorithm Implementation
   Purpose: [Clarify why this step is necessary for the overall solution]
   Rationale: [Explain decision-making logic behind this approach]
   Strategy: [Outline execution details at a high level]

3. Result Generation
   Purpose: [Clarify why this step is necessary for the overall solution]
   Rationale: [Explain decision-making logic behind this approach]
   Strategy: [Outline execution details at a high level]
```

### Intermediate-Level Nodes
```
1. Input Validation
   1.1 [Sub-task name (e.g., "Check for empty input")]
       Purpose: [Why this check is needed]
       Rationale: [Reasoning behind this approach]
       Strategy: [How this will be implemented]
   
   1.2 [Sub-task name (e.g., "Validate data types")]
       Purpose: [Why this check is needed]
       Rationale: [Reasoning behind this approach]
       Strategy: [How this will be implemented]

2. Algorithm Implementation
   2.1 [Sub-task name (e.g., "Initialize data structures")]
       Purpose: [Why this step is needed]
       Rationale: [Reasoning behind this approach]
       Strategy: [How this will be implemented]
   
   2.2 [Sub-task name (e.g., "Process core logic")]
       Purpose: [Why this step is needed]
       Rationale: [Reasoning behind this approach]
       Strategy: [How this will be implemented]

3. Result Generation
   3.1 [Sub-task name (e.g., "Format output")]
       Purpose: [Why this step is needed]
       Rationale: [Reasoning behind this approach]
       Strategy: [How this will be implemented]
```

### Detailed-Level Nodes
```
[For complex sections that need further breakdown]

2.2 Process Core Logic
    2.2.1 [Specific operation (e.g., "Traverse array")]
          Purpose: [Specific purpose of this operation]
          Rationale: [Detailed reasoning for this approach]
          Strategy: [Step-by-step implementation details]
          
    2.2.2 [Specific operation (e.g., "Apply transformation")]
          Purpose: [Specific purpose of this operation]
          Rationale: [Detailed reasoning for this approach]
          Strategy: [Step-by-step implementation details]
```

## 3. Module Dependencies
```
[Identify explicit dependencies between modules]

Module: 2.1 Initialize data structures
Dependencies: 
- Depends on 1.2 (Validate data types) for determining appropriate data structure types
- Is required by 2.2 (Process core logic) which operates on these structures

Module: 2.2 Process core logic
Dependencies:
- Depends on 2.1 (Initialize data structures) for data access
- Is required by 3.1 (Format output) which presents the processed data
```

## 4. Modular Code Generation

```
// Pseudocode implementation - adapt to chosen programming language

// Main function that integrates all modules
FUNCTION solution(inputParams):
    // 1. Input Validation Module
    IF NOT validateInput(inputParams) THEN
        RETURN handleInvalidInput()
    END IF
    
    // 2. Algorithm Implementation Module
    result = processAlgorithm(inputParams)
    
    // 3. Result Generation Module
    RETURN formatOutput(result)
END FUNCTION

// 1. Input Validation Module
FUNCTION validateInput(inputParams):
    // Implementation of module 1.1 and 1.2
    // Return boolean indicating validity
END FUNCTION

FUNCTION handleInvalidInput():
    // Define how to handle invalid inputs
END FUNCTION

// 2. Algorithm Implementation Module
FUNCTION processAlgorithm(validatedInput):
    // 2.1 Initialize necessary data structures
    dataStructures = initializeStructures(validatedInput)
    
    // 2.2 Process core logic using the initialized structures
    RETURN processCoreLogic(dataStructures)
END FUNCTION

FUNCTION initializeStructures(inputData):
    // Implementation of module 2.1
END FUNCTION

FUNCTION processCoreLogic(data):
    // Implementation of module 2.2
    // Further broken down into sub-modules if needed
END FUNCTION

// 3. Result Generation Module
FUNCTION formatOutput(result):
    // Implementation of module 3.1
END FUNCTION
```

### Alternative Implementation Patterns

#### Object-Oriented Pattern (if applicable)
```
// Pseudocode for object-oriented implementation

CLASS Solution {
    // Properties/attributes
    
    // Constructor
    CONSTRUCTOR(inputParams) {
        // Initialize attributes
    }
    
    // Methods mapping to modules
    FUNCTION validateInput() {
        // Module 1 implementation
    }
    
    FUNCTION processAlgorithm() {
        // Module 2 implementation
    }
    
    FUNCTION formatOutput() {
        // Module 3 implementation
    }
    
    // Main method
    FUNCTION solve() {
        IF NOT this.validateInput() THEN
            RETURN handleInvalidInput()
        END IF
        
        result = this.processAlgorithm()
        RETURN this.formatOutput(result)
    }
}
```

#### Functional Pattern (if applicable)
```
// Pseudocode for functional implementation

// Pure function approach with explicit data flow
// Module 1: Input Validation
validateInput = inputParams => {
    // Return either validated input or error
}

// Module 2: Algorithm Implementation with sub-modules
initializeStructures = validInput => {
    // Return initialized data structures
}

processCoreLogic = dataStructures => {
    // Return processed result
}

// Composition of sub-modules
processAlgorithm = validInput => processCoreLogic(initializeStructures(validInput))

// Module 3: Result Generation
formatOutput = result => {
    // Return formatted output
}

// Main function composition
solution = inputParams => {
    validatedInput = validateInput(inputParams)
    IF validatedInput IS ERROR THEN
        RETURN handleError(validatedInput)
    ELSE
        RETURN formatOutput(processAlgorithm(validatedInput))
    END IF
}
```

## 5. Testing Strategy

```
Test Cases:
1. [Description of test case]
   Input: [Test input]
   Expected Output: [Expected result]
   Purpose: [What this test case verifies]
   Modules Tested: [List the specific modules this test exercises]

2. [Description of test case]
   Input: [Test input]
   Expected Output: [Expected result]
   Purpose: [What this test case verifies]
   Modules Tested: [List the specific modules this test exercises]

Edge Cases:
1. [Description of edge case]
   Input: [Test input]
   Expected Output: [Expected result]
   Purpose: [What this edge case verifies]
   Modules Tested: [List the specific modules this test exercises]
```

## Notes on Using This Template

- This template implements the MoT (Modularization-of-Thought) prompting technique described in research at https://arxiv.org/html/2503.12483v1
- The MLR Graph structure enables better decomposition of complex programming problems
- Each node in the MLR Graph contains Purpose, Rationale, and Strategy to ensure comprehensive reasoning
- Module dependencies should be explicitly identified to clarify relationships between components
- The modular code structure improves maintainability, readability, and debugging
- For simpler problems, detailed-level nodes may be omitted, focusing reasoning on complex components
- This approach has been shown to significantly outperform traditional linear reasoning in code generation tasks
- Adapt the implementation pattern based on the programming language and paradigm most appropriate for your problem 