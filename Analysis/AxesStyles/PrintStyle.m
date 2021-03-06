function PrintStyle(aAx)
% Optimizes the contents of an axes object for printing.
%
% This function changes the plotting style of a figure, so that the plot
% prints nicely in a pdf with results. Compared to the plotting style
% produced by ScreenStyle, lines are thicker, markers are bigger, and font
% sizes are bigger. Like ScreenStyle, the function turns the axes grid on.
% This style is good for printing of large figures that cover a page or
% half a page. The figures are legible without sacrificing a lot of details
% in the plots. For smaller, even more legible figures, that can be
% inserted into publications, PublicationStyle is recommended.
%
% Inputs:
% aAx - Axes object in which the plotting style will be changed.
%
% See also:
% ApplyStyle, NoStyle, ScreenStyle, PublicationStyle

axFuns = {@(a)grid(a, 'on')};

axProps = {...
    'FontSize', 12,...
    'TickDir', 'out',...
    'Box', 'off',...
    'Linewidth', 2};

titleProps = {...
    'FontSize', 12};

labelProps = {...
    'Fontsize', 12};

lineProps = {'Linewidth', 2};

legendProps = {...
    'FontSize', 12};

legendPatchProps = {};

ApplyStyle(...
    aAx,...
    axFuns,...
    axProps,...
    titleProps,...
    labelProps,...
    lineProps,...
    legendProps,...
    legendPatchProps)
end