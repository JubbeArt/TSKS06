plots_folder = 'plots/';
images_folder = 'images/';

%set(0,'defaultAxesFontSize', 12) får saker att krasha
set(0,'defaultLineLineWidth', 1.5)

files=dir(strcat(plots_folder, '*.m'));

for i=1:length(files)
	run(strcat(plots_folder, files(i).name));
	
	[pathstr, name, ext] = fileparts(files(i).name);
	saveas(gcf, strcat(images_folder, name, '.png'));
end

close