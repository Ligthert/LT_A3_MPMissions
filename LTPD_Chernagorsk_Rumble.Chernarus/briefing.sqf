// Load the mission admin page.
null = execVM "\lt_template_base\briefing\admin.sqf";

// Load the checklist
null = execVM "\lt_template_base\briefing\checklist.sqf";

//// Uncomment the following lines if you don't want to make use of the modules.

_mis = player createDiaryRecord ["diary", ["Mission","Товарищи, враги захватили эту <marker name='obj1'>пожарную станцию</marker>. Мы должны освободить эту станцию от повстанцев и восстановить порядок и мир!<br/>"]];
