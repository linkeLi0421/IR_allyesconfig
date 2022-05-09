; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/meson-mx-sdio.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-mx-sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.meson_mx_mmc_host = type { ptr, ptr, ptr, %struct.clk_divider, ptr, %struct.clk_fixed_factor, ptr, ptr, i32, %struct.spinlock, %struct.timer_list, i32, ptr, ptr, ptr, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_meson_mx_sdio__339_767_meson_mx_mmc_driver_init6 = internal global ptr @meson_mx_mmc_driver_init, section ".initcall6.init", align 4
@meson_mx_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_mx_mmc_probe, ptr @meson_mx_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @meson_mx_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_mx_mmc_driver_exit = internal global ptr @meson_mx_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description340 = internal constant [74 x i8] c"meson_mx_sdio.description=Meson6, Meson8 and Meson8b SDIO/MMC Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [55 x i8] c"meson_mx_sdio.author=Carlo Caione <carlo@endlessm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [78 x i8] c"meson_mx_sdio.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [50 x i8] c"meson_mx_sdio.file=drivers/mmc/host/meson-mx-sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [29 x i8] c"meson_mx_sdio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson-mx-sdio\00", [18 x i8] zeroinitializer }, align 32
@meson_mx_mmc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@meson_mx_mmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&host->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@meson_mx_mmc_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&host->cmd_timeout)\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@meson_mx_mmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 695, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable core clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_mx_mmc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/meson-mx-sdio.c\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_mx_mmc_probe._entry_ptr = internal global ptr @meson_mx_mmc_probe._entry, section ".printk_index", align 4
@meson_mx_mmc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 701, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable MMC clock\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_mx_mmc_probe._entry_ptr.13 = internal global ptr @meson_mx_mmc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc-slot\00", [23 x i8] zeroinitializer }, align 32
@meson_mx_mmc_slot_pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.8, i32 519, ptr @.str.17, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no 'mmc-slot' sub-node found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_mx_mmc_slot_pdev\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_mx_mmc_slot_pdev._entry_ptr = internal global ptr @meson_mx_mmc_slot_pdev._entry, section ".printk_index", align 4
@meson_mx_mmc_timeout.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.8, ptr @.str.20, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson_mx_sdio\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson_mx_mmc_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timeout on CMD%u (IRQS = 0x%08x, ARGU = 0x%08x)\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s#fixed_factor\00", [16 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s#div\00", [25 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@meson_mx_mmc_add_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.8, i32 536, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing 'reg' property\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_mx_mmc_add_host\00", [42 x i8] zeroinitializer }, align 32
@meson_mx_mmc_add_host._entry_ptr = internal global ptr @meson_mx_mmc_add_host._entry, section ".printk_index", align 4
@meson_mx_mmc_add_host._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.8, i32 542, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid 'reg' property value %d\0A\00", [63 x i8] zeroinitializer }, align 32
@meson_mx_mmc_add_host._entry_ptr.28 = internal global ptr @meson_mx_mmc_add_host._entry.26, section ".printk_index", align 4
@meson_mx_mmc_ops = internal global { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @meson_mx_mmc_request, ptr null, ptr @meson_mx_mmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@meson_mx_mmc_map_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.8, i32 323, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unaligned scatterlist: offset %x length %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson_mx_mmc_map_dma\00", [43 x i8] zeroinitializer }, align 32
@meson_mx_mmc_map_dma._entry_ptr = internal global ptr @meson_mx_mmc_map_dma._entry, section ".printk_index", align 4
@meson_mx_mmc_map_dma._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.8, i32 330, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_map_sg failed\0A\00", [45 x i8] zeroinitializer }, align 32
@meson_mx_mmc_map_dma._entry_ptr.33 = internal global ptr @meson_mx_mmc_map_dma._entry.31, section ".printk_index", align 4
@meson_mx_mmc_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.8, i32 279, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported bus width: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson_mx_mmc_set_ios\00", [43 x i8] zeroinitializer }, align 32
@meson_mx_mmc_set_ios._entry_ptr = internal global ptr @meson_mx_mmc_set_ios._entry, section ".printk_index", align 4
@meson_mx_mmc_set_ios._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.8, i32 288, ptr @.str.17, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set MMC clock to %lu: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@meson_mx_mmc_set_ios._entry_ptr.38 = internal global ptr @meson_mx_mmc_set_ios._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 18, i64 23, i64 25]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"meson_mx_mmc_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 757, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 761, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"meson_mx_mmc_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 750, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 653, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 654, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 677, i32 54 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 683, i32 56 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 695, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 701, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 517, i32 55 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 519, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 490, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 587, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 607, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 535, i32 46 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 536, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 541, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"meson_mx_mmc_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 500, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 321, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 330, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 278, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [36 x i8] c"../drivers/mmc/host/meson-mx-sdio.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 286, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__exitcall_meson_mx_mmc_driver_exit, ptr @__initcall__kmod_meson_mx_sdio__339_767_meson_mx_mmc_driver_init6, ptr @meson_mx_mmc_add_host._entry, ptr @meson_mx_mmc_add_host._entry.26, ptr @meson_mx_mmc_add_host._entry_ptr, ptr @meson_mx_mmc_add_host._entry_ptr.28, ptr @meson_mx_mmc_driver_exit, ptr @meson_mx_mmc_map_dma._entry, ptr @meson_mx_mmc_map_dma._entry.31, ptr @meson_mx_mmc_map_dma._entry_ptr, ptr @meson_mx_mmc_map_dma._entry_ptr.33, ptr @meson_mx_mmc_probe._entry, ptr @meson_mx_mmc_probe._entry.11, ptr @meson_mx_mmc_probe._entry_ptr, ptr @meson_mx_mmc_probe._entry_ptr.13, ptr @meson_mx_mmc_set_ios._entry, ptr @meson_mx_mmc_set_ios._entry.36, ptr @meson_mx_mmc_set_ios._entry_ptr, ptr @meson_mx_mmc_set_ios._entry_ptr.38, ptr @meson_mx_mmc_slot_pdev._entry, ptr @meson_mx_mmc_slot_pdev._entry_ptr, ptr @meson_mx_mmc_driver, ptr @.str, ptr @meson_mx_mmc_of_match, ptr @meson_mx_mmc_probe.__key, ptr @.str.1, ptr @meson_mx_mmc_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @meson_mx_mmc_ops, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_slot_pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_add_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_add_host._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_map_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_map_dma._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_mmc_set_ios._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mx_mmc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mx_mmc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_compatible_child(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.thread, label %meson_mx_mmc_slot_pdev.exit

if.else.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %if.then2

meson_mx_mmc_slot_pdev.exit:                      ; preds = %entry
  %call2.i = tail call ptr @of_platform_device_create(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef %dev) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %meson_mx_mmc_slot_pdev.exit.cleanup_crit_edge, label %if.else

meson_mx_mmc_slot_pdev.exit.cleanup_crit_edge:    ; preds = %meson_mx_mmc_slot_pdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %meson_mx_mmc_slot_pdev.exit
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else.if.then2_crit_edge, label %if.end4

if.else.if.then2_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %if.else.if.then2_crit_edge, %if.else.thread
  %retval.0.i206209 = phi ptr [ inttoptr (i32 -2 to ptr), %if.else.thread ], [ %call2.i, %if.else.if.then2_crit_edge ]
  %2 = ptrtoint ptr %retval.0.i206209 to i32
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %call2.i, i32 0, i32 3
  %call6 = tail call ptr @mmc_alloc_host(i32 noundef 188, ptr noundef %dev5) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.error_unregister_slot_pdev_crit_edge, label %if.end9

if.end4.error_unregister_slot_pdev_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unregister_slot_pdev

if.end9:                                          ; preds = %if.end4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 0, i32 70
  %mmc11 = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 8
  %3 = ptrtoint ptr %mmc11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %mmc11, align 4
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %private.i, align 4
  %irq_lock = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @meson_mx_mmc_probe.__key, i16 noundef signext 3) #7
  %cmd_timeout = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  tail call void @init_timer_key(ptr noundef %cmd_timeout, ptr noundef nonnull @meson_mx_mmc_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @meson_mx_mmc_probe.__key.2) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %base, align 4
  %cmp.i201 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call17 to i32
  br label %error_free_mmc

if.end23:                                         ; preds = %if.end9
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.error_free_mmc_crit_edge, label %if.end26

if.end23.error_free_mmc_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_mmc

if.end26:                                         ; preds = %if.end23
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %call28 = tail call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %call24, ptr noundef nonnull @meson_mx_mmc_irq, ptr noundef nonnull @meson_mx_mmc_irq_thread, i32 noundef 8192, ptr noundef null, ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.error_free_mmc_crit_edge

if.end26.error_free_mmc_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_mmc

if.end31:                                         ; preds = %if.end26
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %call33 = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.4) #7
  %core_clk = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1
  %12 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call33, ptr %core_clk, align 4
  %cmp.i202 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call33 to i32
  br label %error_free_mmc

if.end39:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 4
  %call41 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.5) #7
  %parent_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %private.i, i32 0, i32 1
  %16 = ptrtoint ptr %parent_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call41, ptr %parent_clk, align 4
  %cmp.i203 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call41 to i32
  br label %error_free_mmc

if.end47:                                         ; preds = %if.end39
  %call48 = tail call fastcc i32 @meson_mx_mmc_register_clks(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.error_free_mmc_crit_edge

if.end47.error_free_mmc_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free_mmc

if.end51:                                         ; preds = %if.end47
  %18 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core_clk, align 4
  %call53 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6) #10
  br label %error_free_mmc

if.end60:                                         ; preds = %if.end51
  %cfg_div_clk = getelementptr inbounds %struct.mmc_host, ptr %call6, i32 1, i32 1, i32 0, i32 7
  %22 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg_div_clk, align 4
  %call61 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12) #10
  br label %error_disable_core_clk

if.end68:                                         ; preds = %if.end60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 7365185) #7, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8388608) #7, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 429496) #7
  %call139 = tail call fastcc i32 @meson_mx_mmc_add_host(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end68.cleanup_crit_edge, label %error_disable_clks

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error_disable_clks:                               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg_div_clk, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %error_disable_core_clk

error_disable_core_clk:                           ; preds = %error_disable_clks, %do.end66
  %ret.0 = phi i32 [ %call61, %do.end66 ], [ %call139, %error_disable_clks ]
  %33 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %34) #7
  tail call void @clk_unprepare(ptr noundef %34) #7
  br label %error_free_mmc

error_free_mmc:                                   ; preds = %error_disable_core_clk, %do.end58, %if.end47.error_free_mmc_crit_edge, %if.then44, %if.then36, %if.end26.error_free_mmc_crit_edge, %if.end23.error_free_mmc_crit_edge, %if.then20
  %ret.1 = phi i32 [ %7, %if.then20 ], [ %call28, %if.end26.error_free_mmc_crit_edge ], [ %13, %if.then36 ], [ %17, %if.then44 ], [ %call48, %if.end47.error_free_mmc_crit_edge ], [ %call53, %do.end58 ], [ %ret.0, %error_disable_core_clk ], [ %call24, %if.end23.error_free_mmc_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call6) #7
  br label %error_unregister_slot_pdev

error_unregister_slot_pdev:                       ; preds = %error_free_mmc, %if.end4.error_unregister_slot_pdev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error_free_mmc ], [ -12, %if.end4.error_unregister_slot_pdev_crit_edge ]
  %call146 = tail call i32 @of_platform_device_destroy(ptr noundef %dev5, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %error_unregister_slot_pdev, %if.end68.cleanup_crit_edge, %if.then2, %meson_mx_mmc_slot_pdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then2 ], [ %ret.2, %error_unregister_slot_pdev ], [ -19, %meson_mx_mmc_slot_pdev.exit.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mmc = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %cmd_timeout = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @del_timer_sync(ptr noundef %cmd_timeout) #7
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  tail call void @mmc_remove_host(ptr noundef %7) #7
  %call3 = tail call i32 @of_platform_device_destroy(ptr noundef %5, ptr noundef null) #7
  %cfg_div_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg_div_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %core_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 4
  tail call void @mmc_free_host(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_mmc_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %base = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %3 = and i32 %2, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %3) #7, !srcloc !98
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #7
  %cmd = getelementptr i8, ptr %t, i32 60
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_mx_mmc_timeout.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_mx_mmc_timeout, %if.then22)) #7
          to label %do.end40 [label %if.then22], !srcloc !103

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %mmc = getelementptr i8, ptr %t, i32 52
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !100
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !100
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_mx_mmc_timeout.__UNIQUE_ID_ddebug308, ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %15, i32 noundef %19, i32 noundef %23) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then22, %do.body16
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -110, ptr %error, align 4
  %mrq1.i = getelementptr i8, ptr %t, i32 56
  %27 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mrq1.i, align 4
  %29 = load ptr, ptr %cmd, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %do.end40.meson_mx_mmc_request_done.exit_crit_edge, label %if.then.i

do.end40.meson_mx_mmc_request_done.exit_crit_edge: ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_mx_mmc_request_done.exit

if.then.i:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8388608) #7, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #7
  br label %meson_mx_mmc_request_done.exit

meson_mx_mmc_request_done.exit:                   ; preds = %if.then.i, %do.end40.meson_mx_mmc_request_done.exit_crit_edge
  %35 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %mrq1.i, align 4
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cmd, align 4
  %mmc.i = getelementptr i8, ptr %t, i32 52
  %37 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %38, ptr noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %meson_mx_mmc_request_done.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %data, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #7
  %base = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !100
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %7 = shl i32 %6, 8
  %cmd1.i = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %data, i32 0, i32 14
  %8 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %if.end.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %if.then
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %error.i, align 4
  %mmc.i = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %data, i32 0, i32 12
  %11 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc.i, align 4
  %base.i.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %16 = and i32 %15, -15794177
  %17 = or i32 %16, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %17) #7, !srcloc !98
  %flags.i.i = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and22.i.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !100
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !100
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !100
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !100
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %or33.i.i = tail call i32 @llvm.fshl.i32(i32 %37, i32 %33, i32 8) #7
  %resp34.i.i = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 2
  %38 = ptrtoint ptr %resp34.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or33.i.i, ptr %resp34.i.i, align 4
  %or41.i.i = tail call i32 @llvm.fshl.i32(i32 %33, i32 %29, i32 8) #7
  %arrayidx43.i.i = getelementptr %struct.mmc_command, ptr %9, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or41.i.i, ptr %arrayidx43.i.i, align 4
  %or49.i.i = tail call i32 @llvm.fshl.i32(i32 %29, i32 %25, i32 8) #7
  %arrayidx51.i.i = getelementptr %struct.mmc_command, ptr %9, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or49.i.i, ptr %arrayidx51.i.i, align 4
  %shl53.i.i = shl i32 %25, 8
  %arrayidx55.i.i = getelementptr %struct.mmc_command, ptr %9, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl53.i.i, ptr %arrayidx55.i.i, align 4
  br label %meson_mx_mmc_read_response.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %and57.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.else.i.i.meson_mx_mmc_read_response.exit.i_crit_edge, label %if.then59.i.i

if.else.i.i.meson_mx_mmc_read_response.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_mx_mmc_read_response.exit.i

if.then59.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !100
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %resp67.i.i = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 2
  %46 = ptrtoint ptr %resp67.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %resp67.i.i, align 4
  br label %meson_mx_mmc_read_response.exit.i

meson_mx_mmc_read_response.exit.i:                ; preds = %if.then59.i.i, %if.else.i.i.meson_mx_mmc_read_response.exit.i_crit_edge, %for.body.preheader.i.i
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 7
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %48, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %meson_mx_mmc_read_response.exit.i
  %49 = and i32 %3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %if.then3.i.cleanup.sink.split.i_crit_edge, label %if.then3.i.do.body_crit_edge

if.then3.i.do.body_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %meson_mx_mmc_read_response.exit.i
  %and10.i = and i32 %3, 32
  %and13.i = and i32 %7, 65536
  %51 = or i32 %and13.i, %and10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.do.body_crit_edge

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then3.i.cleanup.sink.split.i_crit_edge
  %53 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -84, ptr %error.i, align 4
  br label %do.body

do.body:                                          ; preds = %cleanup.sink.split.i, %if.else.i.do.body_crit_edge, %if.then3.i.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ 1, %entry.do.body_crit_edge ], [ 1, %if.then.do.body_crit_edge ], [ 2, %if.else.i.do.body_crit_edge ], [ 2, %if.then3.i.do.body_crit_edge ], [ 2, %cleanup.sink.split.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %2) #7, !srcloc !98
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_irq_thread(i32 noundef %irq, ptr noundef %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 14
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !113

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 446, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %cmd_timeout = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 10
  %call = tail call i32 @del_timer_sync(ptr noundef %cmd_timeout) #7
  %data = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.end24.if.end34_crit_edge, label %if.then26

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %mmc = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 12
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i, i32 noundef 0) #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  %mul = mul i32 %19, %17
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 7
  %20 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end24.if.end34_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end34.if.else_crit_edge [
    i32 23, label %land.lhs.true.i
    i32 25, label %if.end34.land.lhs.true3.i_crit_edge
    i32 18, label %if.end34.land.lhs.true3.i_crit_edge62
  ]

if.end34.land.lhs.true3.i_crit_edge62:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true3.i

if.end34.land.lhs.true3.i_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true3.i

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end34
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i56 = icmp eq i32 %25, 0
  br i1 %tobool.not.i56, label %if.then.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %mrq.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mrq.i, align 4
  %cmd1.i = getelementptr inbounds %struct.mmc_request, ptr %27, i32 0, i32 1
  br label %meson_mx_mmc_get_next_cmd.exit

land.lhs.true3.i:                                 ; preds = %if.end34.land.lhs.true3.i_crit_edge, %if.end34.land.lhs.true3.i_crit_edge62
  %mrq4.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %mrq4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mrq4.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool5.not.i = icmp eq ptr %31, null
  br i1 %tobool5.not.i, label %land.lhs.true3.i.if.then11.i_crit_edge, label %lor.lhs.false.i

land.lhs.true3.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true3.i
  %error6.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %error6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.i = icmp eq i32 %33, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %error9.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %error9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool10.not.i = icmp eq i32 %37, 0
  br i1 %tobool10.not.i, label %lor.lhs.false8.i.if.else_crit_edge, label %lor.lhs.false8.i.if.then11.i_crit_edge

lor.lhs.false8.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

lor.lhs.false8.i.if.else_crit_edge:               ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then11.i:                                      ; preds = %lor.lhs.false8.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %land.lhs.true3.i.if.then11.i_crit_edge
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %29, i32 0, i32 3
  br label %meson_mx_mmc_get_next_cmd.exit

meson_mx_mmc_get_next_cmd.exit:                   ; preds = %if.then11.i, %if.then.i
  %stop.sink.i = phi ptr [ %stop.i, %if.then11.i ], [ %cmd1.i, %if.then.i ]
  %38 = ptrtoint ptr %stop.sink.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stop.sink.i, align 4
  %tobool36.not = icmp eq ptr %39, null
  br i1 %tobool36.not, label %meson_mx_mmc_get_next_cmd.exit.if.else_crit_edge, label %if.then37

meson_mx_mmc_get_next_cmd.exit.if.else_crit_edge: ; preds = %meson_mx_mmc_get_next_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then37:                                        ; preds = %meson_mx_mmc_get_next_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mmc38 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 12
  %40 = ptrtoint ptr %mmc38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmc38, align 4
  tail call fastcc void @meson_mx_mmc_start_cmd(ptr noundef %41, ptr noundef nonnull %39)
  br label %cleanup

if.else:                                          ; preds = %meson_mx_mmc_get_next_cmd.exit.if.else_crit_edge, %lor.lhs.false8.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end34.if.else_crit_edge
  %mrq1.i = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 13
  %42 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mrq1.i, align 4
  %44 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd1, align 4
  %error.i57 = getelementptr inbounds %struct.mmc_command, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %error.i57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i58 = icmp eq i32 %47, 0
  br i1 %tobool.not.i58, label %if.else.meson_mx_mmc_request_done.exit_crit_edge, label %if.then.i59

if.else.meson_mx_mmc_request_done.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_mx_mmc_request_done.exit

if.then.i59:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 7
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8388608) #7, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 429496) #7
  br label %meson_mx_mmc_request_done.exit

meson_mx_mmc_request_done.exit:                   ; preds = %if.then.i59, %if.else.meson_mx_mmc_request_done.exit_crit_edge
  %51 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %mrq1.i, align 4
  %52 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %cmd1, align 4
  %mmc.i = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %irq_data, i32 0, i32 12
  %53 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %54, ptr noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %meson_mx_mmc_request_done.exit, %if.then37, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_mx_mmc_register_clks(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %clk_div_parent = alloca ptr, align 4
  %clk_fixed_factor_parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_div_parent) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_fixed_factor_parent) #7
  %parent_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %parent_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_clk, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %4 = ptrtoint ptr %clk_fixed_factor_parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %clk_fixed_factor_parent, align 4
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %6, i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i) #7
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %init, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_fixed_factor_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %clk_fixed_factor_parent, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents, align 4
  %fixed_factor = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 5
  %div = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %div, align 4
  %mult = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %mult, align 4
  %init7 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %init7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init, ptr %init7, align 4
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %call11 = call ptr @devm_clk_register(ptr noundef %20, ptr noundef %fixed_factor) #7
  %fixed_factor_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 6
  %21 = ptrtoint ptr %fixed_factor_clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %fixed_factor_clk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end39, !prof !113

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.end
  %call41 = call ptr @__clk_get_name(ptr noundef %call11) #7
  %22 = ptrtoint ptr %clk_div_parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call41, ptr %clk_div_parent, align 4
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %init_name.i131 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i131 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i131, align 8
  %tobool.not.i132 = icmp eq ptr %26, null
  br i1 %tobool.not.i132, label %if.end.i133, label %if.end39.dev_name.exit135_crit_edge

if.end39.dev_name.exit135_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit135

if.end.i133:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  br label %dev_name.exit135

dev_name.exit135:                                 ; preds = %if.end.i133, %if.end39.dev_name.exit135_crit_edge
  %retval.0.i134 = phi ptr [ %28, %if.end.i133 ], [ %26, %if.end39.dev_name.exit135_crit_edge ]
  %call45 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %24, i32 noundef 3264, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i134) #7
  %29 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call45, ptr %init, align 4
  %tobool48.not = icmp eq ptr %call45, null
  br i1 %tobool48.not, label %dev_name.exit135.cleanup_crit_edge, label %if.end50

dev_name.exit135.cleanup_crit_edge:               ; preds = %dev_name.exit135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %dev_name.exit135
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @clk_divider_ops, ptr %ops, align 4
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %flags, align 4
  %32 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %clk_div_parent, ptr %parent_names, align 4
  %33 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %num_parents, align 4
  %base = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 7
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 8
  %cfg_div = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 3
  %reg = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %shift, align 4
  %width = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %width, align 1
  %init59 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 3, i32 0, i32 2
  %39 = ptrtoint ptr %init59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %init, ptr %init59, align 4
  %flags61 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %flags61 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %flags61, align 2
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %call65 = call ptr @devm_clk_register(ptr noundef %42, ptr noundef %cfg_div) #7
  %cfg_div_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call65, ptr %cfg_div_clk, align 4
  %cmp.i136 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.end50.cleanup.sink.split_crit_edge, label %if.end50.cleanup_crit_edge, !prof !113

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50.cleanup.sink.split_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 602, %if.end.cleanup.sink.split_crit_edge ], [ 623, %if.end50.cleanup.sink.split_crit_edge ]
  %cfg_div_clk.sink = phi ptr [ %fixed_factor_clk, %if.end.cleanup.sink.split_crit_edge ], [ %cfg_div_clk, %if.end50.cleanup.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  %44 = ptrtoint ptr %cfg_div_clk.sink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg_div_clk.sink, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end50.cleanup_crit_edge, %dev_name.exit135.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %dev_name.exit.cleanup_crit_edge ], [ -12, %dev_name.exit135.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ %46, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_fixed_factor_parent) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_div_parent) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_mx_mmc_add_host(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %slot_id = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 11
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %slot_id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ugt i32 %7, 2
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @mmc_regulator_get_supply(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 131072, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131072, ptr %max_seg_size, align 16
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %max_blk_count, align 128
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2040, ptr %max_blk_size, align 4
  %cfg_div_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg_div_clk, align 4
  %call47 = tail call i32 @clk_round_rate(ptr noundef %13, i32 noundef 1) #7
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call47, ptr %f_min, align 4
  %15 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg_div_clk, align 4
  %parent_clk = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %parent_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent_clk, align 4
  %call49 = tail call i32 @clk_get_rate(ptr noundef %18) #7
  %call50 = tail call i32 @clk_round_rate(ptr noundef %16, i32 noundef %call49) #7
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call50, ptr %f_max, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps, align 32
  %or = or i32 %21, 1073742336
  store i32 %or, ptr %caps, align 32
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @meson_mx_mmc_ops, ptr %ops, align 4
  %call51 = tail call i32 @mmc_of_parse(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 @mmc_add_host(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call51, %if.end12.cleanup_crit_edge ], [ %call55, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_device_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_mx_mmc_start_cmd(ptr noundef %mmc, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd, ptr %cmd1, align 4
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %1 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #7
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  %timeout.0 = phi i32 [ %call2.i, %if.else.i ], [ 100, %entry.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 31
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and, label %if.end.sw.epilog_crit_edge [
    i32 21, label %if.end.do.end16_crit_edge
    i32 29, label %if.end.do.end16_crit_edge279
    i32 1, label %if.end.do.end16_crit_edge280
    i32 7, label %do.end32
  ]

if.end.do.end16_crit_edge280:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end.do.end16_crit_edge279:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end16:                                         ; preds = %if.end.do.end16_crit_edge, %if.end.do.end16_crit_edge279, %if.end.do.end16_crit_edge280
  br label %sw.epilog

do.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end32, %do.end16, %if.end.sw.epilog_crit_edge
  %send.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 296192, %do.end32 ], [ 11520, %do.end16 ]
  %and37 = shl i32 %4, 14
  %6 = and i32 %and37, 65536
  %and43 = shl i32 %4, 16
  %7 = and i32 %and43, 524288
  %8 = or i32 %7, %6
  %9 = or i32 %8, %send.0
  %10 = xor i32 %9, 65536
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tobool48.not = icmp eq ptr %12, null
  br i1 %tobool48.not, label %sw.epilog.do.body127_crit_edge, label %do.body56

sw.epilog.do.body127_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body127

do.body56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocks, align 4
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp = icmp eq i8 %16, 2
  %pack_size.0.v = select i1 %cmp, i32 60, i32 15
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blksz, align 4
  %mul = shl i32 %18, 3
  %pack_size.0 = add i32 %pack_size.0.v, %mul
  %sub76 = shl i32 %14, 24
  %shl = add i32 %sub76, -16777216
  %or78 = or i32 %shl, %10
  %shl107 = shl i32 %pack_size.0, 16
  %and108 = and i32 %shl107, 1073676288
  %flags111 = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 6
  %19 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags111, align 4
  %and112 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %send.3.v = select i1 %tobool113.not, i32 131072, i32 1048576
  %send.3 = or i32 %send.3.v, %or78
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 7
  %21 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bytes_xfered, align 4
  br label %do.body127

do.body127:                                       ; preds = %do.body56, %sw.epilog.do.body127_crit_edge
  %ext.0 = phi i32 [ %and108, %do.body56 ], [ 0, %sw.epilog.do.body127_crit_edge ]
  %send.4 = phi i32 [ %send.3, %do.body56 ], [ %10, %sw.epilog.do.body127_crit_edge ]
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd, align 4
  %irq_lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %call157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %slot_id = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 7
  %27 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slot_id, align 4
  %29 = and i32 %26, -50331777
  %or147 = and i32 %23, 191
  %and149 = or i32 %send.4, %or147
  %or150 = or i32 %and149, 64
  %and191 = and i32 %28, 3
  %30 = or i32 %29, 128
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %or193 = or i32 %31, %and191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or193)
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr198 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 %32) #7, !srcloc !98
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %38 = or i32 %37, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %38) #7, !srcloc !98
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr.i275 = getelementptr i8, ptr %42, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %44 = or i32 %43, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr6.i278 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i278, i32 %44) #7, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arg, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #7, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %ext.0)
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr208 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 %52) #7, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or150)
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr213 = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 %55) #7, !srcloc !98
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call157) #7
  %cmd_timeout = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add215 = add i32 %58, %timeout.0
  %call216 = tail call i32 @mod_timer(ptr noundef %cmd_timeout, i32 noundef %add215) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_mmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %error = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then:                                          ; preds = %entry
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %4 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end9_crit_edge, label %if.end.i

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  %sg2.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg2.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %and4.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end9.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 128
  %length8.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %length8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.29, i32 noundef %9, i32 noundef %15) #10
  br label %if.end

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 128
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call12.i = tail call i32 @dma_map_sg_attrs(ptr noundef %17, ptr noundef %7, i32 noundef %19, i32 noundef %cond.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 1
  br i1 %cmp.i, label %do.end16.i, label %if.end9.i.if.end9_crit_edge

if.end9.i.if.end9_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.32) #10
  br label %if.end

if.end:                                           ; preds = %do.end16.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -12, %do.end16.i ]
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %error, align 4
  br label %if.then6

if.then6:                                         ; preds = %if.end, %entry.if.then6_crit_edge
  %25 = phi i32 [ %retval.0.i, %if.end ], [ %3, %entry.if.then6_crit_edge ]
  %error8 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %error8, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end9.i.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %27 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %error, align 4
  %mrq10 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %28 = ptrtoint ptr %mrq10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mrq, ptr %mrq10, align 4
  %29 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data1.i, align 4
  %tobool11.not = icmp eq ptr %30, null
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %do.body

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data1.i, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_address, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #7, !srcloc !98
  br label %if.end14

if.end14:                                         ; preds = %do.body, %if.end9.if.end14_crit_edge
  %40 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mrq, align 4
  %tobool15.not = icmp eq ptr %41, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @meson_mx_mmc_start_cmd(ptr noundef %mmc, ptr noundef nonnull %41)
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd1, align 4
  tail call fastcc void @meson_mx_mmc_start_cmd(ptr noundef %mmc, ptr noundef %43)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_mmc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd1 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %0 = ptrtoint ptr %vdd1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vdd1, align 4
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %5, label %do.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %10 = and i32 %9, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %10) #7, !srcloc !98
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i54 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %base.i54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %16 = or i32 %15, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %base.i54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i54, align 4
  %add.ptr6.i57 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i57, i32 %16) #7, !srcloc !98
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %5 to i32
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef %conv) #10
  %error = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -22, ptr %error, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %cfg_div_clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %22 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg_div_clk, align 4
  %24 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ios, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %23, i32 noundef %25) #7
  %error8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %26 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call7, ptr %error8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end12

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %call7) #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %29 = ptrtoint ptr %cfg_div_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg_div_clk, align 4
  %call16 = tail call i32 @clk_get_rate(ptr noundef %30) #7
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 58
  %31 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call16, ptr %actual_clock, align 8
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %32 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %power_mode, align 2
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %33, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb18
    i8 1, label %if.end.sw.bb19_crit_edge
  ]

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb18, %if.end.sw.bb19_crit_edge
  %vdd.0 = phi i16 [ %1, %if.end.sw.bb19_crit_edge ], [ 0, %sw.bb18 ]
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %35 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb19.cleanup_crit_edge, label %if.then21

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %36, i16 noundef zeroext %vdd.0) #7
  %37 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call24, ptr %error8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %sw.bb19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_meson_mx_sdio__339_767_meson_mx_mmc_driver_init6, !1, !"__initcall__kmod_meson_mx_sdio__339_767_meson_mx_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 767, i32 1}
!2 = !{ptr @__exitcall_meson_mx_mmc_driver_exit, !1, !"__exitcall_meson_mx_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description340, !4, !"__UNIQUE_ID_description340", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 769, i32 1}
!5 = !{ptr @__UNIQUE_ID_author341, !6, !"__UNIQUE_ID_author341", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 770, i32 1}
!7 = !{ptr @__UNIQUE_ID_author342, !8, !"__UNIQUE_ID_author342", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 771, i32 1}
!9 = !{ptr @__UNIQUE_ID_file343, !10, !"__UNIQUE_ID_file343", i1 false, i1 false}
!10 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 772, i32 1}
!11 = !{ptr @__UNIQUE_ID_license344, !10, !"__UNIQUE_ID_license344", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 761, i32 11}
!14 = !{ptr @meson_mx_mmc_driver, !15, !"meson_mx_mmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 757, i32 31}
!16 = !{ptr @meson_mx_mmc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 653, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @meson_mx_mmc_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 654, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 677, i32 54}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 683, i32 56}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 695, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @meson_mx_mmc_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_mx_mmc_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 701, i32 3}
!36 = !{ptr @meson_mx_mmc_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @meson_mx_mmc_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 517, i32 55}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 519, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @meson_mx_mmc_slot_pdev._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @meson_mx_mmc_slot_pdev._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 490, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @meson_mx_mmc_timeout.__UNIQUE_ID_ddebug308, !47, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 587, i32 8}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 607, i32 8}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 535, i32 46}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 536, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @meson_mx_mmc_add_host._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @meson_mx_mmc_add_host._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 541, i32 3}
!64 = !{ptr @meson_mx_mmc_add_host._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @meson_mx_mmc_add_host._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @meson_mx_mmc_ops, !67, !"meson_mx_mmc_ops", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 500, i32 28}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 321, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @meson_mx_mmc_map_dma._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @meson_mx_mmc_map_dma._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 330, i32 3}
!75 = !{ptr @meson_mx_mmc_map_dma._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @meson_mx_mmc_map_dma._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 278, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @meson_mx_mmc_set_ios._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @meson_mx_mmc_set_ios._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 286, i32 3}
!84 = !{ptr @meson_mx_mmc_set_ios._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @meson_mx_mmc_set_ios._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @meson_mx_mmc_of_match, !87, !"meson_mx_mmc_of_match", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/meson-mx-sdio.c", i32 750, i32 34}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2155434230}
!98 = !{i64 6471739}
!99 = !{i64 2154857383}
!100 = !{i64 6472157}
!101 = !{i64 2155169937}
!102 = !{i64 2155170239}
!103 = !{i64 2148772502, i64 2148772507, i64 2148772520, i64 2148772564, i64 2148772598, i64 2148772619}
!104 = !{i64 2155173878}
!105 = !{i64 2155174369}
!106 = !{i64 2155166221}
!107 = !{i64 2155166712}
!108 = !{i64 2155123087}
!109 = !{i64 2155164216}
!110 = !{i64 2155164894}
!111 = !{i64 2155165394}
!112 = !{i64 2155167014}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 2155068234}
!115 = !{i64 2155108895}
!116 = !{i64 2154856656}
!117 = !{i64 2154856872}
!118 = !{i64 2155109635}
!119 = !{i64 2155110044}
!120 = !{i64 2155110439}
!121 = !{i64 2155122334}
