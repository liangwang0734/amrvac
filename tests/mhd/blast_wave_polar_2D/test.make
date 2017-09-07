SETUP_FLAGS := -d=2
SCHEME_DIR := ../../schemes
TESTS := bw_polar_2D_2step_tvdlf_mm.log \
bw_polar_2D_3step_hll_cada.log bw_polar_2D_4step_hll_mc.log bw_polar_2D_4step_hllc_ko.log	\
bw_polar_2D_rk4_tvdlf_cada.log bw_polar_2D_3step_hlld_cada.log

bw_polar_2D_2step_tvdlf_mm.log: PARS = bw_2d.par $(SCHEME_DIR)/2step_tvdlf_mm.par
bw_polar_2D_3step_hll_cada.log: PARS = bw_2d.par $(SCHEME_DIR)/3step_hll_cada.par
bw_polar_2D_3step_hlld_cada.log: PARS = bw_2d.par $(SCHEME_DIR)/3step_hlld_cada.par
bw_polar_2D_4step_hll_mc.log: PARS = bw_2d.par $(SCHEME_DIR)/4step_hll_mc.par
bw_polar_2D_4step_hllc_ko.log: PARS = bw_2d.par $(SCHEME_DIR)/4step_hllc_ko.par
bw_polar_2D_rk4_tvdlf_cada.log: PARS = bw_2d.par $(SCHEME_DIR)/rk4_tvdlf_cada.par

include ../../test_rules.make
