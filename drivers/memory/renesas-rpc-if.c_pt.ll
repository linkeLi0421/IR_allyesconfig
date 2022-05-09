; ModuleID = '/llk/IR_all_yes/drivers/memory/renesas-rpc-if.c_pt.bc'
source_filename = "../drivers/memory/renesas-rpc-if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rpcif_sw_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rpcif_sw_init\09\09\09\09"
module asm "\09.long\09__crc_rpcif_sw_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcif_sw_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcif_sw_init\22\09\09\09\09\09"
module asm "__kstrtabns_rpcif_sw_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpcif_hw_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rpcif_hw_init\09\09\09\09"
module asm "\09.long\09__crc_rpcif_hw_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcif_hw_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcif_hw_init\22\09\09\09\09\09"
module asm "__kstrtabns_rpcif_hw_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpcif_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_rpcif_prepare\09\09\09\09"
module asm "\09.long\09__crc_rpcif_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcif_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcif_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_rpcif_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpcif_manual_xfer\22, \22a\22\09"
module asm "\09.weak\09__crc_rpcif_manual_xfer\09\09\09\09"
module asm "\09.long\09__crc_rpcif_manual_xfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcif_manual_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcif_manual_xfer\22\09\09\09\09\09"
module asm "__kstrtabns_rpcif_manual_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpcif_dirmap_read\22, \22a\22\09"
module asm "\09.weak\09__crc_rpcif_dirmap_read\09\09\09\09"
module asm "\09.long\09__crc_rpcif_dirmap_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcif_dirmap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcif_dirmap_read\22\09\09\09\09\09"
module asm "__kstrtabns_rpcif_dirmap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rpcif = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.43 = type { i8, i8, i8 }
%struct.rpcif_op = type { %struct.anon.43, %struct.anon.43, %struct.anon.44, %struct.anon.45, %struct.anon.46, %struct.anon.47 }
%struct.anon.44 = type { i8, i8, i8, i64 }
%struct.anon.45 = type { i8, i8 }
%struct.anon.46 = type { i8, i8, i8, i32 }
%struct.anon.47 = type { i8, i32, i32, i8, %union.anon.48 }
%union.anon.48 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@rpcif_sw_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rpcif_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @rpcif_reg_read, ptr @rpcif_reg_write, ptr null, i8 1, i32 136, ptr null, ptr null, ptr @rpcif_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"renesas_rpc_if:237:(&rpcif_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@rpcif_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to init regmap for rpcif, error %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpcif_sw_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/memory/renesas-rpc-if.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpcif_sw_init._entry_ptr = internal global ptr @rpcif_sw_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dirmap\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_rpcif_sw_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcif_sw_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcif_sw_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcif_sw_init to i32), ptr @__kstrtab_rpcif_sw_init, ptr @__kstrtabns_rpcif_sw_init }, section "___ksymtab+rpcif_sw_init", align 4
@__kstrtab_rpcif_hw_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcif_hw_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcif_hw_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcif_hw_init to i32), ptr @__kstrtab_rpcif_hw_init, ptr @__kstrtabns_rpcif_hw_init }, section "___ksymtab+rpcif_hw_init", align 4
@__kstrtab_rpcif_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcif_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcif_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcif_prepare to i32), ptr @__kstrtab_rpcif_prepare, ptr @__kstrtabns_rpcif_prepare }, section "___ksymtab+rpcif_prepare", align 4
@rpcif_manual_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to reset HW\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpcif_manual_xfer\00", [46 x i8] zeroinitializer }, align 32
@rpcif_manual_xfer._entry_ptr = internal global ptr @rpcif_manual_xfer._entry, section ".printk_index", align 4
@__kstrtab_rpcif_manual_xfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcif_manual_xfer = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcif_manual_xfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcif_manual_xfer to i32), ptr @__kstrtab_rpcif_manual_xfer, ptr @__kstrtabns_rpcif_manual_xfer }, section "___ksymtab+rpcif_manual_xfer", align 4
@__kstrtab_rpcif_dirmap_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcif_dirmap_read = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcif_dirmap_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcif_dirmap_read to i32), ptr @__kstrtab_rpcif_dirmap_read, ptr @__kstrtabns_rpcif_dirmap_read }, section "___ksymtab+rpcif_dirmap_read", align 4
@__initcall__kmod_renesas_rpc_if__175_704_rpcif_driver_init6 = internal global ptr @rpcif_driver_init, section ".initcall6.init", align 4
@rpcif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpcif_probe, ptr @rpcif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpcif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpcif_driver_exit = internal global ptr @rpcif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description176 = internal constant [54 x i8] c"renesas_rpc_if.description=Renesas RPC-IF core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [50 x i8] c"renesas_rpc_if.file=drivers/memory/renesas-rpc-if\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [30 x i8] c"renesas_rpc_if.license=GPL v2\00", section ".modinfo", align 1
@rpcif_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @rpcif_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@rpcif_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 56, i32 60 }, %struct.regmap_range { i32 64, i32 68 }, %struct.regmap_range { i32 72, i32 72 }], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rpc-if\00", [25 x i8] zeroinitializer }, align 32
@rpcif_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-rpc-if\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzg2l-rpc-if\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rpcif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 657, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no flash node found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpcif_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rpcif_probe._entry_ptr = internal global ptr @rpcif_probe._entry, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jedec,spi-nor\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpc-if-spi\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi-flash\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpc-if-hyperflash\00", [46 x i8] zeroinitializer }, align 32
@rpcif_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.4, i32 667, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown flash type\0A\00", [44 x i8] zeroinitializer }, align 32
@rpcif_probe._entry_ptr.20 = internal global ptr @rpcif_probe._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 64]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 15]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 64]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 15]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 232, i32 59 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"rpcif_regmap_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 214, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 237, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 239, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 245, i32 59 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 569, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"rpcif_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 696, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"rpcif_volatile_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 160, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"rpcif_volatile_ranges\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 154, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 700, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"rpcif_of_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 689, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 657, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 661, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 662, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 663, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 664, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [35 x i8] c"../drivers/memory/renesas-rpc-if.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 667, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_rpcif_driver_exit, ptr @__initcall__kmod_renesas_rpc_if__175_704_rpcif_driver_init6, ptr @__ksymtab_rpcif_dirmap_read, ptr @__ksymtab_rpcif_hw_init, ptr @__ksymtab_rpcif_manual_xfer, ptr @__ksymtab_rpcif_prepare, ptr @__ksymtab_rpcif_sw_init, ptr @rpcif_driver_exit, ptr @rpcif_manual_xfer._entry, ptr @rpcif_manual_xfer._entry_ptr, ptr @rpcif_probe._entry, ptr @rpcif_probe._entry.18, ptr @rpcif_probe._entry_ptr, ptr @rpcif_probe._entry_ptr.20, ptr @rpcif_sw_init._entry, ptr @rpcif_sw_init._entry_ptr, ptr @.str, ptr @rpcif_sw_init._key, ptr @rpcif_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rpcif_driver, ptr @rpcif_volatile_table, ptr @rpcif_volatile_ranges, ptr @.str.10, ptr @rpcif_of_match, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_sw_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_manual_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcif_sw_init(ptr noundef %rpc, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %rpc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %rpc, align 4
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #7
  %base = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %rpc, ptr noundef nonnull @rpcif_regmap_config, ptr noundef nonnull @rpcif_sw_init._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i61 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #10
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.7) #7
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call20) #7
  %dirmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 2
  %8 = ptrtoint ptr %dirmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %dirmap, align 4
  %cmp.i62 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %12 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call20, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  %size = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %size, align 4
  %call30 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %15 = ptrtoint ptr %call30 to i32
  %type = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 6
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %type, align 4
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 4
  %17 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %rstc, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %18, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then25, %do.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %7, %do.end ], [ %9, %if.then25 ], [ %spec.select.i, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcif_hw_init(ptr nocapture noundef %rpc, i1 noundef zeroext %hyperflash) #0 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #7
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dummy, align 4, !annotation !77
  %1 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rpc, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #7
  %type = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 6
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %rstc = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 4
  %5 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rstc, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup48_crit_edge

if.then.cleanup48_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  %regmap.i = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i72 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 116, i32 noundef -1522991104) #7
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 112, i32 noundef -2147483648) #7
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 116, i32 noundef 32896) #7
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 112, i32 noundef -2147483614) #7
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 116, i32 noundef 32896) #7
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 112, i32 noundef -2147483612) #7
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 124, i32 noundef 196608, i32 noundef 196608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 116, i32 noundef 48) #7
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 112, i32 noundef -2147483598) #7
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %regmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 3
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %cond = select i1 %hyperflash, i32 3, i32 0
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 124, i32 noundef 3, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7 = icmp eq i32 %28, 0
  br i1 %cmp7, label %if.then8, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 124, i32 noundef 229376, i32 noundef 229376, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end3.if.end11_crit_edge
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 128, i32 noundef 805306368, i32 noundef 805306368, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 132, i32 noundef 1792, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br i1 %hyperflash, label %if.then17, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 136, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end11.if.end20_crit_edge
  %conv = phi i8 [ 2, %if.then17 ], [ 1, %if.end11.if.end20_crit_edge ]
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp22 = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %cond26 = zext i1 %hyperflash to i32
  %. = select i1 %cmp22, i32 16711680, i32 5612032
  %.82 = select i1 %cmp22, i32 16711683, i32 16773891
  %or35 = or i32 %., %cond26
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 0, i32 noundef %.82, i32 noundef %or35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 12, i32 noundef 512) #7
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call41 = call i32 @regmap_read(ptr noundef %44, i32 noundef 12, ptr noundef nonnull %dummy) #7
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_write(ptr noundef %46, i32 noundef 4, i32 noundef 460551) #7
  %47 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rpc, align 4
  %call.i80 = call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 5) #7
  %bus_size = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 8
  %49 = ptrtoint ptr %bus_size to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %bus_size, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %if.end20, %if.then.cleanup48_crit_edge
  %retval.1 = phi i32 [ 0, %if.end20 ], [ %call1, %if.then.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rpcif_prepare(ptr nocapture noundef %rpc, ptr nocapture noundef readonly %op, ptr noundef readonly %offs, ptr noundef readonly %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smcr = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 11
  %smadr = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 12
  %enable = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 15
  %command = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 13
  %option = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 14
  %dummy = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 16
  %ddr = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 17
  %xferlen = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 10
  %0 = call ptr @memset(ptr %xferlen, i32 0, i32 32)
  %1 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %conv.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp.i = icmp ugt i8 %2, 4
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #7, !range !78
  %sub.i.op.i.i = xor i32 %3, -1
  %sub.i.op.i.i.op = shl i32 %sub.i.op.i.i, 30
  %sub.i.op.i.i.op.op = or i32 %sub.i.op.i.i.op, 16384
  %or = select i1 %cmp.i, i32 -2147467264, i32 %sub.i.op.i.i.op.op
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %enable, align 4
  %opcode = getelementptr inbounds %struct.anon.43, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %opcode, align 1
  %conv5 = zext i8 %6 to i32
  %shl7 = shl nuw nsw i32 %conv5, 16
  %7 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl7, ptr %command, align 4
  %ddr10 = getelementptr inbounds %struct.anon.43, ptr %op, i32 0, i32 2
  %8 = ptrtoint ptr %ddr10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ddr10, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.then.if.end14_crit_edge, label %if.then12

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20480, ptr %ddr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %ocmd = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %ocmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ocmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %if.end14.if.end34_crit_edge, label %if.then17

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i231 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp.i232 = icmp ugt i8 %12, 4
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv.i231, i1 true) #7, !range !78
  %sub.i.op.i.i241 = xor i32 %13, -1
  %phi.bo = shl i32 %sub.i.op.i.i241, 28
  %phi.bo296 = and i32 %phi.bo, 805306368
  %cond14.i244 = select i1 %cmp.i232, i32 536870912, i32 %phi.bo296
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable, align 4
  %or24 = or i32 %15, %cond14.i244
  %or26 = or i32 %or24, 4096
  store i32 %or26, ptr %enable, align 4
  %opcode28 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %opcode28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %opcode28, align 1
  %conv29 = zext i8 %17 to i32
  %18 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %command, align 4
  %or33 = or i32 %19, %conv29
  store i32 %or33, ptr %command, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then17, %if.end14.if.end34_crit_edge
  %buswidth35 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %buswidth35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buswidth35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool36.not = icmp eq i8 %21, 0
  br i1 %tobool36.not, label %if.end34.if.end81_crit_edge, label %if.then37

if.end34.if.end81_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then37:                                        ; preds = %if.end34
  %addr = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 2
  %conv.i247 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp.i248 = icmp ugt i8 %21, 4
  %22 = tail call i32 @llvm.ctlz.i32(i32 %conv.i247, i1 true) #7, !range !78
  %sub.i.op.i.i257 = shl nuw nsw i32 %22, 24
  %phi.bo297 = and i32 %sub.i.op.i.i257, 50331648
  %phi.bo298 = xor i32 %phi.bo297, 50331648
  %cond14.i260 = select i1 %cmp.i248, i32 33554432, i32 %phi.bo298
  %23 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enable, align 4
  %or45 = or i32 %cond14.i260, %24
  store i32 %or45, ptr %enable, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp = icmp eq i8 %26, 4
  %conv47 = zext i8 %26 to i32
  %sub = sub nsw i32 3, %conv47
  %and57 = shl nsw i32 -256, %sub
  %shl60 = and i32 %and57, 1792
  %shl60.pn = select i1 %cmp, i32 3840, i32 %shl60
  %storemerge = or i32 %shl60.pn, %or45
  %27 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %enable, align 4
  %ddr65 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %ddr65 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ddr65, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool66.not = icmp eq i8 %29, 0
  br i1 %tobool66.not, label %if.then37.if.end70_crit_edge, label %if.then67

if.then37.if.end70_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then67:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ddr, align 4
  %or69 = or i32 %31, 256
  store i32 %or69, ptr %ddr, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then37.if.end70_crit_edge
  %tobool71.not = icmp eq ptr %offs, null
  %tobool72.not = icmp eq ptr %len, null
  %or.cond = or i1 %tobool71.not, %tobool72.not
  %val = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 2, i32 3
  %offs.sink = select i1 %or.cond, ptr %val, ptr %offs
  %32 = ptrtoint ptr %offs.sink to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offs.sink, align 8
  %conv74 = trunc i64 %33 to i32
  %34 = ptrtoint ptr %smadr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv74, ptr %smadr, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end70, %if.end34.if.end81_crit_edge
  %buswidth83 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %buswidth83 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buswidth83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool84.not = icmp eq i8 %36, 0
  br i1 %tobool84.not, label %if.end81.if.end97_crit_edge, label %if.then85

if.end81.if.end97_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %dummy82 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 3
  %37 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enable, align 4
  %or87 = or i32 %38, 32768
  store i32 %or87, ptr %enable, align 4
  %39 = ptrtoint ptr %dummy82 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dummy82, align 8
  %41 = ptrtoint ptr %buswidth83 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buswidth83, align 1
  %43 = udiv i8 %40, %42
  %44 = add i8 %43, 31
  %45 = and i8 %44, 31
  %and94 = zext i8 %45 to i32
  %46 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and94, ptr %dummy, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then85, %if.end81.if.end97_crit_edge
  %buswidth99 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %buswidth99 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %buswidth99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool100.not = icmp eq i8 %48, 0
  br i1 %tobool100.not, label %if.end97.if.end128_crit_edge, label %if.then101

if.end97.if.end128_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then101:                                       ; preds = %if.end97
  %option98 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 4
  %49 = ptrtoint ptr %option98 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %option98, align 4
  %conv104 = zext i8 %50 to i32
  %bus_size.i = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 8
  %51 = ptrtoint ptr %bus_size.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bus_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp.i263 = icmp eq i8 %52, 2
  %div20.i = zext i1 %cmp.i263 to i32
  %spec.select.i = lshr i32 %conv104, %div20.i
  %53 = tail call i32 @llvm.umax.i32(i32 %spec.select.i, i32 1) #7
  %54 = tail call i32 @llvm.usub.sat.i32(i32 4, i32 %53) #7
  %conv13.i = shl nsw i32 -16, %54
  %shl108 = and i32 %conv13.i, 240
  %conv.i264 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp.i265 = icmp ugt i8 %48, 4
  %55 = tail call i32 @llvm.ctlz.i32(i32 %conv.i264, i1 true) #7, !range !78
  %sub.i.op.i.i274 = shl nuw nsw i32 %55, 20
  %phi.bo299 = and i32 %sub.i.op.i.i274, 3145728
  %phi.bo300 = xor i32 %phi.bo299, 3145728
  %cond14.i277 = select i1 %cmp.i265, i32 2097152, i32 %phi.bo300
  %56 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enable, align 4
  %or115 = or i32 %57, %shl108
  %or117 = or i32 %or115, %cond14.i277
  store i32 %or117, ptr %enable, align 4
  %ddr119 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %ddr119 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ddr119, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool120.not = icmp eq i8 %59, 0
  br i1 %tobool120.not, label %if.then101.if.end124_crit_edge, label %if.then121

if.then101.if.end124_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then121:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ddr, align 4
  %or123 = or i32 %61, 16
  store i32 %or123, ptr %ddr, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.then101.if.end124_crit_edge
  %val126 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 4, i32 3
  %62 = ptrtoint ptr %val126 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val126, align 4
  %64 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %option, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end124, %if.end97.if.end128_crit_edge
  %data = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 5
  %dir = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 5, i32 2
  %65 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dir, align 4
  %dir129 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 7
  %67 = ptrtoint ptr %dir129 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %dir129, align 4
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool132.not = icmp eq i8 %69, 0
  br i1 %tobool132.not, label %if.end128.if.end165_crit_edge, label %if.then133

if.end128.if.end165_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then133:                                       ; preds = %if.end128
  %buf = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 5, i32 4
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf, align 4
  %buffer = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 9
  %72 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %buffer, align 4
  %73 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dir, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %74, label %if.then133.sw.epilog_crit_edge [
    i32 1, label %if.then133.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb139
  ]

if.then133.sw.epilog.sink.split_crit_edge:        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then133.sw.epilog_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb139:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb139, %if.then133.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb139 ], [ 4, %if.then133.sw.epilog.sink.split_crit_edge ]
  %76 = ptrtoint ptr %smcr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink, ptr %smcr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then133.sw.epilog_crit_edge
  %ddr142 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 5, i32 3
  %77 = ptrtoint ptr %ddr142 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ddr142, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool143.not = icmp eq i8 %78, 0
  br i1 %tobool143.not, label %sw.epilog.if.end147_crit_edge, label %if.then144

sw.epilog.if.end147_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then144:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ddr, align 4
  %or146 = or i32 %80, 1
  store i32 %or146, ptr %ddr, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %sw.epilog.if.end147_crit_edge
  %tobool148.not = icmp eq ptr %offs, null
  %tobool150.not = icmp eq ptr %len, null
  %or.cond230 = or i1 %tobool148.not, %tobool150.not
  %nbytes154 = getelementptr inbounds %struct.rpcif_op, ptr %op, i32 0, i32 5, i32 1
  %nbytes134.0.in = select i1 %or.cond230, ptr %nbytes154, ptr %len
  %81 = ptrtoint ptr %nbytes134.0.in to i32
  call void @__asan_load4_noabort(i32 %81)
  %nbytes134.0 = load i32, ptr %nbytes134.0.in, align 4
  %82 = ptrtoint ptr %xferlen to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %nbytes134.0, ptr %xferlen, align 4
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %84)
  %cmp.i281 = icmp ugt i8 %84, 4
  br i1 %cmp.i281, label %if.end147.rpcif_bit_size.exit295_crit_edge, label %cond.false9.i292

if.end147.rpcif_bit_size.exit295_crit_edge:       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %rpcif_bit_size.exit295

cond.false9.i292:                                 ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i280 = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i.i289 = icmp eq i8 %84, 0
  %85 = tail call i32 @llvm.ctlz.i32(i32 %conv.i280, i1 true) #7, !range !80
  %sub.i.op.i.i290 = shl nuw nsw i32 %85, 16
  %sub.i.op.i.i290.op = and i32 %sub.i.op.i.i290, 196608
  %sub.i.op.i.i290.op.op = xor i32 %sub.i.op.i.i290.op, 196608
  %phi.bo302 = select i1 %tobool.not.i.i.i289, i32 196608, i32 %sub.i.op.i.i290.op.op
  br label %rpcif_bit_size.exit295

rpcif_bit_size.exit295:                           ; preds = %cond.false9.i292, %if.end147.rpcif_bit_size.exit295_crit_edge
  %cond14.i293 = phi i32 [ 131072, %if.end147.rpcif_bit_size.exit295_crit_edge ], [ %phi.bo302, %cond.false9.i292 ]
  %86 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %enable, align 4
  %or164 = or i32 %cond14.i293, %87
  store i32 %or164, ptr %enable, align 4
  br label %if.end165

if.end165:                                        ; preds = %rpcif_bit_size.exit295, %if.end128.if.end165_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcif_manual_xfer(ptr noundef %rpc) #0 align 64 {
entry:
  %sts.i348 = alloca i32, align 4
  %sts.i326 = alloca i32, align 4
  %sts.i = alloca i32, align 4
  %data = alloca [2 x i32], align 4
  %dummy71 = alloca i32, align 4
  %data111 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_size = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 8
  %0 = ptrtoint ptr %bus_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %cond = select i1 %cmp, i32 8, i32 4
  %2 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpc, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %regmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i313 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 124, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i314 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %command = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 13
  %10 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %command, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 36, i32 noundef %11) #7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %option = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 14
  %14 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %option, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 44, i32 noundef %15) #7
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %dummy = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 16
  %18 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dummy, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 96, i32 noundef %19) #7
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %ddr = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 17
  %22 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ddr, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 100, i32 noundef %23) #7
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %smadr = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 12
  %26 = ptrtoint ptr %smadr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smadr, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 40, i32 noundef %27) #7
  %enable = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 15
  %28 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enable, align 4
  %dir = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 7
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dir, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %31, label %sw.default [
    i32 2, label %while.cond.preheader
    i32 1, label %sw.bb66
  ]

while.cond.preheader:                             ; preds = %entry
  %xferlen = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 10
  %33 = ptrtoint ptr %xferlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xferlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp15403.not = icmp eq i32 %34, 0
  br i1 %cmp15403.not, label %while.cond.preheader.cleanup200_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup200_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup200

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %smcr18 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 11
  %buffer = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 9
  %data.4.data.4.data.4..sroa_idx = getelementptr inbounds i8, ptr %data, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %35 = phi i32 [ %34, %while.body.lr.ph ], [ %70, %cleanup.while.body_crit_edge ]
  %pos.0405 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %smenr.0404 = phi i32 [ %29, %while.body.lr.ph ], [ %and63, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %35, %pos.0405
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data)
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %data, align 4
  %37 = ptrtoint ptr %data.4.data.4.data.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %data.4.data.4.data.4..sroa_idx, align 4
  %38 = ptrtoint ptr %smcr18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %smcr18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond)
  %cmp19.not = icmp ult i32 %sub, %cond
  %40 = call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #7, !range !80
  %sub.i.op.i = xor i32 %40, 31
  %sub.i.op.i.op = shl nuw i32 1, %sub.i.op.i
  %cond34 = select i1 %cmp19.not, i32 %sub.i.op.i.op, i32 %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond34)
  %cmp35 = icmp ugt i32 %sub, %cond34
  %spec.select.v = select i1 %cmp35, i32 257, i32 1
  %spec.select = or i32 %spec.select.v, %39
  %41 = ptrtoint ptr %bus_size to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bus_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp.i = icmp eq i8 %42, 2
  %div20.i = zext i1 %cmp.i to i32
  %spec.select.i = lshr i32 %cond34, %div20.i
  %43 = call i32 @llvm.umax.i32(i32 %spec.select.i, i32 1) #7
  %44 = call i32 @llvm.usub.sat.i32(i32 4, i32 %43) #7
  %shl.neg.i = shl nsw i32 -1, %44
  %conv13.i = and i32 %shl.neg.i, 15
  %or41 = or i32 %conv13.i, %smenr.0404
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_write(ptr noundef %46, i32 noundef 48, i32 noundef %or41) #7
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 %pos.0405
  %49 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %cond34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond34)
  %cmp44 = icmp eq i32 %cond34, 8
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = call i32 @regmap_write(ptr noundef %51, i32 noundef 68, i32 noundef %data.0.data.0.data.0.) #7
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %data.4.data.4.data.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %data.4.data.4.data.4. = load i32, ptr %data.4.data.4.data.4..sroa_idx, align 4
  %call51 = call i32 @regmap_write(ptr noundef %54, i32 noundef 64, i32 noundef %data.4.data.4.data.4.) #7
  br label %if.end55

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 @regmap_write(ptr noundef %51, i32 noundef 64, i32 noundef %data.0.data.0.data.0.) #7
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then46
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call57 = call i32 @regmap_write(ptr noundef %57, i32 noundef 32, i32 noundef %spec.select) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts.i) #7
  %58 = ptrtoint ptr %sts.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %sts.i, align 4, !annotation !77
  %call.i315 = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i315, 1000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end55
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 72, ptr noundef nonnull %sts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.cond.i.cleanup.thread_crit_edge

for.cond.i.cleanup.thread_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %61 = ptrtoint ptr %sts.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sts.i, align 4
  %and.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call13.i = call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %64, i32 noundef 72, ptr noundef nonnull %sts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool23.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool23.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.cleanup.thread_crit_edge

for.end.i.cleanup.thread_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %65 = ptrtoint ptr %sts.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sts.i, align 4
  %and24.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %lor.rhs.i.cleanup.thread_crit_edge, label %cleanup

lor.rhs.i.cleanup.thread_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.rhs.i.cleanup.thread_crit_edge, %for.end.i.cleanup.thread_crit_edge, %for.cond.i.cleanup.thread_crit_edge
  %tobool23.not40.i.ph = phi i32 [ %call8.i, %for.cond.i.cleanup.thread_crit_edge ], [ -110, %lor.rhs.i.cleanup.thread_crit_edge ], [ %call18.i, %for.end.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data)
  br label %err_out

cleanup:                                          ; preds = %lor.rhs.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i) #7
  %add = add i32 %cond34, %pos.0405
  %67 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %enable, align 4
  %and63 = and i32 %68, -20225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data)
  %69 = ptrtoint ptr %xferlen to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xferlen, align 4
  %cmp15 = icmp ugt i32 %70, %add
  br i1 %cmp15, label %cleanup.while.body_crit_edge, label %cleanup.cleanup200_crit_edge

cleanup.cleanup200_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup200

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

sw.bb66:                                          ; preds = %entry
  %and67 = and i32 %29, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true, label %sw.bb66.if.end101_crit_edge

sw.bb66.if.end101_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

land.lhs.true:                                    ; preds = %sw.bb66
  %dirmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 2
  %71 = ptrtoint ptr %dirmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dirmap, align 4
  %tobool69.not = icmp eq ptr %72, null
  br i1 %tobool69.not, label %land.lhs.true.if.end101_crit_edge, label %if.then70

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy71) #7
  %73 = ptrtoint ptr %dummy71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %dummy71, align 4, !annotation !77
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call.i316 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call75 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 12, i32 noundef 2031872) #7
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %80 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %command, align 4
  %call78 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 16, i32 noundef %81) #7
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call80 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 20, i32 noundef 1) #7
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %86 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %option, align 4
  %call83 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 24, i32 noundef %87) #7
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %and85 = and i32 %29, -16
  %call86 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 28, i32 noundef %and85) #7
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %92 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dummy, align 4
  %call89 = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 88, i32 noundef %93) #7
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %96 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ddr, align 4
  %call92 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 92, i32 noundef %97) #7
  %buffer93 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 9
  %98 = ptrtoint ptr %buffer93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer93, align 4
  %100 = ptrtoint ptr %dirmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dirmap, align 4
  %xferlen95 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 10
  %102 = ptrtoint ptr %xferlen95 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %xferlen95, align 4
  tail call void @mmiocpy(ptr noundef %99, ptr noundef %101, i32 noundef %103) #7
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call97 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 12, i32 noundef 512) #7
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call99 = call i32 @regmap_read(ptr noundef %107, i32 noundef 12, ptr noundef nonnull %dummy71) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy71) #7
  br label %cleanup200

if.end101:                                        ; preds = %land.lhs.true.if.end101_crit_edge, %sw.bb66.if.end101_crit_edge
  %xferlen103 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 10
  %108 = ptrtoint ptr %xferlen103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %xferlen103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp104398.not = icmp eq i32 %109, 0
  br i1 %cmp104398.not, label %if.end101.cleanup200_crit_edge, label %while.body106.lr.ph

if.end101.cleanup200_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup200

while.body106.lr.ph:                              ; preds = %if.end101
  %110 = getelementptr inbounds [2 x i32], ptr %data111, i32 0, i32 1
  %smcr146 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 11
  %buffer167 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 9
  br label %while.body106

while.body106:                                    ; preds = %cleanup171.while.body106_crit_edge, %while.body106.lr.ph
  %111 = phi i32 [ %109, %while.body106.lr.ph ], [ %146, %cleanup171.while.body106_crit_edge ]
  %pos.2400 = phi i32 [ 0, %while.body106.lr.ph ], [ %add170, %cleanup171.while.body106_crit_edge ]
  %smenr.2399 = phi i32 [ %29, %while.body106.lr.ph ], [ %or142, %cleanup171.while.body106_crit_edge ]
  %sub109 = sub i32 %111, %pos.2400
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data111) #7
  %112 = ptrtoint ptr %data111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %data111, align 4, !annotation !77
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %110, align 4, !annotation !77
  call void @__sanitizer_cov_trace_cmp4(i32 %sub109, i32 %cond)
  %cmp112.not = icmp ult i32 %sub109, %cond
  %114 = call i32 @llvm.ctlz.i32(i32 %sub109, i1 true) #7, !range !80
  %sub.i.op.i318 = xor i32 %114, 31
  %sub.i.op.i318.op = shl nuw i32 1, %sub.i.op.i318
  %cond132 = select i1 %cmp112.not, i32 %sub.i.op.i318.op, i32 %cond
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %117 = ptrtoint ptr %smadr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %smadr, align 4
  %add135 = add i32 %118, %pos.2400
  %call136 = call i32 @regmap_write(ptr noundef %116, i32 noundef 40, i32 noundef %add135) #7
  %and137 = and i32 %smenr.2399, -16
  %119 = ptrtoint ptr %bus_size to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bus_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %120)
  %cmp.i321 = icmp eq i8 %120, 2
  %div20.i322 = zext i1 %cmp.i321 to i32
  %spec.select.i323 = lshr i32 %cond132, %div20.i322
  %121 = call i32 @llvm.umax.i32(i32 %spec.select.i323, i32 1) #7
  %122 = call i32 @llvm.usub.sat.i32(i32 4, i32 %121) #7
  %shl.neg.i324 = shl nsw i32 -1, %122
  %conv13.i325 = and i32 %shl.neg.i324, 15
  %or142 = or i32 %conv13.i325, %and137
  %123 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap, align 4
  %call144 = call i32 @regmap_write(ptr noundef %124, i32 noundef 48, i32 noundef %or142) #7
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 4
  %127 = ptrtoint ptr %smcr146 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %smcr146, align 4
  %or147 = or i32 %128, 1
  %call148 = call i32 @regmap_write(ptr noundef %126, i32 noundef 32, i32 noundef %or147) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts.i326) #7
  %129 = ptrtoint ptr %sts.i326 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %sts.i326, align 4, !annotation !77
  %call.i327 = call i64 @ktime_get() #7
  %add.i.i328 = add i64 %call.i327, 1000000000
  br label %for.cond.i332

for.cond.i332:                                    ; preds = %land.lhs.true.i338.for.cond.i332_crit_edge, %while.body106
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 4
  %call8.i330 = call i32 @regmap_read(ptr noundef %131, i32 noundef 72, ptr noundef nonnull %sts.i326) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i330)
  %tobool.not.i331 = icmp eq i32 %call8.i330, 0
  br i1 %tobool.not.i331, label %lor.lhs.false.i335, label %for.cond.i332.cleanup171.thread_crit_edge

for.cond.i332.cleanup171.thread_crit_edge:        ; preds = %for.cond.i332
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171.thread

lor.lhs.false.i335:                               ; preds = %for.cond.i332
  %132 = ptrtoint ptr %sts.i326 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sts.i326, align 4
  %and.i333 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %tobool9.not.i334 = icmp eq i32 %and.i333, 0
  br i1 %tobool9.not.i334, label %land.lhs.true.i338, label %lor.lhs.false.i335.lor.rhs.i345_crit_edge

lor.lhs.false.i335.lor.rhs.i345_crit_edge:        ; preds = %lor.lhs.false.i335
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i345

land.lhs.true.i338:                               ; preds = %lor.lhs.false.i335
  %call13.i336 = call i64 @ktime_get() #7
  %cmp3.i.i337 = icmp sgt i64 %call13.i336, %add.i.i328
  br i1 %cmp3.i.i337, label %for.end.i341, label %land.lhs.true.i338.for.cond.i332_crit_edge

land.lhs.true.i338.for.cond.i332_crit_edge:       ; preds = %land.lhs.true.i338
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i332

for.end.i341:                                     ; preds = %land.lhs.true.i338
  %134 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap, align 4
  %call18.i339 = call i32 @regmap_read(ptr noundef %135, i32 noundef 72, ptr noundef nonnull %sts.i326) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i339)
  %tobool23.not.i340 = icmp eq i32 %call18.i339, 0
  br i1 %tobool23.not.i340, label %for.end.i341.lor.rhs.i345_crit_edge, label %for.end.i341.cleanup171.thread_crit_edge

for.end.i341.cleanup171.thread_crit_edge:         ; preds = %for.end.i341
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171.thread

for.end.i341.lor.rhs.i345_crit_edge:              ; preds = %for.end.i341
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i345

lor.rhs.i345:                                     ; preds = %for.end.i341.lor.rhs.i345_crit_edge, %lor.lhs.false.i335.lor.rhs.i345_crit_edge
  %136 = ptrtoint ptr %sts.i326 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sts.i326, align 4
  %and24.i342 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i342)
  %tobool25.not.i343 = icmp eq i32 %and24.i342, 0
  br i1 %tobool25.not.i343, label %lor.rhs.i345.cleanup171.thread_crit_edge, label %if.end152

lor.rhs.i345.cleanup171.thread_crit_edge:         ; preds = %lor.rhs.i345
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171.thread

cleanup171.thread:                                ; preds = %lor.rhs.i345.cleanup171.thread_crit_edge, %for.end.i341.cleanup171.thread_crit_edge, %for.cond.i332.cleanup171.thread_crit_edge
  %tobool23.not40.i346.ph = phi i32 [ %call8.i330, %for.cond.i332.cleanup171.thread_crit_edge ], [ -110, %lor.rhs.i345.cleanup171.thread_crit_edge ], [ %call18.i339, %for.end.i341.cleanup171.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i326) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data111) #7
  br label %err_out

if.end152:                                        ; preds = %lor.rhs.i345
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i326) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond132)
  %cmp153 = icmp eq i32 %cond132, 8
  %138 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap, align 4
  br i1 %cmp153, label %if.then155, label %if.else162

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %call158 = call i32 @regmap_read(ptr noundef %139, i32 noundef 60, ptr noundef nonnull %data111) #7
  %140 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap, align 4
  %call161 = call i32 @regmap_read(ptr noundef %141, i32 noundef 56, ptr noundef %110) #7
  br label %cleanup171

if.else162:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %call165 = call i32 @regmap_read(ptr noundef %139, i32 noundef 56, ptr noundef nonnull %data111) #7
  br label %cleanup171

cleanup171:                                       ; preds = %if.else162, %if.then155
  %142 = ptrtoint ptr %buffer167 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %buffer167, align 4
  %add.ptr168 = getelementptr i8, ptr %143, i32 %pos.2400
  %144 = call ptr @memcpy(ptr %add.ptr168, ptr %data111, i32 %cond132)
  %add170 = add i32 %cond132, %pos.2400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data111) #7
  %145 = ptrtoint ptr %xferlen103 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %xferlen103, align 4
  %cmp104 = icmp ugt i32 %146, %add170
  br i1 %cmp104, label %cleanup171.while.body106_crit_edge, label %cleanup171.cleanup200_crit_edge

cleanup171.cleanup200_crit_edge:                  ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup200

cleanup171.while.body106_crit_edge:               ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body106

sw.default:                                       ; preds = %entry
  %147 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap, align 4
  %call179 = tail call i32 @regmap_write(ptr noundef %148, i32 noundef 48, i32 noundef %29) #7
  %149 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap, align 4
  %smcr181 = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 11
  %151 = ptrtoint ptr %smcr181 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %smcr181, align 4
  %or182 = or i32 %152, 1
  %call183 = tail call i32 @regmap_write(ptr noundef %150, i32 noundef 32, i32 noundef %or182) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts.i348) #7
  %153 = ptrtoint ptr %sts.i348 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %sts.i348, align 4, !annotation !77
  %call.i349 = tail call i64 @ktime_get() #7
  %add.i.i350 = add i64 %call.i349, 1000000000
  br label %for.cond.i354

for.cond.i354:                                    ; preds = %land.lhs.true.i360.for.cond.i354_crit_edge, %sw.default
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %call8.i352 = call i32 @regmap_read(ptr noundef %155, i32 noundef 72, ptr noundef nonnull %sts.i348) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i352)
  %tobool.not.i353 = icmp eq i32 %call8.i352, 0
  br i1 %tobool.not.i353, label %lor.lhs.false.i357, label %for.cond.i354.wait_msg_xfer_end.exit369.thread_crit_edge

for.cond.i354.wait_msg_xfer_end.exit369.thread_crit_edge: ; preds = %for.cond.i354
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_msg_xfer_end.exit369.thread

lor.lhs.false.i357:                               ; preds = %for.cond.i354
  %156 = ptrtoint ptr %sts.i348 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sts.i348, align 4
  %and.i355 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i355)
  %tobool9.not.i356 = icmp eq i32 %and.i355, 0
  br i1 %tobool9.not.i356, label %land.lhs.true.i360, label %lor.lhs.false.i357.lor.rhs.i367_crit_edge

lor.lhs.false.i357.lor.rhs.i367_crit_edge:        ; preds = %lor.lhs.false.i357
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i367

land.lhs.true.i360:                               ; preds = %lor.lhs.false.i357
  %call13.i358 = call i64 @ktime_get() #7
  %cmp3.i.i359 = icmp sgt i64 %call13.i358, %add.i.i350
  br i1 %cmp3.i.i359, label %for.end.i363, label %land.lhs.true.i360.for.cond.i354_crit_edge

land.lhs.true.i360.for.cond.i354_crit_edge:       ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i354

for.end.i363:                                     ; preds = %land.lhs.true.i360
  %158 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap, align 4
  %call18.i361 = call i32 @regmap_read(ptr noundef %159, i32 noundef 72, ptr noundef nonnull %sts.i348) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i361)
  %tobool23.not.i362 = icmp eq i32 %call18.i361, 0
  br i1 %tobool23.not.i362, label %for.end.i363.lor.rhs.i367_crit_edge, label %for.end.i363.wait_msg_xfer_end.exit369.thread_crit_edge

for.end.i363.wait_msg_xfer_end.exit369.thread_crit_edge: ; preds = %for.end.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_msg_xfer_end.exit369.thread

for.end.i363.lor.rhs.i367_crit_edge:              ; preds = %for.end.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i367

lor.rhs.i367:                                     ; preds = %for.end.i363.lor.rhs.i367_crit_edge, %lor.lhs.false.i357.lor.rhs.i367_crit_edge
  %160 = ptrtoint ptr %sts.i348 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sts.i348, align 4
  %and24.i364 = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i364)
  %tobool25.not.i365 = icmp eq i32 %and24.i364, 0
  br i1 %tobool25.not.i365, label %lor.rhs.i367.wait_msg_xfer_end.exit369.thread_crit_edge, label %wait_msg_xfer_end.exit369

lor.rhs.i367.wait_msg_xfer_end.exit369.thread_crit_edge: ; preds = %lor.rhs.i367
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_msg_xfer_end.exit369.thread

wait_msg_xfer_end.exit369.thread:                 ; preds = %lor.rhs.i367.wait_msg_xfer_end.exit369.thread_crit_edge, %for.end.i363.wait_msg_xfer_end.exit369.thread_crit_edge, %for.cond.i354.wait_msg_xfer_end.exit369.thread_crit_edge
  %tobool23.not40.i368.ph = phi i32 [ %call18.i361, %for.end.i363.wait_msg_xfer_end.exit369.thread_crit_edge ], [ -110, %lor.rhs.i367.wait_msg_xfer_end.exit369.thread_crit_edge ], [ %call8.i352, %for.cond.i354.wait_msg_xfer_end.exit369.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i348) #7
  br label %err_out

wait_msg_xfer_end.exit369:                        ; preds = %lor.rhs.i367
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts.i348) #7
  br label %cleanup200

err_out:                                          ; preds = %wait_msg_xfer_end.exit369.thread, %cleanup171.thread, %cleanup.thread
  %ret.3 = phi i32 [ %tobool23.not40.i.ph, %cleanup.thread ], [ %tobool23.not40.i346.ph, %cleanup171.thread ], [ %tobool23.not40.i368.ph, %wait_msg_xfer_end.exit369.thread ]
  %rstc = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 4
  %162 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rstc, align 4
  %call190 = call i32 @reset_control_reset(ptr noundef %163) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %err_out.if.end194_crit_edge, label %do.end

err_out.if.end194_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

do.end:                                           ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rpc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.8) #10
  br label %if.end194

if.end194:                                        ; preds = %do.end, %err_out.if.end194_crit_edge
  %166 = ptrtoint ptr %bus_size to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %bus_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %167)
  %cmp197 = icmp eq i8 %167, 2
  %call199 = call i32 @rpcif_hw_init(ptr noundef %rpc, i1 noundef zeroext %cmp197)
  br label %cleanup200

cleanup200:                                       ; preds = %if.end194, %wait_msg_xfer_end.exit369, %cleanup171.cleanup200_crit_edge, %if.end101.cleanup200_crit_edge, %if.then70, %cleanup.cleanup200_crit_edge, %while.cond.preheader.cleanup200_crit_edge
  %ret.2 = phi i32 [ %ret.3, %if.end194 ], [ 0, %wait_msg_xfer_end.exit369 ], [ 0, %if.then70 ], [ 0, %while.cond.preheader.cleanup200_crit_edge ], [ 0, %if.end101.cleanup200_crit_edge ], [ 0, %cleanup.cleanup200_crit_edge ], [ 0, %cleanup171.cleanup200_crit_edge ]
  %168 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rpc, align 4
  %call.i370 = call i32 @__pm_runtime_idle(ptr noundef %169, i32 noundef 5) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcif_dirmap_read(ptr nocapture noundef readonly %rpc, i64 noundef %offs, i32 noundef %len, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %sub = add i32 %1, -1
  %2 = trunc i64 %offs to i32
  %3 = and i32 %sub, %2
  %conv5 = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %conv5, i32 %len)
  %5 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rpc, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %regmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 12, i32 noundef 0) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %command = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 13
  %13 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %command, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 16, i32 noundef %14) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = lshr i32 %2, 9
  %18 = and i32 %17, 983040
  %conv14 = or i32 %18, 1
  %call15 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 20, i32 noundef %conv14) #7
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %option = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 14
  %21 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %option, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 24, i32 noundef %22) #7
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %enable = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 15
  %25 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %enable, align 4
  %and19 = and i32 %26, -16
  %call20 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 28, i32 noundef %and19) #7
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %dummy = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 16
  %29 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dummy, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 88, i32 noundef %30) #7
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %ddr = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 17
  %33 = ptrtoint ptr %ddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ddr, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 92, i32 noundef %34) #7
  %bus_size = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 8
  %35 = ptrtoint ptr %bus_size to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bus_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp26 = icmp eq i8 %36, 2
  %dirmap = getelementptr inbounds %struct.rpcif, ptr %rpc, i32 0, i32 2
  %37 = ptrtoint ptr %dirmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dirmap, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %3
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then28.if.end32_crit_edge, label %land.lhs.true.i

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true.i:                                  ; preds = %if.then28
  %39 = ptrtoint ptr %add.ptr to i32
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i32 %39, -2
  %40 = inttoptr i32 %and2.i to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #7, !srcloc !81
  %buf.sroa.6.0.extract.trunc.i = trunc i16 %41 to i8
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %buf.sroa.6.0.extract.trunc.i, ptr %buf, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 1
  %incdec.ptr3.i = getelementptr i8, ptr %buf, i32 1
  %dec.i = add i32 %4, -1
  %.pre = ptrtoint ptr %incdec.ptr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.then.i ], [ %39, %land.lhs.true.i.if.end.i_crit_edge ]
  %from.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %add.ptr, %land.lhs.true.i.if.end.i_crit_edge ]
  %count.addr.0.i = phi i32 [ %dec.i, %if.then.i ], [ %4, %land.lhs.true.i.if.end.i_crit_edge ]
  %to.addr.0.i = phi ptr [ %incdec.ptr3.i, %if.then.i ], [ %buf, %land.lhs.true.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.addr.0.i)
  %cmp59.i = icmp ult i32 %count.addr.0.i, 2
  %and460.i = and i32 %.pre-phi, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and460.i)
  %cmp5.not61.i = icmp eq i32 %and460.i, 0
  %or.cond62.i = or i1 %cmp59.i, %cmp5.not61.i
  br i1 %or.cond62.i, label %if.end.i.while.cond8.preheader.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.cond8.preheader.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond8.preheader.i

while.cond8.preheader.i:                          ; preds = %while.body.i.while.cond8.preheader.i_crit_edge, %if.end.i.while.cond8.preheader.i_crit_edge
  %from.addr.1.lcssa.i = phi ptr [ %from.addr.0.i, %if.end.i.while.cond8.preheader.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.cond8.preheader.i_crit_edge ]
  %count.addr.1.lcssa.i = phi i32 [ %count.addr.0.i, %if.end.i.while.cond8.preheader.i_crit_edge ], [ %sub.i, %while.body.i.while.cond8.preheader.i_crit_edge ]
  %to.addr.1.lcssa.i = phi ptr [ %to.addr.0.i, %if.end.i.while.cond8.preheader.i_crit_edge ], [ %add.ptr7.i, %while.body.i.while.cond8.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.1.lcssa.i)
  %cmp968.i = icmp ugt i32 %count.addr.1.lcssa.i, 3
  br i1 %cmp968.i, label %while.cond8.preheader.i.while.body10.i_crit_edge, label %while.cond8.preheader.i.while.cond16.preheader.i_crit_edge

while.cond8.preheader.i.while.cond16.preheader.i_crit_edge: ; preds = %while.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond16.preheader.i

while.cond8.preheader.i.while.body10.i_crit_edge: ; preds = %while.cond8.preheader.i
  br label %while.body10.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %to.addr.165.i = phi ptr [ %add.ptr7.i, %while.body.i.while.body.i_crit_edge ], [ %to.addr.0.i, %if.end.i.while.body.i_crit_edge ]
  %count.addr.164.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %count.addr.0.i, %if.end.i.while.body.i_crit_edge ]
  %from.addr.163.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %from.addr.0.i, %if.end.i.while.body.i_crit_edge ]
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %from.addr.163.i) #7, !srcloc !81
  %44 = ptrtoint ptr %to.addr.165.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %to.addr.165.i, align 2
  %add.ptr.i = getelementptr i8, ptr %from.addr.163.i, i32 2
  %add.ptr7.i = getelementptr i8, ptr %to.addr.165.i, i32 2
  %sub.i = add i32 %count.addr.164.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 2
  %45 = ptrtoint ptr %add.ptr.i to i32
  %and4.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.not.i
  br i1 %or.cond.i, label %while.body.i.while.cond8.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.cond8.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond8.preheader.i

while.cond16.preheader.i:                         ; preds = %while.body10.i.while.cond16.preheader.i_crit_edge, %while.cond8.preheader.i.while.cond16.preheader.i_crit_edge
  %from.addr.2.lcssa.i = phi ptr [ %from.addr.1.lcssa.i, %while.cond8.preheader.i.while.cond16.preheader.i_crit_edge ], [ %add.ptr12.i, %while.body10.i.while.cond16.preheader.i_crit_edge ]
  %count.addr.2.lcssa.i = phi i32 [ %count.addr.1.lcssa.i, %while.cond8.preheader.i.while.cond16.preheader.i_crit_edge ], [ %sub14.i, %while.body10.i.while.cond16.preheader.i_crit_edge ]
  %to.addr.2.lcssa.i = phi ptr [ %to.addr.1.lcssa.i, %while.cond8.preheader.i.while.cond16.preheader.i_crit_edge ], [ %add.ptr13.i, %while.body10.i.while.cond16.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.2.lcssa.i)
  %cmp1775.i = icmp ugt i32 %count.addr.2.lcssa.i, 1
  br i1 %cmp1775.i, label %while.cond16.preheader.i.while.body18.i_crit_edge, label %while.cond16.preheader.i.while.end23.i_crit_edge

while.cond16.preheader.i.while.end23.i_crit_edge: ; preds = %while.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23.i

while.cond16.preheader.i.while.body18.i_crit_edge: ; preds = %while.cond16.preheader.i
  br label %while.body18.i

while.body10.i:                                   ; preds = %while.body10.i.while.body10.i_crit_edge, %while.cond8.preheader.i.while.body10.i_crit_edge
  %to.addr.271.i = phi ptr [ %add.ptr13.i, %while.body10.i.while.body10.i_crit_edge ], [ %to.addr.1.lcssa.i, %while.cond8.preheader.i.while.body10.i_crit_edge ]
  %count.addr.270.i = phi i32 [ %sub14.i, %while.body10.i.while.body10.i_crit_edge ], [ %count.addr.1.lcssa.i, %while.cond8.preheader.i.while.body10.i_crit_edge ]
  %from.addr.269.i = phi ptr [ %add.ptr12.i, %while.body10.i.while.body10.i_crit_edge ], [ %from.addr.1.lcssa.i, %while.cond8.preheader.i.while.body10.i_crit_edge ]
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %from.addr.269.i) #7, !srcloc !82
  %47 = ptrtoint ptr %to.addr.271.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %to.addr.271.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %from.addr.269.i, i32 4
  %add.ptr13.i = getelementptr i8, ptr %to.addr.271.i, i32 4
  %sub14.i = add i32 %count.addr.270.i, -4
  %cmp9.i = icmp ugt i32 %sub14.i, 3
  br i1 %cmp9.i, label %while.body10.i.while.body10.i_crit_edge, label %while.body10.i.while.cond16.preheader.i_crit_edge

while.body10.i.while.cond16.preheader.i_crit_edge: ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond16.preheader.i

while.body10.i.while.body10.i_crit_edge:          ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body10.i

while.body18.i:                                   ; preds = %while.body18.i.while.body18.i_crit_edge, %while.cond16.preheader.i.while.body18.i_crit_edge
  %to.addr.378.i = phi ptr [ %add.ptr21.i, %while.body18.i.while.body18.i_crit_edge ], [ %to.addr.2.lcssa.i, %while.cond16.preheader.i.while.body18.i_crit_edge ]
  %count.addr.377.i = phi i32 [ %sub22.i, %while.body18.i.while.body18.i_crit_edge ], [ %count.addr.2.lcssa.i, %while.cond16.preheader.i.while.body18.i_crit_edge ]
  %from.addr.376.i = phi ptr [ %add.ptr20.i, %while.body18.i.while.body18.i_crit_edge ], [ %from.addr.2.lcssa.i, %while.cond16.preheader.i.while.body18.i_crit_edge ]
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %from.addr.376.i) #7, !srcloc !81
  %49 = ptrtoint ptr %to.addr.378.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %to.addr.378.i, align 2
  %add.ptr20.i = getelementptr i8, ptr %from.addr.376.i, i32 2
  %add.ptr21.i = getelementptr i8, ptr %to.addr.378.i, i32 2
  %sub22.i = add i32 %count.addr.377.i, -2
  %cmp17.i = icmp ugt i32 %sub22.i, 1
  br i1 %cmp17.i, label %while.body18.i.while.body18.i_crit_edge, label %while.body18.i.while.end23.i_crit_edge

while.body18.i.while.end23.i_crit_edge:           ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23.i

while.body18.i.while.body18.i_crit_edge:          ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body18.i

while.end23.i:                                    ; preds = %while.body18.i.while.end23.i_crit_edge, %while.cond16.preheader.i.while.end23.i_crit_edge
  %from.addr.3.lcssa.i = phi ptr [ %from.addr.2.lcssa.i, %while.cond16.preheader.i.while.end23.i_crit_edge ], [ %add.ptr20.i, %while.body18.i.while.end23.i_crit_edge ]
  %count.addr.3.lcssa.i = phi i32 [ %count.addr.2.lcssa.i, %while.cond16.preheader.i.while.end23.i_crit_edge ], [ %sub22.i, %while.body18.i.while.end23.i_crit_edge ]
  %to.addr.3.lcssa.i = phi ptr [ %to.addr.2.lcssa.i, %while.cond16.preheader.i.while.end23.i_crit_edge ], [ %add.ptr21.i, %while.body18.i.while.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3.lcssa.i)
  %tobool24.not.i = icmp eq i32 %count.addr.3.lcssa.i, 0
  br i1 %tobool24.not.i, label %while.end23.i.if.end32_crit_edge, label %if.then25.i

while.end23.i.if.end32_crit_edge:                 ; preds = %while.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then25.i:                                      ; preds = %while.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %from.addr.3.lcssa.i) #7, !srcloc !81
  %buf.sroa.0.0.extract.shift30.i = lshr i16 %50, 8
  %buf.sroa.0.0.extract.trunc31.i = trunc i16 %buf.sroa.0.0.extract.shift30.i to i8
  %51 = ptrtoint ptr %to.addr.3.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %buf.sroa.0.0.extract.trunc31.i, ptr %to.addr.3.lcssa.i, align 1
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %4) #7
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25.i, %while.end23.i.if.end32_crit_edge, %if.then28.if.end32_crit_edge
  %52 = ptrtoint ptr %rpc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rpc, align 4
  %call.i63 = tail call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 5) #7
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpcif_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpcif_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpcif_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %reg, label %entry.if.end29_crit_edge [
    i32 56, label %entry.if.then_crit_edge
    i32 64, label %entry.if.then_crit_edge51
  ]

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge51
  %base = getelementptr inbounds %struct.rpcif, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 48
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !82
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %and = and i32 %4, 15
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and, label %if.then.cleanup37_crit_edge [
    i32 8, label %if.then4
    i32 12, label %if.then14
    i32 15, label %if.then.if.end29_crit_edge
  ]

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then.cleanup37_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup37

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 %reg
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %conv = zext i8 %8 to i32
  br label %cleanup37.sink.split

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 %reg
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #7, !srcloc !81
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %conv22 = zext i16 %12 to i32
  br label %cleanup37.sink.split

if.end29:                                         ; preds = %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  %base32 = getelementptr inbounds %struct.rpcif, ptr %context, i32 0, i32 1
  %13 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base32, align 4
  %add.ptr33 = getelementptr i8, ptr %14, i32 %reg
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #7, !srcloc !82
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  br label %cleanup37.sink.split

cleanup37.sink.split:                             ; preds = %if.end29, %if.then14, %if.then4
  %conv.sink = phi i32 [ %conv, %if.then4 ], [ %conv22, %if.then14 ], [ %16, %if.end29 ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.sink, ptr %val, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup37.sink.split, %if.then.cleanup37_crit_edge
  %retval.1 = phi i32 [ -84, %if.then.cleanup37_crit_edge ], [ 0, %cleanup37.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %reg, label %entry.do.body23_crit_edge [
    i32 56, label %entry.if.then_crit_edge
    i32 64, label %entry.if.then_crit_edge42
  ]

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge42
  %base = getelementptr inbounds %struct.rpcif, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 48
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !82
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %and = and i32 %4, 15
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and, label %if.then.cleanup28_crit_edge [
    i32 8, label %do.body
    i32 12, label %do.body10
    i32 15, label %if.then.do.body23_crit_edge
  ]

if.then.do.body23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then.cleanup28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %val to i8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %conv) #7, !srcloc !90
  br label %cleanup28

do.body10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %conv13 = trunc i32 %val to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %8) #7, !srcloc !92
  br label %cleanup28

do.body23:                                        ; preds = %if.then.do.body23_crit_edge, %entry.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base26 = getelementptr inbounds %struct.rpcif, ptr %context, i32 0, i32 1
  %12 = ptrtoint ptr %base26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base26, align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %11) #7, !srcloc !94
  br label %cleanup28

cleanup28:                                        ; preds = %do.body23, %do.body10, %do.body, %if.then.cleanup28_crit_edge
  %retval.1 = phi i32 [ 0, %do.body23 ], [ -84, %if.then.cleanup28_crit_edge ], [ 0, %do.body10 ], [ 0, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call, ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else8, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %name.0 = phi ptr [ @.str.15, %if.end.if.end14_crit_edge ], [ @.str.17, %if.else.if.end14_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call15 = tail call ptr @platform_device_alloc(ptr noundef nonnull %name.0, i32 noundef %3) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.platform_device, ptr %call15, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %driver_data.i.i, align 4
  %call21 = tail call i32 @platform_device_add(ptr noundef nonnull %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.else8, %do.end
  %retval.0 = phi i32 [ %call21, %if.end18 ], [ -19, %if.else8 ], [ -19, %do.end ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/memory/renesas-rpc-if.c", i32 232, i32 59}
!2 = !{ptr @rpcif_sw_init._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/memory/renesas-rpc-if.c", i32 237, i32 16}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/memory/renesas-rpc-if.c", i32 239, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rpcif_sw_init._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @rpcif_sw_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/memory/renesas-rpc-if.c", i32 245, i32 59}
!15 = !{ptr @__ksymtab_rpcif_sw_init, !16, !"__ksymtab_rpcif_sw_init", i1 false, i1 false}
!16 = !{!"../drivers/memory/renesas-rpc-if.c", i32 256, i32 1}
!17 = !{ptr @__ksymtab_rpcif_hw_init, !18, !"__ksymtab_rpcif_hw_init", i1 false, i1 false}
!18 = !{!"../drivers/memory/renesas-rpc-if.c", i32 329, i32 1}
!19 = !{ptr @__ksymtab_rpcif_prepare, !20, !"__ksymtab_rpcif_prepare", i1 false, i1 false}
!20 = !{!"../drivers/memory/renesas-rpc-if.c", i32 437, i32 1}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/memory/renesas-rpc-if.c", i32 569, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rpcif_manual_xfer._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rpcif_manual_xfer._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_rpcif_manual_xfer, !27, !"__ksymtab_rpcif_manual_xfer", i1 false, i1 false}
!27 = !{!"../drivers/memory/renesas-rpc-if.c", i32 573, i32 1}
!28 = !{ptr @__ksymtab_rpcif_dirmap_read, !29, !"__ksymtab_rpcif_dirmap_read", i1 false, i1 false}
!29 = !{!"../drivers/memory/renesas-rpc-if.c", i32 647, i32 1}
!30 = !{ptr @__initcall__kmod_renesas_rpc_if__175_704_rpcif_driver_init6, !31, !"__initcall__kmod_renesas_rpc_if__175_704_rpcif_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/memory/renesas-rpc-if.c", i32 704, i32 1}
!32 = !{ptr @__exitcall_rpcif_driver_exit, !31, !"__exitcall_rpcif_driver_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_description176, !34, !"__UNIQUE_ID_description176", i1 false, i1 false}
!34 = !{!"../drivers/memory/renesas-rpc-if.c", i32 706, i32 1}
!35 = !{ptr @__UNIQUE_ID_file177, !36, !"__UNIQUE_ID_file177", i1 false, i1 false}
!36 = !{!"../drivers/memory/renesas-rpc-if.c", i32 707, i32 1}
!37 = !{ptr @__UNIQUE_ID_license178, !36, !"__UNIQUE_ID_license178", i1 false, i1 false}
!38 = !{ptr @rpcif_regmap_config, !39, !"rpcif_regmap_config", i1 false, i1 false}
!39 = !{!"../drivers/memory/renesas-rpc-if.c", i32 214, i32 35}
!40 = !{ptr @rpcif_volatile_table, !41, !"rpcif_volatile_table", i1 false, i1 false}
!41 = !{!"../drivers/memory/renesas-rpc-if.c", i32 160, i32 41}
!42 = !{ptr @rpcif_volatile_ranges, !43, !"rpcif_volatile_ranges", i1 false, i1 false}
!43 = !{!"../drivers/memory/renesas-rpc-if.c", i32 154, i32 34}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/renesas-rpc-if.c", i32 700, i32 11}
!46 = !{ptr @rpcif_driver, !47, !"rpcif_driver", i1 false, i1 false}
!47 = !{!"../drivers/memory/renesas-rpc-if.c", i32 696, i32 31}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/renesas-rpc-if.c", i32 657, i32 3}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rpcif_probe._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @rpcif_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/renesas-rpc-if.c", i32 661, i32 37}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/renesas-rpc-if.c", i32 662, i32 10}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/renesas-rpc-if.c", i32 663, i32 44}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/renesas-rpc-if.c", i32 664, i32 10}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/renesas-rpc-if.c", i32 667, i32 3}
!64 = !{ptr @rpcif_probe._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rpcif_probe._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @rpcif_of_match, !67, !"rpcif_of_match", i1 false, i1 false}
!67 = !{!"../drivers/memory/renesas-rpc-if.c", i32 689, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i32 24, i32 33}
!79 = !{i8 0, i8 2}
!80 = !{i32 0, i32 33}
!81 = !{i64 2046595}
!82 = !{i64 2047433}
!83 = !{i64 2152699619}
!84 = !{i64 2047213}
!85 = !{i64 2152699870}
!86 = !{i64 2152700348}
!87 = !{i64 2152700829}
!88 = !{i64 2152701340}
!89 = !{i64 2152701575}
!90 = !{i64 2046818}
!91 = !{i64 2152701838}
!92 = !{i64 2046395}
!93 = !{i64 2152702226}
!94 = !{i64 2047015}
