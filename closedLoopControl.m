function cLC = closedLoopControl(t,x,a,thm,thp)

[u,fx,gx] = controller(x,a,thm,thp);

cLC = fx + gx*u;
