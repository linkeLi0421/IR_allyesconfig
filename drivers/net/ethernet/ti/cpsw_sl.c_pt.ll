; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw_sl.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_sl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpsw_sl_dev_id = type { ptr, ptr, i32, i32, i32 }
%struct.cpsw_sl = type { ptr, ptr, ptr, i32, i32 }

@cpsw_sl_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpsw_sl: not sup r reg: %04X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_sl_reg_read\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/ti/cpsw_sl.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_read._entry_ptr = internal global ptr @cpsw_sl_reg_read._entry, section ".printk_index", align 4
@cpsw_sl_reg_read.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_cpsw:ti_cpsw_new\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cpsw_sl: reg: %04X r 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpsw_sl: not sup w reg: %04X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_sl_reg_write\00", [46 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_write._entry_ptr = internal global ptr @cpsw_sl_reg_write._entry, section ".printk_index", align 4
@cpsw_sl_reg_write.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cpsw_sl: reg: %04X w 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@cpsw_sl_id_match = internal constant { [7 x %struct.cpsw_sl_dev_id], [52 x i8] } { [7 x %struct.cpsw_sl_dev_id] [%struct.cpsw_sl_dev_id { ptr @.str.18, ptr @cpsw_sl_reg_map_cpsw, i32 31952127, i32 0, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.19, ptr @cpsw_sl_reg_map_66ak2hk, i32 29854971, i32 0, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.20, ptr @cpsw_sl_reg_map_66ak2x_xgbe, i32 29867515, i32 0, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.21, ptr @cpsw_sl_reg_map_66ak2elg_am65, i32 33529087, i32 816, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.22, ptr @cpsw_sl_reg_map_66ak2elg_am65, i32 31430911, i32 816, i32 0 }, %struct.cpsw_sl_dev_id { ptr @.str.23, ptr @cpsw_sl_reg_map_66ak2elg_am65, i32 67091967, i32 816, i32 -268435456 }, %struct.cpsw_sl_dev_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@cpsw_sl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpsw_sl: dev_id %s not found.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpsw_sl_get\00", [20 x i8] zeroinitializer }, align 32
@cpsw_sl_get._entry_ptr = internal global ptr @cpsw_sl_get._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpsw_sl_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpsw_sl failed to soft-reset.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_sl_reset\00", [18 x i8] zeroinitializer }, align 32
@cpsw_sl_reset._entry_ptr = internal global ptr @cpsw_sl_reset._entry, section ".printk_index", align 4
@cpsw_sl_ctl_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpsw_sl: unsupported func 0x%08X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpsw_sl_ctl_set\00", [16 x i8] zeroinitializer }, align 32
@cpsw_sl_ctl_set._entry_ptr = internal global ptr @cpsw_sl_ctl_set._entry, section ".printk_index", align 4
@cpsw_sl_ctl_clr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpsw_sl_ctl_clr\00", [16 x i8] zeroinitializer }, align 32
@cpsw_sl_ctl_clr._entry_ptr = internal global ptr @cpsw_sl_ctl_clr._entry, section ".printk_index", align 4
@cpsw_sl_wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpsw_sl_wait_for_idle\00", [42 x i8] zeroinitializer }, align 32
@cpsw_sl_wait_for_idle._entry_ptr = internal global ptr @cpsw_sl_wait_for_idle._entry, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsw\00", [27 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_map_cpsw = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40], [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"66ak2hk\00", [24 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_map_66ak2hk = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 -1, i16 24, i16 28, i16 32, i16 36, i16 -1], [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"66ak2x_xgbe\00", [20 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_map_66ak2x_xgbe = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 -1, i16 24, i16 28, i16 32, i16 -1, i16 40], [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"66ak2el\00", [24 x i8] zeroinitializer }, align 32
@cpsw_sl_reg_map_66ak2elg_am65 = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 -1, i16 0, i16 4, i16 8, i16 -1, i16 12, i16 16, i16 64, i16 112, i16 -1, i16 116], [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"66ak2g\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"am65\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 194, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 200, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 207, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 212, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"cpsw_sl_id_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 120, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 245, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 271, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 279, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 296, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 323, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 122, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"cpsw_sl_reg_map_cpsw\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 18, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 131, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"cpsw_sl_reg_map_66ak2hk\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 32, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 138, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"cpsw_sl_reg_map_66ak2x_xgbe\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 46, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 148, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"cpsw_sl_reg_map_66ak2elg_am65\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 60, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 161, i32 16 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [37 x i8] c"../drivers/net/ethernet/ti/cpsw_sl.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 171, i32 16 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @cpsw_sl_ctl_clr._entry, ptr @cpsw_sl_ctl_clr._entry_ptr, ptr @cpsw_sl_ctl_set._entry, ptr @cpsw_sl_ctl_set._entry_ptr, ptr @cpsw_sl_get._entry, ptr @cpsw_sl_get._entry_ptr, ptr @cpsw_sl_reg_read._entry, ptr @cpsw_sl_reg_read._entry_ptr, ptr @cpsw_sl_reg_write._entry, ptr @cpsw_sl_reg_write._entry_ptr, ptr @cpsw_sl_reset._entry, ptr @cpsw_sl_reset._entry_ptr, ptr @cpsw_sl_wait_for_idle._entry, ptr @cpsw_sl_wait_for_idle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cpsw_sl_id_match, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @cpsw_sl_reg_map_cpsw, ptr @.str.19, ptr @cpsw_sl_reg_map_66ak2hk, ptr @.str.20, ptr @cpsw_sl_reg_map_66ak2x_xgbe, ptr @.str.21, ptr @cpsw_sl_reg_map_66ak2elg_am65, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_id_match to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_ctl_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_ctl_clr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reg_map_cpsw to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reg_map_66ak2hk to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reg_map_66ak2x_xgbe to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_sl_reg_map_66ak2elg_am65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_reg_read(ptr nocapture noundef readonly %sl, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %1, i32 %reg
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %3 to i32
  %sl_base = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %6 = ptrtoint ptr %sl_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sl_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !74
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_reg_read, %if.then14)) #5
          to label %cleanup [label %if.then14], !srcloc !76

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sl, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %arrayidx17 = getelementptr i16, ptr %13, i32 %reg
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %conv18, i32 noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %9, %if.then14 ], [ %9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_sl_reg_write(ptr nocapture noundef readonly %sl, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %1, i32 %reg
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 65535) #8
  br label %return

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_reg_write, %if.then8)) #5
          to label %do.body15 [label %if.then8], !srcloc !76

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sl, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %arrayidx11 = getelementptr i16, ptr %9, i32 %reg
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %conv12, i32 noundef %val) #5
  br label %do.body15

do.body15:                                        ; preds = %if.then8, %do.body5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %val)
  %sl_base = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %13 = ptrtoint ptr %sl_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sl_base, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx18 = getelementptr i16, ptr %16, i32 %reg
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx18, align 2
  %conv19 = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !78
  br label %return

return:                                           ; preds = %do.body15, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpsw_sl_get(ptr noundef %device_id, ptr noundef %dev, ptr noundef %sl_base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %sl_base3 = getelementptr inbounds %struct.cpsw_sl, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %sl_base3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sl_base, ptr %sl_base3, align 4
  %tobool1.not.i = icmp eq ptr %device_id, null
  br i1 %tobool1.not.i, label %if.end.do.end_crit_edge, label %while.body.preheader.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

while.body.preheader.i:                           ; preds = %if.end
  %call.i29 = tail call i32 @strcmp(ptr noundef nonnull %device_id, ptr noundef nonnull dereferenceable(5) @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i = icmp eq i32 %call.i29, 0
  br i1 %cmp.i, label %while.body.preheader.i.if.end9_crit_edge, label %if.end6.i

while.body.preheader.i.if.end9_crit_edge:         ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.i:                                        ; preds = %while.body.preheader.i
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull %device_id, ptr noundef nonnull dereferenceable(8) @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp.1.i, label %if.end6.i.if.end9_crit_edge, label %if.end6.1.i

if.end6.i.if.end9_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.1.i:                                      ; preds = %if.end6.i
  %call.2.i = tail call i32 @strcmp(ptr noundef nonnull %device_id, ptr noundef nonnull dereferenceable(12) @.str.20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp.2.i, label %if.end6.1.i.if.end9_crit_edge, label %if.end6.2.i

if.end6.1.i.if.end9_crit_edge:                    ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.2.i:                                      ; preds = %if.end6.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef nonnull %device_id, ptr noundef nonnull dereferenceable(8) @.str.21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp.3.i, label %if.end6.2.i.if.end9_crit_edge, label %if.end6.3.i

if.end6.2.i.if.end9_crit_edge:                    ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.3.i:                                      ; preds = %if.end6.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef nonnull %device_id, ptr noundef nonnull dereferenceable(7) @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp.4.i, label %if.end6.3.i.if.end9_crit_edge, label %if.end6.4.i

if.end6.3.i.if.end9_crit_edge:                    ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.4.i:                                      ; preds = %if.end6.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef nonnull %device_id, ptr noundef nonnull dereferenceable(5) @.str.23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp.5.i, label %if.end6.4.i.if.end9_crit_edge, label %if.end6.4.i.do.end_crit_edge

if.end6.4.i.do.end_crit_edge:                     ; preds = %if.end6.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.4.i.if.end9_crit_edge:                    ; preds = %if.end6.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %if.end6.4.i.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %device_id) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6.4.i.if.end9_crit_edge, %if.end6.3.i.if.end9_crit_edge, %if.end6.2.i.if.end9_crit_edge, %if.end6.1.i.if.end9_crit_edge, %if.end6.i.if.end9_crit_edge, %while.body.preheader.i.if.end9_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 4), %if.end6.3.i.if.end9_crit_edge ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 3), %if.end6.2.i.if.end9_crit_edge ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 2), %if.end6.1.i.if.end9_crit_edge ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 1), %if.end6.i.if.end9_crit_edge ], [ @cpsw_sl_id_match, %while.body.preheader.i.if.end9_crit_edge ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 5), %if.end6.4.i.if.end9_crit_edge ]
  %regs = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %retval.0.i.ph, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %regs10 = getelementptr inbounds %struct.cpsw_sl, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regs10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regs10, align 4
  %control_features = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %retval.0.i.ph, i32 0, i32 2
  %5 = ptrtoint ptr %control_features to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control_features, align 4
  %control_features11 = getelementptr inbounds %struct.cpsw_sl, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %control_features11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %control_features11, align 4
  %idle_mask = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %retval.0.i.ph, i32 0, i32 4
  %8 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idle_mask, align 4
  %idle_mask12 = getelementptr inbounds %struct.cpsw_sl, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %idle_mask12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %idle_mask12, align 4
  %regs_offset = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %retval.0.i.ph, i32 0, i32 3
  %11 = ptrtoint ptr %regs_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regs_offset, align 4
  %add.ptr = getelementptr i8, ptr %sl_base, i32 %12
  %13 = ptrtoint ptr %sl_base3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %sl_base3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end9 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_sl_reset(ptr nocapture noundef readonly %sl, i32 noundef %tmo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo) #5
  %regs.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %2, i32 3
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp.i11 = icmp eq i16 %4, -1
  br i1 %cmp.i11, label %do.end.i, label %do.body5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef 65535) #8
  br label %cpsw_sl_reg_write.exit

do.body5.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_reset, %if.then8.i)) #5
          to label %do.body15.i [label %if.then8.i], !srcloc !76

if.then8.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sl, align 4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %arrayidx11.i = getelementptr i16, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %conv12.i, i32 noundef 1) #5
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then8.i, %do.body5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %sl_base.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %13 = ptrtoint ptr %sl_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sl_base.i, align 4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %arrayidx18.i = getelementptr i16, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !78
  br label %cpsw_sl_reg_write.exit

cpsw_sl_reg_write.exit:                           ; preds = %do.body15.i, %do.end.i
  %sl_base.i16 = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %19 = add i32 %call2.i, %0
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %cpsw_sl_reg_write.exit
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %arrayidx.i13 = getelementptr i16, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp.i14 = icmp eq i16 %23, -1
  br i1 %cmp.i14, label %cpsw_sl_reg_read.exit.thread, label %if.end.i18

cpsw_sl_reg_read.exit.thread:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %do.end

if.end.i18:                                       ; preds = %do.body
  %conv.i = zext i16 %23 to i32
  %26 = ptrtoint ptr %sl_base.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sl_base.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %27, i32 %conv.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #5, !srcloc !74
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_reset, %if.then14.i)) #5
          to label %cpsw_sl_reg_read.exit [label %if.then14.i], !srcloc !76

if.then14.i:                                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sl, align 4
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %arrayidx17.i = getelementptr i16, ptr %33, i32 3
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %31, ptr noundef nonnull @.str.6, i32 noundef %conv18.i, i32 noundef %29) #5
  br label %cpsw_sl_reg_read.exit

cpsw_sl_reg_read.exit:                            ; preds = %if.then14.i, %if.end.i18
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cpsw_sl_reg_read.exit.do.end_crit_edge, label %land.rhs

cpsw_sl_reg_read.exit.do.end_crit_edge:           ; preds = %cpsw_sl_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %cpsw_sl_reg_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %36, %19
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %cpsw_sl_reg_read.exit.do.end_crit_edge, %cpsw_sl_reg_read.exit.thread
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %arrayidx.i21 = getelementptr i16, ptr %38, i32 3
  %39 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp.i22 = icmp eq i16 %40, -1
  br i1 %cmp.i22, label %cpsw_sl_reg_read.exit32.thread, label %if.end.i27

cpsw_sl_reg_read.exit32.thread:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %if.end

if.end.i27:                                       ; preds = %do.end
  %conv.i24 = zext i16 %40 to i32
  %43 = ptrtoint ptr %sl_base.i16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sl_base.i16, align 4
  %add.ptr.i26 = getelementptr i8, ptr %44, i32 %conv.i24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !74
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_reset, %if.then14.i30)) #5
          to label %cpsw_sl_reg_read.exit32 [label %if.then14.i30], !srcloc !76

if.then14.i30:                                    ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sl, align 4
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %arrayidx17.i28 = getelementptr i16, ptr %50, i32 3
  %51 = ptrtoint ptr %arrayidx17.i28 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx17.i28, align 2
  %conv18.i29 = zext i16 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %48, ptr noundef nonnull @.str.6, i32 noundef %conv18.i29, i32 noundef %46) #5
  br label %cpsw_sl_reg_read.exit32

cpsw_sl_reg_read.exit32:                          ; preds = %if.then14.i30, %if.end.i27
  %and3 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cpsw_sl_reg_read.exit32.if.end_crit_edge, label %do.end7

cpsw_sl_reg_read.exit32.if.end_crit_edge:         ; preds = %cpsw_sl_reg_read.exit32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end7:                                          ; preds = %cpsw_sl_reg_read.exit32
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.12) #8
  br label %if.end

if.end:                                           ; preds = %do.end7, %cpsw_sl_reg_read.exit32.if.end_crit_edge, %cpsw_sl_reg_read.exit32.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_ctl_set(ptr nocapture noundef readonly %sl, i32 noundef %ctl_funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %control_features = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 3
  %0 = ptrtoint ptr %control_features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_features, align 4
  %neg = xor i32 %1, -1
  %and = and i32 %neg, %ctl_funcs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %and) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i = icmp eq i16 %7, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %cpsw_sl_reg_read.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %7 to i32
  %sl_base.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %10 = ptrtoint ptr %sl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !74
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_ctl_set, %if.then14.i)) #5
          to label %cpsw_sl_reg_read.exit [label %if.then14.i], !srcloc !76

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sl, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %arrayidx17.i = getelementptr i16, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %conv18.i, i32 noundef %13) #5
  br label %cpsw_sl_reg_read.exit

cpsw_sl_reg_read.exit:                            ; preds = %if.then14.i, %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %13, %if.then14.i ], [ %13, %if.end.i ]
  %or = or i32 %retval.0.i, %ctl_funcs
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %arrayidx.i12 = getelementptr i16, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp.i13 = icmp eq i16 %23, -1
  br i1 %cmp.i13, label %do.end.i14, label %do.body5.i

do.end.i14:                                       ; preds = %cpsw_sl_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef 65535) #8
  br label %cleanup

do.body5.i:                                       ; preds = %cpsw_sl_reg_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_ctl_set, %if.then8.i)) #5
          to label %do.body15.i [label %if.then8.i], !srcloc !76

if.then8.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sl, align 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %arrayidx11.i = getelementptr i16, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %conv12.i, i32 noundef %or) #5
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then8.i, %do.body5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %sl_base.i15 = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %33 = ptrtoint ptr %sl_base.i15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sl_base.i15, align 4
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %arrayidx18.i = getelementptr i16, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %38 to i32
  %add.ptr.i16 = getelementptr i8, ptr %34, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %32) #5, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %do.body15.i, %do.end.i14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end.i14 ], [ 0, %do.body15.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_ctl_clr(ptr nocapture noundef readonly %sl, i32 noundef %ctl_funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %control_features = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 3
  %0 = ptrtoint ptr %control_features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_features, align 4
  %neg = xor i32 %1, -1
  %and = and i32 %neg, %ctl_funcs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %and) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i = icmp eq i16 %7, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %cpsw_sl_reg_read.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %7 to i32
  %sl_base.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %10 = ptrtoint ptr %sl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !74
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_ctl_clr, %if.then14.i)) #5
          to label %cpsw_sl_reg_read.exit [label %if.then14.i], !srcloc !76

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sl, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %arrayidx17.i = getelementptr i16, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %conv18.i, i32 noundef %13) #5
  br label %cpsw_sl_reg_read.exit

cpsw_sl_reg_read.exit:                            ; preds = %if.then14.i, %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %13, %if.then14.i ], [ %13, %if.end.i ]
  %neg4 = xor i32 %ctl_funcs, -1
  %and5 = and i32 %retval.0.i, %neg4
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %arrayidx.i14 = getelementptr i16, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp.i15 = icmp eq i16 %23, -1
  br i1 %cmp.i15, label %do.end.i16, label %do.body5.i

do.end.i16:                                       ; preds = %cpsw_sl_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef 65535) #8
  br label %cleanup

do.body5.i:                                       ; preds = %cpsw_sl_reg_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_ctl_clr, %if.then8.i)) #5
          to label %do.body15.i [label %if.then8.i], !srcloc !76

if.then8.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sl, align 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %arrayidx11.i = getelementptr i16, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %conv12.i, i32 noundef %and5) #5
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then8.i, %do.body5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %and5) #5
  %sl_base.i17 = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %33 = ptrtoint ptr %sl_base.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sl_base.i17, align 4
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %arrayidx18.i = getelementptr i16, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %38 to i32
  %add.ptr.i18 = getelementptr i8, ptr %34, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %32) #5, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %do.body15.i, %do.end.i16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end.i16 ], [ 0, %do.body15.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_sl_ctl_reset(ptr nocapture noundef readonly %sl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i = icmp eq i16 %3, -1
  br i1 %cmp.i, label %do.end.i, label %do.body5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 65535) #8
  br label %cpsw_sl_reg_write.exit

do.body5.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_ctl_reset, %if.then8.i)) #5
          to label %do.body15.i [label %if.then8.i], !srcloc !76

if.then8.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sl, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %arrayidx11.i = getelementptr i16, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %conv12.i, i32 noundef 0) #5
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then8.i, %do.body5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %sl_base.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %12 = ptrtoint ptr %sl_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sl_base.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx18.i = getelementptr i16, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !78
  br label %cpsw_sl_reg_write.exit

cpsw_sl_reg_write.exit:                           ; preds = %do.body15.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_wait_for_idle(ptr nocapture noundef readonly %sl, i32 noundef %tmo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo) #5
  %regs.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 2
  %sl_base.i = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 1
  %idle_mask = getelementptr inbounds %struct.cpsw_sl, ptr %sl, i32 0, i32 4
  %1 = add i32 %call2.i, %0
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp.i13 = icmp eq i16 %5, -1
  br i1 %cmp.i13, label %do.end.i, label %if.end.i14

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %cpsw_sl_reg_read.exit

if.end.i14:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %5 to i32
  %8 = ptrtoint ptr %sl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !74
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_wait_for_idle, %if.then14.i)) #5
          to label %cpsw_sl_reg_read.exit [label %if.then14.i], !srcloc !76

if.then14.i:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sl, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx17.i = getelementptr i16, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %conv18.i, i32 noundef %11) #5
  br label %cpsw_sl_reg_read.exit

cpsw_sl_reg_read.exit:                            ; preds = %if.then14.i, %if.end.i14, %do.end.i
  %retval.0.i15 = phi i32 [ 0, %do.end.i ], [ %11, %if.then14.i ], [ %11, %if.end.i14 ]
  %18 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idle_mask, align 4
  %and = and i32 %19, %retval.0.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %cpsw_sl_reg_read.exit.do.end_crit_edge

cpsw_sl_reg_read.exit.do.end_crit_edge:           ; preds = %cpsw_sl_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %cpsw_sl_reg_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %cpsw_sl_reg_read.exit.do.end_crit_edge
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %arrayidx.i17 = getelementptr i16, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp.i18 = icmp eq i16 %24, -1
  br i1 %cmp.i18, label %do.end.i19, label %if.end.i23

do.end.i19:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, i32 noundef 65535) #8
  br label %cpsw_sl_reg_read.exit28

if.end.i23:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i20 = zext i16 %24 to i32
  %27 = ptrtoint ptr %sl_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sl_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %28, i32 %conv.i20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #5, !srcloc !74
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_sl_wait_for_idle, %if.then14.i26)) #5
          to label %cpsw_sl_reg_read.exit28 [label %if.then14.i26], !srcloc !76

if.then14.i26:                                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sl, align 4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %arrayidx17.i24 = getelementptr i16, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx17.i24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx17.i24, align 2
  %conv18.i25 = zext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, ptr noundef %32, ptr noundef nonnull @.str.6, i32 noundef %conv18.i25, i32 noundef %30) #5
  br label %cpsw_sl_reg_read.exit28

cpsw_sl_reg_read.exit28:                          ; preds = %if.then14.i26, %if.end.i23, %do.end.i19
  %retval.0.i27 = phi i32 [ 0, %do.end.i19 ], [ %30, %if.then14.i26 ], [ %30, %if.end.i23 ]
  %37 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idle_mask, align 4
  %and4 = and i32 %38, %retval.0.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end8, label %cpsw_sl_reg_read.exit28.cleanup_crit_edge

cpsw_sl_reg_read.exit28.cleanup_crit_edge:        ; preds = %cpsw_sl_reg_read.exit28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8:                                          ; preds = %cpsw_sl_reg_read.exit28
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %cpsw_sl_reg_read.exit28.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end8 ], [ 0, %cpsw_sl_reg_read.exit28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 194, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpsw_sl_reg_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpsw_sl_reg_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 200, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cpsw_sl_reg_read.__UNIQUE_ID_ddebug170, !9, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 207, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cpsw_sl_reg_write._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cpsw_sl_reg_write._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 212, i32 2}
!19 = !{ptr @cpsw_sl_reg_write.__UNIQUE_ID_ddebug171, !18, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 245, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cpsw_sl_get._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cpsw_sl_get._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 271, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cpsw_sl_reset._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @cpsw_sl_reset._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 279, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cpsw_sl_ctl_set._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cpsw_sl_ctl_set._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 296, i32 3}
!37 = !{ptr @cpsw_sl_ctl_clr._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cpsw_sl_ctl_clr._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 323, i32 3}
!41 = !{ptr @cpsw_sl_wait_for_idle._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cpsw_sl_wait_for_idle._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 122, i32 16}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 131, i32 16}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 138, i32 16}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 148, i32 16}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 161, i32 16}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 171, i32 16}
!55 = !{ptr @cpsw_sl_id_match, !56, !"cpsw_sl_id_match", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 120, i32 36}
!57 = !{ptr @cpsw_sl_reg_map_cpsw, !58, !"cpsw_sl_reg_map_cpsw", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 18, i32 18}
!59 = !{ptr @cpsw_sl_reg_map_66ak2hk, !60, !"cpsw_sl_reg_map_66ak2hk", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 32, i32 18}
!61 = !{ptr @cpsw_sl_reg_map_66ak2x_xgbe, !62, !"cpsw_sl_reg_map_66ak2x_xgbe", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 46, i32 18}
!63 = !{ptr @cpsw_sl_reg_map_66ak2elg_am65, !64, !"cpsw_sl_reg_map_66ak2elg_am65", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/ti/cpsw_sl.c", i32 60, i32 18}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2982826}
!75 = !{i64 2152352901}
!76 = !{i64 2148763151, i64 2148763156, i64 2148763169, i64 2148763213, i64 2148763247, i64 2148763268}
!77 = !{i64 2152359591}
!78 = !{i64 2982408}
