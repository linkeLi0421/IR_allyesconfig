; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/uniphier-sd.c_pt.bc'
source_filename = "../drivers/mmc/host/uniphier-sd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniphier_sd_priv = type { %struct.tmio_mmc_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_uniphier_sd__333_694_uniphier_sd_driver_init6 = internal global ptr @uniphier_sd_driver_init, section ".initcall6.init", align 4
@uniphier_sd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_sd_probe, ptr @uniphier_sd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @uniphier_sd_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_sd_driver_exit = internal global ptr @uniphier_sd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author334 = internal constant [67 x i8] c"uniphier_sd.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description335 = internal constant [64 x i8] c"uniphier_sd.description=UniPhier SD/eMMC host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [46 x i8] c"uniphier_sd.file=drivers/mmc/host/uniphier-sd\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [27 x i8] c"uniphier_sd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uniphier-sd\00", [20 x i8] zeroinitializer }, align 32
@uniphier_sd_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd-v2.91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd-v3.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd-v3.1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uniphier_sd_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/uniphier-sd.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry_ptr = internal global ptr @uniphier_sd_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 572, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get host reset\0A\00", [38 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry_ptr.9 = internal global ptr @uniphier_sd_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get bridge reset\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry_ptr.13 = internal global ptr @uniphier_sd_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get hw reset\0A\00", [40 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry_ptr.17 = internal global ptr @uniphier_sd_probe._entry.15, section ".printk_index", align 4
@uniphier_sd_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to setup UHS (error %d).  Disabling UHS.\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uniphier_sd_probe._entry_ptr.21 = internal global ptr @uniphier_sd_probe._entry.18, section ".printk_index", align 4
@uniphier_sd_internal_dma_ops = internal constant { %struct.tmio_mmc_dma_ops, [36 x i8] } { %struct.tmio_mmc_dma_ops { ptr @uniphier_sd_internal_dma_start, ptr @uniphier_sd_internal_dma_enable, ptr @uniphier_sd_internal_dma_request, ptr @uniphier_sd_internal_dma_release, ptr @uniphier_sd_internal_dma_abort, ptr @uniphier_sd_internal_dma_dataend, ptr null }, [36 x i8] zeroinitializer }, align 32
@uniphier_sd_external_dma_ops = internal constant { %struct.tmio_mmc_dma_ops, [36 x i8] } { %struct.tmio_mmc_dma_ops { ptr @uniphier_sd_external_dma_start, ptr @uniphier_sd_external_dma_enable, ptr @uniphier_sd_external_dma_request, ptr @uniphier_sd_external_dma_release, ptr @uniphier_sd_external_dma_abort, ptr @uniphier_sd_external_dma_dataend, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uhs\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@uniphier_sd_external_dma_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 184, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to request DMA channel. falling back to PIO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"uniphier_sd_external_dma_request\00", [63 x i8] zeroinitializer }, align 32
@uniphier_sd_external_dma_request._entry_ptr = internal global ptr @uniphier_sd_external_dma_request._entry, section ".printk_index", align 4
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"uniphier_sd_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 685, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 689, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"uniphier_sd_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 668, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 566, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 570, i32 49 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 572, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 578, i32 53 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 580, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 594, i32 56 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 596, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 606, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [29 x i8] c"uniphier_sd_internal_dma_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 345, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [29 x i8] c"uniphier_sd_external_dma_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 221, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 536, i32 59 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 181, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private constant [34 x i8] c"../drivers/mmc/host/uniphier-sd.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 183, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1169, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__exitcall_uniphier_sd_driver_exit, ptr @__initcall__kmod_uniphier_sd__333_694_uniphier_sd_driver_init6, ptr @uniphier_sd_driver_exit, ptr @uniphier_sd_external_dma_request._entry, ptr @uniphier_sd_external_dma_request._entry_ptr, ptr @uniphier_sd_probe._entry, ptr @uniphier_sd_probe._entry.11, ptr @uniphier_sd_probe._entry.15, ptr @uniphier_sd_probe._entry.18, ptr @uniphier_sd_probe._entry.7, ptr @uniphier_sd_probe._entry_ptr, ptr @uniphier_sd_probe._entry_ptr.13, ptr @uniphier_sd_probe._entry_ptr.17, ptr @uniphier_sd_probe._entry_ptr.21, ptr @uniphier_sd_probe._entry_ptr.9, ptr @uniphier_sd_driver, ptr @.str, ptr @uniphier_sd_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @uniphier_sd_internal_dma_ops, ptr @uniphier_sd_external_dma_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_internal_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_external_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_sd_external_dma_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_sd_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_sd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %0 = ptrtoint ptr %call5 to i32
  %caps = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 10
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %caps, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call.i172 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %rst = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i172, ptr %rst, align 4
  %cmp.i173 = icmp ugt ptr %call.i172, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rst, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end36_crit_edge

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then25:                                        ; preds = %if.end22
  %call.i174 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %rst_br = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %rst_br to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i174, ptr %rst_br, align 4
  %cmp.i175 = icmp ugt ptr %call.i174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %do.end32, label %if.then25.if.end36_crit_edge

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  %13 = ptrtoint ptr %rst_br to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rst_br, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.then25.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %flags = getelementptr inbounds %struct.tmio_mmc_data, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or39 = or i32 %17, 544
  store i32 %or39, ptr %flags, align 4
  %call40 = tail call ptr @tmio_mmc_host_alloc(ptr noundef %pdev, ptr noundef nonnull %call.i) #7
  %cmp.i176 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 4
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 4
  %caps45 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %caps45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps45, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool47.not = icmp sgt i32 %22, -1
  br i1 %tobool47.not, label %if.end44.if.end59_crit_edge, label %if.then48

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then48:                                        ; preds = %if.end44
  %call.i177 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst_hw = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %rst_hw to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i177, ptr %rst_hw, align 4
  %cmp.i178 = icmp ugt ptr %call.i177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  %24 = ptrtoint ptr %rst_hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rst_hw, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %free_host

if.end58:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %hw_reset = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 5, i32 20
  %27 = ptrtoint ptr %hw_reset to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @uniphier_sd_hw_reset, ptr %hw_reset, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end44.if.end59_crit_edge
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 4
  %caps61 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %caps61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps61, align 32
  %and62 = and i32 %31, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end59.if.end75_crit_edge, label %if.then64

if.end59.if.end75_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then64:                                        ; preds = %if.end59
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 128
  %call.i179 = tail call ptr @devm_pinctrl_get(ptr noundef %33) #7
  %pinctrl.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i179, ptr %pinctrl.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then64.do.end70_crit_edge, label %if.end.i

if.then64.do.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70

if.end.i:                                         ; preds = %if.then64
  %call6.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i179, ptr noundef nonnull @.str.22) #7
  %pinstate_uhs.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %pinstate_uhs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call6.i, ptr %pinstate_uhs.i, align 4
  %cmp.i20.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end.i.do.end70_crit_edge, label %uniphier_sd_uhs_init.exit.thread

if.end.i.do.end70_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70

uniphier_sd_uhs_init.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %start_signal_voltage_switch.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 5, i32 10
  %36 = ptrtoint ptr %start_signal_voltage_switch.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @uniphier_sd_start_signal_voltage_switch, ptr %start_signal_voltage_switch.i, align 4
  br label %if.end75

do.end70:                                         ; preds = %if.end.i.do.end70_crit_edge, %if.then64.do.end70_crit_edge
  %retval.0.i.in = phi ptr [ %call.i179, %if.then64.do.end70_crit_edge ], [ %call6.i, %if.end.i.do.end70_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i) #10
  %37 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc, align 4
  %caps72 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %caps72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps72, align 32
  %and73 = and i32 %40, -2031617
  store i32 %and73, ptr %caps72, align 32
  br label %if.end75

if.end75:                                         ; preds = %do.end70, %uniphier_sd_uhs_init.exit.thread, %if.end59.if.end75_crit_edge
  %41 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %caps, align 4
  %and77 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %spec.select = select i1 %tobool78.not, ptr @uniphier_sd_external_dma_ops, ptr @uniphier_sd_internal_dma_ops
  %43 = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 44
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %spec.select, ptr %43, align 4
  %bus_shift = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 11
  %45 = ptrtoint ptr %bus_shift to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %bus_shift, align 4
  %clk_enable = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 32
  %46 = ptrtoint ptr %clk_enable to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @uniphier_sd_clk_enable, ptr %clk_enable, align 4
  %clk_disable = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 34
  %47 = ptrtoint ptr %clk_disable to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @uniphier_sd_clk_disable, ptr %clk_disable, align 4
  %set_clock = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 33
  %48 = ptrtoint ptr %set_clock to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @uniphier_sd_set_clock, ptr %set_clock, align 4
  %call82 = tail call i32 @uniphier_sd_clk_enable(ptr noundef %call40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end75.free_host_crit_edge

if.end75.free_host_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_host

if.end85:                                         ; preds = %if.end75
  %pdata.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %call40, i32 0, i32 13
  %49 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdata.i.i, align 4
  %caps.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %..i) #7
  %54 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call40, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %53) #7, !srcloc !72
  %56 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %caps.i, align 4
  %and2.i = shl i32 %57, 17
  %58 = and i32 %and2.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call40, align 4
  %add.ptr10.i = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %58) #7, !srcloc !72
  %ocr_mask = getelementptr inbounds %struct.tmio_mmc_data, ptr %call.i, i32 0, i32 6
  %61 = ptrtoint ptr %ocr_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3145728, ptr %ocr_mask, align 4
  %62 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmc, align 4
  %caps87 = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %caps87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %caps87, align 32
  %and88 = and i32 %65, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %spec.store.select = select i1 %tobool89.not, i32 3145728, i32 3145856
  %66 = ptrtoint ptr %ocr_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.store.select, ptr %ocr_mask, align 4
  %max_segs = getelementptr inbounds %struct.tmio_mmc_data, ptr %call.i, i32 0, i32 10
  %67 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %max_segs, align 4
  %max_blk_count = getelementptr inbounds %struct.tmio_mmc_data, ptr %call.i, i32 0, i32 9
  %68 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 65535, ptr %max_blk_count, align 4
  %call94 = tail call i32 @tmio_mmc_host_probe(ptr noundef %call40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end85.disable_clk_crit_edge

if.end85.disable_clk_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end97:                                         ; preds = %if.end85
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i180 = icmp eq ptr %70, null
  br i1 %tobool.not.i180, label %if.end.i181, label %if.end97.dev_name.exit_crit_edge

if.end97.dev_name.exit_crit_edge:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i181:                                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i181, %if.end97.dev_name.exit_crit_edge
  %retval.0.i182 = phi ptr [ %72, %if.end.i181 ], [ %70, %if.end97.dev_name.exit_crit_edge ]
  %call.i183 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull @tmio_mmc_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i182, ptr noundef %call40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool100.not = icmp eq i32 %call.i183, 0
  br i1 %tobool100.not, label %dev_name.exit.cleanup_crit_edge, label %remove_host

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

remove_host:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tmio_mmc_host_remove(ptr noundef %call40) #7
  br label %disable_clk

disable_clk:                                      ; preds = %remove_host, %if.end85.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call94, %if.end85.disable_clk_crit_edge ], [ %call.i183, %remove_host ]
  %73 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdata.i.i, align 4
  %rst_br.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %rst_br.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rst_br.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %76) #7
  %rst.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %74, i32 0, i32 4
  %77 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rst.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %78) #7
  %clk.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %74, i32 0, i32 3
  %79 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %80) #7
  tail call void @clk_unprepare(ptr noundef %80) #7
  br label %free_host

free_host:                                        ; preds = %disable_clk, %if.end75.free_host_crit_edge, %do.end55
  %ret.1 = phi i32 [ %26, %do.end55 ], [ %call82, %if.end75.free_host_crit_edge ], [ %ret.0, %disable_clk ]
  tail call void @tmio_mmc_host_free(ptr noundef %call40) #7
  br label %cleanup

cleanup:                                          ; preds = %free_host, %dev_name.exit.cleanup_crit_edge, %if.then42, %do.end32, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %9, %do.end19 ], [ %18, %if.then42 ], [ %ret.1, %free_host ], [ %15, %do.end32 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_sd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @tmio_mmc_host_remove(ptr noundef %1) #7
  %pdata.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i.i, align 4
  %rst_br.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rst_br.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_br.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %rst.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %7) #7
  %clk.i = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  tail call void @tmio_mmc_host_free(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmio_mmc_host_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_hw_reset(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %rst_hw = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rst_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_hw, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1932732) #7
  %5 = ptrtoint ptr %rst_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst_hw, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %6) #7
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_sd_clk_enable(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %mmc1 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc1, align 4
  %clk = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.disable_clk_crit_edge

if.end.disable_clk_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %9) #7
  %clk_rate = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call9, ptr %clk_rate, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call9, ptr %f_max, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %caps = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_rate, align 4
  %. = select i1 %tobool15.not, i32 9, i32 10
  %div1955 = lshr i32 %17, %.
  %18 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div1955, ptr %18, align 4
  %rst = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rst, align 4
  %call22 = tail call i32 @reset_control_deassert(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end14.disable_clk_crit_edge

if.end14.disable_clk_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end25:                                         ; preds = %if.end14
  %rst_br = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %rst_br to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rst_br, align 4
  %call26 = tail call i32 @reset_control_deassert(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %assert_rst

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

assert_rst:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rst, align 4
  %call31 = tail call i32 @reset_control_assert(ptr noundef %25) #7
  br label %disable_clk

disable_clk:                                      ; preds = %assert_rst, %if.end14.disable_clk_crit_edge, %if.end.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.disable_clk_crit_edge ], [ %call22, %if.end14.disable_clk_crit_edge ], [ %call26, %assert_rst ]
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %disable_clk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink59 = phi ptr [ %27, %disable_clk ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %disable_clk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink59) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_clk_disable(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %rst_br = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rst_br to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_br, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %rst = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %clk = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_set_clock(ptr nocapture noundef readonly %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %5 = and i32 %4, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #7, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i32 %4, 16449279
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %clk_rate = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate, align 4
  %div = udiv i32 %11, %clock
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp9 = icmp ult i32 %div, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %9, 1024
  br label %do.body39

if.else:                                          ; preds = %if.end
  %caps = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 4
  %and11 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp ne i32 %and11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div)
  %cmp12 = icmp ugt i32 %div, 512
  %or.cond = select i1 %tobool.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %cond.end34

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i32 %9, 65536
  br label %do.body39

cond.end34:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %div, -1
  %14 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #7, !range !77
  %sub.i.i.i = sub nuw nsw i32 32, %14
  %cond35 = shl nuw i32 1, %sub.i.i.i
  %shr = lshr i32 %cond35, 2
  %or36 = or i32 %shr, %9
  br label %do.body39

do.body39:                                        ; preds = %cond.end34, %if.then13, %if.then10
  %tmp.0 = phi i32 [ %or, %if.then10 ], [ %or14, %if.then13 ], [ %or36, %cond.end34 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %add.ptr43 = getelementptr i8, ptr %17, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %15) #7, !srcloc !72
  %or44 = or i32 %tmp.0, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or44)
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %add.ptr49 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %18) #7, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_sd_start_signal_voltage_switch(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pdata.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %2 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_voltage, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pinstate_uhs = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pinstate_uhs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinstate_uhs, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 2, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %pinstate.0 = phi ptr [ %6, %sw.bb2 ], [ null, %entry.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 484
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %10 = and i32 %9, -50331649
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %or = or i32 %11, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  %add.ptr25 = getelementptr i8, ptr %14, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %12) #7, !srcloc !72
  %tobool26.not = icmp eq ptr %pinstate.0, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %pinctrl = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pinctrl, align 4
  %call28 = tail call i32 @pinctrl_select_state(ptr noundef %16, ptr noundef nonnull %pinstate.0) #7
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 128
  %call29 = tail call i32 @pinctrl_select_default_state(ptr noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_start(ptr noundef %host, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %sg_ptr = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 7
  %2 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_ptr, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %6 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_rx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.force_pio_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.force_pio_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %force_pio

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sg_len2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end26.critedge, label %do.end, !prof !82

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 256, i32 noundef 9, ptr noundef null) #7
  br label %force_pio

if.end26.critedge:                                ; preds = %if.end
  %offset = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %and27 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %if.end30, label %if.end26.critedge.force_pio_crit_edge

if.end26.critedge.force_pio_crit_edge:            ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %force_pio

if.end30:                                         ; preds = %if.end26.critedge
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %12 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  %call38 = tail call i32 @dma_map_sg_attrs(ptr noundef %17, ptr noundef %3, i32 noundef 1, i32 noundef %spec.select, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.end30.force_pio_crit_edge, label %do.body48

if.end30.force_pio_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %force_pio

do.body48:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select121 = select i1 %tobool.not, i32 49, i32 65585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %spec.select121)
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #7, !srcloc !72
  %sg83 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %21 = ptrtoint ptr %sg83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg83, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %add.ptr89 = getelementptr i8, ptr %27, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %25) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host, align 4
  %add.ptr95 = getelementptr i8, ptr %29, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 0) #7, !srcloc !72
  %dma_on = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 14
  %30 = ptrtoint ptr %dma_on to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %dma_on, align 4
  br label %cleanup

force_pio:                                        ; preds = %if.end30.force_pio_crit_edge, %if.end26.critedge.force_pio_crit_edge, %do.end, %land.lhs.true.force_pio_crit_edge
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %31 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %force_pio.if.end.i.i_crit_edge, label %land.lhs.true.i.i

force_pio.if.end.i.i_crit_edge:                   ; preds = %force_pio
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %force_pio
  %call.i.i = tail call i32 %32(ptr noundef %host, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %force_pio.if.end.i.i_crit_edge
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %35 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %36
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %do.body48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uniphier_sd_internal_dma_enable(ptr nocapture noundef %host, i1 noundef zeroext %enable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_request(ptr noundef %host, ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %caps = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -559038801 to ptr), ptr %chan_rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %5 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -559038801 to ptr), ptr %chan_tx, align 4
  %dma_issue = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 17
  tail call void @tasklet_setup(ptr noundef %dma_issue, ptr noundef nonnull @uniphier_sd_internal_dma_issue) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @uniphier_sd_internal_dma_release(ptr nocapture noundef writeonly %host) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %0 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %chan_rx, align 4
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %1 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %chan_tx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_abort(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %1(ptr noundef %host, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge

land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uniphier_sd_dma_endisable.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %4 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !87
  br label %uniphier_sd_dma_endisable.exit

uniphier_sd_dma_endisable.exit:                   ; preds = %if.end.i.i, %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 1048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %9 = and i32 %8, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #7, !srcloc !72
  %12 = or i32 %8, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #7, !srcloc !72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_dataend(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %2 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %3(ptr noundef %host, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge

land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uniphier_sd_dma_endisable.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !87
  br label %uniphier_sd_dma_endisable.exit

uniphier_sd_dma_endisable.exit:                   ; preds = %if.end.i.i, %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %sg_ptr = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 7
  %12 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_ptr, align 4
  %dma_dir = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_dir, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef 1, i32 noundef %15, i32 noundef 0) #7
  tail call void @tmio_mmc_do_data_irq(ptr noundef %host) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_issue(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -160
  %lock = getelementptr i8, ptr %t, i32 212
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %add.ptr, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %write16_hook.i.i = getelementptr i8, ptr %t, i32 372
  %0 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %1(ptr noundef %add.ptr, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge

land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uniphier_sd_dma_endisable.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %bus_shift.i.i = getelementptr i8, ptr %t, i32 -24
  %4 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #7, !srcloc !87
  br label %uniphier_sd_dma_endisable.exit

uniphier_sd_dma_endisable.exit:                   ; preds = %if.end.i.i, %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #7, !srcloc !72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_enable_mmc_irqs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_do_data_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_start(ptr noundef %host, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %chan = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.force_pio_crit_edge, label %if.end

entry.force_pio_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %force_pio

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 1, i32 2
  %6 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %sg_ptr = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 7
  %12 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_ptr, align 4
  %sg_len5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 9
  %14 = ptrtoint ptr %sg_len5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len5, align 4
  %call7 = tail call i32 @dma_map_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %spec.select, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end.force_pio_crit_edge, label %if.end9

if.end.force_pio_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %force_pio

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  %18 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_ptr, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end9.unmap_sg_crit_edge, label %lor.lhs.false.i

if.end9.unmap_sg_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_sg

lor.lhs.false.i:                                  ; preds = %if.end9
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.unmap_sg_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.unmap_sg_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_sg

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 39
  %22 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.unmap_sg_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.unmap_sg_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_sg

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %23(ptr noundef nonnull %17, ptr noundef %19, i32 noundef %call7, i32 noundef %spec.select, i32 noundef 2, ptr noundef null) #7
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %dmaengine_prep_slave_sg.exit.unmap_sg_crit_edge, label %if.end15

dmaengine_prep_slave_sg.exit.unmap_sg_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_sg

if.end15:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback_result = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %callback_result to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @uniphier_sd_external_dma_callback, ptr %callback_result, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %host, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_submit.i, align 4
  %call.i48 = tail call i32 %27(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp17 = icmp slt i32 %call.i48, 0
  br i1 %cmp17, label %if.end15.unmap_sg_crit_edge, label %if.end19

if.end15.unmap_sg_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_sg

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dma_on = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 14
  %28 = ptrtoint ptr %dma_on to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %dma_on, align 4
  br label %cleanup

unmap_sg:                                         ; preds = %if.end15.unmap_sg_crit_edge, %dmaengine_prep_slave_sg.exit.unmap_sg_crit_edge, %lor.lhs.false2.i.unmap_sg_crit_edge, %lor.lhs.false.i.unmap_sg_crit_edge, %if.end9.unmap_sg_crit_edge
  %29 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmc, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 128
  %33 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg_ptr, align 4
  %35 = ptrtoint ptr %sg_len5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_len5, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %6, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 0) #7
  br label %force_pio

force_pio:                                        ; preds = %unmap_sg, %if.end.force_pio_crit_edge, %entry.force_pio_crit_edge
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %39 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %force_pio.if.end.i.i_crit_edge, label %land.lhs.true.i.i

force_pio.if.end.i.i_crit_edge:                   ; preds = %force_pio
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %force_pio
  %call.i.i = tail call i32 %40(ptr noundef %host, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %force_pio.if.end.i.i_crit_edge
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %43 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %44
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uniphier_sd_external_dma_enable(ptr nocapture noundef %host, i1 noundef zeroext %enable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_request(ptr noundef %host, ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %call1 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.23) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chan5 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %chan5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %chan5, align 4
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %11 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %chan_rx, align 4
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %12 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %chan_tx, align 4
  %dma_issue = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 17
  tail call void @tasklet_setup(ptr noundef %dma_issue, ptr noundef nonnull @uniphier_sd_external_dma_issue) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_release(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %chan = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_abort(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %2 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %3(ptr noundef %host, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge

land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uniphier_sd_dma_endisable.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !87
  br label %uniphier_sd_dma_endisable.exit

uniphier_sd_dma_endisable.exit:                   ; preds = %if.end.i.i, %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge
  %chan = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %uniphier_sd_dma_endisable.exit.if.end_crit_edge, label %if.then

uniphier_sd_dma_endisable.exit.if.end_crit_edge:  ; preds = %uniphier_sd_dma_endisable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %uniphier_sd_dma_endisable.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i5 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i5, label %if.then.if.end_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i6 = tail call i32 %13(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %tobool.not.i = icmp eq i32 %call.i.i6, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end_crit_edge

dmaengine_terminate_async.exit.i.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 1169) #7
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %17, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end_crit_edge, label %if.then.i2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef nonnull %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i, %if.end.i.if.end_crit_edge, %dmaengine_terminate_async.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %uniphier_sd_dma_endisable.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_dataend(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %1(ptr noundef %host, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge

land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uniphier_sd_dma_endisable.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %4 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !87
  br label %uniphier_sd_dma_endisable.exit

uniphier_sd_dma_endisable.exit:                   ; preds = %if.end.i.i, %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge
  tail call void @tmio_mmc_do_data_irq(ptr noundef %host) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_callback(ptr noundef %param, ptr nocapture noundef readonly %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %param, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %param, i32 0, i32 4
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %sg_ptr = getelementptr inbounds %struct.tmio_mmc_host, ptr %param, i32 0, i32 7
  %6 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_ptr, align 4
  %sg_len = getelementptr inbounds %struct.tmio_mmc_host, ptr %param, i32 0, i32 9
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  %dma_dir = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 0) #7
  %lock = getelementptr inbounds %struct.tmio_mmc_host, ptr %param, i32 0, i32 27
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %param, i32 noundef 4) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.tmio_mmc_host, ptr %param, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %error = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -110, ptr %error, align 4
  tail call void @tmio_mmc_do_data_irq(ptr noundef %param) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_issue(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -160
  %pdata.i = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %write16_hook.i.i = getelementptr i8, ptr %t, i32 372
  %2 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %3(ptr noundef %add.ptr, i32 noundef 216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge

land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uniphier_sd_dma_endisable.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %bus_shift.i.i = getelementptr i8, ptr %t, i32 -24
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 216, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #7, !srcloc !87
  br label %uniphier_sd_dma_endisable.exit

uniphier_sd_dma_endisable.exit:                   ; preds = %if.end.i.i, %land.lhs.true.i.i.uniphier_sd_dma_endisable.exit_crit_edge
  %chan = getelementptr inbounds %struct.uniphier_sd_priv, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %13(ptr noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_uniphier_sd__333_694_uniphier_sd_driver_init6, !1, !"__initcall__kmod_uniphier_sd__333_694_uniphier_sd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 694, i32 1}
!2 = !{ptr @__exitcall_uniphier_sd_driver_exit, !1, !"__exitcall_uniphier_sd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author334, !4, !"__UNIQUE_ID_author334", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 696, i32 1}
!5 = !{ptr @__UNIQUE_ID_description335, !6, !"__UNIQUE_ID_description335", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 697, i32 1}
!7 = !{ptr @__UNIQUE_ID_file336, !8, !"__UNIQUE_ID_file336", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 698, i32 1}
!9 = !{ptr @__UNIQUE_ID_license337, !8, !"__UNIQUE_ID_license337", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 689, i32 11}
!12 = !{ptr @uniphier_sd_driver, !13, !"uniphier_sd_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 685, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 566, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @uniphier_sd_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @uniphier_sd_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 570, i32 49}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 572, i32 3}
!26 = !{ptr @uniphier_sd_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uniphier_sd_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 578, i32 53}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 580, i32 4}
!32 = !{ptr @uniphier_sd_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @uniphier_sd_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 594, i32 56}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 596, i32 4}
!38 = !{ptr @uniphier_sd_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @uniphier_sd_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 606, i32 4}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @uniphier_sd_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @uniphier_sd_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 536, i32 59}
!47 = !{ptr @uniphier_sd_internal_dma_ops, !48, !"uniphier_sd_internal_dma_ops", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 345, i32 38}
!49 = !{ptr @uniphier_sd_external_dma_ops, !50, !"uniphier_sd_external_dma_ops", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 221, i32 38}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 181, i32 46}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 183, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @uniphier_sd_external_dma_request._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @uniphier_sd_external_dma_request._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!60 = !{ptr @uniphier_sd_match, !61, !"uniphier_sd_match", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/uniphier-sd.c", i32 668, i32 34}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2156475144}
!72 = !{i64 6300027}
!73 = !{i64 2156475709}
!74 = !{i64 6300445}
!75 = !{i64 2156472605}
!76 = !{i64 2156472913}
!77 = !{i32 0, i32 33}
!78 = !{i64 2156474170}
!79 = !{i64 2156474660}
!80 = !{i64 2156476407}
!81 = !{i64 2156520933}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2156468302}
!84 = !{i64 2156468807}
!85 = !{i64 2156469363}
!86 = !{i64 2153841599}
!87 = !{i64 6299407}
!88 = !{i64 2156470232}
!89 = !{i64 2156470616}
!90 = !{i64 2156471175}
!91 = !{i64 2156387094}
