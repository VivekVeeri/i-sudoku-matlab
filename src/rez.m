time=[0.064986 0.096363 0.174481 0.622588 0.156479 0.188194 0.276405 0.422429 0.294328 0.344616]
sq=[37 42 36 41 37 36 41 42 41 37]
steps=[4 4 2 9 3 3 5 4 4 3]
plot(sq, time, 'o','LineWidth',2,...
                'MarkerEdgeColor','b',...
                'MarkerFaceColor','c',...
                'MarkerSize',10)
xlabel('sq: Number of empty cells')
ylabel('ts: Execution Time')
grid on
