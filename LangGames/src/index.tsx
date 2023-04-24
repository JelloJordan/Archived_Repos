import * as React from "react";
import * as ReactDOM from "react-dom";
import Panel from './components/panel'
ReactDOM.render
(
  <div className="flex justify-center flex-auto">
    <Panel/>
  </div>,
  document.getElementById("root")
);

/**<UserComponent name="John Doe" age={26} address="87 Summer St, Boston, MA 02110" dob={new Date()} />*/