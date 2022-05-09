; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/mipi.c_pt.bc'
source_filename = "../drivers/gpu/host1x/mipi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tegra_mipi_request\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mipi_request\09\09\09\09"
module asm "\09.long\09__crc_tegra_mipi_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_request:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_request\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_mipi_free\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mipi_free\09\09\09\09"
module asm "\09.long\09__crc_tegra_mipi_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_free\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_mipi_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mipi_enable\09\09\09\09"
module asm "\09.long\09__crc_tegra_mipi_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_enable\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_mipi_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mipi_disable\09\09\09\09"
module asm "\09.long\09__crc_tegra_mipi_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_disable\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_mipi_finish_calibration\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mipi_finish_calibration\09\09\09\09"
module asm "\09.long\09__crc_tegra_mipi_finish_calibration\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_finish_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_finish_calibration\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_finish_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_mipi_start_calibration\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mipi_start_calibration\09\09\09\09"
module asm "\09.long\09__crc_tegra_mipi_start_calibration\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_start_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_start_calibration\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_start_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_mipi_soc = type { i8, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tegra_mipi_pad = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.tegra_mipi_device = type { ptr, ptr, ptr, i32 }
%struct.tegra_mipi = type { ptr, ptr, ptr, %struct.mutex, ptr, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,mipi-calibrate\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"#nvidia,mipi-calibrate-cells\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_tegra_mipi_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_request = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_request to i32), ptr @__kstrtab_tegra_mipi_request, ptr @__kstrtabns_tegra_mipi_request }, section "___ksymtab+tegra_mipi_request", align 4
@__kstrtab_tegra_mipi_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_free to i32), ptr @__kstrtab_tegra_mipi_free, ptr @__kstrtabns_tegra_mipi_free }, section "___ksymtab+tegra_mipi_free", align 4
@__kstrtab_tegra_mipi_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_enable to i32), ptr @__kstrtab_tegra_mipi_enable, ptr @__kstrtabns_tegra_mipi_enable }, section "___ksymtab+tegra_mipi_enable", align 4
@__kstrtab_tegra_mipi_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_disable to i32), ptr @__kstrtab_tegra_mipi_disable, ptr @__kstrtabns_tegra_mipi_disable }, section "___ksymtab+tegra_mipi_disable", align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpu/host1x/mipi.c\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_tegra_mipi_finish_calibration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_finish_calibration = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_finish_calibration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_finish_calibration to i32), ptr @__kstrtab_tegra_mipi_finish_calibration, ptr @__kstrtabns_tegra_mipi_finish_calibration }, section "___ksymtab+tegra_mipi_finish_calibration", align 4
@__kstrtab_tegra_mipi_start_calibration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_start_calibration = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_start_calibration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_start_calibration to i32), ptr @__kstrtab_tegra_mipi_start_calibration, ptr @__kstrtabns_tegra_mipi_start_calibration }, section "___ksymtab+tegra_mipi_start_calibration", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-mipi\00", [21 x i8] zeroinitializer }, align 32
@tegra_mipi_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_mipi_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_mipi_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra132_mipi_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_mipi_soc }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_mipi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_mipi_probe, ptr @tegra_mipi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_mipi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_mipi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mipi->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra_mipi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_mipi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_mipi_probe._entry_ptr = internal global ptr @tegra_mipi_probe._entry, section ".printk_index", align 4
@tegra114_mipi_soc = internal constant { %struct.tegra_mipi_soc, [40 x i8] } { %struct.tegra_mipi_soc { i8 0, ptr @tegra114_mipi_pads, i32 9, i8 1, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i8 4, i8 5, i8 0, i8 4 }, [40 x i8] zeroinitializer }, align 32
@tegra124_mipi_soc = internal constant { %struct.tegra_mipi_soc, [40 x i8] } { %struct.tegra_mipi_soc { i8 1, ptr @tegra124_mipi_pads, i32 7, i8 1, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2 }, [40 x i8] zeroinitializer }, align 32
@tegra132_mipi_soc = internal constant { %struct.tegra_mipi_soc, [40 x i8] } { %struct.tegra_mipi_soc { i8 1, ptr @tegra124_mipi_pads, i32 7, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 2 }, [40 x i8] zeroinitializer }, align 32
@tegra210_mipi_soc = internal constant { %struct.tegra_mipi_soc, [40 x i8] } { %struct.tegra_mipi_soc { i8 1, ptr @tegra210_mipi_pads, i32 10, i8 1, i8 0, i8 0, i8 3, i8 1, i8 1, i8 0, i8 2, i8 0, i8 0, i8 2 }, [40 x i8] zeroinitializer }, align 32
@tegra114_mipi_pads = internal constant { [9 x %struct.tegra_mipi_pad], [56 x i8] } { [9 x %struct.tegra_mipi_pad] [%struct.tegra_mipi_pad { i32 5, i32 0 }, %struct.tegra_mipi_pad { i32 6, i32 0 }, %struct.tegra_mipi_pad { i32 7, i32 0 }, %struct.tegra_mipi_pad { i32 8, i32 0 }, %struct.tegra_mipi_pad { i32 9, i32 0 }, %struct.tegra_mipi_pad { i32 14, i32 0 }, %struct.tegra_mipi_pad { i32 15, i32 0 }, %struct.tegra_mipi_pad { i32 16, i32 0 }, %struct.tegra_mipi_pad { i32 17, i32 0 }], [56 x i8] zeroinitializer }, align 32
@tegra124_mipi_pads = internal constant { [7 x %struct.tegra_mipi_pad], [40 x i8] } { [7 x %struct.tegra_mipi_pad] [%struct.tegra_mipi_pad { i32 5, i32 27 }, %struct.tegra_mipi_pad { i32 6, i32 27 }, %struct.tegra_mipi_pad { i32 7, i32 28 }, %struct.tegra_mipi_pad { i32 8, i32 28 }, %struct.tegra_mipi_pad { i32 9, i32 29 }, %struct.tegra_mipi_pad { i32 14, i32 25 }, %struct.tegra_mipi_pad { i32 15, i32 26 }], [40 x i8] zeroinitializer }, align 32
@tegra210_mipi_pads = internal constant { [10 x %struct.tegra_mipi_pad], [48 x i8] } { [10 x %struct.tegra_mipi_pad] [%struct.tegra_mipi_pad { i32 5, i32 0 }, %struct.tegra_mipi_pad { i32 6, i32 0 }, %struct.tegra_mipi_pad { i32 7, i32 0 }, %struct.tegra_mipi_pad { i32 8, i32 0 }, %struct.tegra_mipi_pad { i32 9, i32 0 }, %struct.tegra_mipi_pad { i32 10, i32 0 }, %struct.tegra_mipi_pad { i32 14, i32 25 }, %struct.tegra_mipi_pad { i32 15, i32 26 }, %struct.tegra_mipi_pad { i32 16, i32 28 }, %struct.tegra_mipi_pad { i32 17, i32 29 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 216, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 217, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 303, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 551, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"tegra_mipi_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 492, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"tegra_mipi_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 549, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 523, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 527, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"tegra114_mipi_soc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 401, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"tegra124_mipi_soc\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 428, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"tegra132_mipi_soc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 445, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"tegra210_mipi_soc\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 475, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"tegra114_mipi_pads\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 389, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"tegra124_mipi_pads\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 418, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"tegra210_mipi_pads\00", align 1
@___asan_gen_.67 = private constant [29 x i8] c"../drivers/gpu/host1x/mipi.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 462, i32 36 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_tegra_mipi_disable, ptr @__ksymtab_tegra_mipi_enable, ptr @__ksymtab_tegra_mipi_finish_calibration, ptr @__ksymtab_tegra_mipi_free, ptr @__ksymtab_tegra_mipi_request, ptr @__ksymtab_tegra_mipi_start_calibration, ptr @tegra_mipi_probe._entry, ptr @tegra_mipi_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tegra_mipi_of_match, ptr @tegra_mipi_driver, ptr @tegra_mipi_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tegra114_mipi_soc, ptr @tegra124_mipi_soc, ptr @tegra132_mipi_soc, ptr @tegra210_mipi_soc, ptr @tegra114_mipi_pads, ptr @tegra124_mipi_pads, ptr @tegra210_mipi_pads], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mipi_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mipi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mipi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mipi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_mipi_soc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_mipi_soc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra132_mipi_soc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mipi_soc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_mipi_pads to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_mipi_pads to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mipi_pads to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_mipi_request(ptr noundef %device, ptr noundef %np) #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #6
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 4
  %call6 = call ptr @of_find_device_by_node(ptr noundef %4) #6
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %call7.i.i, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end4.free_crit_edge, label %if.end10

if.end4.free_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end10:                                         ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call6, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %mipi = getelementptr inbounds %struct.tegra_mipi_device, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %mipi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mipi, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_put(ptr noundef nonnull %call6) #6
  br label %free

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %10) #6
  %args18 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %11 = ptrtoint ptr %args18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args18, align 4
  %pads = getelementptr inbounds %struct.tegra_mipi_device, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %pads to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pads, align 4
  %device19 = getelementptr inbounds %struct.tegra_mipi_device, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %device19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %device, ptr %device19, align 8
  br label %cleanup

free:                                             ; preds = %if.then15, %if.end4.free_crit_edge
  %err.0 = phi i32 [ -517, %if.then15 ], [ -19, %if.end4.free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

out:                                              ; preds = %free, %if.end.out_crit_edge
  %err.1 = phi i32 [ %err.0, %free ], [ -12, %if.end.out_crit_edge ]
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %16) #6
  %17 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %call7.i.i, %if.end16 ], [ %17, %out ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_mipi_free(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  tail call void @platform_device_put(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %device) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_enable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mipi = getelementptr inbounds %struct.tegra_mipi_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi, align 4
  %lock = getelementptr inbounds %struct.tegra_mipi, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mipi, align 4
  %usage_count = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mipi, align 4
  %clk.i = getelementptr inbounds %struct.tegra_mipi, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i.i = getelementptr inbounds %struct.tegra_mipi, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %13 = and i32 %12, -33554433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %needs_vclamp_ref.i = getelementptr inbounds %struct.tegra_mipi_soc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %needs_vclamp_ref.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_vclamp_ref.i, align 1, !range !59
  %19 = zext i8 %18 to i32
  %spec.select.i = or i32 %14, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %22, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %20) #6, !srcloc !61
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %24, i32 96
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %26 = and i32 %25, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %28, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %26) #6, !srcloc !61
  %29 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.end.i ], [ %call.i, %if.then.if.end_crit_edge ]
  %31 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mipi, align 4
  %lock4 = getelementptr inbounds %struct.tegra_mipi, ptr %32, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock4) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_disable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mipi = getelementptr inbounds %struct.tegra_mipi_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi, align 4
  %lock = getelementptr inbounds %struct.tegra_mipi, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mipi, align 4
  %usage_count = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mipi, align 4
  %clk.i = getelementptr inbounds %struct.tegra_mipi, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i.i = getelementptr inbounds %struct.tegra_mipi, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %13 = or i32 %12, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %15, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %13) #6, !srcloc !61
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %17, i32 88
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #6, !srcloc !57
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 4
  %needs_vclamp_ref.i = getelementptr inbounds %struct.tegra_mipi_soc, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %needs_vclamp_ref.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %needs_vclamp_ref.i, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %and.i = and i32 %19, -4
  %spec.select.i = select i1 %tobool.not.i, i32 %19, i32 %and.i
  %or5.i = or i32 %spec.select.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %26, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %24) #6, !srcloc !61
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.end.i ], [ %call.i, %if.then.if.end_crit_edge ]
  %27 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mipi, align 4
  %lock4 = getelementptr inbounds %struct.tegra_mipi, ptr %28, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock4) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_finish_calibration(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mipi1 = getelementptr inbounds %struct.tegra_mipi_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %mipi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi1, align 4
  %regs = getelementptr inbounds %struct.tegra_mipi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 250000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 306) #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !57
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = and i32 %5, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %.not45 = icmp eq i32 %6, 65536
  br i1 %.not45, label %entry.for.end_crit_edge, label %entry.land.lhs.true15_crit_edge

entry.land.lhs.true15_crit_edge:                  ; preds = %entry
  br label %land.lhs.true15

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true15:                                  ; preds = %if.then25.land.lhs.true15_crit_edge, %entry.land.lhs.true15_crit_edge
  %call16 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then25

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !57
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %for.end

if.then25:                                        ; preds = %land.lhs.true15
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !57
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = and i32 %10, 65537
  %.not = icmp eq i32 %11, 65536
  br i1 %.not, label %if.then25.for.end_crit_edge, label %if.then25.land.lhs.true15_crit_edge

if.then25.land.lhs.true15_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then25.for.end_crit_edge, %if.then19, %entry.for.end_crit_edge
  %value.0 = phi i32 [ %8, %if.then19 ], [ %5, %entry.for.end_crit_edge ], [ %10, %if.then25.for.end_crit_edge ]
  %and28 = and i32 %value.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and30 = and i32 %value.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %phi.sel = select i1 %tobool31.not, i32 -110, i32 0
  %12 = select i1 %tobool29.not, i32 %phi.sel, i32 -110
  %13 = ptrtoint ptr %mipi1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mipi1, align 4
  %lock = getelementptr inbounds %struct.tegra_mipi, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %15 = ptrtoint ptr %mipi1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mipi1, align 4
  %clk = getelementptr inbounds %struct.tegra_mipi, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_start_calibration(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mipi = getelementptr inbounds %struct.tegra_mipi_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %clk = getelementptr inbounds %struct.tegra_mipi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mipi, align 4
  %lock = getelementptr inbounds %struct.tegra_mipi, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %pad_drive_down_ref = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %pad_drive_down_ref to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pad_drive_down_ref, align 2
  %10 = and i8 %9, 7
  %and = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %and, 16
  %pad_drive_up_ref = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %pad_drive_up_ref to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pad_drive_up_ref, align 1
  %13 = and i8 %12, 7
  %and5 = zext i8 %13 to i32
  %shl6 = shl nuw nsw i32 %and5, 8
  %or = or i32 %shl6, %shl
  %14 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mipi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %regs.i = getelementptr inbounds %struct.tegra_mipi, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !61
  %19 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mipi, align 4
  %regs.i135 = getelementptr inbounds %struct.tegra_mipi, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i135 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i135, align 4
  %add.ptr.i136 = getelementptr i8, ptr %22, i32 96
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %24 = and i32 %23, -1879049985
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %pad_vclamp_level = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %pad_vclamp_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pad_vclamp_level, align 4
  %28 = and i8 %27, 7
  %and13 = zext i8 %28 to i32
  %shl14 = shl nuw nsw i32 %and13, 16
  %or15 = or i32 %shl14, %25
  %pad_vauxp_level = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %pad_vauxp_level to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pad_vauxp_level, align 1
  %31 = shl i8 %30, 4
  %32 = and i8 %31, 112
  %shl18 = zext i8 %32 to i32
  %or19 = or i32 %or15, %shl18
  %33 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mipi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %or19) #6
  %regs.i137 = getelementptr inbounds %struct.tegra_mipi, ptr %34, i32 0, i32 2
  %36 = ptrtoint ptr %regs.i137 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i137, align 4
  %add.ptr.i138 = getelementptr i8, ptr %37, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %35) #6, !srcloc !61
  %num_pads = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %num_pads to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp21152.not = icmp eq i32 %39, 0
  br i1 %cmp21152.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pads = getelementptr inbounds %struct.tegra_mipi_device, ptr %device, i32 0, i32 3
  %hspdos = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 9
  %hspuos = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 10
  %termos = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 11
  %hsclkpdos = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 12
  %hsclkpuos = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 13
  %pads49 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end63.for.body_crit_edge ]
  %40 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pads, align 4
  %shl24 = shl nuw i32 1, %i.0153
  %and25 = and i32 %41, %shl24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %for.body.if.end47_crit_edge, label %if.then26

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %hspdos to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hspdos, align 2
  %44 = and i8 %43, 31
  %and28 = zext i8 %44 to i32
  %shl29 = shl nuw nsw i32 %and28, 16
  %45 = ptrtoint ptr %hspuos to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hspuos, align 1
  %47 = and i8 %46, 31
  %and32 = zext i8 %47 to i32
  %shl33 = shl nuw nsw i32 %and32, 8
  %or30 = or i32 %shl33, %shl29
  %48 = ptrtoint ptr %termos to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %termos, align 4
  %50 = and i8 %49, 31
  %and36 = zext i8 %50 to i32
  %or34 = or i32 %or30, %and36
  %or38 = or i32 %or34, 2097152
  %51 = ptrtoint ptr %hsclkpdos to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hsclkpdos, align 1
  %53 = and i8 %52, 31
  %and40 = zext i8 %53 to i32
  %shl41 = shl nuw nsw i32 %and40, 8
  %54 = ptrtoint ptr %hsclkpuos to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hsclkpuos, align 2
  %56 = and i8 %55, 31
  %and44 = zext i8 %56 to i32
  %or42 = or i32 %shl41, %and44
  %or46 = or i32 %or42, 2097152
  br label %if.end47

if.end47:                                         ; preds = %if.then26, %for.body.if.end47_crit_edge
  %clk23.0 = phi i32 [ %or46, %if.then26 ], [ 0, %for.body.if.end47_crit_edge ]
  %data.0 = phi i32 [ %or38, %if.then26 ], [ 0, %for.body.if.end47_crit_edge ]
  %57 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mipi, align 4
  %59 = ptrtoint ptr %pads49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pads49, align 4
  %arrayidx = getelementptr %struct.tegra_mipi_pad, ptr %60, i32 %i.0153
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %data.0) #6
  %regs.i139 = getelementptr inbounds %struct.tegra_mipi, ptr %58, i32 0, i32 2
  %64 = ptrtoint ptr %regs.i139 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i139, align 4
  %shl.i = shl i32 %62, 2
  %add.ptr.i140 = getelementptr i8, ptr %65, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %63) #6, !srcloc !61
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %3, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool51.not = icmp eq i8 %67, 0
  br i1 %tobool51.not, label %if.end47.if.end63_crit_edge, label %land.lhs.true

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end47
  %68 = ptrtoint ptr %pads49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pads49, align 4
  %clk55 = getelementptr %struct.tegra_mipi_pad, ptr %69, i32 %i.0153, i32 1
  %70 = ptrtoint ptr %clk55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %clk55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp56.not = icmp eq i32 %71, 0
  br i1 %cmp56.not, label %land.lhs.true.if.end63_crit_edge, label %if.then58

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mipi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %clk23.0) #6
  %regs.i141 = getelementptr inbounds %struct.tegra_mipi, ptr %73, i32 0, i32 2
  %75 = ptrtoint ptr %regs.i141 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i141, align 4
  %shl.i142 = shl i32 %71, 2
  %add.ptr.i143 = getelementptr i8, ptr %76, i32 %shl.i142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %74) #6, !srcloc !61
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %land.lhs.true.if.end63_crit_edge, %if.end47.if.end63_crit_edge
  %inc = add nuw i32 %i.0153, 1
  %77 = ptrtoint ptr %num_pads to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_pads, align 4
  %cmp21 = icmp ult i32 %inc, %78
  br i1 %cmp21, label %if.end63.for.body_crit_edge, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %if.end.for.end_crit_edge
  %79 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mipi, align 4
  %regs.i144 = getelementptr inbounds %struct.tegra_mipi, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i144, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %clock_enable_override = getelementptr inbounds %struct.tegra_mipi_soc, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %clock_enable_override to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %clock_enable_override, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool70.not = icmp eq i8 %85, 0
  %86 = and i32 %83, -268435520
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %value.0.v = select i1 %tobool70.not, i32 704643072, i32 704643088
  %value.0 = or i32 %value.0.v, %87
  %88 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mipi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %90 = tail call i32 @llvm.bswap.i32(i32 %value.0) #6
  %regs.i145 = getelementptr inbounds %struct.tegra_mipi, ptr %89, i32 0, i32 2
  %91 = ptrtoint ptr %regs.i145 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i145, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #6, !srcloc !61
  %93 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mipi, align 4
  %regs.i146 = getelementptr inbounds %struct.tegra_mipi, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i146, align 4
  %add.ptr.i147 = getelementptr i8, ptr %96, i32 8
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %98 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mipi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %regs.i148 = getelementptr inbounds %struct.tegra_mipi, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %regs.i148 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %101, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %97) #6, !srcloc !61
  %102 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mipi, align 4
  %regs.i150 = getelementptr inbounds %struct.tegra_mipi, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %regs.i150 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i150, align 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %107 = or i32 %106, 16777216
  %108 = ptrtoint ptr %mipi to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mipi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %regs.i151 = getelementptr inbounds %struct.tegra_mipi, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %regs.i151 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i151, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %107) #6, !srcloc !61
  tail call void @usleep_range_state(i32 noundef 75, i32 noundef 80, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mipi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @tegra_mipi_of_match, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %dev7 = getelementptr inbounds %struct.tegra_mipi, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev7, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #6
  %regs = getelementptr inbounds %struct.tegra_mipi, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %do.body

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end5
  %lock = getelementptr inbounds %struct.tegra_mipi, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @tegra_mipi_probe.__key) #6
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.tegra_mipi, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %clk, align 4
  %cmp.i56 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %do.end24, label %if.end28

do.end24:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end28:                                         ; preds = %do.body
  %call30 = tail call i32 @clk_prepare(ptr noundef %call18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %do.end24, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ %11, %do.end24 ], [ 0, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mipi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.tegra_mipi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/mipi.c", i32 216, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/host1x/mipi.c", i32 217, i32 7}
!4 = !{ptr @__ksymtab_tegra_mipi_request, !5, !"__ksymtab_tegra_mipi_request", i1 false, i1 false}
!5 = !{!"../drivers/gpu/host1x/mipi.c", i32 255, i32 1}
!6 = !{ptr @__ksymtab_tegra_mipi_free, !7, !"__ksymtab_tegra_mipi_free", i1 false, i1 false}
!7 = !{!"../drivers/gpu/host1x/mipi.c", i32 262, i32 1}
!8 = !{ptr @__ksymtab_tegra_mipi_enable, !9, !"__ksymtab_tegra_mipi_enable", i1 false, i1 false}
!9 = !{!"../drivers/gpu/host1x/mipi.c", i32 278, i32 1}
!10 = !{ptr @__ksymtab_tegra_mipi_disable, !11, !"__ksymtab_tegra_mipi_disable", i1 false, i1 false}
!11 = !{!"../drivers/gpu/host1x/mipi.c", i32 294, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/host1x/mipi.c", i32 303, i32 8}
!14 = !{ptr @__ksymtab_tegra_mipi_finish_calibration, !15, !"__ksymtab_tegra_mipi_finish_calibration", i1 false, i1 false}
!15 = !{!"../drivers/gpu/host1x/mipi.c", i32 312, i32 1}
!16 = !{ptr @__ksymtab_tegra_mipi_start_calibration, !17, !"__ksymtab_tegra_mipi_start_calibration", i1 false, i1 false}
!17 = !{!"../drivers/gpu/host1x/mipi.c", i32 387, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/host1x/mipi.c", i32 551, i32 11}
!20 = !{ptr @tegra_mipi_driver, !21, !"tegra_mipi_driver", i1 false, i1 false}
!21 = !{!"../drivers/gpu/host1x/mipi.c", i32 549, i32 24}
!22 = !{ptr @tegra_mipi_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/host1x/mipi.c", i32 523, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/host1x/mipi.c", i32 527, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tegra_mipi_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_mipi_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tegra_mipi_of_match, !33, !"tegra_mipi_of_match", i1 false, i1 false}
!33 = !{!"../drivers/gpu/host1x/mipi.c", i32 492, i32 34}
!34 = !{ptr @tegra114_mipi_soc, !35, !"tegra114_mipi_soc", i1 false, i1 false}
!35 = !{!"../drivers/gpu/host1x/mipi.c", i32 401, i32 36}
!36 = !{ptr @tegra114_mipi_pads, !37, !"tegra114_mipi_pads", i1 false, i1 false}
!37 = !{!"../drivers/gpu/host1x/mipi.c", i32 389, i32 36}
!38 = !{ptr @tegra124_mipi_soc, !39, !"tegra124_mipi_soc", i1 false, i1 false}
!39 = !{!"../drivers/gpu/host1x/mipi.c", i32 428, i32 36}
!40 = !{ptr @tegra124_mipi_pads, !41, !"tegra124_mipi_pads", i1 false, i1 false}
!41 = !{!"../drivers/gpu/host1x/mipi.c", i32 418, i32 36}
!42 = !{ptr @tegra132_mipi_soc, !43, !"tegra132_mipi_soc", i1 false, i1 false}
!43 = !{!"../drivers/gpu/host1x/mipi.c", i32 445, i32 36}
!44 = !{ptr @tegra210_mipi_soc, !45, !"tegra210_mipi_soc", i1 false, i1 false}
!45 = !{!"../drivers/gpu/host1x/mipi.c", i32 475, i32 36}
!46 = !{ptr @tegra210_mipi_pads, !47, !"tegra210_mipi_pads", i1 false, i1 false}
!47 = !{!"../drivers/gpu/host1x/mipi.c", i32 462, i32 36}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 4834114}
!58 = !{i64 2154445644}
!59 = !{i8 0, i8 2}
!60 = !{i64 2154446038}
!61 = !{i64 4833696}
