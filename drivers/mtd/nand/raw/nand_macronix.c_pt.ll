; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_macronix.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_macronix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_op_cmd_instr = type { i8 }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }
%struct.nand_op_instr = type { i32, %union.anon.47, i32 }
%union.anon.47 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.48, i8 }
%union.anon.48 = type { ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }

@macronix_nand_manuf_ops = dso_local constant { %struct.nand_manufacturer_ops, [16 x i8] } { %struct.nand_manufacturer_ops { ptr null, ptr @macronix_nand_init, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", [53 x i8] zeroinitializer }, align 32
@macronix_nand_fix_broken_get_timings.broken_get_timings = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30LF1G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30LF1G28AC\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30LF2G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30LF2G28AC\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30LF4G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30LF4G28AC\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX60LF8G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF1G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF1G16AC\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF2G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF2G16AC\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF4G18AC\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF4G16AC\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF4G28AC\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxic,enable-randomizer-otp\00", [37 x i8] zeroinitializer }, align 32
@macronix_nand_onfi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Macronix NAND randomizer failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"macronix_nand_onfi_init\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/mtd/nand/raw/nand_macronix.c\00", [59 x i8] zeroinitializer }, align 32
@macronix_nand_onfi_init._entry_ptr = internal global ptr @macronix_nand_onfi_init._entry, section ".printk_index", align 4
@macronix_nand_onfi_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.19, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Macronix NAND randomizer enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@macronix_nand_onfi_init._entry_ptr.22 = internal global ptr @macronix_nand_onfi_init._entry.20, section ".printk_index", align 4
@macronix_nand_block_protection_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.19, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Block protection check failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"macronix_nand_block_protection_support\00", [57 x i8] zeroinitializer }, align 32
@macronix_nand_block_protection_support._entry_ptr = internal global ptr @macronix_nand_block_protection_support._entry, section ".printk_index", align 4
@mxic_nand_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.19, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s all blocks failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxic_nand_lock\00", [17 x i8] zeroinitializer }, align 32
@mxic_nand_lock._entry_ptr = internal global ptr @mxic_nand_lock._entry, section ".printk_index", align 4
@mxic_nand_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.19, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxic_nand_unlock\00", [47 x i8] zeroinitializer }, align 32
@mxic_nand_unlock._entry_ptr = internal global ptr @mxic_nand_unlock._entry, section ".printk_index", align 4
@macronix_nand_deep_power_down_support.deep_power_down_dev = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF1G28AD\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF2G28AD\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX30UF4G28AD\00", [19 x i8] zeroinitializer }, align 32
@mxic_nand_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.19, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Suspending MXIC NAND chip failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxic_nand_suspend\00", [46 x i8] zeroinitializer }, align 32
@mxic_nand_suspend._entry_ptr = internal global ptr @mxic_nand_suspend._entry, section ".printk_index", align 4
@__const.nand_power_down_op.instrs = private unnamed_addr constant [1 x { i32, { %struct.nand_op_cmd_instr, [11 x i8] }, i32 }] [{ i32, { %struct.nand_op_cmd_instr, [11 x i8] }, i32 } { i32 0, { %struct.nand_op_cmd_instr, [11 x i8] } { %struct.nand_op_cmd_instr { i8 -71 }, [11 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, i32 0 }], align 4
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"macronix_nand_manuf_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 332, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1444, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"broken_get_timings\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 151, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 152, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 153, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 154, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 155, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 156, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 157, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 158, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 159, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 160, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 161, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 162, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 163, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 164, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 165, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 102, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 122, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 124, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 235, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 199, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 215, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"deep_power_down_dev\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 304, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 305, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 306, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 307, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private constant [40 x i8] c"../drivers/mtd/nand/raw/nand_macronix.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 278, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [36 x i8] c"../drivers/mtd/nand/raw/internals.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 139, i32 6 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @macronix_nand_block_protection_support._entry, ptr @macronix_nand_block_protection_support._entry_ptr, ptr @macronix_nand_onfi_init._entry, ptr @macronix_nand_onfi_init._entry.20, ptr @macronix_nand_onfi_init._entry_ptr, ptr @macronix_nand_onfi_init._entry_ptr.22, ptr @mxic_nand_lock._entry, ptr @mxic_nand_lock._entry_ptr, ptr @mxic_nand_suspend._entry, ptr @mxic_nand_suspend._entry_ptr, ptr @mxic_nand_unlock._entry, ptr @mxic_nand_unlock._entry_ptr, ptr @macronix_nand_manuf_ops, ptr @.str, ptr @.str.1, ptr @macronix_nand_fix_broken_get_timings.broken_get_timings, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @macronix_nand_deep_power_down_support.deep_power_down_dev, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_nand_manuf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_nand_fix_broken_get_timings.broken_get_timings to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_nand_onfi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_nand_onfi_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_nand_block_protection_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nand_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nand_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_nand_deep_power_down_support.deep_power_down_dev to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nand_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macronix_nand_init(ptr noundef %chip) #0 align 64 {
entry:
  %feature.i22 = alloca [4 x i8], align 4
  %feature.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memorg.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end.i, label %entry.nand_is_slc.exit_crit_edge, !prof !85

entry.nand_is_slc.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  %2 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %memorg.i.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %entry.nand_is_slc.exit_crit_edge
  %3 = phi i32 [ %1, %entry.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp21.i = icmp eq i32 %3, 1
  br i1 %cmp21.i, label %if.then, label %nand_is_slc.exit.if.end_crit_edge

nand_is_slc.exit.if.end_crit_edge:                ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #6
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 8
  %or = or i32 %5, 50331648
  store i32 %or, ptr %options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %nand_is_slc.exit.if.end_crit_edge
  %supports_set_get_features.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %supports_set_get_features.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %supports_set_get_features.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.macronix_nand_fix_broken_get_timings.exit_crit_edge, label %if.end.i

if.end.macronix_nand_fix_broken_get_timings.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_fix_broken_get_timings.exit

if.end.i:                                         ; preds = %if.end
  %parameters.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %parameters.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parameters.i, align 4
  %call.i = tail call i32 @match_string(ptr noundef nonnull @macronix_nand_fix_broken_get_timings.broken_get_timings, i32 noundef 14, ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i6 = icmp slt i32 %call.i, 0
  br i1 %cmp.i6, label %if.end.i.macronix_nand_fix_broken_get_timings.exit_crit_edge, label %if.end3.i

if.end.i.macronix_nand_fix_broken_get_timings.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_fix_broken_get_timings.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %get_feature_list.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %get_feature_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %get_feature_list.i, align 4
  %and.i.i.i = and i32 %11, -3
  store i32 %and.i.i.i, ptr %get_feature_list.i, align 4
  %set_feature_list.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %set_feature_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_feature_list.i, align 4
  %and.i.i10.i = and i32 %13, -3
  store i32 %and.i.i10.i, ptr %set_feature_list.i, align 4
  br label %macronix_nand_fix_broken_get_timings.exit

macronix_nand_fix_broken_get_timings.exit:        ; preds = %if.end3.i, %if.end.i.macronix_nand_fix_broken_get_timings.exit_crit_edge, %if.end.macronix_nand_fix_broken_get_timings.exit_crit_edge
  %onfi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %onfi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %onfi.i, align 4
  %tobool.not.i7 = icmp eq ptr %15, null
  br i1 %tobool.not.i7, label %macronix_nand_fix_broken_get_timings.exit.macronix_nand_onfi_init.exit_crit_edge, label %if.end.i8

macronix_nand_fix_broken_get_timings.exit.macronix_nand_onfi_init.exit_crit_edge: ; preds = %macronix_nand_fix_broken_get_timings.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_onfi_init.exit

if.end.i8:                                        ; preds = %macronix_nand_fix_broken_get_timings.exit
  %of_node.i.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56, i32 27
  %16 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i.i.i.i, align 8
  %call1.i = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.16, ptr noundef null) #4
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %18 = ptrtoint ptr %onfi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %onfi.i, align 4
  br i1 %tobool2.not.i, label %if.end.i8.if.end31.i_crit_edge, label %land.lhs.true.i

if.end.i8.if.end31.i_crit_edge:                   ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end.i8
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options.i, align 8
  %and.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %reliability_func.i = getelementptr inbounds %struct.onfi_params, ptr %19, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %reliability_func.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reliability_func.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i = icmp eq i8 %24, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.end31.i_crit_edge, label %if.then11.i

land.lhs.true8.i.if.end31.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then11.i:                                      ; preds = %land.lhs.true8.i
  %25 = ptrtoint ptr %supports_set_get_features.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %supports_set_get_features.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not.i = icmp eq i8 %26, 0
  br i1 %tobool12.not.i, label %if.then11.i.if.end31.i_crit_edge, label %if.then13.i

if.then11.i.if.end31.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then13.i:                                      ; preds = %if.then11.i
  %add.ptr.i.i.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2, i32 5
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %28, 65536
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i66.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 3, i32 5
  %29 = ptrtoint ptr %add.ptr.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i66.i, align 4
  %or.i.i67.i = or i32 %30, 65536
  store i32 %or.i.i67.i, ptr %add.ptr.i.i66.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i22) #4
  %31 = ptrtoint ptr %feature.i22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %feature.i22, align 4
  %call.i23 = call i32 @nand_get_features(ptr noundef %chip, i32 noundef 176, ptr noundef nonnull %feature.i22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %if.then13.i.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, label %if.end.i26

if.then13.i.macronix_nand_randomizer_check_enable.exit.thread_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_randomizer_check_enable.exit.thread

if.end.i26:                                       ; preds = %if.then13.i
  %32 = ptrtoint ptr %feature.i22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %feature.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i25 = icmp eq i8 %33, 0
  br i1 %tobool.not.i25, label %if.end3.i28, label %macronix_nand_randomizer_check_enable.exit.thread33

macronix_nand_randomizer_check_enable.exit.thread33: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i22) #4
  br label %if.end31.sink.split.i

if.end3.i28:                                      ; preds = %if.end.i26
  %34 = ptrtoint ptr %feature.i22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %feature.i22, align 4
  %call6.i27 = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 176, ptr noundef nonnull %feature.i22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i27)
  %cmp7.i = icmp slt i32 %call6.i27, 0
  br i1 %cmp7.i, label %if.end3.i28.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, label %if.end10.i29

if.end3.i28.macronix_nand_randomizer_check_enable.exit.thread_crit_edge: ; preds = %if.end3.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_randomizer_check_enable.exit.thread

if.end10.i29:                                     ; preds = %if.end3.i28
  %35 = ptrtoint ptr %feature.i22 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %feature.i22, align 4
  %call13.i = call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %feature.i22, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end10.i29.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, label %if.end17.i

if.end10.i29.macronix_nand_randomizer_check_enable.exit.thread_crit_edge: ; preds = %if.end10.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_randomizer_check_enable.exit.thread

if.end17.i:                                       ; preds = %if.end10.i29
  %call19.i = call i32 @nand_get_features(ptr noundef %chip, i32 noundef 176, ptr noundef nonnull %feature.i22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, label %macronix_nand_randomizer_check_enable.exit

if.end17.i.macronix_nand_randomizer_check_enable.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_randomizer_check_enable.exit.thread

macronix_nand_randomizer_check_enable.exit.thread: ; preds = %if.end17.i.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, %if.end10.i29.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, %if.end3.i28.macronix_nand_randomizer_check_enable.exit.thread_crit_edge, %if.then13.i.macronix_nand_randomizer_check_enable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i22) #4
  br label %if.then18.i

macronix_nand_randomizer_check_enable.exit:       ; preds = %if.end17.i
  %36 = ptrtoint ptr %feature.i22 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %feature.i22, align 4
  %38 = and i8 %37, 6
  store i8 %38, ptr %feature.i22, align 4
  %call28.i30 = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 176, ptr noundef nonnull %feature.i22) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i30)
  %cmp.i10 = icmp slt i32 %call28.i30, 0
  br i1 %cmp.i10, label %macronix_nand_randomizer_check_enable.exit.if.then18.i_crit_edge, label %macronix_nand_randomizer_check_enable.exit.if.end31.sink.split.i_crit_edge

macronix_nand_randomizer_check_enable.exit.if.end31.sink.split.i_crit_edge: ; preds = %macronix_nand_randomizer_check_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.sink.split.i

macronix_nand_randomizer_check_enable.exit.if.then18.i_crit_edge: ; preds = %macronix_nand_randomizer_check_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

if.then18.i:                                      ; preds = %macronix_nand_randomizer_check_enable.exit.if.then18.i_crit_edge, %macronix_nand_randomizer_check_enable.exit.thread
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i11 = and i32 %40, -65537
  store i32 %and.i.i.i11, ptr %add.ptr.i.i.i, align 4
  %41 = ptrtoint ptr %add.ptr.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i66.i, align 4
  %and.i.i70.i = and i32 %42, -65537
  store i32 %and.i.i70.i, ptr %add.ptr.i.i66.i, align 4
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.then18.i, %macronix_nand_randomizer_check_enable.exit.if.end31.sink.split.i_crit_edge, %macronix_nand_randomizer_check_enable.exit.thread33
  %.str.21.sink.i = phi ptr [ @.str.17, %if.then18.i ], [ @.str.21, %macronix_nand_randomizer_check_enable.exit.if.end31.sink.split.i_crit_edge ], [ @.str.21, %macronix_nand_randomizer_check_enable.exit.thread33 ]
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink.i) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %if.then11.i.if.end31.i_crit_edge, %land.lhs.true8.i.if.end31.i_crit_edge, %land.lhs.true.i.if.end31.i_crit_edge, %if.end.i8.if.end31.i_crit_edge
  %reliability_func32.i = getelementptr inbounds %struct.onfi_params, ptr %19, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %reliability_func32.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reliability_func32.i, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp35.i = icmp eq i8 %45, 0
  br i1 %cmp35.i, label %if.end31.i.macronix_nand_onfi_init.exit_crit_edge, label %if.end38.i

if.end31.i.macronix_nand_onfi_init.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_onfi_init.exit

if.end38.i:                                       ; preds = %if.end31.i
  %read_retries.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 29
  %46 = ptrtoint ptr %read_retries.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %read_retries.i, align 8
  %setup_read_retry.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %setup_read_retry.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @macronix_nand_setup_read_retry, ptr %setup_read_retry.i, align 8
  %48 = ptrtoint ptr %supports_set_get_features.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %supports_set_get_features.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool40.not.i = icmp eq i8 %49, 0
  br i1 %tobool40.not.i, label %if.end38.i.macronix_nand_onfi_init.exit_crit_edge, label %if.then41.i

if.end38.i.macronix_nand_onfi_init.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_onfi_init.exit

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i71.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i71.i, align 4
  %or.i.i72.i = or i32 %51, 512
  store i32 %or.i.i72.i, ptr %add.ptr.i.i71.i, align 4
  %add.ptr.i.i73.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 3, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i73.i, align 4
  %or.i.i74.i = or i32 %53, 512
  store i32 %or.i.i74.i, ptr %add.ptr.i.i73.i, align 4
  br label %macronix_nand_onfi_init.exit

macronix_nand_onfi_init.exit:                     ; preds = %if.then41.i, %if.end38.i.macronix_nand_onfi_init.exit_crit_edge, %if.end31.i.macronix_nand_onfi_init.exit_crit_edge, %macronix_nand_fix_broken_get_timings.exit.macronix_nand_onfi_init.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i) #4
  %add.ptr.i.i.i12 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 3, i32 5
  %54 = getelementptr inbounds i8, ptr %feature.i, i32 1
  %55 = call ptr @memset(ptr %54, i32 255, i32 3)
  %56 = ptrtoint ptr %add.ptr.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i.i12, align 4
  %or.i.i.i13 = or i32 %57, 1
  store i32 %or.i.i.i13, ptr %add.ptr.i.i.i12, align 4
  %58 = ptrtoint ptr %feature.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %feature.i, align 1
  call void @nand_select_target(ptr noundef %chip, i32 noundef 0) #4
  %call.i14 = call i32 @nand_get_features(ptr noundef %chip, i32 noundef 160, ptr noundef nonnull %feature.i) #4
  call void @nand_deselect_target(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %lor.lhs.false.i, label %do.end.critedge.i

lor.lhs.false.i:                                  ; preds = %macronix_nand_onfi_init.exit
  %59 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %feature.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %60)
  %cmp.not.i = icmp eq i8 %60, 56
  br i1 %cmp.not.i, label %if.end10.i, label %lor.lhs.false.i.if.end.i17_crit_edge

lor.lhs.false.i.if.end.i17_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i17

do.end.critedge.i:                                ; preds = %macronix_nand_onfi_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #7
  br label %if.end.i17

if.end.i17:                                       ; preds = %do.end.critedge.i, %lor.lhs.false.i.if.end.i17_crit_edge
  %61 = ptrtoint ptr %add.ptr.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i12, align 4
  %and.i.i.i16 = and i32 %62, -2
  store i32 %and.i.i.i16, ptr %add.ptr.i.i.i12, align 4
  br label %macronix_nand_block_protection_support.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i24.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2, i32 5
  %63 = ptrtoint ptr %add.ptr.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i24.i, align 4
  %or.i.i25.i = or i32 %64, 1
  store i32 %or.i.i25.i, ptr %add.ptr.i.i24.i, align 4
  %lock_area.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %lock_area.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mxic_nand_lock, ptr %lock_area.i, align 8
  %unlock_area.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 3
  %66 = ptrtoint ptr %unlock_area.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @mxic_nand_unlock, ptr %unlock_area.i, align 4
  br label %macronix_nand_block_protection_support.exit

macronix_nand_block_protection_support.exit:      ; preds = %if.end10.i, %if.end.i17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i) #4
  %parameters.i18 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2
  %67 = ptrtoint ptr %parameters.i18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parameters.i18, align 4
  %call.i19 = call i32 @match_string(ptr noundef nonnull @macronix_nand_deep_power_down_support.deep_power_down_dev, i32 noundef 3, ptr noundef %68) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i20 = icmp slt i32 %call.i19, 0
  br i1 %cmp.i20, label %macronix_nand_block_protection_support.exit.macronix_nand_deep_power_down_support.exit_crit_edge, label %if.end.i21

macronix_nand_block_protection_support.exit.macronix_nand_deep_power_down_support.exit_crit_edge: ; preds = %macronix_nand_block_protection_support.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %macronix_nand_deep_power_down_support.exit

if.end.i21:                                       ; preds = %macronix_nand_block_protection_support.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ops.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4
  %69 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @mxic_nand_suspend, ptr %ops.i, align 8
  %resume.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %resume.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @mxic_nand_resume, ptr %resume.i, align 4
  br label %macronix_nand_deep_power_down_support.exit

macronix_nand_deep_power_down_support.exit:       ; preds = %if.end.i21, %macronix_nand_block_protection_support.exit.macronix_nand_deep_power_down_support.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @macronix_nand_setup_read_retry(ptr noundef %chip, i32 noundef %mode) #0 align 64 {
entry:
  %feature = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature) #4
  %supports_set_get_features = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 1
  %0 = getelementptr inbounds i8, ptr %feature, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  %2 = ptrtoint ptr %supports_set_get_features to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supports_set_get_features, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %mode to i8
  %7 = ptrtoint ptr %feature to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %feature, align 1
  %call4 = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 137, ptr noundef nonnull %feature) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_features(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_set_features(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_select_target(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_deselect_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nand_lock(ptr noundef %chip, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  %feature = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature) #4
  %0 = getelementptr inbounds i8, ptr %feature, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  %2 = ptrtoint ptr %feature to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 56, ptr %feature, align 1
  tail call void @nand_select_target(ptr noundef %chip, i32 noundef 0) #4
  %call = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 160, ptr noundef nonnull %feature) #4
  call void @nand_deselect_target(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nand_unlock(ptr noundef %chip, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  %feature = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature) #4
  %0 = getelementptr inbounds i8, ptr %feature, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  %2 = ptrtoint ptr %feature to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %feature, align 1
  tail call void @nand_select_target(ptr noundef %chip, i32 noundef 0) #4
  %call = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 160, ptr noundef nonnull %feature) #4
  call void @nand_deselect_target(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nand_suspend(ptr noundef %chip) #0 align 64 {
entry:
  %instrs.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i = alloca %struct.nand_operation, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nand_select_target(ptr noundef %chip, i32 noundef 0) #4
  %controller.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.else.i_crit_edge, label %lor.lhs.false.i.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

lor.lhs.false.i.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.else.i_crit_edge, label %nand_has_exec_op.exit.i

lor.lhs.false.i.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

nand_has_exec_op.exit.i:                          ; preds = %lor.lhs.false.i.i
  %exec_op.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i.not.i, label %nand_has_exec_op.exit.i.if.else.i_crit_edge, label %nand_has_exec_op.exit.i.i

nand_has_exec_op.exit.i.if.else.i_crit_edge:      ; preds = %nand_has_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

nand_has_exec_op.exit.i.i:                        ; preds = %nand_has_exec_op.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i) #4
  %6 = call ptr @memcpy(ptr %instrs.i, ptr @__const.nand_power_down_op.instrs, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i) #4
  %7 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 2
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %9 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_cs.i, align 4
  %11 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %op.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %instrs.i, ptr %7, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %8, align 4
  %14 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i.not.i.i, label %nand_has_exec_op.exit.i.i.nand_power_down_op.exit.thread_crit_edge, label %if.end.i.i

nand_has_exec_op.exit.i.i.nand_power_down_op.exit.thread_crit_edge: ; preds = %nand_has_exec_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nand_power_down_op.exit.thread

if.end.i.i:                                       ; preds = %nand_has_exec_op.exit.i.i
  %ntargets.i.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %ntargets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ntargets.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %17)
  %cmp.not.i.i = icmp ult i32 %10, %17
  br i1 %cmp.not.i.i, label %nand_exec_op.exit.i, label %do.end.i.i, !prof !87

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 139, i32 noundef 9, ptr noundef null) #4
  br label %nand_power_down_op.exit.thread

nand_power_down_op.exit.thread:                   ; preds = %do.end.i.i, %nand_has_exec_op.exit.i.i.nand_power_down_op.exit.thread_crit_edge
  %retval.0.i13.ph.i = phi i32 [ -524, %nand_has_exec_op.exit.i.i.nand_power_down_op.exit.thread_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #4
  br label %do.end

nand_exec_op.exit.i:                              ; preds = %if.end.i.i
  %call25.i.i = call i32 %15(ptr noundef %chip, ptr noundef nonnull %op.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool.not.i = icmp eq i32 %call25.i.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #4
  br i1 %tobool.not.i, label %nand_exec_op.exit.i.if.end_crit_edge, label %nand_power_down_op.exit

nand_exec_op.exit.i.if.end_crit_edge:             ; preds = %nand_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.i:                                        ; preds = %nand_has_exec_op.exit.i.if.else.i_crit_edge, %lor.lhs.false.i.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %cmdfunc.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %18 = ptrtoint ptr %cmdfunc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdfunc.i, align 8
  tail call void %19(ptr noundef %chip, i32 noundef 185, i32 noundef -1, i32 noundef -1) #4
  br label %if.end

nand_power_down_op.exit:                          ; preds = %nand_exec_op.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %cmp = icmp slt i32 %call25.i.i, 0
  br i1 %cmp, label %nand_power_down_op.exit.do.end_crit_edge, label %nand_power_down_op.exit.if.end_crit_edge

nand_power_down_op.exit.if.end_crit_edge:         ; preds = %nand_power_down_op.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

nand_power_down_op.exit.do.end_crit_edge:         ; preds = %nand_power_down_op.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %nand_power_down_op.exit.do.end_crit_edge, %nand_power_down_op.exit.thread
  %retval.1.i8 = phi i32 [ %retval.0.i13.ph.i, %nand_power_down_op.exit.thread ], [ %call25.i.i, %nand_power_down_op.exit.do.end_crit_edge ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %retval.1.i8) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %nand_power_down_op.exit.if.end_crit_edge, %if.else.i, %nand_exec_op.exit.i.if.end_crit_edge
  %retval.1.i9 = phi i32 [ %retval.1.i8, %do.end ], [ %call25.i.i, %nand_power_down_op.exit.if.end_crit_edge ], [ 0, %nand_exec_op.exit.i.if.end_crit_edge ], [ 0, %if.else.i ]
  call void @nand_deselect_target(ptr noundef %chip) #4
  ret i32 %retval.1.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxic_nand_resume(ptr noundef %chip) #0 align 64 {
entry:
  %instrs.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i = alloca %struct.nand_operation, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nand_select_target(ptr noundef %chip, i32 noundef 0) #4
  %controller.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.else.i_crit_edge, label %lor.lhs.false.i.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

lor.lhs.false.i.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.else.i_crit_edge, label %nand_has_exec_op.exit.i

lor.lhs.false.i.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

nand_has_exec_op.exit.i:                          ; preds = %lor.lhs.false.i.i
  %exec_op.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i.not.i, label %nand_has_exec_op.exit.i.if.else.i_crit_edge, label %nand_has_exec_op.exit.i.i

nand_has_exec_op.exit.i.if.else.i_crit_edge:      ; preds = %nand_has_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

nand_has_exec_op.exit.i.i:                        ; preds = %nand_has_exec_op.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i) #4
  %6 = call ptr @memcpy(ptr %instrs.i, ptr @__const.nand_power_down_op.instrs, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i) #4
  %7 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 2
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %9 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_cs.i, align 4
  %11 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %op.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %instrs.i, ptr %7, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %8, align 4
  %14 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i.not.i.i, label %nand_has_exec_op.exit.i.i.nand_exec_op.exit.thread.i_crit_edge, label %if.end.i.i

nand_has_exec_op.exit.i.i.nand_exec_op.exit.thread.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nand_exec_op.exit.thread.i

if.end.i.i:                                       ; preds = %nand_has_exec_op.exit.i.i
  %ntargets.i.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %ntargets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ntargets.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %17)
  %cmp.not.i.i = icmp ult i32 %10, %17
  br i1 %cmp.not.i.i, label %nand_exec_op.exit.i, label %do.end.i.i, !prof !87

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 139, i32 noundef 9, ptr noundef null) #4
  br label %nand_exec_op.exit.thread.i

nand_exec_op.exit.thread.i:                       ; preds = %do.end.i.i, %nand_has_exec_op.exit.i.i.nand_exec_op.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #4
  br label %nand_power_down_op.exit

nand_exec_op.exit.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call25.i.i = call i32 %15(ptr noundef %chip, ptr noundef nonnull %op.i, i1 noundef zeroext false) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #4
  br label %nand_power_down_op.exit

if.else.i:                                        ; preds = %nand_has_exec_op.exit.i.if.else.i_crit_edge, %lor.lhs.false.i.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %cmdfunc.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %18 = ptrtoint ptr %cmdfunc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdfunc.i, align 8
  tail call void %19(ptr noundef %chip, i32 noundef 185, i32 noundef -1, i32 noundef -1) #4
  br label %nand_power_down_op.exit

nand_power_down_op.exit:                          ; preds = %if.else.i, %nand_exec_op.exit.i, %nand_exec_op.exit.thread.i
  call void @usleep_range_state(i32 noundef 35, i32 noundef 100, i32 noundef 2) #4
  call void @nand_deselect_target(ptr noundef %chip) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @macronix_nand_manuf_ops, !1, !"macronix_nand_manuf_ops", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 332, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mtd/rawnand.h", i32 1444, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 152, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 153, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 154, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 155, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 156, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 157, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 158, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 159, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 160, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 161, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 162, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 163, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 164, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 165, i32 3}
!33 = !{ptr @macronix_nand_fix_broken_get_timings.broken_get_timings, !34, !"broken_get_timings", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 151, i32 28}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 102, i32 27}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 122, i32 5}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @macronix_nand_onfi_init._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @macronix_nand_onfi_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 124, i32 5}
!45 = !{ptr @macronix_nand_onfi_init._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @macronix_nand_onfi_init._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 235, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @macronix_nand_block_protection_support._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @macronix_nand_block_protection_support._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 199, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mxic_nand_lock._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mxic_nand_lock._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 215, i32 3}
!59 = !{ptr @mxic_nand_unlock._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mxic_nand_unlock._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 305, i32 3}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 306, i32 3}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 307, i32 3}
!67 = !{ptr @macronix_nand_deep_power_down_support.deep_power_down_dev, !68, !"deep_power_down_dev", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 304, i32 28}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/nand_macronix.c", i32 278, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mxic_nand_suspend._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mxic_nand_suspend._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/internals.h", i32 139, i32 6}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 2000, i32 1}
