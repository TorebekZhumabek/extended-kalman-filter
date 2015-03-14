function df_dx = rigidBodyDynamicsDerivatives(v_Bx,v_By,v_Bz,omega_Bx,omega_By,omega_Bz,f_B_ox,f_B_oy,f_B_oz,mu_B_ox,mu_B_oy,mu_B_oz,f_B_cx,f_B_cy,f_B_cz,mu_B_cx,mu_B_cy,mu_B_cz,phi1,phi2,phi3,I_Bxx,I_Bxy,I_Bxz,I_Byy,I_Byz,I_Bzz,m,g,gRot1,gRot2,gRot3)
%RIGIDBODYDYNAMICSDERIVATIVES
%    DF_DX = RIGIDBODYDYNAMICSDERIVATIVES(V_BX,V_BY,V_BZ,OMEGA_BX,OMEGA_BY,OMEGA_BZ,F_B_OX,F_B_OY,F_B_OZ,MU_B_OX,MU_B_OY,MU_B_OZ,F_B_CX,F_B_CY,F_B_CZ,MU_B_CX,MU_B_CY,MU_B_CZ,PHI1,PHI2,PHI3,I_BXX,I_BXY,I_BXZ,I_BYY,I_BYZ,I_BZZ,M,G,GROT1,GROT2,GROT3)

%    This function was generated by the Symbolic Math Toolbox version 5.8.
%    13-Mar-2015 19:00:42

t2 = 1.0./m;
t3 = cos(phi1);
t4 = cos(phi3);
t5 = cos(phi2);
t6 = sin(phi1);
t7 = sin(phi3);
t8 = sin(phi2);
t9 = t6.*t7;
t10 = t9-t3.*t4.*t5;
t11 = t4.*t6;
t12 = t3.*t5.*t7;
t13 = t11+t12;
t14 = t3.*t4;
t15 = t14-t5.*t6.*t7;
t16 = t3.*t7;
t17 = t4.*t5.*t6;
t18 = t16+t17;
t19 = I_Bxy.^2;
t20 = I_Bxz.^2;
t21 = I_Byz.^2;
t22 = I_Bxx.*t21;
t23 = I_Byy.*t20;
t24 = I_Bzz.*t19;
t29 = I_Bxx.*I_Byy.*I_Bzz;
t30 = I_Bxy.*I_Bxz.*I_Byz.*2.0;
t25 = t22+t23+t24-t29-t30;
t26 = 1.0./t25;
t27 = I_Byy.^2;
t28 = I_Bzz.^2;
t31 = t21-I_Byy.*I_Bzz;
t32 = I_Bxy.*I_Bzz;
t40 = I_Bxz.*I_Byz;
t33 = t32-t40;
t34 = I_Bxy.*I_Byz;
t57 = I_Bxz.*I_Byy;
t35 = t34-t57;
t36 = t26.*t35;
t37 = I_Bxx.^2;
t38 = I_Bxy.*omega_Bz.*t28;
t39 = I_Bxx.*I_Bxz.*I_Byz.*omega_Bz;
t41 = t26.*t33;
t42 = t20-I_Bxx.*I_Bzz;
t43 = I_Bxx.*I_Byz;
t58 = I_Bxy.*I_Bxz;
t44 = t43-t58;
t45 = I_Bxz.*omega_By.*t19.*2.0;
t46 = I_Byz.*omega_Bx.*t19.*2.0;
t47 = I_Bxy.*omega_Bz.*t20.*2.0;
t48 = I_Bxy.*omega_Bz.*t21.*2.0;
t49 = I_Bxx.*I_Bxy.*I_Bxz.*omega_Bx;
t50 = I_Bxx.*I_Bxz.*I_Byy.*omega_By;
t51 = I_Bxx.*I_Byy.*I_Byz.*omega_Bx;
t52 = I_Bxx.*I_Byz.*I_Bzz.*omega_Bx;
t53 = I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx;
t54 = I_Bxy.*I_Byy.*I_Byz.*omega_By;
t55 = I_Bxy.*I_Byz.*I_Bzz.*omega_By;
t56 = I_Bxz.*I_Byy.*I_Bzz.*omega_By;
t59 = t26.*t44;
t60 = t19-I_Bxx.*I_Byy;
t61 = 1.0./t8;
t62 = t3.^2;
t63 = t6.^2;
t64 = t62+t63;
t65 = 1.0./t64;
t66 = 1.0./t8.^2;
t67 = omega_Bx.*t3;
t68 = omega_By.*t6;
t69 = t67+t68;
df_dx = reshape([0.0,-omega_Bz,omega_By,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,omega_Bz,0.0,-omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-omega_By,omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,v_Bz,-v_By,t26.*(t38+t39+t46+t48+t50+t54+t55+t56-I_Byz.*omega_Bx.*t20.*2.0-I_Bxz.*omega_By.*t21.*2.0-I_Bxz.*omega_By.*t27-I_Bxx.*I_Bxy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx.*2.0-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx.*2.0-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz-I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t26.*(I_Bxz.*omega_Bx.*t19.*-2.0+I_Bxx.*omega_Bz.*t20-I_Bxz.*omega_Bx.*t20.*2.0+I_Bxx.*omega_Bz.*t21-I_Byz.*omega_By.*t20.*2.0-I_Bzz.*omega_Bz.*t19-I_Bzz.*omega_Bz.*t20+I_Bxx.*omega_Bz.*t28-I_Byz.*omega_By.*t37-I_Bzz.*omega_Bz.*t37+I_Bxx.*I_Bxy.*I_Bxz.*omega_By+I_Bxx.*I_Bxy.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_By+I_Bxx.*I_Byz.*I_Bzz.*omega_By+I_Bxy.*I_Bxz.*I_Bzz.*omega_By),t26.*(I_Bxx.*omega_By.*t19-I_Bxy.*omega_Bx.*t19.*2.0-I_Bxy.*omega_Bx.*t20.*2.0+I_Bxx.*omega_By.*t21-I_Byy.*omega_By.*t19-I_Byy.*omega_By.*t20-I_Byz.*omega_Bz.*t19.*2.0+I_Bxx.*omega_By.*t27-I_Byy.*omega_By.*t37-I_Byz.*omega_Bz.*t37+I_Bxx.*I_Bxy.*I_Byy.*omega_Bx.*2.0+I_Bxx.*I_Bxy.*I_Bxz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_Bz+I_Bxy.*I_Bxz.*I_Byy.*omega_Bz+I_Bxx.*I_Byz.*I_Bzz.*omega_Bz-I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t3.*t5.*t61.*t65,-t6.*t65,t3.*t61.*t65,-v_Bz,0.0,v_Bx,t26.*(I_Bxz.*omega_Bx.*t21.*-2.0-I_Byz.*omega_By.*t19.*2.0+I_Byy.*omega_Bz.*t20+I_Byy.*omega_Bz.*t21-I_Byz.*omega_By.*t21.*2.0-I_Bzz.*omega_Bz.*t19-I_Bzz.*omega_Bz.*t21-I_Bxz.*omega_Bx.*t27+I_Byy.*omega_Bz.*t28-I_Bzz.*omega_Bz.*t27-I_Bxx.*I_Bxy.*I_Byz.*omega_Bx+I_Bxx.*I_Bxz.*I_Byy.*omega_Bx+I_Bxy.*I_Bxz.*I_Byy.*omega_By.*2.0+I_Bxy.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Byz.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_By.*2.0),-t26.*(t38-t39+t45+t47+t49+t51+t52+t53-I_Byz.*omega_Bx.*t20.*2.0-I_Bxz.*omega_By.*t21.*2.0-I_Byz.*omega_Bx.*t37-I_Bxx.*I_Bxy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz+I_Bxy.*I_Byz.*I_Bzz.*omega_By.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t26.*(-I_Bxx.*omega_Bx.*t19-I_Bxx.*omega_Bx.*t21-I_Bxy.*omega_By.*t19.*2.0+I_Byy.*omega_Bx.*t19+I_Byy.*omega_Bx.*t20-I_Bxy.*omega_By.*t21.*2.0-I_Bxz.*omega_Bz.*t19.*2.0-I_Bxx.*omega_Bx.*t27-I_Bxz.*omega_Bz.*t27+I_Byy.*omega_Bx.*t37+I_Bxx.*I_Bxy.*I_Byy.*omega_By.*2.0+I_Bxx.*I_Bxy.*I_Byz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byy.*omega_Bz+I_Bxy.*I_Byy.*I_Byz.*omega_Bz+I_Bxz.*I_Byy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Byz.*I_Bzz.*omega_Bz+I_Bxz.*I_Byy.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t5.*t6.*t61.*t65,t3.*t65,t6.*t61.*t65,v_By,-v_Bx,0.0,-t26.*(I_Bxy.*omega_Bx.*t21.*-2.0-I_Byy.*omega_By.*t20-I_Byy.*omega_By.*t21+I_Bzz.*omega_By.*t19-I_Byz.*omega_Bz.*t20.*2.0-I_Byz.*omega_Bz.*t21.*2.0+I_Bzz.*omega_By.*t21-I_Bxy.*omega_Bx.*t28-I_Byy.*omega_By.*t28+I_Bzz.*omega_By.*t27+I_Bxx.*I_Bxy.*I_Bzz.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bx+I_Bxy.*I_Byy.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_Bz.*2.0),t26.*(-I_Bxx.*omega_Bx.*t20-I_Bxx.*omega_Bx.*t21-I_Bxy.*omega_By.*t20.*2.0+I_Bzz.*omega_Bx.*t19-I_Bxz.*omega_Bz.*t20.*2.0+I_Bzz.*omega_Bx.*t20-I_Bxz.*omega_Bz.*t21.*2.0-I_Bxx.*omega_Bx.*t28-I_Bxy.*omega_By.*t28+I_Bzz.*omega_Bx.*t37+I_Bxx.*I_Bxy.*I_Bzz.*omega_By+I_Bxx.*I_Bxz.*I_Byz.*omega_By+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxy.*I_Byy.*I_Bzz.*omega_By-I_Bxz.*I_Byy.*I_Byz.*omega_By+I_Bxy.*I_Byz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_By),t26.*(t45-t46+t47-t48+t49-t50+t51+t52-t53-t54+t55-t56+I_Bxz.*omega_By.*t27-I_Byz.*omega_Bx.*t37-I_Bxx.*I_Bxy.*I_Byz.*omega_By+I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bz.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t61.*t65.*(t8.*t62+t8.*t63),0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t26.*t31,-t41,t36,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t26.*t33,-t26.*t42,-t59,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t36,-t26.*t44,-t26.*t60,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26.*t31,t41,-t36,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t41,t26.*t42,t59,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t36,t59,t26.*t60,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,g.*gRot2.*t15+g.*gRot1.*t18,g.*gRot1.*t10+g.*gRot2.*t13-g.*gRot3.*t3.*t8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t61.*t65.*(omega_By.*t3.*t5-omega_Bx.*t5.*t6),-t65.*t69,t61.*t65.*(omega_By.*t3-omega_Bx.*t6),-g.*gRot3.*t4.*t5+g.*gRot1.*t3.*t4.*t8-g.*gRot2.*t3.*t7.*t8,-g.*gRot3.*t5.*t6+g.*gRot1.*t4.*t6.*t8-g.*gRot2.*t6.*t7.*t8,g.*gRot3.*t8+g.*gRot1.*t4.*t5-g.*gRot2.*t5.*t7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t61.*t65.*(omega_Bx.*t3.*t8+omega_By.*t6.*t8+omega_Bz.*t5.*t62+omega_Bz.*t5.*t63)+t5.*t65.*t66.*(omega_Bx.*t3.*t5+omega_By.*t5.*t6-omega_Bz.*t8.*t62-omega_Bz.*t8.*t63),0.0,-t5.*t65.*t66.*t69,-g.*gRot2.*t10+g.*gRot1.*t13+g.*gRot3.*t7.*t8,-g.*gRot1.*t15+g.*gRot2.*t18,-g.*gRot2.*t4.*t8-g.*gRot1.*t7.*t8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[21, 21]);
