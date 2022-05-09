; ModuleID = '/llk/IR_all_yes/drivers/clk/baikal-t1/ccu-div.c_pt.bc'
source_filename = "../drivers/clk/baikal-t1/ccu-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ccu_div_dbgfs_bit = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccu_div = type { %struct.clk_hw, i32, i32, ptr, %struct.spinlock, %union.anon.65, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.65 = type { i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_div_init_data = type { i32, ptr, ptr, i32, ptr, ptr, i32, %union.anon.67, i32, i32 }
%union.anon.67 = type { i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ccu_div_hw_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&div->lock\00", [21 x i8] zeroinitializer }, align 32
@ccu_div_var_gate_to_set_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_var_enable, ptr @ccu_div_gate_disable, ptr @ccu_div_gate_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_div_var_recalc_rate, ptr @ccu_div_var_round_rate, ptr null, ptr null, ptr null, ptr @ccu_div_var_set_rate_fast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_var_debug_init }, [60 x i8] zeroinitializer }, align 32
@ccu_div_var_nogate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_var_recalc_rate, ptr @ccu_div_var_round_rate, ptr null, ptr null, ptr null, ptr @ccu_div_var_set_rate_slow, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_var_debug_init }, [60 x i8] zeroinitializer }, align 32
@ccu_div_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_gate_enable, ptr @ccu_div_gate_disable, ptr @ccu_div_gate_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_div_fixed_recalc_rate, ptr @ccu_div_fixed_round_rate, ptr null, ptr null, ptr null, ptr @ccu_div_fixed_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_gate_debug_init }, [60 x i8] zeroinitializer }, align 32
@ccu_div_fixed_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_fixed_recalc_rate, ptr @ccu_div_fixed_round_rate, ptr null, ptr null, ptr null, ptr @ccu_div_fixed_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_fixed_debug_init }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ccu_div_var_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bt1-ccu-div: Can't enable '%s' with no parent\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ccu_div_var_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/baikal-t1/ccu-div.c\00", [32 x i8] zeroinitializer }, align 32
@ccu_div_var_enable._entry_ptr = internal global ptr @ccu_div_var_enable._entry, section ".printk_index", align 4
@ccu_div_var_enable._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bt1-ccu-div: Divider '%s' lock timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@ccu_div_var_enable._entry_ptr.6 = internal global ptr @ccu_div_var_enable._entry.4, section ".printk_index", align 4
@ccu_div_bits = internal constant { [4 x %struct.ccu_div_dbgfs_bit], [48 x i8] } { [4 x %struct.ccu_div_dbgfs_bit] [%struct.ccu_div_dbgfs_bit { ptr null, ptr @.str.7, i32 1 }, %struct.ccu_div_dbgfs_bit { ptr null, ptr @.str.8, i32 2 }, %struct.ccu_div_dbgfs_bit { ptr null, ptr @.str.11, i32 4 }, %struct.ccu_div_dbgfs_bit { ptr null, ptr @.str.9, i32 -2147483648 }], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"div_en\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_rst\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_lock\00", [23 x i8] zeroinitializer }, align 32
@ccu_div_dbgfs_bit_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ccu_div_dbgfs_bit_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_clkdiv\00", [21 x i8] zeroinitializer }, align 32
@ccu_div_dbgfs_var_clkdiv_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ccu_div_dbgfs_var_clkdiv_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_bypass\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@ccu_div_var_set_rate_slow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.13, ptr @.str.3, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ccu_div_var_set_rate_slow\00", [38 x i8] zeroinitializer }, align 32
@ccu_div_var_set_rate_slow._entry_ptr = internal global ptr @ccu_div_var_set_rate_slow._entry, section ".printk_index", align 4
@ccu_div_dbgfs_fixed_clkdiv_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ccu_div_dbgfs_fixed_clkdiv_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 555, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"ccu_div_var_gate_to_set_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 496, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"ccu_div_var_nogate_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 506, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"ccu_div_gate_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 513, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"ccu_div_fixed_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 523, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 119, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 135, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"ccu_div_bits\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 322, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 435, i32 15 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 440, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 448, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"ccu_div_dbgfs_bit_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 458, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"ccu_div_dbgfs_var_clkdiv_fops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 404, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 325, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 391, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 238, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"ccu_div_dbgfs_fixed_clkdiv_fops\00", align 1
@___asan_gen_.84 = private constant [35 x i8] c"../drivers/clk/baikal-t1/ccu-div.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 415, i32 1 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ccu_div_var_enable._entry, ptr @ccu_div_var_enable._entry.4, ptr @ccu_div_var_enable._entry_ptr, ptr @ccu_div_var_enable._entry_ptr.6, ptr @ccu_div_var_set_rate_slow._entry, ptr @ccu_div_var_set_rate_slow._entry_ptr, ptr @ccu_div_hw_register.__key, ptr @.str, ptr @ccu_div_var_gate_to_set_ops, ptr @ccu_div_var_nogate_ops, ptr @ccu_div_gate_ops, ptr @ccu_div_fixed_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @ccu_div_bits, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ccu_div_dbgfs_bit_fops, ptr @.str.10, ptr @ccu_div_dbgfs_var_clkdiv_fops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ccu_div_dbgfs_fixed_clkdiv_fops], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_hw_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_var_gate_to_set_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_var_nogate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_fixed_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_var_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_var_enable._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_bits to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_dbgfs_bit_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_dbgfs_var_clkdiv_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_var_set_rate_slow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_dbgfs_fixed_clkdiv_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccu_div_reset_domain(ptr noundef %div) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %div, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 7
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 3
  %2 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 2
  %4 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ccu_div_hw_register(ptr noundef readonly %div_init) local_unnamed_addr #0 align 64 {
entry:
  %parent_data = alloca %struct.clk_parent_data, align 4
  %hw_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data) #12
  %0 = call ptr @memset(ptr %parent_data, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hw_init) #12
  %1 = call ptr @memset(ptr %hw_init, i32 0, i32 28)
  %tobool.not = icmp eq ptr %div_init, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #15
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hw_init, ptr %init, align 8
  %4 = ptrtoint ptr %div_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_init, align 4
  %id6 = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id6, align 4
  %base = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg_ctl, align 8
  %sys_regs = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 4
  %10 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_regs, align 4
  %sys_regs7 = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %sys_regs7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sys_regs7, align 4
  %flags = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %flags8 = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flags8, align 8
  %features = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 9
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %features9 = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %features9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %features9, align 4
  %lock = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ccu_div_hw_register.__key, i16 noundef signext 3) #12
  %name = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %21 = ptrtoint ptr %hw_init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %hw_init, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %flags13 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 6
  %24 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flags13, align 4
  %type = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 6
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.end5.err_free_div_crit_edge [
    i32 0, label %if.then14
    i32 1, label %if.then27
    i32 2, label %if.then32
  ]

if.end5.err_free_div_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_div

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool16.not, ptr @ccu_div_var_nogate_ops, ptr @ccu_div_var_gate_to_set_ops
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %sub21 = sub i32 28, %32
  %shr = lshr i32 -1, %sub21
  %and22 = and i32 %shr, -16
  br label %if.end37

if.then27:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %ops28 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 1
  %33 = ptrtoint ptr %ops28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ccu_div_gate_ops, ptr %ops28, align 4
  %34 = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  br label %if.end37

if.then32:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %ops33 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 1
  %37 = ptrtoint ptr %ops33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ccu_div_fixed_ops, ptr %ops33, align 4
  %38 = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 7
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then27, %if.then14
  %.sink = phi i32 [ %36, %if.then27 ], [ %40, %if.then32 ], [ %and22, %if.then14 ]
  %41 = getelementptr inbounds %struct.ccu_div, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %41, align 4
  %parent_name = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 2
  %43 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent_name, align 4
  %tobool38.not = icmp eq ptr %44, null
  br i1 %tobool38.not, label %if.end37.err_free_div_crit_edge, label %if.end40

if.end37.err_free_div_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_div

if.end40:                                         ; preds = %if.end37
  %fw_name = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data, i32 0, i32 1
  %45 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %fw_name, align 4
  %parent_data42 = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 3
  %46 = ptrtoint ptr %parent_data42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %parent_data, ptr %parent_data42, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %hw_init, i32 0, i32 5
  %47 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %num_parents, align 4
  %np = getelementptr inbounds %struct.ccu_div_init_data, ptr %div_init, i32 0, i32 5
  %48 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %np, align 4
  %call44 = call i32 @of_clk_hw_register(ptr noundef %49, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end40.cleanup_crit_edge, label %if.end40.err_free_div_crit_edge

if.end40.err_free_div_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_div

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_free_div:                                     ; preds = %if.end40.err_free_div_crit_edge, %if.end37.err_free_div_crit_edge, %if.end5.err_free_div_crit_edge
  %ret.0 = phi i32 [ %call44, %if.end40.err_free_div_crit_edge ], [ -22, %if.end5.err_free_div_crit_edge ], [ -22, %if.end37.err_free_div_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %50 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_div, %if.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %50, %err_free_div ], [ %call7.i.i, %if.end40.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hw_init) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccu_div_hw_unregister(ptr noundef %div) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %div) #12
  tail call void @kfree(ptr noundef %div) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_var_enable(ptr noundef %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call4 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 4
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call17 = call i32 @clk_hw_get_rate(ptr noundef nonnull %call) #12
  %7 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and.i = and i32 %11, %9
  %shr.i = lshr i32 %and.i, 4
  %call19 = call fastcc i32 @ccu_div_var_update_clkdiv(ptr noundef %hw, i32 noundef %call17, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %do.end31.critedge

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sys_regs, align 4
  %14 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_ctl, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #12
  br label %cleanup

do.end31.critedge:                                ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #12
  %call33 = call ptr @clk_hw_get_name(ptr noundef %hw) #12
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call33) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end31.critedge, %if.then21, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then21 ], [ %call19, %do.end31.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_div_gate_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_gate_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_var_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #12
  %5 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and.i = and i32 %9, %7
  %shr.i = lshr i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %tobool.not.i = icmp ult i32 %and.i, 16
  %..i = select i1 %tobool.not.i, i32 1, i32 %shr.i
  %div1.i = udiv i32 %parent_rate, %..i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %div1.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_div_var_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not.i = icmp ult i32 %1, %rate
  br i1 %cmp.not.i, label %entry.ccu_div_var_calc_divider.exit_crit_edge, label %cond.true.i

entry.ccu_div_var_calc_divider.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ccu_div_var_calc_divider.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %1, %rate
  br label %ccu_div_var_calc_divider.exit

ccu_div_var_calc_divider.exit:                    ; preds = %cond.true.i, %entry.ccu_div_var_calc_divider.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %entry.ccu_div_var_calc_divider.exit_crit_edge ]
  %shr.i = lshr i32 %4, 4
  %5 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %shr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 %5
  %div1.i = udiv i32 %1, %..i
  ret i32 %div1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_var_set_rate_fast(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.not.i = icmp ugt i32 %rate, %parent_rate
  br i1 %cmp.not.i, label %entry.ccu_div_var_calc_divider.exit_crit_edge, label %cond.true.i

entry.ccu_div_var_calc_divider.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ccu_div_var_calc_divider.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %parent_rate, %rate
  br label %ccu_div_var_calc_divider.exit

ccu_div_var_calc_divider.exit:                    ; preds = %cond.true.i, %entry.ccu_div_var_calc_divider.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %entry.ccu_div_var_calc_divider.exit_crit_edge ]
  %shr.i = lshr i32 %2, 4
  %3 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %shr.i) #12
  %shl.i = shl nuw i32 %3, 4
  %and.i = and i32 %shl.i, %2
  %lock = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_ctl, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %or = or i32 %9, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %or, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_div_var_debug_init(ptr noundef %hw, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 6
  %features = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  %add = or i32 %and, 2
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and2 = lshr i32 %3, 4
  %and2.lobit = and i32 %and2, 1
  %add8 = add nuw nsw i32 %add, %and2.lobit
  %4 = mul nuw nsw i32 %add8, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #17
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %bidx.077 = phi i32 [ %inc43, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %didx.075 = phi i32 [ %didx.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ccu_div_dbgfs_bit], ptr @ccu_div_bits, i32 0, i32 %bidx.077
  %name10 = getelementptr [4 x %struct.ccu_div_dbgfs_bit], ptr @ccu_div_bits, i32 0, i32 %bidx.077, i32 1
  %5 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name10, align 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and12 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %for.body
  %call14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.7, ptr noundef %6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features, align 4
  %and19 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.end17
  %call22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.8, ptr noundef %6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.for.inc_crit_edge, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %arrayidx26 = getelementptr %struct.ccu_div_dbgfs_bit, ptr %call8.i.i, i32 %didx.075
  %11 = call ptr @memcpy(ptr %arrayidx26, ptr %arrayidx, i32 12)
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hw, ptr %arrayidx26, align 4
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %and31 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end25.if.end38_crit_edge, label %land.lhs.true33

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end25
  %call34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.9, ptr noundef %6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true33.if.end38_crit_edge

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  %mask = getelementptr %struct.ccu_div_dbgfs_bit, ptr %call8.i.i, i32 %didx.075, i32 2
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 134217728, ptr %mask, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true33.if.end38_crit_edge, %if.end25.if.end38_crit_edge
  %name40 = getelementptr %struct.ccu_div_dbgfs_bit, ptr %call8.i.i, i32 %didx.075, i32 1
  %16 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name40, align 4
  %call42 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %17, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %arrayidx26, ptr noundef nonnull @ccu_div_dbgfs_bit_fops) #12
  %inc = add i32 %didx.075, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %land.lhs.true21.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %didx.1 = phi i32 [ %inc, %if.end38 ], [ %didx.075, %land.lhs.true21.for.inc_crit_edge ], [ %didx.075, %land.lhs.true.for.inc_crit_edge ]
  %inc43 = add nuw nsw i32 %bidx.077, 1
  %exitcond.not = icmp eq i32 %inc43, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef %hw, ptr noundef nonnull @ccu_div_dbgfs_var_clkdiv_fops) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccu_div_var_update_clkdiv(ptr nocapture noundef readonly %div, i32 noundef %parent_rate, i32 noundef %divider) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %divider)
  %tobool.not.i = icmp eq i32 %divider, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 %divider
  %conv.i = zext i32 %..i to i64
  %mul1.i = mul nuw i64 %conv.i, 4000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul1.i)
  %cmp174.i = icmp ult i64 %mul1.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !53

if.then178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv179.i = trunc i64 %mul1.i to i32
  %div182.i = udiv i32 %conv179.i, %parent_rate
  br label %ccu_div_lock_delay_ns.exit

if.else184.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul1.i) #19, !srcloc !54
  %asmresult1.i.i = extractvalue { i64, i64 } %1, 1
  %extract.t295.i = trunc i64 %asmresult1.i.i to i32
  br label %ccu_div_lock_delay_ns.exit

ccu_div_lock_delay_ns.exit:                       ; preds = %if.else184.i, %if.then178.i
  %ns.0.off0.i = phi i32 [ %div182.i, %if.then178.i ], [ %extract.t295.i, %if.else184.i ]
  %features = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 7
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -2147483648, i32 134217728
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 3
  %4 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %div, i32 0, i32 2
  %6 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %sub.i = add i32 %ns.0.off0.i, 999
  %div.i = udiv i32 %sub.i, 1000
  br label %cond.false8.i

cond.false8.i:                                    ; preds = %do.cond.cond.false8.i_crit_edge, %ccu_div_lock_delay_ns.exit
  %count.0 = phi i32 [ 50, %ccu_div_lock_delay_ns.exit ], [ %dec, %do.cond.cond.false8.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %8(i32 noundef %div.i) #12
  %9 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sys_regs, align 4
  %11 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_ctl, align 4
  %call4 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %val) #12
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and5 = and i32 %14, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.cond, label %cond.false8.i.cleanup_crit_edge

cond.false8.i.cleanup_crit_edge:                  ; preds = %cond.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond:                                          ; preds = %cond.false8.i
  %dec = add nsw i32 %count.0, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %do.cond.cleanup_crit_edge, label %do.cond.cond.false8.i_crit_edge

do.cond.cond.false8.i_crit_edge:                  ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false8.i

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %cond.false8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.false8.i.cleanup_crit_edge ], [ -110, %do.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_dbgfs_bit_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ccu_div_dbgfs_bit_get, ptr noundef null, ptr noundef nonnull @.str.12) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_dbgfs_bit_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_ctl, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %data) #12
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %mask = getelementptr inbounds %struct.ccu_div_dbgfs_bit, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %11 = zext i1 %tobool to i64
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_dbgfs_var_clkdiv_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ccu_div_dbgfs_var_clkdiv_get, ptr noundef null, ptr noundef nonnull @.str.12) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_dbgfs_var_clkdiv_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_ctl, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %data) #12
  %5 = getelementptr inbounds %struct.ccu_div, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %and.i = and i32 %9, %7
  %shr.i = lshr i32 %and.i, 4
  %conv = zext i32 %shr.i to i64
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_var_set_rate_slow(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.not.i = icmp ugt i32 %rate, %parent_rate
  br i1 %cmp.not.i, label %entry.ccu_div_var_calc_divider.exit_crit_edge, label %cond.true.i

entry.ccu_div_var_calc_divider.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ccu_div_var_calc_divider.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %parent_rate, %rate
  br label %ccu_div_var_calc_divider.exit

ccu_div_var_calc_divider.exit:                    ; preds = %cond.true.i, %entry.ccu_div_var_calc_divider.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %entry.ccu_div_var_calc_divider.exit_crit_edge ]
  %shr.i = lshr i32 %2, 4
  %3 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %shr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %ccu_div_var_calc_divider.exit.if.else_crit_edge

ccu_div_var_calc_divider.exit.if.else_crit_edge:  ; preds = %ccu_div_var_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %ccu_div_var_calc_divider.exit
  %features = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ccu_div_var_calc_divider.exit.if.else_crit_edge
  %features1 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 7
  %6 = ptrtoint ptr %features1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features1, align 4
  %and2 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.end13_crit_edge, label %if.then4

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then4:                                         ; preds = %if.else
  %call.off = add nsw i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %if.then4.if.end13_crit_edge, label %if.else8

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp9 = icmp eq i32 %3, 3
  %spec.store.select = select i1 %cmp9, i32 4, i32 %3
  br label %if.end13

if.end13:                                         ; preds = %if.else8, %if.then4.if.end13_crit_edge, %if.else.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %divider.0 = phi i32 [ %spec.store.select, %if.else8 ], [ %3, %if.else.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %if.then4.if.end13_crit_edge ]
  %shl.i = shl nuw i32 %divider.0, 4
  %and.i = and i32 %shl.i, %2
  %lock = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_ctl, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %call23 = tail call fastcc i32 @ccu_div_var_update_clkdiv(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %divider.0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end13.if.end33_crit_edge, label %do.end29

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end29:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call31) #16
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %if.end13.if.end33_crit_edge
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_gate_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sys_regs = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_regs, align 4
  %reg_ctl = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_ctl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_div_fixed_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 %2
  %div1.i = udiv i32 %parent_rate, %..i
  ret i32 %div1.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_div_fixed_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = getelementptr inbounds %struct.ccu_div, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 %4
  %div1.i = udiv i32 %1, %..i
  ret i32 %div1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_div_fixed_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_div_gate_debug_init(ptr noundef %hw, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memcpy(ptr %call7.i, ptr @ccu_div_bits, i32 12)
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %call7.i, align 8
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef nonnull %call7.i, ptr noundef nonnull @ccu_div_dbgfs_bit_fops) #12
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %dentry, ptr noundef %hw, ptr noundef nonnull @ccu_div_dbgfs_fixed_clkdiv_fops) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_dbgfs_fixed_clkdiv_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ccu_div_dbgfs_fixed_clkdiv_get, ptr noundef null, ptr noundef nonnull @.str.12) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccu_div_dbgfs_fixed_clkdiv_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %val) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ccu_div, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_div_fixed_debug_init(ptr noundef %hw, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %dentry, ptr noundef %hw, ptr noundef nonnull @ccu_div_dbgfs_fixed_clkdiv_fops) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @ccu_div_hw_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 555, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ccu_div_var_gate_to_set_ops, !4, !"ccu_div_var_gate_to_set_ops", i1 false, i1 false}
!4 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 496, i32 29}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 119, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ccu_div_var_enable._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ccu_div_var_enable._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 135, i32 3}
!13 = !{ptr @ccu_div_var_enable._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ccu_div_var_enable._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 435, i32 15}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 440, i32 15}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 448, i32 15}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 458, i32 29}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 325, i32 2}
!25 = !{ptr @ccu_div_bits, !26, !"ccu_div_bits", i1 false, i1 false}
!26 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 322, i32 39}
!27 = !{ptr @ccu_div_dbgfs_bit_fops, !28, !"ccu_div_dbgfs_bit_fops", i1 false, i1 false}
!28 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 391, i32 1}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ccu_div_dbgfs_var_clkdiv_fops, !31, !"ccu_div_dbgfs_var_clkdiv_fops", i1 false, i1 false}
!31 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 404, i32 1}
!32 = !{ptr @ccu_div_var_nogate_ops, !33, !"ccu_div_var_nogate_ops", i1 false, i1 false}
!33 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 506, i32 29}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 238, i32 3}
!36 = !{ptr @ccu_div_var_set_rate_slow._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ccu_div_var_set_rate_slow._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ccu_div_gate_ops, !39, !"ccu_div_gate_ops", i1 false, i1 false}
!39 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 513, i32 29}
!40 = !{ptr @ccu_div_dbgfs_fixed_clkdiv_fops, !41, !"ccu_div_dbgfs_fixed_clkdiv_fops", i1 false, i1 false}
!41 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 415, i32 1}
!42 = !{ptr @ccu_div_fixed_ops, !43, !"ccu_div_fixed_ops", i1 false, i1 false}
!43 = !{!"../drivers/clk/baikal-t1/ccu-div.c", i32 523, i32 29}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148613601, i64 2148613881, i64 2148614215, i64 2148614549}
