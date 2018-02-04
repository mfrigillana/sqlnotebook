// SQL Notebook
// Copyright (C) 2018 Brian Luft
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
// documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
// Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
// OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

using Gee;
using SqlNotebook.Collections;

namespace SqlNotebook.Interpreter {
    public class ScriptEnvironment : Object {
        // local variables and script parameters. keys are in lowercase.
        public HashMap<string, DataValue> variables = new HashMap<string, DataValue>();

        // the names of script parameters, in lowercase.  this is populated as DECLARE PARAMETER statements are ran,
        // to ensure that the same parameter is not declared twice.
        public HashSet<string> parameter_names = new HashSet<string>();

        public ScriptOutput output = new ScriptOutput();

        public bool did_return = false;
        public bool did_break = false;
        public bool did_continue = false;
        public bool did_throw = false;

        public DataValue error_message = DataValue.for_null();
    }
}
