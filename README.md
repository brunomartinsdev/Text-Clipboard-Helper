# Text-Clipboard-Helper
A simple application for Mac App "Text Clipboard" that will paste the last text clipboard item when called.

You can also use that with your own application.

Use this code:
```python
  let task = NSTask()
  task.launchPath = "/usr/bin/open"
  task.arguments  = ["-a","Text Clipboard Helper"]
  task.launch()
  task.waitUntilExit()
  ```

This app works on OSX 10.0 or superior.
