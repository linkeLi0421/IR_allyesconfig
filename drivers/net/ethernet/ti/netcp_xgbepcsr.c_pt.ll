; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/netcp_xgbepcsr.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/netcp_xgbepcsr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.serdes_cfg = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@netcp_xgbe_serdes_init.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keystone_netcp_ethss\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netcp_xgbe_serdes_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/ti/netcp_xgbepcsr.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"XGBE: serdes already in operation - reset\0A\00", [53 x i8] zeroinitializer }, align 32
@cfg_phyb_1p25g_156p25mhz_cmu0 = internal constant { [8 x %struct.serdes_cfg], [32 x i8] } { [8 x %struct.serdes_cfg] [%struct.serdes_cfg { i32 0, i32 8388610, i32 16711935 }, %struct.serdes_cfg { i32 20, i32 14392, i32 65535 }, %struct.serdes_cfg { i32 96, i32 474276920, i32 -1 }, %struct.serdes_cfg { i32 100, i32 12682240, i32 16777215 }, %struct.serdes_cfg { i32 104, i32 386368000, i32 -256 }, %struct.serdes_cfg { i32 108, i32 20, i32 255 }, %struct.serdes_cfg { i32 120, i32 49152, i32 65280 }, %struct.serdes_cfg { i32 0, i32 3, i32 255 }], [32 x i8] zeroinitializer }, align 32
@cfg_phyb_10p3125g_156p25mhz_cmu1 = internal constant { [19 x %struct.serdes_cfg], [60 x i8] } { [19 x %struct.serdes_cfg] [%struct.serdes_cfg { i32 3072, i32 196610, i32 16711935 }, %struct.serdes_cfg { i32 3092, i32 21074, i32 65535 }, %struct.serdes_cfg { i32 3112, i32 -2147483648, i32 -16777216 }, %struct.serdes_cfg { i32 3116, i32 246, i32 255 }, %struct.serdes_cfg { i32 3132, i32 67109893, i32 -16711681 }, %struct.serdes_cfg { i32 3136, i32 -1065353216, i32 -65536 }, %struct.serdes_cfg { i32 3140, i32 1512054882, i32 -1 }, %struct.serdes_cfg { i32 3144, i32 1074005028, i32 -1 }, %struct.serdes_cfg { i32 3148, i32 16386, i32 65535 }, %struct.serdes_cfg { i32 3152, i32 419437568, i32 -16711936 }, %struct.serdes_cfg { i32 3156, i32 8448, i32 65280 }, %struct.serdes_cfg { i32 3160, i32 96, i32 255 }, %struct.serdes_cfg { i32 3168, i32 -2146230660, i32 -1 }, %struct.serdes_cfg { i32 3172, i32 -2080322814, i32 -16711681 }, %struct.serdes_cfg { i32 3176, i32 386368000, i32 -256 }, %struct.serdes_cfg { i32 3180, i32 22, i32 255 }, %struct.serdes_cfg { i32 3188, i32 1024, i32 65280 }, %struct.serdes_cfg { i32 3192, i32 49152, i32 65280 }, %struct.serdes_cfg { i32 3072, i32 3, i32 255 }], [60 x i8] zeroinitializer }, align 32
@cfg_phyb_10p3125g_16bit_lane = internal constant { [27 x %struct.serdes_cfg], [92 x i8] } { [27 x %struct.serdes_cfg] [%struct.serdes_cfg { i32 516, i32 128, i32 255 }, %struct.serdes_cfg { i32 520, i32 37389, i32 65535 }, %struct.serdes_cfg { i32 516, i32 -67108864, i32 -16777216 }, %struct.serdes_cfg { i32 520, i32 37124, i32 65535 }, %struct.serdes_cfg { i32 528, i32 436207616, i32 -16777216 }, %struct.serdes_cfg { i32 532, i32 27480, i32 16777215 }, %struct.serdes_cfg { i32 536, i32 1971323012, i32 -65281 }, %struct.serdes_cfg { i32 556, i32 3145728, i32 16711680 }, %struct.serdes_cfg { i32 560, i32 14336, i32 65280 }, %struct.serdes_cfg { i32 588, i32 9371648, i32 16711680 }, %struct.serdes_cfg { i32 592, i32 805306368, i32 -16777216 }, %struct.serdes_cfg { i32 608, i32 2, i32 255 }, %struct.serdes_cfg { i32 612, i32 87, i32 255 }, %struct.serdes_cfg { i32 616, i32 5723904, i32 16776960 }, %struct.serdes_cfg { i32 632, i32 -16777216, i32 -16777216 }, %struct.serdes_cfg { i32 640, i32 5242960, i32 16711935 }, %struct.serdes_cfg { i32 644, i32 7957, i32 65535 }, %struct.serdes_cfg { i32 652, i32 28416, i32 65280 }, %struct.serdes_cfg { i32 660, i32 0, i32 -256 }, %struct.serdes_cfg { i32 664, i32 9792, i32 -16711681 }, %struct.serdes_cfg { i32 668, i32 3, i32 255 }, %struct.serdes_cfg { i32 676, i32 3859, i32 65535 }, %struct.serdes_cfg { i32 680, i32 112128, i32 16776960 }, %struct.serdes_cfg { i32 896, i32 48, i32 255 }, %struct.serdes_cfg { i32 960, i32 512, i32 65280 }, %struct.serdes_cfg { i32 972, i32 24, i32 255 }, %struct.serdes_cfg { i32 972, i32 0, i32 255 }], [92 x i8] zeroinitializer }, align 32
@cfg_phyb_10p3125g_comlane = internal constant { [15 x %struct.serdes_cfg], [44 x i8] } { [15 x %struct.serdes_cfg] [%struct.serdes_cfg { i32 2560, i32 2048, i32 65280 }, %struct.serdes_cfg { i32 2692, i32 0, i32 255 }, %struct.serdes_cfg { i32 2700, i32 1245184, i32 16711680 }, %struct.serdes_cfg { i32 2704, i32 2006974464, i32 -65536 }, %struct.serdes_cfg { i32 2708, i32 30583, i32 65535 }, %struct.serdes_cfg { i32 2824, i32 983040, i32 -65536 }, %struct.serdes_cfg { i32 2828, i32 983040, i32 16777215 }, %struct.serdes_cfg { i32 2832, i32 -1107296256, i32 -16777216 }, %struct.serdes_cfg { i32 2836, i32 255, i32 255 }, %struct.serdes_cfg { i32 2840, i32 20, i32 255 }, %struct.serdes_cfg { i32 2908, i32 -1743060992, i32 -65536 }, %struct.serdes_cfg { i32 2916, i32 4352, i32 65280 }, %struct.serdes_cfg { i32 2936, i32 3072, i32 65280 }, %struct.serdes_cfg { i32 2748, i32 -16777216, i32 -16777216 }, %struct.serdes_cfg { i32 2752, i32 139, i32 255 }], [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netcp_xgbe_wait_pll_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013XGBE serdes not locked: time out.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netcp_xgbe_wait_pll_locked\00", [37 x i8] zeroinitializer }, align 32
@netcp_xgbe_wait_pll_locked._entry_ptr = internal global ptr @netcp_xgbe_wait_pll_locked._entry, section ".printk_index", align 4
@netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netcp_xgbe_serdes_check_lane\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"XGBE: detected link down on lane 0\0A\00", [60 x i8] zeroinitializer }, align 32
@netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"XGBE: detected link down on lane 1\0A\00", [60 x i8] zeroinitializer }, align 32
@netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"XGBE: timeout waiting for serdes link up\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XGBE: PCSR link is up\0A\00", [41 x i8] zeroinitializer }, align 32
@netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netcp_xgbe_check_link_status\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"XGBE PCSR Linked Lane: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"XGBE PCSR Recover Lane: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@netcp_xgbe_check_link_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013XGBE: unknown current_state[%d] %d\0A\00", [58 x i8] zeroinitializer }, align 32
@netcp_xgbe_check_link_status._entry_ptr = internal global ptr @netcp_xgbe_check_link_status._entry, section ".printk_index", align 4
@netcp_xgbe_serdes_reset_cdr.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netcp_xgbe_serdes_reset_cdr\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"XGBE: CDR centered, DLPF: %4d,%d,%d.\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 490, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"cfg_phyb_1p25g_156p25mhz_cmu0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 39, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [33 x i8] c"cfg_phyb_10p3125g_156p25mhz_cmu1\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 50, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"cfg_phyb_10p3125g_16bit_lane\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 72, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"cfg_phyb_10p3125g_comlane\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 102, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 226, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 413, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 416, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 419, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 425, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 336, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 342, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 371, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [44 x i8] c"../drivers/net/ethernet/ti/netcp_xgbepcsr.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 301, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @netcp_xgbe_check_link_status._entry, ptr @netcp_xgbe_check_link_status._entry_ptr, ptr @netcp_xgbe_wait_pll_locked._entry, ptr @netcp_xgbe_wait_pll_locked._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cfg_phyb_1p25g_156p25mhz_cmu0, ptr @cfg_phyb_10p3125g_156p25mhz_cmu1, ptr @cfg_phyb_10p3125g_16bit_lane, ptr @cfg_phyb_10p3125g_comlane, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_phyb_1p25g_156p25mhz_cmu0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_phyb_10p3125g_156p25mhz_cmu1 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_phyb_10p3125g_16bit_lane to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_phyb_10p3125g_comlane to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netcp_xgbe_wait_pll_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netcp_xgbe_check_link_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netcp_xgbe_serdes_init(ptr noundef %serdes_regs, ptr noundef %xgbe_regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %serdes_regs, i32 2560
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %1 = and i32 %0, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_serdes_init.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_serdes_init, %if.then7)) #5
          to label %do.end [label %if.then7], !srcloc !60

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_serdes_init.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %serdes_regs, i32 8144
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %3 = or i32 %2, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %5 = and i32 %4, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %serdes_regs, i32 8180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 136) #5, !srcloc !63
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end8
  %i.056.i.i = phi i32 [ 0, %if.end8 ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i = getelementptr [8 x %struct.serdes_cfg], ptr @cfg_phyb_1p25g_156p25mhz_cmu0, i32 0, i32 %i.056.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %serdes_regs, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #5, !srcloc !58
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %mask.i.i = getelementptr [8 x %struct.serdes_cfg], ptr @cfg_phyb_1p25g_156p25mhz_cmu0, i32 0, i32 %i.056.i.i, i32 2
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i.i, align 4
  %neg.i.i = xor i32 %11, -1
  %and.i.i = and i32 %9, %neg.i.i
  %val.i.i = getelementptr [8 x %struct.serdes_cfg], ptr @cfg_phyb_1p25g_156p25mhz_cmu0, i32 0, i32 %i.056.i.i, i32 1
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i.i, align 4
  %and6.i.i = and i32 %13, %11
  %or.i.i = or i32 %and6.i.i, %and.i.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %14) #5, !srcloc !63
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %do.body.i.i.do.body13.i.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i.do.body13.i.i_crit_edge:              ; preds = %do.body.i.i
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %do.body13.i.i.do.body13.i.i_crit_edge, %do.body.i.i.do.body13.i.i_crit_edge
  %i.157.i.i = phi i32 [ %inc38.i.i, %do.body13.i.i.do.body13.i.i_crit_edge ], [ 0, %do.body.i.i.do.body13.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %arrayidx18.i.i = getelementptr [19 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_156p25mhz_cmu1, i32 0, i32 %i.157.i.i
  %15 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %serdes_regs, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #5, !srcloc !58
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %mask25.i.i = getelementptr [19 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_156p25mhz_cmu1, i32 0, i32 %i.157.i.i, i32 2
  %19 = ptrtoint ptr %mask25.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask25.i.i, align 4
  %neg26.i.i = xor i32 %20, -1
  %and27.i.i = and i32 %18, %neg26.i.i
  %val29.i.i = getelementptr [19 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_156p25mhz_cmu1, i32 0, i32 %i.157.i.i, i32 1
  %21 = ptrtoint ptr %val29.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val29.i.i, align 4
  %and32.i.i = and i32 %22, %20
  %or33.i.i = or i32 %and32.i.i, %and27.i.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 %23) #5, !srcloc !63
  %inc38.i.i = add nuw nsw i32 %i.157.i.i, 1
  %exitcond58.not.i.i = icmp eq i32 %inc38.i.i, 19
  br i1 %exitcond58.not.i.i, label %do.body13.i.i.do.body.i44.i_crit_edge, label %do.body13.i.i.do.body13.i.i_crit_edge

do.body13.i.i.do.body13.i.i_crit_edge:            ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i.i

do.body13.i.i.do.body.i44.i_crit_edge:            ; preds = %do.body13.i.i
  br label %do.body.i44.i

do.body.i44.i:                                    ; preds = %do.body.i44.i.do.body.i44.i_crit_edge, %do.body13.i.i.do.body.i44.i_crit_edge
  %i.061.i.i = phi i32 [ %inc.i42.i, %do.body.i44.i.do.body.i44.i_crit_edge ], [ 0, %do.body13.i.i.do.body.i44.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %arrayidx.i36.i = getelementptr [27 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_16bit_lane, i32 0, i32 %i.061.i.i
  %24 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i36.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %serdes_regs, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #5, !srcloc !58
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %mask.i37.i = getelementptr [27 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_16bit_lane, i32 0, i32 %i.061.i.i, i32 2
  %28 = ptrtoint ptr %mask.i37.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask.i37.i, align 4
  %neg.i38.i = xor i32 %29, -1
  %and.i39.i = and i32 %27, %neg.i38.i
  %val.i40.i = getelementptr [27 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_16bit_lane, i32 0, i32 %i.061.i.i, i32 1
  %30 = ptrtoint ptr %val.i40.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i40.i, align 4
  %and7.i.i = and i32 %31, %29
  %or.i41.i = or i32 %and7.i.i, %and.i39.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i41.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %32) #5, !srcloc !63
  %inc.i42.i = add nuw nsw i32 %i.061.i.i, 1
  %exitcond.not.i43.i = icmp eq i32 %inc.i42.i, 27
  br i1 %exitcond.not.i43.i, label %netcp_xgbe_serdes_lane_config.exit.i, label %do.body.i44.i.do.body.i44.i_crit_edge

do.body.i44.i.do.body.i44.i_crit_edge:            ; preds = %do.body.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i44.i

netcp_xgbe_serdes_lane_config.exit.i:             ; preds = %do.body.i44.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %add.ptr20.i45.i = getelementptr i8, ptr %serdes_regs, i32 896
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i45.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %34 = and i32 %33, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i45.i, i32 %34) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %add.ptr36.i.i = getelementptr i8, ptr %serdes_regs, i32 960
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %36 = and i32 %35, -131073
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %36) #5, !srcloc !63
  %add.ptr.i35.1.i = getelementptr i8, ptr %serdes_regs, i32 512
  br label %do.body.i44.1.i

do.body.i44.1.i:                                  ; preds = %do.body.i44.1.i.do.body.i44.1.i_crit_edge, %netcp_xgbe_serdes_lane_config.exit.i
  %i.061.i.1.i = phi i32 [ 0, %netcp_xgbe_serdes_lane_config.exit.i ], [ %inc.i42.1.i, %do.body.i44.1.i.do.body.i44.1.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %arrayidx.i36.1.i = getelementptr [27 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_16bit_lane, i32 0, i32 %i.061.i.1.i
  %37 = ptrtoint ptr %arrayidx.i36.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i36.1.i, align 4
  %add.ptr1.i.1.i = getelementptr i8, ptr %add.ptr.i35.1.i, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1.i) #5, !srcloc !58
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %mask.i37.1.i = getelementptr [27 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_16bit_lane, i32 0, i32 %i.061.i.1.i, i32 2
  %41 = ptrtoint ptr %mask.i37.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask.i37.1.i, align 4
  %neg.i38.1.i = xor i32 %42, -1
  %and.i39.1.i = and i32 %40, %neg.i38.1.i
  %val.i40.1.i = getelementptr [27 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_16bit_lane, i32 0, i32 %i.061.i.1.i, i32 1
  %43 = ptrtoint ptr %val.i40.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i40.1.i, align 4
  %and7.i.1.i = and i32 %44, %42
  %or.i41.1.i = or i32 %and7.i.1.i, %and.i39.1.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i41.1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1.i, i32 %45) #5, !srcloc !63
  %inc.i42.1.i = add nuw nsw i32 %i.061.i.1.i, 1
  %exitcond.not.i43.1.i = icmp eq i32 %inc.i42.1.i, 27
  br i1 %exitcond.not.i43.1.i, label %netcp_xgbe_serdes_lane_config.exit.1.i, label %do.body.i44.1.i.do.body.i44.1.i_crit_edge

do.body.i44.1.i.do.body.i44.1.i_crit_edge:        ; preds = %do.body.i44.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i44.1.i

netcp_xgbe_serdes_lane_config.exit.1.i:           ; preds = %do.body.i44.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %add.ptr20.i45.1.i = getelementptr i8, ptr %serdes_regs, i32 1408
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i45.1.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %47 = and i32 %46, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i45.1.i, i32 %47) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %add.ptr36.i.1.i = getelementptr i8, ptr %serdes_regs, i32 1472
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.1.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %49 = and i32 %48, -131073
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.1.i, i32 %49) #5, !srcloc !63
  br label %do.body.i57.i

do.body.i57.i:                                    ; preds = %do.body.i57.i.do.body.i57.i_crit_edge, %netcp_xgbe_serdes_lane_config.exit.1.i
  %i.017.i.i = phi i32 [ %inc.i55.i, %do.body.i57.i.do.body.i57.i_crit_edge ], [ 0, %netcp_xgbe_serdes_lane_config.exit.1.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %arrayidx.i47.i = getelementptr [15 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_comlane, i32 0, i32 %i.017.i.i
  %50 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i47.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %serdes_regs, i32 %51
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #5, !srcloc !58
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %mask.i49.i = getelementptr [15 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_comlane, i32 0, i32 %i.017.i.i, i32 2
  %54 = ptrtoint ptr %mask.i49.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask.i49.i, align 4
  %neg.i50.i = xor i32 %55, -1
  %and.i51.i = and i32 %53, %neg.i50.i
  %val.i52.i = getelementptr [15 x %struct.serdes_cfg], ptr @cfg_phyb_10p3125g_comlane, i32 0, i32 %i.017.i.i, i32 1
  %56 = ptrtoint ptr %val.i52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i52.i, align 4
  %and6.i53.i = and i32 %57, %55
  %or.i54.i = or i32 %and6.i53.i, %and.i51.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i54.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %58) #5, !srcloc !63
  %inc.i55.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i56.i = icmp eq i32 %inc.i55.i, 15
  br i1 %exitcond.not.i56.i, label %for.body3.preheader.i, label %do.body.i57.i.do.body.i57.i_crit_edge

do.body.i57.i.do.body.i57.i_crit_edge:            ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i57.i

for.body3.preheader.i:                            ; preds = %do.body.i57.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %add.ptr1.i60.i = getelementptr i8, ptr %serdes_regs, i32 520
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %60 = and i32 %59, -983041
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.i, i32 %60) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %62 = and i32 %61, -520093697
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.i, i32 %62) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %add.ptr1.2.i.i = getelementptr i8, ptr %serdes_regs, i32 516
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %64 = and i32 %63, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2.i.i, i32 %64) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %66 = and i32 %65, 536870911
  %67 = or i32 %66, -1610612736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.i, i32 %67) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %add.ptr1.i60.1.i = getelementptr i8, ptr %serdes_regs, i32 1032
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.1.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %69 = and i32 %68, -983041
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.1.i, i32 %69) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.1.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %71 = and i32 %70, -520093697
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.1.i, i32 %71) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %add.ptr1.2.i.1.i = getelementptr i8, ptr %serdes_regs, i32 1028
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2.i.1.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %73 = and i32 %72, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2.i.1.i, i32 %73) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.1.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %75 = and i32 %74, 536870911
  %76 = or i32 %75, -1610612736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.1.i, i32 %76) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %78 = and i32 %77, 16777215
  %79 = or i32 %78, 520093696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %79) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 238) #5, !srcloc !63
  %add.ptr.i62.i = getelementptr i8, ptr %serdes_regs, i32 8160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 954264032) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %add.ptr1.i64.1.i = getelementptr i8, ptr %serdes_regs, i32 8164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i64.1.i, i32 954264032) #5, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %80, 50
  %add.ptr.i65.i = getelementptr i8, ptr %xgbe_regs, i32 276
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %add.ptr5.i.i = getelementptr i8, ptr %xgbe_regs, i32 532
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %83 = and i32 %82, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not31.i.i = icmp eq i32 %83, 0
  %84 = and i32 %81, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool10.not32.i.i = icmp eq i32 %84, 0
  %or.cond33.i.i = select i1 %tobool.not31.i.i, i1 true, i1 %tobool10.not32.i.i
  br i1 %or.cond33.i.i, label %for.body3.preheader.i.if.end.i.i_crit_edge, label %for.body3.preheader.i.if.end.i_crit_edge

for.body3.preheader.i.if.end.i_crit_edge:         ; preds = %for.body3.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.body3.preheader.i.if.end.i.i_crit_edge:       ; preds = %for.body3.preheader.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i.if.end.i.i_crit_edge, %for.body3.preheader.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %netcp_xgbe_wait_pll_locked.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !88
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %88 = and i32 %87, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i = icmp eq i32 %88, 0
  %89 = and i32 %86, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool10.not.i.i = icmp eq i32 %89, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool10.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i.if.end.i.i_crit_edge, label %do.end.i.i.if.end.i_crit_edge

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i.i.if.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

netcp_xgbe_wait_pll_locked.exit.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %netcp_xgbe_serdes_config.exit

if.end.i:                                         ; preds = %do.end.i.i.if.end.i_crit_edge, %for.body3.preheader.i.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %add.ptr.i66.i = getelementptr i8, ptr %xgbe_regs, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 50331648) #5, !srcloc !63
  tail call fastcc void @netcp_xgbe_serdes_check_lane(ptr noundef %serdes_regs, ptr noundef %xgbe_regs) #5
  br label %netcp_xgbe_serdes_config.exit

netcp_xgbe_serdes_config.exit:                    ; preds = %if.end.i, %netcp_xgbe_wait_pll_locked.exit.i
  %retval.0.i69.i = phi i32 [ -110, %netcp_xgbe_wait_pll_locked.exit.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i69.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netcp_xgbe_serdes_check_lane(ptr noundef %serdes_regs, ptr noundef %sw_regs) unnamed_addr #0 align 64 {
entry:
  %current_state = alloca [2 x i32], align 8
  %lane_down = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current_state) #5
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %current_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lane_down) #5
  %1 = getelementptr inbounds [2 x i32], ptr %lane_down, i32 0, i32 1
  %2 = ptrtoint ptr %lane_down to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lane_down, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  %call15 = call fastcc i32 @netcp_xgbe_check_link_status(ptr noundef %serdes_regs, ptr noundef %sw_regs, ptr noundef nonnull %current_state, ptr noundef nonnull %lane_down)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not16 = icmp eq i32 %call15, 0
  br i1 %tobool.not16, label %entry.if.end_crit_edge, label %entry.do.body58_crit_edge

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

do.body.loopexit:                                 ; preds = %while.body
  %4 = ptrtoint ptr %lane_down to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lane_down, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %call = call fastcc i32 @netcp_xgbe_check_link_status(ptr noundef %serdes_regs, ptr noundef %sw_regs, ptr noundef nonnull %current_state, ptr noundef nonnull %lane_down)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.loopexit.if.end_crit_edge, label %do.body.loopexit.do.body58_crit_edge

do.body.loopexit.do.body58_crit_edge:             ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

do.body.loopexit.if.end_crit_edge:                ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body.loopexit.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp17 = phi i1 [ true, %do.body.loopexit.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %lane_down to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lane_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %do.body6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_serdes_check_lane, %if.then11)) #5
          to label %if.end13 [label %if.then11], !srcloc !60

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.7) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body6, %if.end.if.end13_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.end13.if.end33_crit_edge, label %do.body17

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_serdes_check_lane, %if.then29)) #5
          to label %if.end33 [label %if.then29], !srcloc !60

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.8) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %do.body17, %if.end13.if.end33_crit_edge
  br i1 %cmp17, label %do.body35, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  br label %while.body

do.body35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_serdes_check_lane, %if.then47)) #5
          to label %cleanup [label %if.then47], !srcloc !60

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.9) #5
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end33.while.body_crit_edge
  %__ms.014 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end33.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.014, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  %tobool52.not = icmp eq i32 %dec, 0
  br i1 %tobool52.not, label %do.body.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body58:                                        ; preds = %do.body.loopexit.do.body58_crit_edge, %entry.do.body58_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_serdes_check_lane, %if.then70)) #5
          to label %cleanup [label %if.then70], !srcloc !60

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body58, %if.then47, %do.body35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lane_down) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current_state) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netcp_xgbe_check_link_status(ptr noundef %serdes_regs, ptr noundef %sw_regs, ptr nocapture noundef %current_state, ptr nocapture noundef writeonly %lane_down) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr2 = getelementptr i8, ptr %serdes_regs, i32 8160
  %add.ptr7 = getelementptr i8, ptr %sw_regs, i32 1548
  %add.ptr86 = getelementptr i8, ptr %sw_regs, i32 1544
  %add.ptr18 = getelementptr i8, ptr %serdes_regs, i32 516
  br label %for.body

for.body:                                         ; preds = %if.end113.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %if.end113.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %entry ], [ 1, %if.end113.for.body_crit_edge ]
  %status.06 = phi i32 [ 1, %entry ], [ %and116, %if.end113.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.07, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %mul
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %mul8 = shl nuw nsw i32 %i.07, 7
  %add.ptr9 = getelementptr i8, ptr %add.ptr7, i32 %mul8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !58
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %shr = lshr i32 %2, 30
  %and13 = and i32 %shr, 1
  %shr14 = lshr i32 %2, 16
  %and15 = and i32 %shr14, 255
  %mul16 = shl nuw nsw i32 %i.07, 9
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 %mul16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and15)
  %cmp20 = icmp eq i32 %and15, 255
  %spec.select = select i1 %cmp20, i32 0, i32 %and13
  %arrayidx = getelementptr i32, ptr %current_state, i32 %i.07
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end75 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb60
    i32 2, label %sw.bb66
  ]

sw.bb:                                            ; preds = %for.body
  %6 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool21.not = icmp eq i32 %spec.select, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %if.else, label %do.body

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_check_link_status, %if.then28)) #5
          to label %do.body30 [label %if.then28], !srcloc !60

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.12, i32 noundef %i.07) #5
  br label %do.body30

do.body30:                                        ; preds = %if.then28, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %8 = or i32 %7, 100663296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %8) #5, !srcloc !63
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  br i1 %tobool21.not, label %do.body42, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body42:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_check_link_status, %if.then54)) #5
          to label %do.end57 [label %if.then54], !srcloc !60

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.13, i32 noundef %i.07) #5
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %do.body42
  tail call fastcc void @netcp_xgbe_serdes_reset_cdr(ptr noundef %serdes_regs, ptr noundef %add.ptr19, i32 noundef %i.07)
  br label %sw.epilog

sw.bb60:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool61.not = icmp eq i32 %spec.select, 0
  br i1 %tobool61.not, label %if.then62, label %sw.bb60.sw.epilog_crit_edge

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then62:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx63 = getelementptr i32, ptr %lane_down, i32 %i.07
  %10 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx63, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool67.not = icmp eq i32 %spec.select, 0
  br i1 %tobool67.not, label %if.else70, label %if.then68

if.then68:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx, align 4
  br label %sw.epilog

if.else70:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @netcp_xgbe_serdes_reset_cdr(ptr noundef %serdes_regs, ptr noundef %add.ptr19, i32 noundef %i.07)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx, align 4
  br label %sw.epilog

do.end75:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %i.07, i32 noundef %4) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end75, %if.else70, %if.then68, %if.then62, %sw.bb60.sw.epilog_crit_edge, %do.end57, %if.else.sw.epilog_crit_edge, %do.body30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp79.not = icmp eq i32 %and15, 0
  br i1 %cmp79.not, label %sw.epilog.if.end113_crit_edge, label %do.body81

sw.epilog.if.end113_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

do.body81:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %add.ptr88 = getelementptr i8, ptr %add.ptr86, i32 %mul8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %15 = and i32 %14, 16777215
  %16 = or i32 %15, 419430400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %16) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %18 = and i32 %17, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %18) #5, !srcloc !63
  br label %if.end113

if.end113:                                        ; preds = %do.body81, %sw.epilog.if.end113_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp115 = icmp eq i32 %20, 1
  %conv = zext i1 %cmp115 to i32
  %and116 = and i32 %status.06, %conv
  br i1 %cmp, label %if.end113.for.body_crit_edge, label %for.end

if.end113.for.body_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 %and116
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netcp_xgbe_serdes_reset_cdr(ptr noundef %serdes_regs, ptr noundef %sig_detect_reg, i32 noundef %lane) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %lane to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %lane, label %entry.netcp_xgbe_serdes_read_select_tbus.exit_crit_edge [
    i32 0, label %entry.do.body.i.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

entry.netcp_xgbe_serdes_read_select_tbus.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %netcp_xgbe_serdes_read_select_tbus.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.bb1.i.i, %entry.do.body.i.i_crit_edge
  %select.addr.0.i.i = phi i32 [ 50659328, %sw.bb1.i.i ], [ 33882112, %entry.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %serdes_regs, i32 252
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %2 = and i32 %1, -65288
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %or.i.i = or i32 %3, %select.addr.0.i.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #5, !srcloc !63
  br label %netcp_xgbe_serdes_read_select_tbus.exit

netcp_xgbe_serdes_read_select_tbus.exit:          ; preds = %do.body.i.i, %entry.netcp_xgbe_serdes_read_select_tbus.exit_crit_edge
  %add.ptr.i2.i = getelementptr i8, ptr %serdes_regs, i32 248
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #5, !srcloc !58
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %shr.i.i = lshr i32 %6, 16
  %and.i.i = and i32 %shr.i.i, 4095
  %shr = lshr i32 %and.i.i, 2
  %7 = add nsw i32 %and.i.i, -2804
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1204, i32 %7)
  %8 = icmp ult i32 %7, -1204
  br i1 %8, label %do.body, label %if.else

do.body:                                          ; preds = %netcp_xgbe_serdes_read_select_tbus.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sig_detect_reg) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %10 = and i32 %9, -100663297
  %11 = or i32 %10, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sig_detect_reg, i32 %11) #5, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sig_detect_reg) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %14 = and i32 %13, -100663297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sig_detect_reg, i32 %14) #5, !srcloc !63
  br label %if.end29

if.else:                                          ; preds = %netcp_xgbe_serdes_read_select_tbus.exit
  %15 = zext i32 %lane to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %lane, label %if.else.netcp_xgbe_serdes_read_select_tbus.exit49_crit_edge [
    i32 0, label %if.else.do.body.i.i45_crit_edge
    i32 1, label %sw.bb1.i.i38
  ]

if.else.do.body.i.i45_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i45

if.else.netcp_xgbe_serdes_read_select_tbus.exit49_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %netcp_xgbe_serdes_read_select_tbus.exit49

sw.bb1.i.i38:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i45

do.body.i.i45:                                    ; preds = %sw.bb1.i.i38, %if.else.do.body.i.i45_crit_edge
  %select.addr.0.i.i39 = phi i32 [ 51249152, %sw.bb1.i.i38 ], [ 34471936, %if.else.do.body.i.i45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i40 = getelementptr i8, ptr %serdes_regs, i32 252
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %17 = and i32 %16, -65288
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %or.i.i44 = or i32 %18, %select.addr.0.i.i39
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i.i44) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %19) #5, !srcloc !63
  br label %netcp_xgbe_serdes_read_select_tbus.exit49

netcp_xgbe_serdes_read_select_tbus.exit49:        ; preds = %do.body.i.i45, %if.else.netcp_xgbe_serdes_read_select_tbus.exit49_crit_edge
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netcp_xgbe_serdes_reset_cdr.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netcp_xgbe_serdes_reset_cdr, %if.then22)) #5
          to label %if.end29 [label %if.then22], !srcloc !60

if.then22:                                        ; preds = %netcp_xgbe_serdes_read_select_tbus.exit49
  call void @__sanitizer_cov_trace_pc() #7
  %21 = lshr i32 %20, 10
  %and24 = and i32 %shr.i.i, 3
  %and26 = and i32 %21, 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netcp_xgbe_serdes_reset_cdr.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.16, i32 noundef %shr, i32 noundef %and24, i32 noundef %and26) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %netcp_xgbe_serdes_read_select_tbus.exit49, %do.body
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 490, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @netcp_xgbe_serdes_init.__UNIQUE_ID_ddebug344, !1, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!6 = !{ptr @cfg_phyb_1p25g_156p25mhz_cmu0, !7, !"cfg_phyb_1p25g_156p25mhz_cmu0", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 39, i32 26}
!8 = !{ptr @cfg_phyb_10p3125g_156p25mhz_cmu1, !9, !"cfg_phyb_10p3125g_156p25mhz_cmu1", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 50, i32 26}
!10 = !{ptr @cfg_phyb_10p3125g_16bit_lane, !11, !"cfg_phyb_10p3125g_16bit_lane", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 72, i32 26}
!12 = !{ptr @cfg_phyb_10p3125g_comlane, !13, !"cfg_phyb_10p3125g_comlane", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 102, i32 26}
!14 = distinct !{null, !15, !"cfg_cm_c1_c2", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 120, i32 26}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 226, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @netcp_xgbe_wait_pll_locked._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @netcp_xgbe_wait_pll_locked._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 413, i32 4}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug340, !22, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 416, i32 4}
!27 = !{ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug341, !26, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 419, i32 4}
!30 = !{ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug342, !29, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 425, i32 2}
!33 = !{ptr @netcp_xgbe_serdes_check_lane.__UNIQUE_ID_ddebug343, !32, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 336, i32 5}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug338, !35, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 342, i32 5}
!40 = !{ptr @netcp_xgbe_check_link_status.__UNIQUE_ID_ddebug339, !39, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 371, i32 4}
!43 = !{ptr @netcp_xgbe_check_link_status._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @netcp_xgbe_check_link_status._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/ti/netcp_xgbepcsr.c", i32 301, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @netcp_xgbe_serdes_reset_cdr.__UNIQUE_ID_ddebug337, !46, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 6545399}
!59 = !{i64 2156056993}
!60 = !{i64 2149056927, i64 2149056932, i64 2149056945, i64 2149056989, i64 2149057023, i64 2149057044}
!61 = !{i64 2156052715}
!62 = !{i64 2156053863}
!63 = !{i64 6544981}
!64 = !{i64 2156055306}
!65 = !{i64 2156056400}
!66 = !{i64 2155999267}
!67 = !{i64 2155978885}
!68 = !{i64 2155980205}
!69 = !{i64 2155982537}
!70 = !{i64 2155983887}
!71 = !{i64 2155986336}
!72 = !{i64 2155987746}
!73 = !{i64 2155989203}
!74 = !{i64 2155990311}
!75 = !{i64 2155991691}
!76 = !{i64 2155992799}
!77 = !{i64 2155994890}
!78 = !{i64 2155996170}
!79 = !{i64 2156049941}
!80 = !{i64 2156051159}
!81 = !{i64 2155997931}
!82 = !{i64 2155998971}
!83 = !{i64 2155999690}
!84 = !{i64 2155996547}
!85 = !{i64 2156000378}
!86 = !{i64 2156000942}
!87 = !{i64 2156001642}
!88 = !{i64 2156001484}
!89 = !{i64 2156003474}
!90 = !{i64 2156023095}
!91 = !{i64 2156023629}
!92 = !{i64 2156027126}
!93 = !{i64 2156028194}
!94 = !{i64 2156033610}
!95 = !{i64 2156034744}
!96 = !{i64 2156036189}
!97 = !{i64 2156037323}
!98 = !{i64 2156008724}
!99 = !{i64 2156009802}
!100 = !{i64 2156005133}
!101 = !{i64 2156011108}
!102 = !{i64 2156012176}
!103 = !{i64 2156014777}
!104 = !{i64 2156015845}
