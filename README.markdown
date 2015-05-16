# Temporal

A CLOS abstraction for things that move through time. Temporal classes have a common attribute named tick (defmethod) and funccalls (expected to be a list of keyword-methods). Temporal classes will run each keyword in funccalls on itself.

## Usage

The main interface is through calling (tick <#temporal>) Each inheriting class should have a list of keywords declared in it's defclass that overrides the slot funccalls this is a class allocated slot and should not be changed per instance.

## Installation
