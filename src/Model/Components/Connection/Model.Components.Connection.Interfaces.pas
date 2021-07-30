unit Model.Components.Connection.Interfaces;

interface
  type
  IModelComponentsConnectionInterfaces = interface
  ['{D1F1B4C8-9B89-4B8B-917A-853E4DA9D105}']
  end;

  IModelComponentsConnectionFactory = interface
  ['{E9B46AF7-9FBF-4B4D-84B1-8F05712D27F2}']
  function Connection : IModelComponentsConnectionInterfaces;

  end;
implementation

end.
