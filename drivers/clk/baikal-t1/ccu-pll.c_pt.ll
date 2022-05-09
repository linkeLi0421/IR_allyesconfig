; ModuleID = '/llk/IR_all_yes/drivers/clk/baikal-t1/ccu-pll.c_pt.bc'
source_filename = "../drivers/clk/baikal-t1/ccu-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ccu_pll_dbgfs_bit = type { ptr, ptr, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccu_pll_dbgfs_fld = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_pll_init_data = type { i32, ptr, ptr, i32, ptr, ptr, i32 }
%struct.ccu_pll = type { %struct.clk_hw, i32, i32, i32, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@ccu_pll_hw_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pll->lock\00", [21 x i8] zeroinitializer }, align 32
@ccu_pll_gate_to_set_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_pll_enable, ptr @ccu_pll_disable, ptr @ccu_pll_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_pll_recalc_rate, ptr @ccu_pll_round_rate, ptr null, ptr null, ptr null, ptr @ccu_pll_set_rate_norst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_pll_debug_init }, [60 x i8] zeroinitializer }, align 32
@ccu_pll_straight_set_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_pll_enable, ptr @ccu_pll_disable, ptr @ccu_pll_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_pll_recalc_rate, ptr @ccu_pll_round_rate, ptr null, ptr null, ptr null, ptr @ccu_pll_set_rate_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_pll_debug_init }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ccu_pll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bt1-ccu-pll: Can't enable '%s' with no parent\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccu_pll_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/baikal-t1/ccu-pll.c\00", [32 x i8] zeroinitializer }, align 32
@ccu_pll_enable._entry_ptr = internal global ptr @ccu_pll_enable._entry, section ".printk_index", align 4
@ccu_pll_enable._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bt1-ccu-pll: PLL '%s' reset timed out\0A\00", [55 x i8] zeroinitializer }, align 32
@ccu_pll_enable._entry_ptr.6 = internal global ptr @ccu_pll_enable._entry.4, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ccu_pll_bits = internal constant { [4 x %struct.ccu_pll_dbgfs_bit], [32 x i8] } { [4 x %struct.ccu_pll_dbgfs_bit] [%struct.ccu_pll_dbgfs_bit { ptr null, ptr @.str.7, i32 0, i32 1 }, %struct.ccu_pll_dbgfs_bit { ptr null, ptr @.str.8, i32 0, i32 2 }, %struct.ccu_pll_dbgfs_bit { ptr null, ptr @.str.9, i32 0, i32 1073741824 }, %struct.ccu_pll_dbgfs_bit { ptr null, ptr @.str.10, i32 0, i32 -2147483648 }], [32 x i8] zeroinitializer }, align 32
@ccu_pll_dbgfs_bit_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ccu_pll_dbgfs_bit_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ccu_pll_flds = internal constant { [4 x %struct.ccu_pll_dbgfs_fld], [48 x i8] } { [4 x %struct.ccu_pll_dbgfs_fld] [%struct.ccu_pll_dbgfs_fld { ptr null, ptr @.str.12, i32 0, i32 2, i32 252, i32 1, i32 64 }, %struct.ccu_pll_dbgfs_fld { ptr null, ptr @.str.13, i32 0, i32 8, i32 2096896, i32 1, i32 4096 }, %struct.ccu_pll_dbgfs_fld { ptr null, ptr @.str.14, i32 0, i32 21, i32 31457280, i32 1, i32 16 }, %struct.ccu_pll_dbgfs_fld { ptr null, ptr @.str.15, i32 4, i32 3, i32 32760, i32 1, i32 4096 }], [48 x i8] zeroinitializer }, align 32
@ccu_pll_dbgfs_fld_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ccu_pll_dbgfs_fld_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_en\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_rst\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_bypass\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_nr\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_nf\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_od\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_nb\00", [25 x i8] zeroinitializer }, align 32
@ccu_pll_set_rate_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.16, ptr @.str.3, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccu_pll_set_rate_reset\00", [41 x i8] zeroinitializer }, align 32
@ccu_pll_set_rate_reset._entry_ptr = internal global ptr @ccu_pll_set_rate_reset._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 523, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"ccu_pll_gate_to_set_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 479, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"ccu_pll_straight_set_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 489, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 113, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"ccu_pll_bits\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 339, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"ccu_pll_dbgfs_bit_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"ccu_pll_flds\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 348, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"ccu_pll_dbgfs_fld_fops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 436, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 340, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 341, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 342, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 343, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 422, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 349, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 351, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 353, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 355, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [35 x i8] c"../drivers/clk/baikal-t1/ccu-pll.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 267, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @ccu_pll_enable._entry, ptr @ccu_pll_enable._entry.4, ptr @ccu_pll_enable._entry_ptr, ptr @ccu_pll_enable._entry_ptr.6, ptr @ccu_pll_set_rate_reset._entry, ptr @ccu_pll_set_rate_reset._entry_ptr, ptr @ccu_pll_hw_register.__key, ptr @.str, ptr @ccu_pll_gate_to_set_ops, ptr @ccu_pll_straight_set_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @ccu_pll_bits, ptr @ccu_pll_dbgfs_bit_fops, ptr @ccu_pll_flds, ptr @ccu_pll_dbgfs_fld_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_hw_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_gate_to_set_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_straight_set_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_enable._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_bits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_dbgfs_bit_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_flds to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_dbgfs_fld_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_set_rate_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ccu_pll_hw_register(ptr noundef readonly %pll_init) local_unnamed_addr #0 align 64 {
entry:
  %parent_data = alloca %struct.clk_parent_data, align 4
  %hw_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data) #5
  %0 = call ptr @memset(ptr %parent_data, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hw_init) #5
  %1 = call ptr @memset(ptr %hw_init, i32 0, i32 28)
  %tobool.not = icmp eq ptr %pll_init, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hw_init, ptr %init, align 8
  %base = getelementptr inbounds %struct.ccu_pll_init_data, ptr %pll_init, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %reg_ctl, align 8
  %add7 = add i32 %5, 4
  %reg_ctl1 = getelementptr inbounds %struct.ccu_pll, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %reg_ctl1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add7, ptr %reg_ctl1, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_pll_init_data, ptr %pll_init, i32 0, i32 4
  %8 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_regs, align 4
  %sys_regs8 = getelementptr inbounds %struct.ccu_pll, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %sys_regs8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sys_regs8, align 8
  %11 = ptrtoint ptr %pll_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_init, align 4
  %id9 = getelementptr inbounds %struct.ccu_pll, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %id9, align 4
  %lock = getelementptr inbounds %struct.ccu_pll, ptr %call7.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ccu_pll_hw_register.__key, i16 noundef signext 3) #5
  %name = getelementptr inbounds %struct.ccu_pll_init_data, ptr %pll_init, i32 0, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %16 = ptrtoint ptr %hw_init to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %hw_init, align 4
  %flags = getelementptr inbounds %struct.ccu_pll_init_data, ptr %pll_init, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %flags12 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 6
  %19 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flags12, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool14.not, ptr @ccu_pll_straight_set_ops, ptr @ccu_pll_gate_to_set_ops
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select, ptr %20, align 4
  %parent_name = getelementptr inbounds %struct.ccu_pll_init_data, ptr %pll_init, i32 0, i32 2
  %22 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_name, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.end5.err_free_pll_crit_edge, label %if.end20

if.end5.err_free_pll_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_pll

if.end20:                                         ; preds = %if.end5
  %fw_name = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data, i32 0, i32 1
  %24 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %fw_name, align 4
  %parent_data22 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 3
  %25 = ptrtoint ptr %parent_data22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %parent_data, ptr %parent_data22, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 5
  %26 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_parents, align 4
  %np = getelementptr inbounds %struct.ccu_pll_init_data, ptr %pll_init, i32 0, i32 5
  %27 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %np, align 4
  %call24 = call i32 @of_clk_hw_register(ptr noundef %28, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end20.cleanup_crit_edge, label %if.end20.err_free_pll_crit_edge

if.end20.err_free_pll_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_pll

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_free_pll:                                     ; preds = %if.end20.err_free_pll_crit_edge, %if.end5.err_free_pll_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end20.err_free_pll_crit_edge ], [ -22, %if.end5.err_free_pll_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %29 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_pll, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %err_free_pll ], [ %call7.i.i, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hw_init) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccu_pll_hw_unregister(ptr noundef %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %pll) #5
  tail call void @kfree(ptr noundef %pll) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_enable(ptr noundef %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call4 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 5
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %7 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sys_regs, align 4
  %9 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_ctl, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or = or i32 %12, 1
  %call19 = call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef %or) #5
  %call20 = call i32 @clk_hw_get_rate(ptr noundef nonnull %call) #5
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and37 = lshr i32 %14, 2
  %shr = and i32 %and37, 63
  %add = add nuw nsw i32 %shr, 1
  %call38 = call fastcc i32 @ccu_pll_reset(ptr noundef %hw, i32 noundef %call20, i32 noundef %add)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %do.body9.cleanup_crit_edge, label %do.end44

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end44:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = call ptr @clk_hw_get_name(ptr noundef %hw) #5
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call46) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %do.body9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %call38, %do.end44 ], [ 0, %do.body9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_pll_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and30 = lshr i32 %6, 8
  %shr31 = and i32 %and30, 8191
  %add32 = add nuw nsw i32 %shr31, 1
  %and49 = lshr i32 %6, 21
  %shr50 = and i32 %and49, 15
  %add51 = add nuw nsw i32 %shr50, 1
  %and = lshr i32 %6, 2
  %shr = and i32 %and, 63
  %add = add nuw nsw i32 %shr, 1
  %div175.i = udiv i32 %parent_rate, %add
  %conv176.i = zext i32 %div175.i to i64
  %conv183.i = zext i32 %add32 to i64
  %mul184.i = mul nuw nsw i64 %conv176.i, %conv183.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i)
  %cmp386.i = icmp ult i64 %mul184.i, 4294967296
  br i1 %cmp386.i, label %if.then394.i, label %if.else400.i, !prof !55

if.then394.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv395.i = trunc i64 %mul184.i to i32
  %div398.i = udiv i32 %conv395.i, %add51
  br label %ccu_pll_calc_freq.exit

if.else400.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add51, i64 %mul184.i) #10, !srcloc !56
  %asmresult1.i592.i = extractvalue { i64, i64 } %7, 1
  %extract.t642.i = trunc i64 %asmresult1.i592.i to i32
  br label %ccu_pll_calc_freq.exit

ccu_pll_calc_freq.exit:                           ; preds = %if.else400.i, %if.then394.i
  %tmp.1.off0.i = phi i32 [ %div398.i, %if.then394.i ], [ %extract.t642.i, %if.else400.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %tmp.1.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #0 align 64 {
entry:
  %nr = alloca i32, align 4
  %nf = alloca i32, align 4
  %od = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #5
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %nr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #5
  %1 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od) #5
  %2 = ptrtoint ptr %od to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %od, align 4
  %3 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parent_rate, align 4
  call fastcc void @ccu_pll_calc_factors(i32 noundef %rate, i32 noundef %4, ptr noundef nonnull %nr, ptr noundef nonnull %nf, ptr noundef nonnull %od)
  %5 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nf, align 4
  %7 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %od, align 4
  %9 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent_rate, align 4
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr, align 4
  %div175.i = udiv i32 %10, %12
  %conv176.i = zext i32 %div175.i to i64
  %conv183.i = zext i32 %6 to i64
  %mul184.i = mul nuw i64 %conv176.i, %conv183.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i)
  %cmp386.i = icmp ult i64 %mul184.i, 4294967296
  br i1 %cmp386.i, label %if.then394.i, label %if.else400.i, !prof !55

if.then394.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv395.i = trunc i64 %mul184.i to i32
  %div398.i = udiv i32 %conv395.i, %8
  br label %ccu_pll_calc_freq.exit

if.else400.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %mul184.i) #10, !srcloc !56
  %asmresult1.i592.i = extractvalue { i64, i64 } %13, 1
  %extract.t642.i = trunc i64 %asmresult1.i592.i to i32
  br label %ccu_pll_calc_freq.exit

ccu_pll_calc_freq.exit:                           ; preds = %if.else400.i, %if.then394.i
  %tmp.1.off0.i = phi i32 [ %div398.i, %if.then394.i ], [ %extract.t642.i, %if.else400.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #5
  ret i32 %tmp.1.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_set_rate_norst(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %nr = alloca i32, align 4
  %nf = alloca i32, align 4
  %od = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #5
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #5
  %1 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nf, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od) #5
  %2 = ptrtoint ptr %od to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %od, align 4, !annotation !57
  call fastcc void @ccu_pll_calc_factors(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef nonnull %nr, ptr noundef nonnull %nf, ptr noundef nonnull %od)
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %5 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nf, align 4
  %7 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %od, align 4
  %sub15 = shl i32 %4, 2
  %shl = add i32 %sub15, 252
  %and16 = and i32 %shl, 252
  %sub41 = shl i32 %6, 8
  %shl42 = add i32 %sub41, 2096896
  %and43 = and i32 %shl42, 2096896
  %or = or i32 %and43, %and16
  %sub68 = shl i32 %8, 21
  %shl69 = add i32 %sub68, 31457280
  %and70 = and i32 %shl69, 31457280
  %or71 = or i32 %or, %and70
  %lock = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 5
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef 33554429, i32 noundef %or71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call75) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_pll_debug_init(ptr noundef %hw, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i.i, ptr @ccu_pll_bits, i32 16)
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %call7.i.i.i, align 8
  %call6 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @ccu_pll_dbgfs_bit_fops) #5
  %arrayidx.1 = getelementptr %struct.ccu_pll_dbgfs_bit, ptr %call7.i.i.i, i32 1
  %3 = call ptr @memcpy(ptr %arrayidx.1, ptr getelementptr inbounds ([4 x %struct.ccu_pll_dbgfs_bit], ptr @ccu_pll_bits, i32 0, i32 1), i32 16)
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hw, ptr %arrayidx.1, align 8
  %call6.1 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx.1, ptr noundef nonnull @ccu_pll_dbgfs_bit_fops) #5
  %arrayidx.2 = getelementptr %struct.ccu_pll_dbgfs_bit, ptr %call7.i.i.i, i32 2
  %5 = call ptr @memcpy(ptr %arrayidx.2, ptr getelementptr inbounds ([4 x %struct.ccu_pll_dbgfs_bit], ptr @ccu_pll_bits, i32 0, i32 2), i32 16)
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hw, ptr %arrayidx.2, align 8
  %call6.2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx.2, ptr noundef nonnull @ccu_pll_dbgfs_bit_fops) #5
  %arrayidx.3 = getelementptr %struct.ccu_pll_dbgfs_bit, ptr %call7.i.i.i, i32 3
  %7 = call ptr @memcpy(ptr %arrayidx.3, ptr getelementptr inbounds ([4 x %struct.ccu_pll_dbgfs_bit], ptr @ccu_pll_bits, i32 0, i32 3), i32 16)
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hw, ptr %arrayidx.3, align 8
  %call6.3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx.3, ptr noundef nonnull @ccu_pll_dbgfs_bit_fops) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 112) #8
  %tobool8.not = icmp eq ptr %call7.i.i.i51, null
  br i1 %tobool8.not, label %for.body.preheader.cleanup_crit_edge, label %for.body13.preheader

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body13.preheader:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %10 = call ptr @memcpy(ptr %call7.i.i.i51, ptr @ccu_pll_flds, i32 28)
  %11 = ptrtoint ptr %call7.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hw, ptr %call7.i.i.i51, align 8
  %call21 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef nonnull %call7.i.i.i51, ptr noundef nonnull @ccu_pll_dbgfs_fld_fops) #5
  %arrayidx14.1 = getelementptr %struct.ccu_pll_dbgfs_fld, ptr %call7.i.i.i51, i32 1
  %12 = call ptr @memcpy(ptr %arrayidx14.1, ptr getelementptr inbounds ([4 x %struct.ccu_pll_dbgfs_fld], ptr @ccu_pll_flds, i32 0, i32 1), i32 28)
  %13 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hw, ptr %arrayidx14.1, align 4
  %call21.1 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx14.1, ptr noundef nonnull @ccu_pll_dbgfs_fld_fops) #5
  %arrayidx14.2 = getelementptr %struct.ccu_pll_dbgfs_fld, ptr %call7.i.i.i51, i32 2
  %14 = call ptr @memcpy(ptr %arrayidx14.2, ptr getelementptr inbounds ([4 x %struct.ccu_pll_dbgfs_fld], ptr @ccu_pll_flds, i32 0, i32 2), i32 28)
  %15 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hw, ptr %arrayidx14.2, align 8
  %call21.2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx14.2, ptr noundef nonnull @ccu_pll_dbgfs_fld_fops) #5
  %arrayidx14.3 = getelementptr %struct.ccu_pll_dbgfs_fld, ptr %call7.i.i.i51, i32 3
  %16 = call ptr @memcpy(ptr %arrayidx14.3, ptr getelementptr inbounds ([4 x %struct.ccu_pll_dbgfs_fld], ptr @ccu_pll_flds, i32 0, i32 3), i32 28)
  %17 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hw, ptr %arrayidx14.3, align 4
  %call21.3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx14.3, ptr noundef nonnull @ccu_pll_dbgfs_fld_fops) #5
  br label %cleanup

cleanup:                                          ; preds = %for.body13.preheader, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccu_pll_reset(ptr nocapture noundef readonly %pll, i32 noundef %ref_clk, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !57
  %conv.i = zext i32 %nr to i64
  %mul1.i = mul nuw nsw i64 %conv.i, 500000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul1.i)
  %cmp168.i = icmp ult i64 %mul1.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !55

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv173.i = trunc i64 %mul1.i to i32
  %div176.i = udiv i32 %conv173.i, %ref_clk
  br label %ccu_pll_lock_delay_us.exit

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %ref_clk, i64 %mul1.i) #10, !srcloc !56
  %asmresult1.i.i = extractvalue { i64, i64 } %1, 1
  %extract.t289.i = trunc i64 %asmresult1.i.i to i32
  br label %ccu_pll_lock_delay_us.exit

ccu_pll_lock_delay_us.exit:                       ; preds = %if.else178.i, %if.then172.i
  %us.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t289.i, %if.else178.i ]
  %mul = mul i32 %us.0.off0.i, 50
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %pll, i32 0, i32 4
  %2 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %pll, i32 0, i32 2
  %4 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %conv = zext i32 %mul to i64
  %call2 = tail call i64 @ktime_get() #5
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i47 = add i64 %call2, %mul.i
  %6 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_regs, align 4
  %8 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_ctl, align 4
  %call656 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call656)
  %tobool.not57 = icmp eq i32 %call656, 0
  br i1 %tobool.not57, label %if.end.lr.ph, label %ccu_pll_lock_delay_us.exit.cond.end33_crit_edge

ccu_pll_lock_delay_us.exit.cond.end33_crit_edge:  ; preds = %ccu_pll_lock_delay_us.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end33

if.end.lr.ph:                                     ; preds = %ccu_pll_lock_delay_us.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool10.not = icmp eq i32 %mul, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %us.0.off0.i)
  %tobool19.not = icmp eq i32 %us.0.off0.i, 0
  br label %if.end

if.end:                                           ; preds = %if.end27.if.end_crit_edge, %if.end.lr.ph
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool7.not = icmp sgt i32 %11, -1
  br i1 %tobool7.not, label %if.end9, label %if.end.cond.false30_crit_edge

if.end.cond.false30_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false30

if.end9:                                          ; preds = %if.end
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %land.lhs.true

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end9
  %call11 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add.i47)
  %cmp3.i = icmp sgt i64 %call11, %add.i47
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %cond.false25

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

cond.false25:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %12(i32 noundef %us.0.off0.i) #5
  br label %if.end27

if.end27:                                         ; preds = %cond.false25, %if.end18.if.end27_crit_edge
  %13 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sys_regs, align 4
  %15 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_ctl, align 4
  %call6 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end27.if.end_crit_edge, label %if.end27.cond.end33_crit_edge

if.end27.cond.end33_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end33

if.end27.if.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sys_regs, align 4
  %19 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_ctl, align 4
  %call17 = call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool28.not = icmp eq i32 %call17, 0
  br i1 %tobool28.not, label %for.end.cond.false30_crit_edge, label %for.end.cond.end33_crit_edge

for.end.cond.end33_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end33

for.end.cond.false30_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false30

cond.false30:                                     ; preds = %for.end.cond.false30_crit_edge, %if.end.cond.false30_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool32.not.inv = icmp slt i32 %22, 0
  %cond = select i1 %tobool32.not.inv, i32 0, i32 -110
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false30, %for.end.cond.end33_crit_edge, %if.end27.cond.end33_crit_edge, %ccu_pll_lock_delay_us.exit.cond.end33_crit_edge
  %cond34 = phi i32 [ %cond, %cond.false30 ], [ %call17, %for.end.cond.end33_crit_edge ], [ %call656, %ccu_pll_lock_delay_us.exit.cond.end33_crit_edge ], [ %call6, %if.end27.cond.end33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %cond34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccu_pll_calc_factors(i32 noundef %rate, i32 noundef %parent_rate, ptr nocapture noundef writeonly %nr, ptr nocapture noundef writeonly %nf, ptr nocapture noundef writeonly %od) unnamed_addr #0 align 64 {
entry:
  %n1 = alloca i32, align 4
  %d1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n1) #5
  %0 = ptrtoint ptr %n1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n1, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1) #5
  %1 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %d1, align 4, !annotation !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -794967297, i32 %parent_rate)
  %2 = icmp ugt i32 %parent_rate, -794967297
  %add = select i1 %2, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27328000, i32 %parent_rate)
  %cmp = icmp ult i32 %parent_rate, 27328000
  %div1 = udiv i32 %parent_rate, 427000
  %cond = select i1 %cmp, i32 %div1, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp2.not58 = icmp ugt i32 %add, %cond
  br i1 %cmp2.not58, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %rate, 1
  %conv18 = zext i32 %mul to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %min_err.062 = phi i32 [ -1, %for.body.lr.ph ], [ %min_err.1, %for.inc.for.body_crit_edge ]
  %nri.059 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3 = udiv i32 %parent_rate, %nri.059
  call void @__sanitizer_cov_trace_const_cmp4(i32 854492, i32 %div3)
  %cmp6 = icmp ugt i32 %div3, 854492
  br i1 %cmp6, label %cond.true7, label %for.body.cond.end9_crit_edge

for.body.cond.end9_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end9

cond.true7:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %div4 = udiv i32 -794967296, %div3
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true7, %for.body.cond.end9_crit_edge
  %cond10 = phi i32 [ %div4, %cond.true7 ], [ 4096, %for.body.cond.end9_crit_edge ]
  %div11 = udiv i32 %mul, %div3
  call void @__sanitizer_cov_trace_cmp4(i32 %div11, i32 %cond10)
  %cmp12.not = icmp ult i32 %div11, %cond10
  br i1 %cmp12.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %n1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond10, ptr %n1, align 4
  %4 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %d1, align 4
  br label %if.end17

if.else:                                          ; preds = %cond.end9
  %div13 = udiv i32 %div3, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div13)
  %cmp14 = icmp ugt i32 %div13, 7
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %n1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %n1, align 4
  %6 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %d1, align 4
  br label %if.end17

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @rational_best_approximation(i32 noundef %mul, i32 noundef %div3, i32 noundef %cond10, i32 noundef 8, ptr noundef nonnull %n1, ptr noundef nonnull %d1) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then15, %if.then
  %7 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n1, align 4
  %9 = ptrtoint ptr %d1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d1, align 4
  %conv176.i = zext i32 %div3 to i64
  %conv183.i = zext i32 %8 to i64
  %mul184.i = mul nuw i64 %conv176.i, %conv183.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul184.i)
  %cmp386.i = icmp ult i64 %mul184.i, 4294967296
  br i1 %cmp386.i, label %if.then394.i, label %if.else400.i, !prof !55

if.then394.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %conv395.i = trunc i64 %mul184.i to i32
  %div398.i = udiv i32 %conv395.i, %10
  br label %ccu_pll_calc_freq.exit

if.else400.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %mul184.i) #10, !srcloc !56
  %asmresult1.i592.i = extractvalue { i64, i64 } %11, 1
  %extract.t642.i = trunc i64 %asmresult1.i592.i to i32
  br label %ccu_pll_calc_freq.exit

ccu_pll_calc_freq.exit:                           ; preds = %if.else400.i, %if.then394.i
  %tmp.1.off0.i = phi i32 [ %div398.i, %if.then394.i ], [ %extract.t642.i, %if.else400.i ]
  %conv = zext i32 %tmp.1.off0.i to i64
  %sub = sub nsw i64 %conv, %conv18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp20 = icmp slt i64 %sub, 0
  %12 = trunc i64 %sub to i32
  %extract.t = sub i32 0, %12
  %cond26.off0 = select i1 %cmp20, i32 %extract.t, i32 %12
  call void @__sanitizer_cov_trace_cmp4(i32 %cond26.off0, i32 %min_err.062)
  %cmp28 = icmp ult i32 %cond26.off0, %min_err.062
  br i1 %cmp28, label %if.then30, label %ccu_pll_calc_freq.exit.for.inc_crit_edge

ccu_pll_calc_freq.exit.for.inc_crit_edge:         ; preds = %ccu_pll_calc_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then30:                                        ; preds = %ccu_pll_calc_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %nri.059, ptr %nr, align 4
  %14 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %nf, align 4
  %mul31 = shl i32 %10, 1
  %15 = ptrtoint ptr %od to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul31, ptr %od, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %ccu_pll_calc_freq.exit.for.inc_crit_edge
  %min_err.1 = phi i32 [ %cond26.off0, %if.then30 ], [ %min_err.062, %ccu_pll_calc_freq.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %nri.059, 1
  %exitcond = icmp eq i32 %nri.059, %cond
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_dbgfs_bit_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ccu_pll_dbgfs_bit_get, ptr noundef null, ptr noundef nonnull @.str.11) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_dbgfs_bit_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_ctl, align 4
  %reg = getelementptr inbounds %struct.ccu_pll_dbgfs_bit, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %add = add i32 %8, %6
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %data) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %mask = getelementptr inbounds %struct.ccu_pll_dbgfs_bit, ptr %priv, i32 0, i32 3
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %13 = zext i1 %tobool to i64
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_dbgfs_fld_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ccu_pll_dbgfs_fld_get, ptr noundef null, ptr noundef nonnull @.str.11) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_dbgfs_fld_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_ctl, align 4
  %reg = getelementptr inbounds %struct.ccu_pll_dbgfs_fld, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %add = add i32 %8, %6
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %data) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %mask = getelementptr inbounds %struct.ccu_pll_dbgfs_fld, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %10
  %lsb = getelementptr inbounds %struct.ccu_pll_dbgfs_fld, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lsb, align 4
  %shr = lshr i32 %and, %14
  %add2 = add i32 %shr, 1
  %conv = zext i32 %add2 to i64
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_set_rate_reset(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %nr = alloca i32, align 4
  %nf = alloca i32, align 4
  %od = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #5
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nf) #5
  %1 = ptrtoint ptr %nf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nf, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od) #5
  %2 = ptrtoint ptr %od to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %od, align 4, !annotation !57
  call fastcc void @ccu_pll_calc_factors(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef nonnull %nr, ptr noundef nonnull %nf, ptr noundef nonnull %od)
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %5 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nf, align 4
  %7 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %od, align 4
  %sub15 = shl i32 %4, 2
  %shl = add i32 %sub15, 252
  %and16 = and i32 %shl, 252
  %sub41 = shl i32 %6, 8
  %shl42 = add i32 %sub41, 2096896
  %and43 = and i32 %shl42, 2096896
  %or = or i32 %and43, %and16
  %sub68 = shl i32 %8, 21
  %shl69 = add i32 %sub68, 31457280
  %and70 = and i32 %shl69, 31457280
  %or71 = or i32 %or, %and70
  %lock = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 5
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %sys_regs = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_pll, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef 33554428, i32 noundef %or71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call81 = tail call fastcc i32 @ccu_pll_reset(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool83.not = icmp eq i32 %call81, 0
  br i1 %tobool83.not, label %entry.if.end91_crit_edge, label %do.end87

entry.if.end91_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

do.end87:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call89 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #5
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call89) #9
  br label %if.end91

if.end91:                                         ; preds = %do.end87, %entry.if.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #5
  ret i32 %call81
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @ccu_pll_hw_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 523, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ccu_pll_gate_to_set_ops, !4, !"ccu_pll_gate_to_set_ops", i1 false, i1 false}
!4 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 479, i32 29}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 113, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ccu_pll_enable._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ccu_pll_enable._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 127, i32 3}
!13 = !{ptr @ccu_pll_enable._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ccu_pll_enable._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 340, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 341, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 342, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 343, i32 2}
!23 = !{ptr @ccu_pll_bits, !24, !"ccu_pll_bits", i1 false, i1 false}
!24 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 339, i32 39}
!25 = !{ptr @ccu_pll_dbgfs_bit_fops, !26, !"ccu_pll_dbgfs_bit_fops", i1 false, i1 false}
!26 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 422, i32 1}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 349, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 351, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 353, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 355, i32 2}
!36 = !{ptr @ccu_pll_flds, !37, !"ccu_pll_flds", i1 false, i1 false}
!37 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 348, i32 39}
!38 = !{ptr @ccu_pll_dbgfs_fld_fops, !39, !"ccu_pll_dbgfs_fld_fops", i1 false, i1 false}
!39 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 436, i32 1}
!40 = !{ptr @ccu_pll_straight_set_ops, !41, !"ccu_pll_straight_set_ops", i1 false, i1 false}
!41 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 489, i32 29}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/baikal-t1/ccu-pll.c", i32 267, i32 3}
!44 = !{ptr @ccu_pll_set_rate_reset._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ccu_pll_set_rate_reset._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148613290, i64 2148613570, i64 2148613904, i64 2148614238}
!57 = !{!"auto-init"}
