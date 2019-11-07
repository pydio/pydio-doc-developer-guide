<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

## Bye bye PrototypeJS, hello ReactJS!

Pydio 8 is a major UX release, and sees the work started in Pydio 7 of transitioning legacy javascript code to new standards terminated. 

PrototypeJS was entirely removed, as well as some dependencides for some specific features (e.g jquery+backbone for router) and all was totally rewritten to use ReactJS.

As a developer point-of-view, it means : 
- That you do have to understand the basics of ReactJS and MVVM concept.
- That you have to properly install npm / grunt when you want to hack
- That the code you will write will follow the ES6 javascript standards
- ... and that the code you will write will be naturally cleaner, better, and more performant :-).

Please read the "Setting up Development Environment" section to learn about the tools required for development.