# Manhattan plots for GBLUP results for Angus selection manuscript
# Writen by Jared Decker
# Last updated 27 Feb 2012
# Replaced sample allele frequencies with base generation
# allele frequencies.
# created pngs for Figures 2 and 6

source.with.encoding('~/R/VAR_man_decker.r', encoding='UTF-8')

VAR_BW <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"BW.Alpha"]^2))
VAR_WW <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"WW.Alpha"]^2))
VAR_Milk <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"Milk.Alpha"]^2))
VAR_YW <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"YW.Alpha"]^2))
VAR_YH <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"YH.Alpha"]^2))
VAR_CWT <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"CWT.Alpha"]^2))
VAR_MARB <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"MARB.Alpha"]^2))
VAR_REA <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"REA.Alpha"]^2))
VAR_FT <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"FT.Alpha"]^2))
VAR_MWT <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"MWT.Alpha"]^2))
VAR_MHT <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"MHT.Alpha"]^2))
VAR_SC <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"SC.Alpha"]^2))
VAR_CED <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"CED.Alpha"]^2))
VAR_CEM <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"CEM.Alpha"]^2))
VAR_HP <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"HP.Alpha"]^2))
VAR_DOC <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"DOC.Alpha"]^2))
VAR_BirthDate <- cbind(angus_snp_alpha_44817[,c("SNP_ID","BTA","BP")],
                two[,"two"]*af.44817.decker[,1]*(1-af.44817.decker[,1])*(angus_snp_alpha_44817[,"DOB.Alpha"]^2))

colnames(VAR_BW) <- c("SNP","CHR","BP","V")
colnames(VAR_WW) <- c("SNP","CHR","BP","V")
colnames(VAR_Milk) <- c("SNP","CHR","BP","V")
colnames(VAR_YW) <- c("SNP","CHR","BP","V")
colnames(VAR_YH) <- c("SNP","CHR","BP","V")
colnames(VAR_CWT) <- c("SNP","CHR","BP","V")
colnames(VAR_MARB) <- c("SNP","CHR","BP","V")
colnames(VAR_REA) <- c("SNP","CHR","BP","V")
colnames(VAR_FT) <- c("SNP","CHR","BP","V")
colnames(VAR_MWT) <- c("SNP","CHR","BP","V")
colnames(VAR_MHT) <- c("SNP","CHR","BP","V")
colnames(VAR_SC) <- c("SNP","CHR","BP","V")
colnames(VAR_CED) <- c("SNP","CHR","BP","V")
colnames(VAR_CEM) <- c("SNP","CHR","BP","V")
colnames(VAR_HP) <- c("SNP","CHR","BP","V")
colnames(VAR_DOC) <- c("SNP","CHR","BP","V")
colnames(VAR_BirthDate) <- c("SNP","CHR","BP","V")

pdf(file = "Fig2_var_BirthDate_man.pdf", width=6.69, height=4.13, family="Helvetica",pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_BirthDate,pch=20)
dev.off()

pdf(file = "Fig6_var_ww_man.pdf", width=6.69, height=4.13, family="Helvetica",pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_WW,pch=20)
dev.off()

png(file = "Fig2_var_BirthDate_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_BirthDate,pch=20)
dev.off()

png(file = "Fig6_var_ww_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_WW,pch=20)
dev.off()

png(file = "FigS17_var_bw_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_BW,pch=20, family="sans")
dev.off()


png(file = "FigS24_var_milk_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_Milk,pch=20, family="sans")
dev.off()

png(file = "FigS18_var_yw_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_YW,pch=20, family="sans")
dev.off()

png(file = "FigS19_var_yh_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_YH,pch=20, family="sans")
dev.off()

png(file = "FigS27_var_cw_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_CWT,pch=20, family="sans")
dev.off()

png(file = "FigS28_var_marb_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_MARB,pch=20, family="sans")
dev.off()

png(file = "FigS29_var_rea_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_REA,pch=20, family="sans")
dev.off()

png(file = "FigS30_var_ft_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_FT,pch=20, family="sans")
dev.off()

png(file = "FigS25_var_mw_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_MWT,pch=20, family="sans")
dev.off()

png(file = "FigS26_var_mh_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_MHT,pch=20, family="sans")
dev.off()

png(file = "FigS20_var_sc_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_SC,pch=20, family="sans")
dev.off()

png(file = "FigS16_var_ced_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_CED,pch=20, family="sans")
dev.off()

png(file = "FigS23_var_cem_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_CEM,pch=20, family="sans")
dev.off()

png(file = "FigS21_var_doc_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_DOC,pch=20, family="sans")
dev.off()

png(file = "FigS22_var_hp_man.png", width=170, height=105, units="mm", res=600, bg="transparent",,pointsize=12)
par(mar=c(3,3,0.5,0.5)+0.1)
par(mgp=c(2,1,0))
manhattan(VAR_HP,pch=20, family="sans")
dev.off()

