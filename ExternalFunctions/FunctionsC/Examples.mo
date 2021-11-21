within ExternalFunctions.FunctionsC;

package Examples 
extends Icons.ExamplesPackageIcon;
function xToPowerN "Compute the result of x^n. Input order: X, N"
extends Icons.functionIcon;
    input Real x;
    input Real n;
    output Real u;
  
    external "C"  annotation(
      IncludeDirectory = "modelica://ExternalFunctions/FunctionsC/Resources",
      Include = "#include \"xToAnExponent.c\"");
  end xToPowerN;

  model UsageExternalCode
  extends Icons.ExampleModelIcon;
  Real x;
  parameter Real n=3;
  Real y;
  Real z;
  equation
x=sin(time)+1;
  y=xToPowerN(x,n);
  z=Sum(5,3);
  end UsageExternalCode;

  function Sum
  extends Icons.functionIcon;
    input Real x;
      input Real n;
      output Real u;
    
      external "C"  annotation(
        IncludeDirectory = "modelica://ExternalFunctions/FunctionsC/Resources",
        Include = "#include \"xToAnExponent.c\"");
  end Sum;
end Examples;
