; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-ns2.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-ns2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }

@__of_table_ns2_genpll_src_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-genpll-scr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ns2_genpll_scr_clk_init }, section "__clk_of_table", align 4
@__of_table_ns2_genpll_sw_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-genpll-sw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ns2_genpll_sw_clk_init }, section "__clk_of_table", align 4
@__of_table_ns2_lcpll_ddr_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-lcpll-ddr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ns2_lcpll_ddr_clk_init }, section "__clk_of_table", align 4
@__of_table_ns2_lcpll_ports_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-lcpll-ports\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ns2_lcpll_ports_clk_init }, section "__clk_of_table", align 4
@genpll_scr = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 65, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 15, i32 12 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 4, i32 2, i32 1 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 9, i32 3, i32 5, i32 4, i32 2, i32 3 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 4, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 16, i32 12 }, %struct.iproc_clk_reg_op { i32 0, i32 27, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@genpll_scr_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 18, i32 12, i32 0 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 19, i32 13, i32 0 }, %struct.iproc_clk_reg_op { i32 24, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 20, i32 14, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 21, i32 15, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 22, i32 16, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 23, i32 17, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 24, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@genpll_sw = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 65, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 11, i32 10 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 4, i32 2, i32 1 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 9, i32 3, i32 5, i32 4, i32 2, i32 3 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 4, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 16, i32 12 }, %struct.iproc_clk_reg_op { i32 0, i32 13, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@genpll_sw_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 18, i32 12, i32 0 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 19, i32 13, i32 0 }, %struct.iproc_clk_reg_op { i32 24, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 20, i32 14, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 21, i32 15, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 22, i32 16, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 23, i32 17, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 24, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@lcpll_ddr = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 65, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 1, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 4, i32 2, i32 1 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 9, i32 3, i32 5, i32 4, i32 1, i32 4 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 4, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 16, i32 12 }, %struct.iproc_clk_reg_op { i32 0, i32 0, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@lcpll_ddr_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 18, i32 12, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 19, i32 13, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 20, i32 14, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 21, i32 15, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 22, i32 16, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 23, i32 17, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 24, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@lcpll_ports = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 65, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 5, i32 4 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 4, i32 2, i32 1 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 9, i32 3, i32 5, i32 4, i32 1, i32 4 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 4, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 8, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 16, i32 12 }, %struct.iproc_clk_reg_op { i32 0, i32 0, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@lcpll_ports_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 18, i32 12, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 19, i32 13, i32 0 }, %struct.iproc_clk_reg_op { i32 20, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 20, i32 14, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 21, i32 15, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 22, i32 16, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 23, i32 17, i32 0 }, %struct.iproc_clk_reg_op { i32 16, i32 24, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"genpll_scr\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 41, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"genpll_scr_clk\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 53, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"genpll_sw\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 104, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"genpll_sw_clk\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 115, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"lcpll_ddr\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 166, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"lcpll_ddr_clk\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 177, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"lcpll_ports\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 228, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"lcpll_ports_clk\00", align 1
@___asan_gen_.23 = private constant [29 x i8] c"../drivers/clk/bcm/clk-ns2.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 239, i32 36 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__of_table_ns2_genpll_src_clk, ptr @__of_table_ns2_genpll_sw_clk, ptr @__of_table_ns2_lcpll_ddr_clk, ptr @__of_table_ns2_lcpll_ports_clk, ptr @genpll_scr, ptr @genpll_scr_clk, ptr @genpll_sw, ptr @genpll_sw_clk, ptr @lcpll_ddr, ptr @lcpll_ddr_clk, ptr @lcpll_ports, ptr @lcpll_ports_clk], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genpll_scr to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genpll_scr_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genpll_sw to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genpll_sw_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcpll_ddr to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcpll_ddr_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcpll_ports to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcpll_ports_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns2_genpll_scr_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @genpll_scr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @genpll_scr_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns2_genpll_sw_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @genpll_sw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @genpll_sw_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns2_lcpll_ddr_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @lcpll_ddr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @lcpll_ddr_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns2_lcpll_ports_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @lcpll_ports, ptr noundef null, i32 noundef 0, ptr noundef nonnull @lcpll_ports_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_pll_clk_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__of_table_ns2_genpll_src_clk, !1, !"__of_table_ns2_genpll_src_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 101, i32 1}
!2 = !{ptr @__of_table_ns2_genpll_sw_clk, !3, !"__of_table_ns2_genpll_sw_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 163, i32 1}
!4 = !{ptr @__of_table_ns2_lcpll_ddr_clk, !5, !"__of_table_ns2_lcpll_ddr_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 225, i32 1}
!6 = !{ptr @__of_table_ns2_lcpll_ports_clk, !7, !"__of_table_ns2_lcpll_ports_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 287, i32 1}
!8 = !{ptr @genpll_scr, !9, !"genpll_scr", i1 false, i1 false}
!9 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 41, i32 36}
!10 = !{ptr @genpll_scr_clk, !11, !"genpll_scr_clk", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 53, i32 36}
!12 = !{ptr @genpll_sw, !13, !"genpll_sw", i1 false, i1 false}
!13 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 104, i32 36}
!14 = !{ptr @genpll_sw_clk, !15, !"genpll_sw_clk", i1 false, i1 false}
!15 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 115, i32 36}
!16 = !{ptr @lcpll_ddr, !17, !"lcpll_ddr", i1 false, i1 false}
!17 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 166, i32 36}
!18 = !{ptr @lcpll_ddr_clk, !19, !"lcpll_ddr_clk", i1 false, i1 false}
!19 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 177, i32 36}
!20 = !{ptr @lcpll_ports, !21, !"lcpll_ports", i1 false, i1 false}
!21 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 228, i32 36}
!22 = !{ptr @lcpll_ports_clk, !23, !"lcpll_ports_clk", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-ns2.c", i32 239, i32 36}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
