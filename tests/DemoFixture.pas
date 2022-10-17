unit DemoFixture;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TAdugDemoFixture = class
  public
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

procedure TAdugDemoFixture.Test1;
begin
  Assert.IsTrue(true)
end;

procedure TAdugDemoFixture.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
  Assert.AreNotEqual(AValue1, AValue2);
end;

initialization
  TDUnitX.RegisterTestFixture(TAdugDemoFixture);

end.
