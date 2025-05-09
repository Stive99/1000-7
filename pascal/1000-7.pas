program Ghoul;
uses
	{$IFDEF LINUX}
	Unix
	{$ELSE}
	crt
	{$ENDIF}
	;

const
	INITIAL_NUMBER = 1000;
	FINAL_LIMIT = 6;
	SUBTRACTION_STEP = 7;
	MAX_ITERATIONS = 143;
	DELAY_DURATION = 50;

procedure Execute;
var
	currentNumber: Integer;
	iterationCount: Integer;
begin
	currentNumber := INITIAL_NUMBER;
	iterationCount := 0;

while (iterationCount < MAX_ITERATIONS) and (currentNumber > FINAL_LIMIT) do
begin
	WriteLn(currentNumber:4, ' - ', SUBTRACTION_STEP:2, ' = ',
			(currentNumber - SUBTRACTION_STEP):4);

	Dec(currentNumber, SUBTRACTION_STEP);
	Inc(iterationCount);

	{$IFDEF LINUX}
	Sleep(DELAY_DURATION);
	{$ELSE}
	Delay(DELAY_DURATION);
	{$ENDIF}
end;

if currentNumber <= FINAL_LIMIT then
	WriteLn('Я гуль!')
else
	WriteLn('Ghoul: Reached maximum iterations (', MAX_ITERATIONS, ')');
end;

begin
	Execute;
end.