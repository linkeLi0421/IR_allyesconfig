; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_rtsym_table = type { ptr, i32, ptr, [0 x %struct.nfp_rtsym] }
%struct.nfp_rtsym = type { ptr, i64, i64, i32, i32, i32 }
%struct.nfp_rtsym_entry = type { i8, i8, i8, i8, i32, i16, i8, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@nfp_rtsym_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013rtsym '%s': type NONE\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfp_rtsym_size\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c\00", [41 x i8] zeroinitializer }, align 32
@nfp_rtsym_size._entry_ptr = internal global ptr @nfp_rtsym_size._entry, section ".printk_index", align 4
@nfp_rtsym_size._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014rtsym '%s': unknown type: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nfp_rtsym_size._entry_ptr.5 = internal global ptr @nfp_rtsym_size._entry.3, section ".printk_index", align 4
@__nfp_rtsym_read._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 267, ptr @.str.8, ptr @.str.9 }, align 1
@.str.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"nfp: rtsym '%s': read out of bounds: off: %lld + len: %zd > size: %lld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__nfp_rtsym_read\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__nfp_rtsym_read._entry_ptr = internal global ptr @__nfp_rtsym_read._entry, section ".printk_index", align 4
@__nfp_rtsym_readl._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 303, ptr @.str.8, ptr @.str.9 }, align 1
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfp: rtsym '%s': readl out of bounds: off: %lld + 4 > size: %lld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__nfp_rtsym_readl\00", [46 x i8] zeroinitializer }, align 32
@__nfp_rtsym_readl._entry_ptr = internal global ptr @__nfp_rtsym_readl._entry, section ".printk_index", align 4
@__nfp_rtsym_readq._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 329, ptr @.str.8, ptr @.str.9 }, align 1
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfp: rtsym '%s': readq out of bounds: off: %lld + 8 > size: %lld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__nfp_rtsym_readq\00", [46 x i8] zeroinitializer }, align 32
@__nfp_rtsym_readq._entry_ptr = internal global ptr @__nfp_rtsym_readq._entry, section ".printk_index", align 4
@__nfp_rtsym_write._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 361, ptr @.str.8, ptr @.str.9 }, align 1
@.str.14 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"nfp: rtsym '%s': write out of bounds: off: %lld + len: %zd > size: %lld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__nfp_rtsym_write\00", [46 x i8] zeroinitializer }, align 32
@__nfp_rtsym_write._entry_ptr = internal global ptr @__nfp_rtsym_write._entry, section ".printk_index", align 4
@__nfp_rtsym_writel._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 388, ptr @.str.8, ptr @.str.9 }, align 1
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"nfp: rtsym '%s': writel out of bounds: off: %lld + 4 > size: %lld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__nfp_rtsym_writel\00", [45 x i8] zeroinitializer }, align 32
@__nfp_rtsym_writel._entry_ptr = internal global ptr @__nfp_rtsym_writel._entry, section ".printk_index", align 4
@__nfp_rtsym_writeq._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 414, ptr @.str.8, ptr @.str.9 }, align 1
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"nfp: rtsym '%s': writeq out of bounds: off: %lld + 8 > size: %lld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__nfp_rtsym_writeq\00", [45 x i8] zeroinitializer }, align 32
@__nfp_rtsym_writeq._entry_ptr = internal global ptr @__nfp_rtsym_writeq._entry, section ".printk_index", align 4
@nfp_rtsym_read_le._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 468, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nfp: rtsym '%s': unsupported or non-scalar size: %lld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_rtsym_read_le\00", [46 x i8] zeroinitializer }, align 32
@nfp_rtsym_read_le._entry_ptr = internal global ptr @nfp_rtsym_read_le._entry, section ".printk_index", align 4
@nfp_rtsym_write_le._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.2, i32 514, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_rtsym_write_le\00", [45 x i8] zeroinitializer }, align 32
@nfp_rtsym_write_le._entry_ptr = internal global ptr @nfp_rtsym_write_le._entry, section ".printk_index", align 4
@nfp_rtsym_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 539, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: rtsym '%s': mapping failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_rtsym_map\00", [18 x i8] zeroinitializer }, align 32
@nfp_rtsym_map._entry_ptr = internal global ptr @nfp_rtsym_map._entry, section ".printk_index", align 4
@nfp_rtsym_map._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 544, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp: rtsym '%s': too small\0A\00", [36 x i8] zeroinitializer }, align 32
@nfp_rtsym_map._entry_ptr.27 = internal global ptr @nfp_rtsym_map._entry.25, section ".printk_index", align 4
@nfp_rtsym_map._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 551, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfp: rtysm '%s': failed to map: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_rtsym_map._entry_ptr.30 = internal global ptr @nfp_rtsym_map._entry.28, section ".printk_index", align 4
@nfp_rtsym_to_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 231, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: rtsym '%s': direct access to non-object rtsym\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_rtsym_to_dest\00", [46 x i8] zeroinitializer }, align 32
@nfp_rtsym_to_dest._entry_ptr = internal global ptr @nfp_rtsym_to_dest._entry, section ".printk_index", align 4
@nfp_rtsym_to_dest._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 247, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nfp: rtsym '%s': unhandled target encoding: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_rtsym_to_dest._entry_ptr.35 = internal global ptr @nfp_rtsym_to_dest._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 23]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 64, i64 4, i64 8]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 64, i64 4, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 212, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 215, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 266, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 302, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 328, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 360, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 387, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 413, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 466, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 512, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 539, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 544, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 550, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 230, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [58 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 246, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__nfp_rtsym_read._entry, ptr @__nfp_rtsym_read._entry_ptr, ptr @__nfp_rtsym_readl._entry, ptr @__nfp_rtsym_readl._entry_ptr, ptr @__nfp_rtsym_readq._entry, ptr @__nfp_rtsym_readq._entry_ptr, ptr @__nfp_rtsym_write._entry, ptr @__nfp_rtsym_write._entry_ptr, ptr @__nfp_rtsym_writel._entry, ptr @__nfp_rtsym_writel._entry_ptr, ptr @__nfp_rtsym_writeq._entry, ptr @__nfp_rtsym_writeq._entry_ptr, ptr @nfp_rtsym_map._entry, ptr @nfp_rtsym_map._entry.25, ptr @nfp_rtsym_map._entry.28, ptr @nfp_rtsym_map._entry_ptr, ptr @nfp_rtsym_map._entry_ptr.27, ptr @nfp_rtsym_map._entry_ptr.30, ptr @nfp_rtsym_read_le._entry, ptr @nfp_rtsym_read_le._entry_ptr, ptr @nfp_rtsym_size._entry, ptr @nfp_rtsym_size._entry.3, ptr @nfp_rtsym_size._entry_ptr, ptr @nfp_rtsym_size._entry_ptr.5, ptr @nfp_rtsym_to_dest._entry, ptr @nfp_rtsym_to_dest._entry.33, ptr @nfp_rtsym_to_dest._entry_ptr, ptr @nfp_rtsym_to_dest._entry_ptr.35, ptr @nfp_rtsym_write_le._entry, ptr @nfp_rtsym_write_le._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_size._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_read_le._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_write_le._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_map._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_map._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_to_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_rtsym_to_dest._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_rtsym_table_read(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_mip_open(ptr noundef %cpp) #9
  %call1 = tail call ptr @__nfp_rtsym_table_read(ptr noundef %cpp, ptr noundef %call)
  tail call void @nfp_mip_close(ptr noundef %call) #9
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_mip_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__nfp_rtsym_table_read(ptr noundef %cpp, ptr noundef %mip) local_unnamed_addr #0 align 64 {
entry:
  %strtab_addr = alloca i32, align 4
  %symtab_addr = alloca i32, align 4
  %strtab_size = alloca i32, align 4
  %symtab_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strtab_addr) #9
  %0 = ptrtoint ptr %strtab_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %strtab_addr, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %symtab_addr) #9
  %1 = ptrtoint ptr %symtab_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %symtab_addr, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strtab_size) #9
  %2 = ptrtoint ptr %strtab_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %strtab_size, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %symtab_size) #9
  %3 = ptrtoint ptr %symtab_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %symtab_size, align 4, !annotation !82
  %tobool.not = icmp eq ptr %mip, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @nfp_mip_strtab(ptr noundef nonnull %mip, ptr noundef nonnull %strtab_addr, ptr noundef nonnull %strtab_size) #9
  call void @nfp_mip_symtab(ptr noundef nonnull %mip, ptr noundef nonnull %symtab_addr, ptr noundef nonnull %symtab_size) #9
  %4 = ptrtoint ptr %symtab_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %symtab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %strtab_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strtab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp ne i32 %7, 0
  %rem = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %sub = add i32 %5, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %8 = ptrtoint ptr %symtab_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %symtab_size, align 4
  %sub7 = add i32 %7, -1
  %or8 = or i32 %sub7, 7
  %add9 = add i32 %or8, 1
  %9 = ptrtoint ptr %strtab_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add9, ptr %strtab_size, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end8.i105

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i105:                                     ; preds = %if.end6
  %10 = ptrtoint ptr %symtab_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %symtab_size, align 4
  %div78 = lshr i32 %11, 4
  %mul = mul i32 %div78, 40
  %12 = ptrtoint ptr %strtab_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strtab_size, align 4
  %add14 = add i32 %mul, %13
  %add15 = add i32 %add14, 17
  %call9.i104 = call noalias align 128 ptr @__kmalloc(i32 noundef %add15, i32 noundef 3264) #12
  %tobool17.not = icmp eq ptr %call9.i104, null
  br i1 %tobool17.not, label %if.end8.i105.cleanup.sink.split_crit_edge, label %if.end19

if.end8.i105.cleanup.sink.split_crit_edge:        ; preds = %if.end8.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end8.i105
  %14 = ptrtoint ptr %call9.i104 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cpp, ptr %call9.i104, align 128
  %15 = ptrtoint ptr %symtab_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %symtab_size, align 4
  %div2179 = lshr i32 %16, 4
  %num = getelementptr inbounds %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 1
  %17 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div2179, ptr %num, align 4
  %arrayidx = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %div2179
  %strtab = getelementptr inbounds %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 2
  %18 = ptrtoint ptr %strtab to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %strtab, align 8
  %19 = ptrtoint ptr %symtab_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %symtab_addr, align 4
  %conv = zext i32 %20 to i64
  %call23 = call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef 117448728, i64 noundef %conv, ptr noundef nonnull %call9.i, i32 noundef %16) #9
  %21 = ptrtoint ptr %symtab_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %symtab_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %22)
  %cmp.not = icmp eq i32 %call23, %22
  br i1 %cmp.not, label %if.end26, label %if.end19.exit_free_cache_crit_edge

if.end19.exit_free_cache_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_free_cache

if.end26:                                         ; preds = %if.end19
  %23 = ptrtoint ptr %strtab_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %strtab_addr, align 4
  %conv27 = zext i32 %24 to i64
  %25 = ptrtoint ptr %strtab to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %strtab, align 8
  %27 = ptrtoint ptr %strtab_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %strtab_size, align 4
  %call29 = call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef 117448728, i64 noundef %conv27, ptr noundef %26, i32 noundef %28) #9
  %29 = ptrtoint ptr %strtab_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %strtab_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %30)
  %cmp30.not = icmp eq i32 %call29, %30
  br i1 %cmp30.not, label %if.end33, label %if.end26.exit_free_cache_crit_edge

if.end26.exit_free_cache_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_free_cache

if.end33:                                         ; preds = %if.end26
  %31 = ptrtoint ptr %strtab to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %strtab, align 8
  %arrayidx35 = getelementptr i8, ptr %32, i32 %call29
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx35, align 1
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp37116 = icmp sgt i32 %35, 0
  br i1 %cmp37116, label %for.body.preheader, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %if.end33
  %36 = ptrtoint ptr %strtab_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %strtab_size, align 4
  br label %for.body

for.body:                                         ; preds = %nfp_rtsym_sw_entry_init.exit.for.body_crit_edge, %for.body.preheader
  %n.0117 = phi i32 [ %inc, %nfp_rtsym_sw_entry_init.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx40 = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %n.0117
  %arrayidx41 = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx41, align 16
  %conv.i = zext i8 %39 to i32
  %type1.i = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %n.0117, i32 3
  %40 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i, ptr %type1.i, align 8
  %41 = ptrtoint ptr %strtab to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %strtab, align 8
  %name.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 5
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %name.i, align 8
  %45 = call i16 @llvm.bswap.i16(i16 %44) #9
  %conv2.i = zext i16 %45 to i32
  %rem.i = urem i32 %conv2.i, %37
  %add.ptr.i = getelementptr i8, ptr %42, i32 %rem.i
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i, ptr %arrayidx40, align 8
  %addr_hi.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 3
  %47 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr_hi.i, align 1
  %conv4.i = zext i8 %48 to i64
  %shl.i = shl nuw nsw i64 %conv4.i, 32
  %addr_lo.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 4
  %49 = ptrtoint ptr %addr_lo.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr_lo.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #9
  %conv5.i = zext i32 %51 to i64
  %or.i = or i64 %shl.i, %conv5.i
  %addr.i = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %n.0117, i32 1
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %or.i, ptr %addr.i, align 8
  %size_hi.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 7
  %53 = ptrtoint ptr %size_hi.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %size_hi.i, align 1
  %conv6.i = zext i8 %54 to i64
  %shl7.i = shl nuw nsw i64 %conv6.i, 32
  %size_lo.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 8
  %55 = ptrtoint ptr %size_lo.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size_lo.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  %conv8.i = zext i32 %57 to i64
  %or9.i = or i64 %shl7.i, %conv8.i
  %size.i = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %n.0117, i32 2
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %or9.i, ptr %size.i, align 8
  %target.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 1
  %59 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %target.i, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %60, label %sw.default.i [
    i8 0, label %for.body.sw.epilog.i_crit_edge
    i8 23, label %sw.bb12.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv10.i = zext i8 %60 to i32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb12.i, %for.body.sw.epilog.i_crit_edge
  %conv10.sink.i = phi i32 [ %conv10.i, %sw.default.i ], [ -7, %sw.bb12.i ], [ -1, %for.body.sw.epilog.i_crit_edge ]
  %target16.i = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %n.0117, i32 4
  %62 = ptrtoint ptr %target16.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv10.sink.i, ptr %target16.i, align 4
  %menum.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 6
  %63 = ptrtoint ptr %menum.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %menum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp.not.i = icmp eq i8 %64, -1
  %island20.i = getelementptr %struct.nfp_rtsym_entry, ptr %call9.i, i32 %n.0117, i32 2
  %65 = ptrtoint ptr %island20.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %island20.i, align 2
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i108

if.then.i108:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %66)
  %67 = icmp ult i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %64)
  %cmp4.i.i = icmp ult i8 %64, 12
  %or.cond.i.i = and i1 %cmp4.i.i, %67
  %conv3.i.i = zext i8 %64 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 4
  %add.i.i = add nuw nsw i32 %conv3.i.i, 4
  %or.i.i = or i32 %shl.i.i, %add.i.i
  %cond.i.i = select i1 %or.cond.i.i, i32 %or.i.i, i32 -1
  br label %nfp_rtsym_sw_entry_init.exit

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp22.not.i = icmp eq i8 %66, -1
  %conv21.i = zext i8 %66 to i32
  %spec.select.i = select i1 %cmp22.not.i, i32 -1, i32 %conv21.i
  br label %nfp_rtsym_sw_entry_init.exit

nfp_rtsym_sw_entry_init.exit:                     ; preds = %if.else.i, %if.then.i108
  %conv21.sink.i = phi i32 [ %cond.i.i, %if.then.i108 ], [ %spec.select.i, %if.else.i ]
  %domain27.i = getelementptr %struct.nfp_rtsym_table, ptr %call9.i104, i32 0, i32 3, i32 %n.0117, i32 5
  %68 = ptrtoint ptr %domain27.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv21.sink.i, ptr %domain27.i, align 8
  %inc = add nuw nsw i32 %n.0117, 1
  %69 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num, align 4
  %cmp37 = icmp slt i32 %inc, %70
  br i1 %cmp37, label %nfp_rtsym_sw_entry_init.exit.for.body_crit_edge, label %nfp_rtsym_sw_entry_init.exit.cleanup.sink.split_crit_edge

nfp_rtsym_sw_entry_init.exit.cleanup.sink.split_crit_edge: ; preds = %nfp_rtsym_sw_entry_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

nfp_rtsym_sw_entry_init.exit.for.body_crit_edge:  ; preds = %nfp_rtsym_sw_entry_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

exit_free_cache:                                  ; preds = %if.end26.exit_free_cache_crit_edge, %if.end19.exit_free_cache_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i104) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %exit_free_cache, %nfp_rtsym_sw_entry_init.exit.cleanup.sink.split_crit_edge, %if.end33.cleanup.sink.split_crit_edge, %if.end8.i105.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call9.i104, %if.end33.cleanup.sink.split_crit_edge ], [ null, %if.end8.i105.cleanup.sink.split_crit_edge ], [ null, %exit_free_cache ], [ %call9.i104, %nfp_rtsym_sw_entry_init.exit.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %symtab_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strtab_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %symtab_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strtab_addr) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_mip_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_mip_strtab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_mip_symtab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_rtsym_count(ptr noundef readonly %rtbl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rtbl, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num = getelementptr inbounds %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_rtsym_get(ptr noundef readonly %rtbl, i32 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rtbl, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num = getelementptr inbounds %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp sgt i32 %1, %idx
  %arrayidx = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %idx
  %spec.select = select i1 %cmp.not, ptr %arrayidx, ptr null
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_rtsym_lookup(ptr noundef readonly %rtbl, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rtbl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num = getelementptr inbounds %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %n.014, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.014 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_rtsym_size(ptr nocapture noundef readonly %sym) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %do.end2 [
    i32 0, label %do.end
    i32 1, label %entry.sw.bb7_crit_edge
    i32 2, label %entry.sw.bb7_crit_edge13
    i32 3, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.sw.bb7_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sym, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4) #14
  br label %return

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %6, i32 noundef %1) #14
  br label %sw.bb7

sw.bb7:                                           ; preds = %do.end2, %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge13
  %size = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  br label %return

return:                                           ; preds = %sw.bb7, %do.end, %entry.return_crit_edge
  %retval.0 = phi i64 [ %8, %sw.bb7 ], [ 0, %do.end ], [ 8, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_rtsym_read(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  %tmp7 = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %1, label %do.end2.i [
    i32 0, label %do.end.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge37
    i32 3, label %entry.nfp_rtsym_size.exit_crit_edge
  ]

entry.nfp_rtsym_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

entry.sw.bb7.i_crit_edge37:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sym, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4) #14
  br label %nfp_rtsym_size.exit

do.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %6, i32 noundef %1) #14
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %do.end2.i, %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge37
  %size.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size.i, align 8
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %sw.bb7.i, %do.end.i, %entry.nfp_rtsym_size.exit_crit_edge
  %retval.0.i = phi i64 [ %8, %sw.bb7.i ], [ 0, %do.end.i ], [ 8, %entry.nfp_rtsym_size.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %9 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %addr, align 8, !annotation !82
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %off)
  %cmp = icmp ult i64 %retval.0.i, %off
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sym, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef %14, i64 noundef %off, i32 noundef %len, i64 noundef %retval.0.i) #14
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_size.exit
  %sub = sub i64 %retval.0.i, %off
  %conv = trunc i64 %sub to i32
  %15 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %len)
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp4 = icmp eq i32 %17, 3
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp7) #9
  %addr8 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 1
  %18 = ptrtoint ptr %addr8 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr8, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #9
  %21 = ptrtoint ptr %tmp7 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tmp7, align 8
  %idxprom = trunc i64 %off to i32
  %arrayidx = getelementptr [8 x i8], ptr %tmp7, i32 0, i32 %idxprom
  %22 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp7) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpp_id, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr, align 8
  %call13 = tail call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef %24, i64 noundef %26, ptr noundef %buf, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %15, %if.then6 ], [ %call13, %if.end12 ], [ %call10, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr nocapture noundef writeonly %cpp_id, ptr nocapture noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %4 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sym, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef %5) #14
  br label %return

if.end:                                           ; preds = %entry
  %addr1 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 1
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr1, align 8
  %add = add i64 %7, %off
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %addr, align 8
  %target = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 4
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %10)
  %cmp2 = icmp eq i32 %10, -7
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @nfp_cpp_mu_locality_lsb(ptr noundef %cpp) #9
  %sh_prom = zext i32 %call4 to i64
  %shl = shl i64 3, %sh_prom
  %neg = xor i64 %shl, -1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr, align 8
  %and = and i64 %12, %neg
  %shl6 = shl i64 2, %sh_prom
  %or = or i64 %and, %shl6
  store i64 %or, ptr %addr, align 8
  %conv = zext i8 %token to i32
  %shl8 = shl nuw nsw i32 %conv, 16
  %conv10 = zext i8 %action to i32
  %shl12 = shl nuw nsw i32 %conv10, 8
  %or9 = or i32 %shl8, %shl12
  %domain = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 5
  %13 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %domain, align 8
  %and14 = and i32 %14, 255
  %or13 = or i32 %and14, %or9
  %or16 = or i32 %or13, 117440512
  br label %if.end44

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18 = icmp slt i32 %10, 0
  br i1 %cmp18, label %do.end22, label %if.else27

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent24 = getelementptr inbounds %struct.device, ptr %call23, i32 0, i32 1
  %15 = ptrtoint ptr %parent24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent24, align 8
  %17 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sym, align 8
  %19 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.34, ptr noundef %18, i32 noundef %20) #14
  br label %return

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and29 = shl i32 %10, 24
  %shl30 = and i32 %and29, 2130706432
  %conv31 = zext i8 %token to i32
  %shl33 = shl nuw nsw i32 %conv31, 16
  %or34 = or i32 %shl30, %shl33
  %conv35 = zext i8 %action to i32
  %shl37 = shl nuw nsw i32 %conv35, 8
  %or38 = or i32 %or34, %shl37
  %domain39 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 5
  %21 = ptrtoint ptr %domain39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %domain39, align 8
  %and40 = and i32 %22, 255
  %or42 = or i32 %and40, %or38
  br label %if.end44

if.end44:                                         ; preds = %if.else27, %if.then3
  %storemerge = phi i32 [ %or42, %if.else27 ], [ %or16, %if.then3 ]
  %23 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %cpp_id, align 4
  br label %return

return:                                           ; preds = %if.end44, %do.end22, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end44 ], [ -22, %do.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_read(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i64 noundef %off, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_rtsym_read(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef %off, ptr noundef %buf, i32 noundef %len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_rtsym_readl(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %0 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr, align 8, !annotation !82
  %add = add i64 %off, 4
  %type.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %do.end2.i [
    i32 0, label %do.end.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge26
    i32 3, label %entry.nfp_rtsym_size.exit_crit_edge
  ]

entry.nfp_rtsym_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

entry.sw.bb7.i_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #14
  br label %nfp_rtsym_size.exit

do.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sym, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %3) #14
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %do.end2.i, %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge26
  %size.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size.i, align 8
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %sw.bb7.i, %do.end.i, %entry.nfp_rtsym_size.exit_crit_edge
  %retval.0.i = phi i64 [ %10, %sw.bb7.i ], [ 0, %do.end.i ], [ 8, %entry.nfp_rtsym_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %retval.0.i)
  %cmp = icmp ugt i64 %add, %retval.0.i
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %nfp_rtsym_size.exit
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sym, align 8
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %16, label %do.end2.i21 [
    i32 0, label %do.end.i19
    i32 1, label %do.end.sw.bb7.i23_crit_edge
    i32 2, label %do.end.sw.bb7.i23_crit_edge27
    i32 3, label %do.end.nfp_rtsym_size.exit25_crit_edge
  ]

do.end.nfp_rtsym_size.exit25_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit25

do.end.sw.bb7.i23_crit_edge27:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i23

do.end.sw.bb7.i23_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i23

do.end.i19:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14) #14
  br label %nfp_rtsym_size.exit25

do.end2.i21:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %14, i32 noundef %16) #14
  br label %sw.bb7.i23

sw.bb7.i23:                                       ; preds = %do.end2.i21, %do.end.sw.bb7.i23_crit_edge, %do.end.sw.bb7.i23_crit_edge27
  %size.i22 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %18 = ptrtoint ptr %size.i22 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i22, align 8
  br label %nfp_rtsym_size.exit25

nfp_rtsym_size.exit25:                            ; preds = %sw.bb7.i23, %do.end.i19, %do.end.nfp_rtsym_size.exit25_crit_edge
  %retval.0.i24 = phi i64 [ %19, %sw.bb7.i23 ], [ 0, %do.end.i19 ], [ 8, %do.end.nfp_rtsym_size.exit25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %14, i64 noundef %off, i64 noundef %retval.0.i24) #14
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_size.exit
  %call3 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpp_id, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr, align 8
  %call6 = tail call i32 @nfp_cpp_readl(ptr noundef %cpp, i32 noundef %21, i64 noundef %23, ptr noundef %value) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %nfp_rtsym_size.exit25
  %retval.0 = phi i32 [ -6, %nfp_rtsym_size.exit25 ], [ %call6, %if.end5 ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_readl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_readl(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i64 noundef %off, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_rtsym_readl(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef %off, ptr noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_rtsym_readq(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %0 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr, align 8, !annotation !82
  %add = add i64 %off, 8
  %type.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %do.end2.i [
    i32 0, label %do.end.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge33
    i32 3, label %entry.nfp_rtsym_size.exit_crit_edge
  ]

entry.nfp_rtsym_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

entry.sw.bb7.i_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #14
  br label %nfp_rtsym_size.exit

do.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sym, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %3) #14
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %do.end2.i, %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge33
  %size.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size.i, align 8
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %sw.bb7.i, %do.end.i, %entry.nfp_rtsym_size.exit_crit_edge
  %retval.0.i = phi i64 [ %10, %sw.bb7.i ], [ 0, %do.end.i ], [ 8, %entry.nfp_rtsym_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %retval.0.i)
  %cmp = icmp ugt i64 %add, %retval.0.i
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %nfp_rtsym_size.exit
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sym, align 8
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %16, label %do.end2.i28 [
    i32 0, label %do.end.i26
    i32 1, label %do.end.sw.bb7.i30_crit_edge
    i32 2, label %do.end.sw.bb7.i30_crit_edge34
    i32 3, label %do.end.nfp_rtsym_size.exit32_crit_edge
  ]

do.end.nfp_rtsym_size.exit32_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit32

do.end.sw.bb7.i30_crit_edge34:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i30

do.end.sw.bb7.i30_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i30

do.end.i26:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14) #14
  br label %nfp_rtsym_size.exit32

do.end2.i28:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %14, i32 noundef %16) #14
  br label %sw.bb7.i30

sw.bb7.i30:                                       ; preds = %do.end2.i28, %do.end.sw.bb7.i30_crit_edge, %do.end.sw.bb7.i30_crit_edge34
  %size.i29 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %18 = ptrtoint ptr %size.i29 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i29, align 8
  br label %nfp_rtsym_size.exit32

nfp_rtsym_size.exit32:                            ; preds = %sw.bb7.i30, %do.end.i26, %do.end.nfp_rtsym_size.exit32_crit_edge
  %retval.0.i31 = phi i64 [ %19, %sw.bb7.i30 ], [ 0, %do.end.i26 ], [ 8, %do.end.nfp_rtsym_size.exit32_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %14, i64 noundef %off, i64 noundef %retval.0.i31) #14
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_size.exit
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp3 = icmp eq i32 %21, 3
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr5 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 1
  %22 = ptrtoint ptr %addr5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr5, align 8
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %value, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpp_id, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %addr, align 8
  %call10 = tail call i32 @nfp_cpp_readq(ptr noundef %cpp, i32 noundef %26, i64 noundef %28, ptr noundef %value) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.then4, %nfp_rtsym_size.exit32
  %retval.0 = phi i32 [ -6, %nfp_rtsym_size.exit32 ], [ 0, %if.then4 ], [ %call10, %if.end9 ], [ %call7, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_readq(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_readq(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i64 noundef %off, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_rtsym_readq(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef %off, ptr noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_rtsym_write(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %do.end2.i [
    i32 0, label %do.end.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge25
    i32 3, label %entry.nfp_rtsym_size.exit_crit_edge
  ]

entry.nfp_rtsym_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

entry.sw.bb7.i_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sym, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4) #14
  br label %nfp_rtsym_size.exit

do.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %6, i32 noundef %1) #14
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %do.end2.i, %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge25
  %size.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size.i, align 8
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %sw.bb7.i, %do.end.i, %entry.nfp_rtsym_size.exit_crit_edge
  %retval.0.i = phi i64 [ %8, %sw.bb7.i ], [ 0, %do.end.i ], [ 8, %entry.nfp_rtsym_size.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %9 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %addr, align 8, !annotation !82
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %off)
  %cmp = icmp ult i64 %retval.0.i, %off
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sym, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef %14, i64 noundef %off, i32 noundef %len, i64 noundef %retval.0.i) #14
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_size.exit
  %call4 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %retval.0.i, %off
  %conv = trunc i64 %sub to i32
  %15 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %len)
  %16 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpp_id, align 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr, align 8
  %call7 = tail call i32 @nfp_cpp_write(ptr noundef %cpp, i32 noundef %17, i64 noundef %19, ptr noundef %buf, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call7, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_write(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_write(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i64 noundef %off, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_rtsym_write(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef %off, ptr noundef %buf, i32 noundef %len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_rtsym_writel(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %0 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr, align 8, !annotation !82
  %add = add i64 %off, 4
  %type.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %do.end2.i [
    i32 0, label %do.end.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge26
    i32 3, label %entry.nfp_rtsym_size.exit_crit_edge
  ]

entry.nfp_rtsym_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

entry.sw.bb7.i_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #14
  br label %nfp_rtsym_size.exit

do.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sym, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %3) #14
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %do.end2.i, %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge26
  %size.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size.i, align 8
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %sw.bb7.i, %do.end.i, %entry.nfp_rtsym_size.exit_crit_edge
  %retval.0.i = phi i64 [ %10, %sw.bb7.i ], [ 0, %do.end.i ], [ 8, %entry.nfp_rtsym_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %retval.0.i)
  %cmp = icmp ugt i64 %add, %retval.0.i
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %nfp_rtsym_size.exit
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sym, align 8
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %16, label %do.end2.i21 [
    i32 0, label %do.end.i19
    i32 1, label %do.end.sw.bb7.i23_crit_edge
    i32 2, label %do.end.sw.bb7.i23_crit_edge27
    i32 3, label %do.end.nfp_rtsym_size.exit25_crit_edge
  ]

do.end.nfp_rtsym_size.exit25_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit25

do.end.sw.bb7.i23_crit_edge27:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i23

do.end.sw.bb7.i23_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i23

do.end.i19:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14) #14
  br label %nfp_rtsym_size.exit25

do.end2.i21:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %14, i32 noundef %16) #14
  br label %sw.bb7.i23

sw.bb7.i23:                                       ; preds = %do.end2.i21, %do.end.sw.bb7.i23_crit_edge, %do.end.sw.bb7.i23_crit_edge27
  %size.i22 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %18 = ptrtoint ptr %size.i22 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i22, align 8
  br label %nfp_rtsym_size.exit25

nfp_rtsym_size.exit25:                            ; preds = %sw.bb7.i23, %do.end.i19, %do.end.nfp_rtsym_size.exit25_crit_edge
  %retval.0.i24 = phi i64 [ %19, %sw.bb7.i23 ], [ 0, %do.end.i19 ], [ 8, %do.end.nfp_rtsym_size.exit25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %14, i64 noundef %off, i64 noundef %retval.0.i24) #14
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_size.exit
  %call3 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpp_id, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr, align 8
  %call6 = tail call i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef %21, i64 noundef %23, i32 noundef %value) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %nfp_rtsym_size.exit25
  %retval.0 = phi i32 [ -6, %nfp_rtsym_size.exit25 ], [ %call6, %if.end5 ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_writel(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_writel(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i64 noundef %off, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_rtsym_writel(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef %off, i32 noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_rtsym_writeq(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %0 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr, align 8, !annotation !82
  %add = add i64 %off, 8
  %type.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %do.end2.i [
    i32 0, label %do.end.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge26
    i32 3, label %entry.nfp_rtsym_size.exit_crit_edge
  ]

entry.nfp_rtsym_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

entry.sw.bb7.i_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #14
  br label %nfp_rtsym_size.exit

do.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sym, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %3) #14
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %do.end2.i, %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge26
  %size.i = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size.i, align 8
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %sw.bb7.i, %do.end.i, %entry.nfp_rtsym_size.exit_crit_edge
  %retval.0.i = phi i64 [ %10, %sw.bb7.i ], [ 0, %do.end.i ], [ 8, %entry.nfp_rtsym_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %retval.0.i)
  %cmp = icmp ugt i64 %add, %retval.0.i
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %nfp_rtsym_size.exit
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #9
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sym, align 8
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %16, label %do.end2.i21 [
    i32 0, label %do.end.i19
    i32 1, label %do.end.sw.bb7.i23_crit_edge
    i32 2, label %do.end.sw.bb7.i23_crit_edge27
    i32 3, label %do.end.nfp_rtsym_size.exit25_crit_edge
  ]

do.end.nfp_rtsym_size.exit25_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit25

do.end.sw.bb7.i23_crit_edge27:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i23

do.end.sw.bb7.i23_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i23

do.end.i19:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14) #14
  br label %nfp_rtsym_size.exit25

do.end2.i21:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %14, i32 noundef %16) #14
  br label %sw.bb7.i23

sw.bb7.i23:                                       ; preds = %do.end2.i21, %do.end.sw.bb7.i23_crit_edge, %do.end.sw.bb7.i23_crit_edge27
  %size.i22 = getelementptr inbounds %struct.nfp_rtsym, ptr %sym, i32 0, i32 2
  %18 = ptrtoint ptr %size.i22 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.i22, align 8
  br label %nfp_rtsym_size.exit25

nfp_rtsym_size.exit25:                            ; preds = %sw.bb7.i23, %do.end.i19, %do.end.nfp_rtsym_size.exit25_crit_edge
  %retval.0.i24 = phi i64 [ %19, %sw.bb7.i23 ], [ 0, %do.end.i19 ], [ 8, %do.end.nfp_rtsym_size.exit25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, ptr noundef %14, i64 noundef %off, i64 noundef %retval.0.i24) #14
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_size.exit
  %call3 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext %action, i8 noundef zeroext %token, i64 noundef %off, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpp_id, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr, align 8
  %call6 = tail call i32 @nfp_cpp_writeq(ptr noundef %cpp, i32 noundef %21, i64 noundef %23, i64 noundef %value) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %nfp_rtsym_size.exit25
  %retval.0 = phi i32 [ -6, %nfp_rtsym_size.exit25 ], [ %call6, %if.end5 ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_writeq(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_writeq(ptr noundef %cpp, ptr nocapture noundef readonly %sym, i64 noundef %off, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__nfp_rtsym_writeq(ptr noundef %cpp, ptr noundef %sym, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef %off, i64 noundef %value)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_rtsym_read_le(ptr noundef readonly %rtbl, ptr noundef %name, ptr noundef writeonly %error) local_unnamed_addr #0 align 64 {
entry:
  %val32 = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #9
  %0 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val32, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %val, align 8, !annotation !82
  %tobool.not.i = icmp eq ptr %rtbl, null
  br i1 %tobool.not.i, label %entry.exit_crit_edge, label %for.cond.preheader.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.cond.preheader.i:                             ; preds = %entry
  %num.i = getelementptr inbounds %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 1
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp sgt i32 %3, 0
  br i1 %cmp13.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.exit_crit_edge

for.cond.preheader.i.exit_crit_edge:              ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %n.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.exit_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %nfp_rtsym_lookup.exit, label %for.cond.i

nfp_rtsym_lookup.exit:                            ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nfp_rtsym_lookup.exit.exit_crit_edge, label %if.end

nfp_rtsym_lookup.exit.exit_crit_edge:             ; preds = %nfp_rtsym_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %nfp_rtsym_lookup.exit
  %type.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %7, label %do.end2.i [
    i32 0, label %nfp_rtsym_size.exit.thread
    i32 1, label %if.end.nfp_rtsym_size.exit_crit_edge
    i32 2, label %if.end.nfp_rtsym_size.exit_crit_edge69
    i32 3, label %if.end.sw.bb3_crit_edge
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

if.end.nfp_rtsym_size.exit_crit_edge69:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

if.end.nfp_rtsym_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %10) #14
  br label %do.end

do.end2.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %12, i32 noundef %7) #14
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %do.end2.i, %if.end.nfp_rtsym_size.exit_crit_edge, %if.end.nfp_rtsym_size.exit_crit_edge69
  %size.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 2
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.48)
  switch i64 %14, label %nfp_rtsym_size.exit.do.end_crit_edge [
    i64 4, label %sw.bb
    i64 8, label %nfp_rtsym_size.exit.sw.bb3_crit_edge
  ]

nfp_rtsym_size.exit.sw.bb3_crit_edge:             ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

nfp_rtsym_size.exit.do.end_crit_edge:             ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb:                                            ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtbl, align 8
  %call.i30 = call i32 @__nfp_rtsym_readl(ptr noundef %16, ptr noundef nonnull %arrayidx.i, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef 0, ptr noundef nonnull %val32) #9
  %17 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val32, align 4
  %conv = zext i32 %18 to i64
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %val, align 8
  br label %exit

sw.bb3:                                           ; preds = %nfp_rtsym_size.exit.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge
  %20 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtbl, align 8
  %call.i31 = call i32 @__nfp_rtsym_readq(ptr noundef %21, ptr noundef nonnull %arrayidx.i, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef 0, ptr noundef nonnull %val) #9
  br label %exit

do.end:                                           ; preds = %nfp_rtsym_size.exit.do.end_crit_edge, %nfp_rtsym_size.exit.thread
  %22 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtbl, align 8
  %call7 = tail call ptr @nfp_cpp_device(ptr noundef %23) #9
  %parent = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %27, label %do.end2.i36 [
    i32 0, label %do.end.i34
    i32 1, label %do.end.sw.bb7.i38_crit_edge
    i32 2, label %do.end.sw.bb7.i38_crit_edge70
    i32 3, label %do.end.nfp_rtsym_size.exit40_crit_edge
  ]

do.end.nfp_rtsym_size.exit40_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit40

do.end.sw.bb7.i38_crit_edge70:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i38

do.end.sw.bb7.i38_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i38

do.end.i34:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 8
  %call.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %30) #14
  br label %nfp_rtsym_size.exit40

do.end2.i36:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 8
  %call6.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %32, i32 noundef %27) #14
  br label %sw.bb7.i38

sw.bb7.i38:                                       ; preds = %do.end2.i36, %do.end.sw.bb7.i38_crit_edge, %do.end.sw.bb7.i38_crit_edge70
  %size.i37 = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 2
  %33 = ptrtoint ptr %size.i37 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size.i37, align 8
  br label %nfp_rtsym_size.exit40

nfp_rtsym_size.exit40:                            ; preds = %sw.bb7.i38, %do.end.i34, %do.end.nfp_rtsym_size.exit40_crit_edge
  %retval.0.i39 = phi i64 [ %34, %sw.bb7.i38 ], [ 0, %do.end.i34 ], [ 8, %do.end.nfp_rtsym_size.exit40_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef %name, i64 noundef %retval.0.i39) #14
  br label %exit

exit:                                             ; preds = %nfp_rtsym_size.exit40, %sw.bb3, %sw.bb, %nfp_rtsym_lookup.exit.exit_crit_edge, %for.cond.i.exit_crit_edge, %for.cond.preheader.i.exit_crit_edge, %entry.exit_crit_edge
  %err.0 = phi i32 [ -22, %nfp_rtsym_size.exit40 ], [ %call.i31, %sw.bb3 ], [ %call.i30, %sw.bb ], [ -2, %nfp_rtsym_lookup.exit.exit_crit_edge ], [ -2, %entry.exit_crit_edge ], [ -2, %for.cond.preheader.i.exit_crit_edge ], [ -2, %for.cond.i.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %error, null
  br i1 %tobool9.not, label %exit.if.end11_crit_edge, label %if.then10

exit.if.end11_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %err.0, ptr %error, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %exit.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool12.not = icmp eq i32 %err.0, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11.cleanup_crit_edge
  %retval.0 = phi i64 [ %37, %if.end14 ], [ -1, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #9
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_rtsym_write_le(ptr noundef readonly %rtbl, ptr noundef %name, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %rtbl, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %num.i = getelementptr inbounds %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 1
  %0 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.i = icmp sgt i32 %1, 0
  br i1 %cmp13.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %n.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %nfp_rtsym_lookup.exit, label %for.cond.i

nfp_rtsym_lookup.exit:                            ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nfp_rtsym_lookup.exit.cleanup_crit_edge, label %if.end

nfp_rtsym_lookup.exit.cleanup_crit_edge:          ; preds = %nfp_rtsym_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_lookup.exit
  %type.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 3
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %do.end2.i [
    i32 0, label %nfp_rtsym_size.exit.thread
    i32 1, label %if.end.nfp_rtsym_size.exit_crit_edge
    i32 2, label %if.end.nfp_rtsym_size.exit_crit_edge60
    i32 3, label %if.end.sw.bb3_crit_edge
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

if.end.nfp_rtsym_size.exit_crit_edge60:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

if.end.nfp_rtsym_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 8
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8) #14
  br label %do.end

do.end2.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %10, i32 noundef %5) #14
  br label %nfp_rtsym_size.exit

nfp_rtsym_size.exit:                              ; preds = %do.end2.i, %if.end.nfp_rtsym_size.exit_crit_edge, %if.end.nfp_rtsym_size.exit_crit_edge60
  %size.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 2
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i64 %12, label %nfp_rtsym_size.exit.do.end_crit_edge [
    i64 4, label %sw.bb
    i64 8, label %nfp_rtsym_size.exit.sw.bb3_crit_edge
  ]

nfp_rtsym_size.exit.sw.bb3_crit_edge:             ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

nfp_rtsym_size.exit.do.end_crit_edge:             ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb:                                            ; preds = %nfp_rtsym_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtbl, align 8
  %conv = trunc i64 %value to i32
  %call.i21 = tail call i32 @__nfp_rtsym_writel(ptr noundef %14, ptr noundef nonnull %arrayidx.i, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef 0, i32 noundef %conv) #9
  br label %cleanup

sw.bb3:                                           ; preds = %nfp_rtsym_size.exit.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge
  %15 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtbl, align 8
  %call.i22 = tail call i32 @__nfp_rtsym_writeq(ptr noundef %16, ptr noundef nonnull %arrayidx.i, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %value) #9
  br label %cleanup

do.end:                                           ; preds = %nfp_rtsym_size.exit.do.end_crit_edge, %nfp_rtsym_size.exit.thread
  %17 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtbl, align 8
  %call7 = tail call ptr @nfp_cpp_device(ptr noundef %18) #9
  %parent = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %22, label %do.end2.i27 [
    i32 0, label %do.end.i25
    i32 1, label %do.end.sw.bb7.i29_crit_edge
    i32 2, label %do.end.sw.bb7.i29_crit_edge61
    i32 3, label %do.end.nfp_rtsym_size.exit31_crit_edge
  ]

do.end.nfp_rtsym_size.exit31_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_rtsym_size.exit31

do.end.sw.bb7.i29_crit_edge61:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i29

do.end.sw.bb7.i29_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i29

do.end.i25:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 8
  %call.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %25) #14
  br label %nfp_rtsym_size.exit31

do.end2.i27:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %call6.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %27, i32 noundef %22) #14
  br label %sw.bb7.i29

sw.bb7.i29:                                       ; preds = %do.end2.i27, %do.end.sw.bb7.i29_crit_edge, %do.end.sw.bb7.i29_crit_edge61
  %size.i28 = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 2
  %28 = ptrtoint ptr %size.i28 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size.i28, align 8
  br label %nfp_rtsym_size.exit31

nfp_rtsym_size.exit31:                            ; preds = %sw.bb7.i29, %do.end.i25, %do.end.nfp_rtsym_size.exit31_crit_edge
  %retval.0.i30 = phi i64 [ %29, %sw.bb7.i29 ], [ 0, %do.end.i25 ], [ 8, %do.end.nfp_rtsym_size.exit31_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20, ptr noundef %name, i64 noundef %retval.0.i30) #14
  br label %cleanup

cleanup:                                          ; preds = %nfp_rtsym_size.exit31, %sw.bb3, %sw.bb, %nfp_rtsym_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %nfp_rtsym_lookup.exit.cleanup_crit_edge ], [ -22, %nfp_rtsym_size.exit31 ], [ %call.i22, %sw.bb3 ], [ %call.i21, %sw.bb ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.cond.preheader.i.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_rtsym_map(ptr noundef readonly %rtbl, ptr noundef %name, ptr noundef %id, i32 noundef %min_size, ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  %cpp_id = alloca i32, align 4
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpp_id) #9
  %0 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpp_id, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %addr, align 8, !annotation !82
  %tobool.not.i = icmp eq ptr %rtbl, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %num.i = getelementptr inbounds %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 1
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp sgt i32 %3, 0
  br i1 %cmp13.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %n.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %nfp_rtsym_lookup.exit, label %for.cond.i

nfp_rtsym_lookup.exit:                            ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nfp_rtsym_lookup.exit.cleanup_crit_edge, label %if.end

nfp_rtsym_lookup.exit.cleanup_crit_edge:          ; preds = %nfp_rtsym_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %nfp_rtsym_lookup.exit
  %6 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtbl, align 8
  %call2 = call fastcc i32 @nfp_rtsym_to_dest(ptr noundef %7, ptr noundef nonnull %arrayidx.i, i8 noundef zeroext 32, i8 noundef zeroext 0, i64 noundef 0, ptr noundef nonnull %cpp_id, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtbl, align 8
  %call6 = tail call ptr @nfp_cpp_device(ptr noundef %9) #9
  %parent = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef %name) #14
  %12 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %size = getelementptr %struct.nfp_rtsym_table, ptr %rtbl, i32 0, i32 3, i32 %n.014.i, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  %conv = zext i32 %min_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv)
  %cmp = icmp ult i64 %14, %conv
  %15 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtbl, align 8
  br i1 %cmp, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call ptr @nfp_cpp_device(ptr noundef %16) #9
  %parent16 = getelementptr inbounds %struct.device, ptr %call15, i32 0, i32 1
  %17 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef %name) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpp_id, align 4
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %addr, align 8
  %conv21 = trunc i64 %14 to i32
  %call22 = tail call ptr @nfp_cpp_map_area(ptr noundef %16, ptr noundef %id, i32 noundef %20, i64 noundef %22, i32 noundef %conv21, ptr noundef %area) #9
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtbl, align 8
  %call29 = tail call ptr @nfp_cpp_device(ptr noundef %24) #9
  %parent30 = getelementptr inbounds %struct.device, ptr %call29, i32 0, i32 1
  %25 = ptrtoint ptr %parent30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent30, align 8
  %27 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end18.cleanup_crit_edge, %do.end13, %do.end, %nfp_rtsym_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %do.end ], [ inttoptr (i32 -22 to ptr), %do.end13 ], [ %call22, %do.end27 ], [ %call22, %if.end18.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %nfp_rtsym_lookup.exit.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.preheader.i.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpp_id) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_map_area(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_mu_locality_lsb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 212, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfp_rtsym_size._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfp_rtsym_size._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 215, i32 3}
!8 = !{ptr @nfp_rtsym_size._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfp_rtsym_size._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 266, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__nfp_rtsym_read._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @__nfp_rtsym_read._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 302, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__nfp_rtsym_readl._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @__nfp_rtsym_readl._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 328, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__nfp_rtsym_readq._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @__nfp_rtsym_readq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 360, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__nfp_rtsym_write._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @__nfp_rtsym_write._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 387, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__nfp_rtsym_writel._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @__nfp_rtsym_writel._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 413, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__nfp_rtsym_writeq._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @__nfp_rtsym_writeq._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 466, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfp_rtsym_read_le._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfp_rtsym_read_le._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 512, i32 3}
!49 = !{ptr @nfp_rtsym_write_le._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nfp_rtsym_write_le._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 539, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nfp_rtsym_map._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfp_rtsym_map._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 544, i32 3}
!58 = !{ptr @nfp_rtsym_map._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfp_rtsym_map._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 550, i32 3}
!62 = !{ptr @nfp_rtsym_map._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @nfp_rtsym_map._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 230, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nfp_rtsym_to_dest._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @nfp_rtsym_to_dest._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_rtsym.c", i32 246, i32 3}
!71 = !{ptr @nfp_rtsym_to_dest._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @nfp_rtsym_to_dest._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
