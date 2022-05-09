; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/wmt-sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/wmt-sdmmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.wmt_mci_caps = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.wmt_mci_priv = type { ptr, ptr, i32, i32, ptr, i32, %struct.completion, %struct.completion, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.wmt_dma_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_wmt_sdmmc__273_999_wmt_mci_driver_init6 = internal global ptr @wmt_mci_driver_init, section ".initcall6.init", align 4
@wmt_mci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wmt_mci_probe, ptr @wmt_mci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @wmt_mci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wmt_mci_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wmt_mci_driver_exit = internal global ptr @wmt_mci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [48 x i8] c"wmt_sdmmc.description=Wondermedia MMC/SD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [28 x i8] c"wmt_sdmmc.author=Tony Prisk\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [42 x i8] c"wmt_sdmmc.file=drivers/mmc/host/wmt-sdmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [25 x i8] c"wmt_sdmmc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wmt-sdhc\00", [23 x i8] zeroinitializer }, align 32
@wmt_mci_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8505-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8505_caps }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wmt_mci_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wmt_mci_suspend, ptr @wmt_mci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 761, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Controller capabilities data missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wmt_mci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/wmt-sdmmc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr = internal global ptr @wmt_mci_probe._entry, section ".printk_index", align 4
@wmt_mci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing SDMMC description in devicetree\0A\00", [55 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.8 = internal global ptr @wmt_mci_probe._entry.6, section ".printk_index", align 4
@wmt_mci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 776, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Getting IRQs failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.11 = internal global ptr @wmt_mci_probe._entry.9, section ".printk_index", align 4
@wmt_mci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to allocate mmc_host\0A\00", [35 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.14 = internal global ptr @wmt_mci_probe._entry.12, section ".printk_index", align 4
@wmt_mci_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @wmt_mci_request, ptr null, ptr @wmt_mci_set_ios, ptr @wmt_mci_get_ro, ptr @wmt_mci_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdon-inverted\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cd-inverted\00", [20 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to map IO space\0A\00", [40 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.19 = internal global ptr @wmt_mci_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdmmc\00", [26 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Register regular IRQ fail\0A\00", [37 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.23 = internal global ptr @wmt_mci_probe._entry.21, section ".printk_index", align 4
@wmt_mci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 831, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Register DMA IRQ fail\0A\00", [41 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.26 = internal global ptr @wmt_mci_probe._entry.24, section ".printk_index", align 4
@wmt_mci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA alloc fail\0A\00", [16 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.29 = internal global ptr @wmt_mci_probe._entry.27, section ".printk_index", align 4
@wmt_mci_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.32 = internal global ptr @wmt_mci_probe._entry.30, section ".printk_index", align 4
@wmt_mci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 864, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WMT SDHC Controller initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wmt_mci_probe._entry_ptr.36 = internal global ptr @wmt_mci_probe._entry.33, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wmt_mci_dma_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA Error: Status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wmt_mci_dma_isr\00", [16 x i8] zeroinitializer }, align 32
@wmt_mci_dma_isr._entry_ptr = internal global ptr @wmt_mci_dma_isr._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@wmt_mci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 918, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMT MCI device removed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wmt_mci_remove\00", [17 x i8] zeroinitializer }, align 32
@wmt_mci_remove._entry_ptr = internal global ptr @wmt_mci_remove._entry, section ".printk_index", align 4
@wm8505_caps = internal global { %struct.wmt_mci_caps, [36 x i8] } { %struct.wmt_mci_caps { i32 390425, i32 50000000, i32 3145728, i32 7, i32 65024, i32 128, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"wmt_mci_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 988, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 992, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"wmt_mci_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 744, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"wmt_mci_pm\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 975, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 761, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 768, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 776, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 783, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"wmt_mci_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 725, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 808, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 810, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 815, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 823, i32 57 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 825, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 831, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 841, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 850, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 864, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 87, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 344, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 918, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [12 x i8] c"wm8505_caps\00", align 1
@___asan_gen_.166 = private constant [32 x i8] c"../drivers/mmc/host/wmt-sdmmc.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 733, i32 28 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_wmt_mci_driver_exit, ptr @__initcall__kmod_wmt_sdmmc__273_999_wmt_mci_driver_init6, ptr @wmt_mci_dma_isr._entry, ptr @wmt_mci_dma_isr._entry_ptr, ptr @wmt_mci_driver_exit, ptr @wmt_mci_probe._entry, ptr @wmt_mci_probe._entry.12, ptr @wmt_mci_probe._entry.17, ptr @wmt_mci_probe._entry.21, ptr @wmt_mci_probe._entry.24, ptr @wmt_mci_probe._entry.27, ptr @wmt_mci_probe._entry.30, ptr @wmt_mci_probe._entry.33, ptr @wmt_mci_probe._entry.6, ptr @wmt_mci_probe._entry.9, ptr @wmt_mci_probe._entry_ptr, ptr @wmt_mci_probe._entry_ptr.11, ptr @wmt_mci_probe._entry_ptr.14, ptr @wmt_mci_probe._entry_ptr.19, ptr @wmt_mci_probe._entry_ptr.23, ptr @wmt_mci_probe._entry_ptr.26, ptr @wmt_mci_probe._entry_ptr.29, ptr @wmt_mci_probe._entry_ptr.32, ptr @wmt_mci_probe._entry_ptr.36, ptr @wmt_mci_probe._entry_ptr.8, ptr @wmt_mci_remove._entry, ptr @wmt_mci_remove._entry_ptr, ptr @wmt_mci_driver, ptr @.str, ptr @wmt_mci_dt_ids, ptr @wmt_mci_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @wmt_mci_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @wm8505_caps], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_dma_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_mci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wmt_mci_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wmt_mci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wmt_mci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @wmt_mci_dt_ids, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %1, i32 noundef 0) #5
  %call13 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %call24 = tail call ptr @mmc_alloc_host(i32 noundef 164, ptr noundef %dev) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wmt_mci_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %f_min32 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 5
  %7 = ptrtoint ptr %f_min32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %f_min32, align 4
  %f_max = getelementptr inbounds %struct.wmt_mci_caps, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_max, align 4
  %f_max33 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 6
  %10 = ptrtoint ptr %f_max33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %f_max33, align 8
  %ocr_avail = getelementptr inbounds %struct.wmt_mci_caps, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ocr_avail, align 4
  %ocr_avail34 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 8
  %13 = ptrtoint ptr %ocr_avail34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ocr_avail34, align 64
  %caps = getelementptr inbounds %struct.wmt_mci_caps, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %caps35 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 16
  %16 = ptrtoint ptr %caps35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %caps35, align 32
  %max_seg_size = getelementptr inbounds %struct.wmt_mci_caps, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_seg_size, align 4
  %max_seg_size36 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 20
  %19 = ptrtoint ptr %max_seg_size36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_seg_size36, align 16
  %max_segs = getelementptr inbounds %struct.wmt_mci_caps, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %max_segs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_segs, align 4
  %conv = trunc i32 %21 to i16
  %max_segs37 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 21
  %22 = ptrtoint ptr %max_segs37 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %max_segs37, align 4
  %max_blk_size = getelementptr inbounds %struct.wmt_mci_caps, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_blk_size, align 4
  %max_blk_size38 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 24
  %25 = ptrtoint ptr %max_blk_size38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_blk_size38, align 4
  %conv40 = shl i32 %21, 13
  %mul = and i32 %conv40, 536862720
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 23
  %26 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %max_req_size, align 8
  %div205 = lshr exact i32 %mul, 9
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 25
  %27 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div205, ptr %max_blk_count, align 128
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 0, i32 70
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call24, ptr %private.i, align 4
  %dev45 = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1, i32 4
  %29 = ptrtoint ptr %dev45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %dev45, align 4
  %power_inverted = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1, i32 5
  %30 = ptrtoint ptr %power_inverted to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %power_inverted, align 4
  %cd_inverted = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 15
  %31 = ptrtoint ptr %cd_inverted to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %cd_inverted, align 1
  %call46 = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef null) #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end31.if.end50_crit_edge, label %if.then48

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then48:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %power_inverted to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %power_inverted, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end31.if.end50_crit_edge
  %call51 = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef null) #5
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end50.if.end55_crit_edge, label %if.then53

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %cd_inverted to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %cd_inverted, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50.if.end55_crit_edge
  %call56 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #5
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %34 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call56, ptr %sdmmc_base, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %fail2

if.end64:                                         ; preds = %if.end55
  %irq_regular = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1
  %35 = ptrtoint ptr %irq_regular to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call12, ptr %irq_regular, align 4
  %irq_dma = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %irq_dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call13, ptr %irq_dma, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call12, ptr noundef nonnull @wmt_mci_regular_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool66.not = icmp eq i32 %call.i, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %fail3

if.end72:                                         ; preds = %if.end64
  %call.i206 = tail call i32 @request_threaded_irq(i32 noundef %call13, ptr noundef nonnull @wmt_mci_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool74.not = icmp eq i32 %call.i206, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %fail4

if.end80:                                         ; preds = %if.end72
  %37 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_blk_count, align 128
  %mul83 = shl i32 %38, 4
  %dma_desc_device_addr = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1, i32 0, i32 2
  %call.i207 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul83, ptr noundef %dma_desc_device_addr, i32 noundef 3264, i32 noundef 0) #5
  %dma_desc_buffer = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %dma_desc_buffer to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i207, ptr %dma_desc_buffer, align 4
  %tobool86.not = icmp eq ptr %call.i207, null
  br i1 %tobool86.not, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  br label %fail5

if.end92:                                         ; preds = %if.end80
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call24, ptr %driver_data.i.i, align 4
  %call93 = tail call ptr @of_clk_get(ptr noundef nonnull %1, i32 noundef 0) #5
  %clk_sdmmc = getelementptr inbounds %struct.mmc_host, ptr %call24, i32 1, i32 1, i32 3
  %41 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call93, ptr %clk_sdmmc, align 4
  %cmp.i = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end99, label %if.end103

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  %42 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_sdmmc, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %fail5

if.end103:                                        ; preds = %if.end92
  %call.i208 = tail call i32 @clk_prepare(ptr noundef %call93) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool.not.i = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end103.fail6_crit_edge

if.end103.fail6_crit_edge:                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail6

if.end.i:                                         ; preds = %if.end103
  %call1.i = tail call i32 @clk_enable(ptr noundef %call93) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end108, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call93) #5
  br label %fail6

if.end108:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wmt_reset_hardware(ptr noundef nonnull %call24)
  %call109 = tail call i32 @mmc_add_host(ptr noundef nonnull %call24) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34) #8
  br label %cleanup

fail6:                                            ; preds = %if.then3.i, %if.end103.fail6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i208, %if.end103.fail6_crit_edge ]
  %45 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk_sdmmc, align 4
  tail call void @clk_put(ptr noundef %46) #5
  br label %fail5

fail5:                                            ; preds = %fail6, %do.end99, %do.end90
  %ret.0 = phi i32 [ %44, %do.end99 ], [ %retval.0.i.ph, %fail6 ], [ -1, %do.end90 ]
  %call115 = tail call ptr @free_irq(i32 noundef %call13, ptr noundef %private.i) #5
  br label %fail4

fail4:                                            ; preds = %fail5, %do.end78
  %ret.1 = phi i32 [ %call.i206, %do.end78 ], [ %ret.0, %fail5 ]
  %call116 = tail call ptr @free_irq(i32 noundef %call12, ptr noundef %private.i) #5
  br label %fail3

fail3:                                            ; preds = %fail4, %do.end70
  %ret.2 = phi i32 [ %call.i, %do.end70 ], [ %ret.1, %fail4 ]
  %47 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdmmc_base, align 4
  tail call void @iounmap(ptr noundef %48) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %do.end62
  %ret.3 = phi i32 [ %ret.2, %fail3 ], [ -12, %do.end62 ]
  tail call void @mmc_free_host(ptr noundef nonnull %call24) #5
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.end108, %do.end29, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %if.end108 ], [ -14, %do.end9 ], [ -14, %do.end ], [ %ret.3, %fail2 ], [ -12, %do.end29 ], [ -6, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %5 = or i8 %4, -128
  %or = zext i8 %5 to i32
  %6 = shl nuw i32 %or, 24
  %7 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #5, !srcloc !98
  %9 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #5, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %12 = and i16 %11, -161
  %13 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %12) #5, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 -1) #5, !srcloc !104
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_blk_count, align 128
  %mul = shl i32 %22, 4
  %dma_desc_buffer = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %dma_desc_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_desc_buffer, align 4
  %dma_desc_device_addr = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %dma_desc_device_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_desc_device_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %24, i32 noundef %26, i32 noundef 0) #5
  tail call void @mmc_remove_host(ptr noundef %1) #5
  %irq_regular = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1
  %27 = ptrtoint ptr %irq_regular to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_regular, align 4
  %call31 = tail call ptr @free_irq(i32 noundef %28, ptr noundef %private.i) #5
  %irq_dma = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %irq_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_dma, align 4
  %call32 = tail call ptr @free_irq(i32 noundef %30, ptr noundef %private.i) #5
  %31 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdmmc_base, align 4
  tail call void @iounmap(ptr noundef %32) #5
  %clk_sdmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 3
  %33 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_sdmmc, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  tail call void @clk_unprepare(ptr noundef %34) #5
  %35 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_sdmmc, align 4
  tail call void @clk_put(ptr noundef %36) #5
  %call35 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %37 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call35, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call35, i32 0, i32 1
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %38
  %add.i = add i32 %sub.i, %40
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %38, i32 noundef %add.i) #5
  tail call void @mmc_free_host(ptr noundef %1) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.40) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_regular_isr(i32 noundef %irq_num, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %3 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 41
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  %conv9 = zext i8 %5 to i32
  %6 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 42
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %9 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr21 = getelementptr i8, ptr %10, i32 36
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not = icmp sgt i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool27.not = icmp sgt i8 %2, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end41, label %if.then

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void @mmc_detect_change(ptr noundef %13, i32 noundef 0) #5
  %cmd = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 11
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %if.then.if.end_crit_edge, label %if.then29

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then29:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %error = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -110, ptr %error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then29, %if.then.if.end_crit_edge
  %comp_cmd = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 8
  %17 = ptrtoint ptr %comp_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %comp_cmd, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.end.if.end34_crit_edge, label %if.then32

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %18) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end.if.end34_crit_edge
  %comp_dma = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 9
  %19 = ptrtoint ptr %comp_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %comp_dma, align 4
  %tobool35.not = icmp eq ptr %20, null
  br i1 %tobool35.not, label %if.end34.do.body_crit_edge, label %if.then36

if.end34.do.body_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #5, !srcloc !98
  %25 = ptrtoint ptr %comp_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %comp_dma, align 4
  tail call void @complete(ptr noundef %26) #5
  br label %do.body

do.body:                                          ; preds = %if.then36, %if.end34.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr40 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 -128) #5, !srcloc !104
  br label %cleanup

if.end41:                                         ; preds = %entry
  %req = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 10
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 4
  %data42 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data42, align 4
  %tobool43.not = icmp eq ptr %32, null
  br i1 %tobool43.not, label %if.end41.if.then53_crit_edge, label %lor.lhs.false

if.end41.if.then53_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

lor.lhs.false:                                    ; preds = %if.end41
  %stop = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stop, align 4
  %tobool46.not = icmp eq ptr %34, null
  br i1 %tobool46.not, label %lor.lhs.false.if.else82_crit_edge, label %land.lhs.true47

lor.lhs.false.if.else82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else82

land.lhs.true47:                                  ; preds = %lor.lhs.false
  %cmd48 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 11
  %35 = ptrtoint ptr %cmd48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd48, align 4
  %cmp = icmp eq ptr %36, %34
  br i1 %cmp, label %land.lhs.true47.if.then53_crit_edge, label %land.lhs.true47.if.else82_crit_edge

land.lhs.true47.if.else82_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else82

land.lhs.true47.if.then53_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then53:                                        ; preds = %land.lhs.true47.if.then53_crit_edge, %if.end41.if.then53_crit_edge
  %and54 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %if.then53.if.then70_crit_edge

if.then53.if.then70_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

if.else:                                          ; preds = %if.then53
  %37 = and i32 %conv9, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %if.else.do.body130_crit_edge, label %if.else.if.then70_crit_edge

if.else.if.then70_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

if.else.do.body130_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body130

if.then70:                                        ; preds = %if.else.if.then70_crit_edge, %if.then53.if.then70_crit_edge
  %.sink = phi i32 [ 0, %if.then53.if.then70_crit_edge ], [ -110, %if.else.if.then70_crit_edge ]
  %cmd57 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 11
  %39 = ptrtoint ptr %cmd57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd57, align 4
  %error58 = getelementptr inbounds %struct.mmc_command, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %error58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %error58, align 4
  %comp_cmd71 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 8
  %42 = ptrtoint ptr %comp_cmd71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %comp_cmd71, align 4
  %cmd72 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 11
  %43 = ptrtoint ptr %cmd72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd72, align 4
  %error73 = getelementptr inbounds %struct.mmc_command, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %error73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool74.not = icmp eq i32 %46, 0
  br i1 %tobool74.not, label %if.then75, label %if.then70.if.end77_crit_edge

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then75:                                        ; preds = %if.then70
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 70
  %sdmmc_base10.i = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i.i, i32 0, i32 1
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %48, i32 1, i32 1, i32 2
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.end.3.i.if.end.2.i_crit_edge, %if.then75
  %idx1.035.i = phi i32 [ 0, %if.then75 ], [ %inc20.i, %if.end.3.i.if.end.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx1.035.i)
  %cmp4.i = icmp eq i32 %idx1.035.i, 3
  %mul.i = shl i32 %idx1.035.i, 2
  %49 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdmmc_base10.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %50, i32 17
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i, i32 %mul.i
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdmmc_base10.i, align 4
  %add.ptr13.1.i = getelementptr i8, ptr %53, i32 18
  %add.ptr14.1.i = getelementptr i8, ptr %add.ptr13.1.i, i32 %mul.i
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.1.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv.1.i = zext i8 %54 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 8
  %or.1.i = or i32 %shl.1.i, %conv.i
  %55 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdmmc_base10.i, align 4
  %add.ptr13.2.i = getelementptr i8, ptr %56, i32 19
  %add.ptr14.2.i = getelementptr i8, ptr %add.ptr13.2.i, i32 %mul.i
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.2.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv.2.i = zext i8 %57 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 16
  %or.2.i = or i32 %shl.2.i, %or.1.i
  %58 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sdmmc_base10.i, align 4
  br i1 %cmp4.i, label %if.then.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr13.3.i = getelementptr i8, ptr %59, i32 20
  %add.ptr14.3.i = getelementptr i8, ptr %add.ptr13.3.i, i32 %mul.i
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.3.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.3.i = getelementptr i8, ptr %59, i32 16
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.else.3.i
  %tmp_resp.0.3.i = phi i8 [ %61, %if.then.3.i ], [ %60, %if.else.3.i ]
  %conv.3.i = zext i8 %tmp_resp.0.3.i to i32
  %shl.3.i = shl nuw i32 %conv.3.i, 24
  %or.3.i = or i32 %shl.3.i, %or.2.i
  %62 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd.i, align 4
  %arrayidx.i = getelementptr %struct.mmc_command, ptr %63, i32 0, i32 2, i32 %idx1.035.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.3.i, ptr %arrayidx.i, align 4
  %inc20.i = add nuw nsw i32 %idx1.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, 4
  br i1 %exitcond.not.i, label %if.end.3.i.if.end77_crit_edge, label %if.end.3.i.if.end.2.i_crit_edge

if.end.3.i.if.end.2.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

if.end.3.i.if.end77_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end77:                                         ; preds = %if.end.3.i.if.end77_crit_edge, %if.then70.if.end77_crit_edge
  %65 = ptrtoint ptr %cmd72 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %cmd72, align 4
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req, align 4
  tail call void @mmc_request_done(ptr noundef %67, ptr noundef %69) #5
  br label %do.body130

if.else82:                                        ; preds = %land.lhs.true47.if.else82_crit_edge, %lor.lhs.false.if.else82_crit_edge
  %and83 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else82.if.end97_crit_edge, label %if.then85

if.else82.if.end97_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then85:                                        ; preds = %if.else82
  %cmd86 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 11
  %70 = ptrtoint ptr %cmd86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmd86, align 4
  %tobool87.not = icmp eq ptr %71, null
  br i1 %tobool87.not, label %if.then85.if.end91_crit_edge, label %if.then88

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %error90 = getelementptr inbounds %struct.mmc_command, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %error90 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %error90, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.then85.if.end91_crit_edge
  %comp_cmd92 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 8
  %73 = ptrtoint ptr %comp_cmd92 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %comp_cmd92, align 4
  %tobool93.not = icmp eq ptr %74, null
  br i1 %tobool93.not, label %if.end91.if.end97_crit_edge, label %if.then94

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %74) #5
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end91.if.end97_crit_edge, %if.else82.if.end97_crit_edge
  %75 = and i32 %conv9, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %if.end97.if.end120_crit_edge, label %if.then103

if.end97.if.end120_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then103:                                       ; preds = %if.end97
  %cmd104 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 11
  %77 = ptrtoint ptr %cmd104 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmd104, align 4
  %tobool105.not = icmp eq ptr %78, null
  br i1 %tobool105.not, label %if.then103.if.end109_crit_edge, label %if.then106

if.then103.if.end109_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  %error108 = getelementptr inbounds %struct.mmc_command, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %error108 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -110, ptr %error108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.then103.if.end109_crit_edge
  %comp_cmd110 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 8
  %80 = ptrtoint ptr %comp_cmd110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %comp_cmd110, align 4
  %tobool111.not = icmp eq ptr %81, null
  br i1 %tobool111.not, label %if.end109.if.end114_crit_edge, label %if.then112

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %81) #5
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end109.if.end114_crit_edge
  %comp_dma115 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 9
  %82 = ptrtoint ptr %comp_dma115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %comp_dma115, align 4
  %tobool116.not = icmp eq ptr %83, null
  br i1 %tobool116.not, label %if.end114.if.end120_crit_edge, label %if.then117

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr.i213 = getelementptr i8, ptr %85, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 16777216) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr4.i214 = getelementptr i8, ptr %87, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i214, i32 0) #5, !srcloc !98
  %88 = ptrtoint ptr %comp_dma115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %comp_dma115, align 4
  tail call void @complete(ptr noundef %89) #5
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end114.if.end120_crit_edge, %if.end97.if.end120_crit_edge
  %comp_dma121 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 9
  %90 = ptrtoint ptr %comp_dma121 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %comp_dma121, align 4
  %tobool122.not = icmp eq ptr %91, null
  br i1 %tobool122.not, label %if.end120.do.body130_crit_edge, label %if.then123

if.end120.do.body130_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body130

if.then123:                                       ; preds = %if.end120
  %call125 = tail call zeroext i1 @completion_done(ptr noundef nonnull %91) #5
  br i1 %call125, label %if.then126, label %if.then123.do.body130_crit_edge

if.then123.do.body130_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body130

if.then126:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wmt_complete_data_request(ptr noundef %data)
  br label %do.body130

do.body130:                                       ; preds = %if.then126, %if.then123.do.body130_crit_edge, %if.end120.do.body130_crit_edge, %if.end77, %if.else.do.body130_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr135 = getelementptr i8, ptr %93, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr135, i8 %2) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr141 = getelementptr i8, ptr %95, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr141, i8 %5) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr147 = getelementptr i8, ptr %97, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr147, i8 %8) #5, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %do.body130, %do.body
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_dma_isr(i32 noundef %irq_num, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !118
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %and) #8
  %req = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 10
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data2, align 4
  %error = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -110, ptr %error, align 4
  %comp_dma = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 9
  %11 = ptrtoint ptr %comp_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %comp_dma, align 4
  tail call void @complete(ptr noundef %12) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %req3 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 10
  %13 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req3, align 4
  %data4 = getelementptr inbounds %struct.mmc_request, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data4, align 4
  %error5 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %error5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %21, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #5, !srcloc !98
  %comp_dma6 = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 9
  %22 = ptrtoint ptr %comp_dma6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comp_dma6, align 4
  tail call void @complete(ptr noundef %23) #5
  %comp_cmd = getelementptr inbounds %struct.wmt_mci_priv, ptr %data, i32 0, i32 8
  %24 = ptrtoint ptr %comp_cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %comp_cmd, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %call9 = tail call zeroext i1 @completion_done(ptr noundef nonnull %25) #5
  br i1 %call9, label %if.then10, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wmt_complete_data_request(ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wmt_reset_hardware(ptr nocapture noundef readonly %mmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %3 = or i8 %2, -128
  %4 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %3) #5, !srcloc !104
  %6 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdmmc_base, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %9 = or i8 %8, 8
  %10 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdmmc_base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %9) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 160) #5, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr40 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 -64) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr45 = getelementptr i8, ptr %21, i32 37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 22) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr50 = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 -225) #5, !srcloc !102
  %24 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr54 = getelementptr i8, ptr %25, i32 42
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %27 = or i8 %26, -128
  %28 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr65 = getelementptr i8, ptr %29, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 %27) #5, !srcloc !104
  %clk_sdmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %30 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_sdmmc, align 4
  %call66 = tail call i32 @clk_set_rate(ptr noundef %31, i32 noundef 400000) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wmt_mci_request(ptr noundef %mmc, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %req1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %req, ptr %req1, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd, align 4
  %cmd2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %cmd2, align 4
  %4 = load ptr, ptr %cmd, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %conv = trunc i32 %6 to i8
  %arg5 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %arg5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg5, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %11 = trunc i32 %10 to i8
  %conv7 = and i8 %11, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv7)
  %cmp = icmp eq i8 %conv7, 7
  %spec.store.select = select i1 %cmp, i8 2, i8 %conv7
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %spec.store.select)
  %cmp11 = icmp eq i8 %spec.store.select, 21
  %spec.store.select106 = select i1 %cmp11, i8 9, i8 %spec.store.select
  %data = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end17, label %entry.if.then20_crit_edge

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end17:                                         ; preds = %entry
  tail call fastcc void @wmt_mci_send_command(ptr noundef %mmc, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef %8, i8 noundef zeroext %spec.store.select106)
  %sdmmc_base.i = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %14 = ptrtoint ptr %sdmmc_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdmmc_base.i, align 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %17 = or i8 %16, 1
  %18 = ptrtoint ptr %sdmmc_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdmmc_base.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #5, !srcloc !104
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %data, align 4
  %tobool19.not = icmp eq ptr %.pr, null
  br i1 %tobool19.not, label %if.end17.if.end103_crit_edge, label %if.end17.if.then20_crit_edge

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end17.if.end103_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then20:                                        ; preds = %if.end17.if.then20_crit_edge, %entry.if.then20_crit_edge
  %cmdcomp = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %comp_cmd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %comp_cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmdcomp, ptr %comp_cmd, align 4
  %22 = ptrtoint ptr %cmdcomp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cmdcomp, align 4
  %wait.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %sdmmc_base.i167 = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %23 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #5, !srcloc !98
  %27 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr7.i = getelementptr i8, ptr %28, i32 256
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %30 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 12
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !99
  %33 = shl i16 %32, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %34 = and i16 %33, -2048
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  %39 = trunc i32 %38 to i16
  %40 = add i16 %39, -1
  %conv28 = or i16 %40, %34
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv28)
  %42 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr30 = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %41) #5, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blocks, align 4
  %conv35 = trunc i32 %47 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %49 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr37 = getelementptr i8, ptr %50, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 %48) #5, !srcloc !102
  %dma_desc_buffer = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %dma_desc_buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_desc_buffer, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %flags39 = getelementptr inbounds %struct.mmc_data, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags39, align 4
  %and40 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %57 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmc, align 128
  %sg55 = getelementptr inbounds %struct.mmc_data, ptr %54, i32 0, i32 12
  %59 = ptrtoint ptr %sg55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg55, align 4
  %sg_len57 = getelementptr inbounds %struct.mmc_data, ptr %54, i32 0, i32 10
  %61 = ptrtoint ptr %sg_len57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sg_len57, align 4
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 @dma_map_sg_attrs(ptr noundef %58, ptr noundef %60, i32 noundef %62, i32 noundef 1, i32 noundef 0) #5
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %blocks48 = getelementptr inbounds %struct.mmc_data, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %blocks48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blocks48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp49 = icmp ugt i32 %66, 1
  %spec.store.select104 = select i1 %cmp49, i8 3, i8 1
  br label %if.end65

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = tail call i32 @dma_map_sg_attrs(ptr noundef %58, ptr noundef %60, i32 noundef %62, i32 noundef 2, i32 noundef 0) #5
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %blocks60 = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %blocks60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %blocks60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp61 = icmp ugt i32 %70, 1
  %spec.store.select105 = select i1 %cmp61, i8 4, i8 2
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then42
  %sg_cnt.0 = phi i32 [ %call46, %if.then42 ], [ %call58, %if.else ]
  %cmdtype.0 = phi i8 [ %spec.store.select104, %if.then42 ], [ %spec.store.select105, %if.else ]
  %dma_desc_device_addr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_cnt.0)
  %cmp68183 = icmp sgt i32 %sg_cnt.0, 0
  br i1 %cmp68183, label %while.cond.preheader.preheader, label %if.end65.for.end_crit_edge

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.cond.preheader.preheader:                   ; preds = %if.end65
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %sg67 = getelementptr inbounds %struct.mmc_data, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %sg67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sg67, align 4
  %75 = ptrtoint ptr %dma_desc_device_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_desc_device_addr, align 4
  %add = add i32 %76, 16
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.preheader
  %desc.0188 = phi ptr [ %desc.2, %for.inc.while.cond.preheader_crit_edge ], [ %52, %while.cond.preheader.preheader ]
  %desc_cnt.0187 = phi i32 [ %desc_cnt.2, %for.inc.while.cond.preheader_crit_edge ], [ 0, %while.cond.preheader.preheader ]
  %dma_address.0186 = phi i32 [ %dma_address.2, %for.inc.while.cond.preheader_crit_edge ], [ %add, %while.cond.preheader.preheader ]
  %i.0185 = phi i32 [ %inc87, %for.inc.while.cond.preheader_crit_edge ], [ 0, %while.cond.preheader.preheader ]
  %sg.0184 = phi ptr [ %call88, %for.inc.while.cond.preheader_crit_edge ], [ %74, %while.cond.preheader.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0184, i32 0, i32 4
  %dma_address75 = getelementptr inbounds %struct.scatterlist, ptr %sg.0184, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %offset.0 = phi i32 [ %add79, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %dma_address.1 = phi i32 [ %add80, %while.body.while.cond_crit_edge ], [ %dma_address.0186, %while.cond.preheader ]
  %desc_cnt.1 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ %desc_cnt.0187, %while.cond.preheader ]
  %desc.1 = phi ptr [ %incdec.ptr, %while.body.while.cond_crit_edge ], [ %desc.0188, %while.cond.preheader ]
  %77 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %78)
  %cmp70 = icmp ult i32 %offset.0, %78
  br i1 %cmp70, label %while.body, label %while.cond.for.inc_crit_edge

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body:                                       ; preds = %while.cond
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 4
  %blksz73 = getelementptr inbounds %struct.mmc_data, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %blksz73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %blksz73, align 4
  %83 = ptrtoint ptr %dma_address75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_address75, align 4
  %add76 = add i32 %84, %offset.0
  %conv.i = and i32 %82, 65535
  %or.i = or i32 %conv.i, 1073741824
  %85 = ptrtoint ptr %desc.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i, ptr %desc.1, align 4
  %data_buffer_addr.i = getelementptr inbounds %struct.wmt_dma_descriptor, ptr %desc.1, i32 0, i32 1
  %86 = ptrtoint ptr %data_buffer_addr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add76, ptr %data_buffer_addr.i, align 4
  %branch_addr3.i = getelementptr inbounds %struct.wmt_dma_descriptor, ptr %desc.1, i32 0, i32 2
  %87 = ptrtoint ptr %branch_addr3.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %dma_address.1, ptr %branch_addr3.i, align 4
  %incdec.ptr = getelementptr %struct.wmt_dma_descriptor, ptr %desc.1, i32 1
  %inc = add i32 %desc_cnt.1, 1
  %88 = load ptr, ptr %data, align 4
  %blksz78 = getelementptr inbounds %struct.mmc_data, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %blksz78 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %blksz78, align 4
  %add79 = add i32 %90, %offset.0
  %add80 = add i32 %dma_address.1, 16
  %blocks82 = getelementptr inbounds %struct.mmc_data, ptr %88, i32 0, i32 3
  %91 = ptrtoint ptr %blocks82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %blocks82, align 4
  %cmp83 = icmp eq i32 %inc, %92
  br i1 %cmp83, label %while.body.for.inc_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.for.inc_crit_edge
  %dma_address.2 = phi i32 [ %add80, %while.body.for.inc_crit_edge ], [ %dma_address.1, %while.cond.for.inc_crit_edge ]
  %desc_cnt.2 = phi i32 [ %inc, %while.body.for.inc_crit_edge ], [ %desc_cnt.1, %while.cond.for.inc_crit_edge ]
  %desc.2 = phi ptr [ %incdec.ptr, %while.body.for.inc_crit_edge ], [ %desc.1, %while.cond.for.inc_crit_edge ]
  %inc87 = add nuw nsw i32 %i.0185, 1
  %call88 = tail call ptr @sg_next(ptr noundef %sg.0184) #5
  %exitcond.not = icmp eq i32 %inc87, %sg_cnt.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end65.for.end_crit_edge
  %desc.0.lcssa = phi ptr [ %52, %if.end65.for.end_crit_edge ], [ %desc.2, %for.inc.for.end_crit_edge ]
  %incdec.ptr89 = getelementptr %struct.wmt_dma_descriptor, ptr %desc.0.lcssa, i32 -1
  %93 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %incdec.ptr89, align 4
  %or91 = or i32 %94, -2147483648
  store i32 %or91, ptr %incdec.ptr89, align 4
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 4
  %flags93 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %flags93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags93, align 4
  %and94 = and i32 %98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %99 = ptrtoint ptr %dma_desc_device_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_desc_device_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr.i174 = getelementptr i8, ptr %102, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 16777216) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %103 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  %104 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr5.i175 = getelementptr i8, ptr %105, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i175, i32 %103) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr10.i176 = getelementptr i8, ptr %107, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i176, i32 0) #5
  %108 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr13.i177 = getelementptr i8, ptr %109, i32 288
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i177) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool95.not, label %if.else98, label %if.then96

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr20.i = getelementptr i8, ptr %112, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #5, !srcloc !98
  br label %if.end100

if.else98:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %113 = or i32 %110, 16384
  %114 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr32.i = getelementptr i8, ptr %115, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %113) #5, !srcloc !98
  br label %if.end100

if.end100:                                        ; preds = %if.else98, %if.then96
  tail call fastcc void @wmt_mci_send_command(ptr noundef %mmc, i8 noundef zeroext %conv, i8 noundef zeroext %cmdtype.0, i32 noundef %8, i8 noundef zeroext %spec.store.select106)
  %datacomp = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %comp_dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %116 = ptrtoint ptr %comp_dma to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %datacomp, ptr %comp_dma, align 4
  %117 = ptrtoint ptr %datacomp to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %datacomp, align 4
  %wait.i178 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i178, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #5
  %118 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr.i180 = getelementptr i8, ptr %119, i32 288
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #5, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %121 = or i32 %120, -2147483648
  %122 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sdmmc_base.i167, align 4
  %add.ptr3.i = getelementptr i8, ptr %123, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %121) #5, !srcloc !98
  %124 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sdmmc_base.i167, align 4
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %125) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %127 = or i8 %126, 1
  %128 = ptrtoint ptr %sdmmc_base.i167 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sdmmc_base.i167, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 %127) #5, !srcloc !104
  br label %if.end103

if.end103:                                        ; preds = %if.end100, %if.end17.if.end103_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wmt_mci_set_ios(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wmt_reset_hardware(ptr noundef %mmc)
  %sdmmc_base.i = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %sdmmc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdmmc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %power_inverted.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %power_inverted.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_inverted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 1
  %and.i = and i8 %4, -17
  %masksel.i = select i1 %tobool.not.i, i8 16, i8 0
  %reg_tmp.0.i = or i8 %masksel.i, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %sdmmc_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdmmc_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %reg_tmp.0.i) #5, !srcloc !104
  %9 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %power_mode, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = phi i8 [ %.pr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp4 = icmp eq i8 %10, 0
  br i1 %cmp4, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sdmmc_base.i55 = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %11 = ptrtoint ptr %sdmmc_base.i55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdmmc_base.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i56) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %power_inverted.i57 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %14 = ptrtoint ptr %power_inverted.i57 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %power_inverted.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i59 = icmp eq i8 %15, 0
  %and.i60 = and i8 %13, -17
  %masksel.i61 = select i1 %tobool.not.i59, i8 16, i8 0
  %reg_tmp.0.i62 = or i8 %masksel.i61, %and.i60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %sdmmc_base.i55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdmmc_base.i55, align 4
  %add.ptr5.i63 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i63, i8 %reg_tmp.0.i62) #5, !srcloc !104
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %18 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8.not = icmp eq i32 %19, 0
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %clk_sdmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %20 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_sdmmc, align 4
  %call12 = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %19) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %22 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 8
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %25 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr20 = getelementptr i8, ptr %26, i32 52
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %28 = and i8 %24, -7
  %29 = and i8 %27, -5
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %30 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bus_width, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.end13.do.body_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %sw.bb28
  ]

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i8 %28, 4
  %or27 = or i8 %27, 4
  br label %do.body

sw.bb28:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %or29 = or i8 %28, 2
  br label %do.body

do.body:                                          ; preds = %sw.bb28, %sw.bb, %if.end13.do.body_crit_edge
  %extctrl.0 = phi i8 [ %29, %if.end13.do.body_crit_edge ], [ %29, %sw.bb28 ], [ %or27, %sw.bb ]
  %busmode.0 = phi i8 [ %28, %if.end13.do.body_crit_edge ], [ %or29, %sw.bb28 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr32 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %busmode.0) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr38 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %extctrl.0) #5, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %3 = lshr i8 %2, 1
  %.lobit = and i8 %3, 1
  %4 = xor i8 %.lobit, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_get_cd(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %3 = lshr i8 %2, 3
  %4 = and i8 %3, 1
  %cd_inverted = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 15
  %5 = ptrtoint ptr %cd_inverted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cd_inverted, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %tobool.not = icmp eq i8 %4, %6
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wmt_mci_send_command(ptr nocapture noundef readonly %mmc, i8 noundef zeroext %command, i8 noundef zeroext %cmdtype, i32 noundef %arg, i8 noundef zeroext %rsptype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %command) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %arg)
  %3 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 %rsptype) #5, !srcloc !104
  %7 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdmmc_base, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %10 = or i8 %9, 8
  %11 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdmmc_base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #5, !srcloc !104
  %13 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %power_inverted.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %power_inverted.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %power_inverted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 1
  %and.i = and i8 %15, -17
  %masksel.i = select i1 %tobool.not.i, i8 16, i8 0
  %reg_tmp.0.i = or i8 %masksel.i, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %reg_tmp.0.i) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr30 = getelementptr i8, ptr %23, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr35 = getelementptr i8, ptr %25, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 43
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 -1) #5, !srcloc !104
  %28 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdmmc_base, align 4
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %31 = and i8 %30, 15
  %shl = shl i8 %cmdtype, 4
  %or53 = or i8 %31, %shl
  %32 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdmmc_base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %or53) #5, !srcloc !104
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wmt_complete_data_request(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.wmt_mci_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocks, align 4
  %mul = mul i32 %7, %5
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %bytes_xfered, align 4
  %9 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %sg10 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 12
  %16 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sg10, align 4
  %sg_len12 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 10
  %18 = ptrtoint ptr %sg_len12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_len12, align 4
  %. = select i1 %tobool.not, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %., i32 noundef 0) #5
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %entry.if.then17_crit_edge

entry.if.then17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false:                                    ; preds = %entry
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %error15 = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %error15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16.not = icmp eq i32 %27, 0
  br i1 %tobool16.not, label %if.else19, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %entry.if.then17_crit_edge
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  tail call void @mmc_request_done(ptr noundef %29, ptr noundef %1) #5
  br label %if.end36

if.else19:                                        ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 70
  %sdmmc_base10.i = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i.i, i32 0, i32 1
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 1, i32 1, i32 2
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.end.3.i.if.end.2.i_crit_edge, %if.else19
  %idx1.035.i = phi i32 [ 0, %if.else19 ], [ %inc20.i, %if.end.3.i.if.end.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx1.035.i)
  %cmp4.i = icmp eq i32 %idx1.035.i, 3
  %mul.i = shl i32 %idx1.035.i, 2
  %32 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdmmc_base10.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %33, i32 17
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i, i32 %mul.i
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdmmc_base10.i, align 4
  %add.ptr13.1.i = getelementptr i8, ptr %36, i32 18
  %add.ptr14.1.i = getelementptr i8, ptr %add.ptr13.1.i, i32 %mul.i
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.1.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv.1.i = zext i8 %37 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 8
  %or.1.i = or i32 %shl.1.i, %conv.i
  %38 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdmmc_base10.i, align 4
  %add.ptr13.2.i = getelementptr i8, ptr %39, i32 19
  %add.ptr14.2.i = getelementptr i8, ptr %add.ptr13.2.i, i32 %mul.i
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.2.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv.2.i = zext i8 %40 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 16
  %or.2.i = or i32 %shl.2.i, %or.1.i
  %41 = ptrtoint ptr %sdmmc_base10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdmmc_base10.i, align 4
  br i1 %cmp4.i, label %if.then.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr13.3.i = getelementptr i8, ptr %42, i32 20
  %add.ptr14.3.i = getelementptr i8, ptr %add.ptr13.3.i, i32 %mul.i
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.3.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.3.i = getelementptr i8, ptr %42, i32 16
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3.i) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.else.3.i
  %tmp_resp.0.3.i = phi i8 [ %44, %if.then.3.i ], [ %43, %if.else.3.i ]
  %conv.3.i = zext i8 %tmp_resp.0.3.i to i32
  %shl.3.i = shl nuw i32 %conv.3.i, 24
  %or.3.i = or i32 %shl.3.i, %or.2.i
  %45 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmd.i, align 4
  %arrayidx.i = getelementptr %struct.mmc_command, ptr %46, i32 0, i32 2, i32 %idx1.035.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.3.i, ptr %arrayidx.i, align 4
  %inc20.i = add nuw nsw i32 %idx1.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, 4
  br i1 %exitcond.not.i, label %wmt_mci_read_response.exit, label %if.end.3.i.if.end.2.i_crit_edge

if.end.3.i.if.end.2.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

wmt_mci_read_response.exit:                       ; preds = %if.end.3.i
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %stop = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stop, align 4
  %tobool22.not = icmp eq ptr %51, null
  br i1 %tobool22.not, label %if.then23, label %if.else25

if.then23:                                        ; preds = %wmt_mci_read_response.exit
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  tail call void @mmc_request_done(ptr noundef %53, ptr noundef %1) #5
  br label %if.end36

if.else25:                                        ; preds = %wmt_mci_read_response.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cmdcomp = getelementptr inbounds %struct.wmt_mci_priv, ptr %priv, i32 0, i32 6
  %comp_cmd = getelementptr inbounds %struct.wmt_mci_priv, ptr %priv, i32 0, i32 8
  %54 = ptrtoint ptr %comp_cmd to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cmdcomp, ptr %comp_cmd, align 4
  %55 = ptrtoint ptr %cmdcomp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cmdcomp, align 4
  %wait.i = getelementptr inbounds %struct.wmt_mci_priv, ptr %priv, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #5
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %stop28 = getelementptr inbounds %struct.mmc_data, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %stop28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stop28, align 4
  %cmd29 = getelementptr inbounds %struct.wmt_mci_priv, ptr %priv, i32 0, i32 11
  %60 = ptrtoint ptr %cmd29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %cmd29, align 4
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 4
  %63 = load ptr, ptr %data, align 4
  %stop32 = getelementptr inbounds %struct.mmc_data, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %stop32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stop32, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %conv = trunc i32 %67 to i8
  %arg = getelementptr inbounds %struct.mmc_command, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arg, align 4
  tail call fastcc void @wmt_mci_send_command(ptr noundef %62, i8 noundef zeroext %conv, i8 noundef zeroext 7, i32 noundef %69, i8 noundef zeroext 9)
  %sdmmc_base.i = getelementptr inbounds %struct.wmt_mci_priv, ptr %priv, i32 0, i32 1
  %70 = ptrtoint ptr %sdmmc_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sdmmc_base.i, align 4
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %71) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %73 = or i8 %72, 1
  %74 = ptrtoint ptr %sdmmc_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sdmmc_base.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 %73) #5, !srcloc !104
  br label %if.end36

if.end36:                                         ; preds = %if.else25, %if.then23, %if.then17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %5 = or i8 %4, -128
  %6 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %5) #5, !srcloc !104
  %8 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 12
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #5, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %11 = and i16 %10, -161
  %12 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %11) #5, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 -1) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr30 = getelementptr i8, ptr %17, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 -1) #5, !srcloc !104
  %clk_sdmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 3
  %18 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_sdmmc, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_mci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %clk_sdmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %clk_sdmmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sdmmc, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %3) #5
  %sdmmc_base = getelementptr inbounds %struct.wmt_mci_priv, ptr %private.i, i32 0, i32 1
  %4 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %7 = or i8 %6, -128
  %8 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %7) #5, !srcloc !104
  %10 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #5, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %13 = or i16 %12, 160
  %14 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 %13) #5, !srcloc !102
  %16 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 36
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %19 = or i8 %18, -128
  %20 = ptrtoint ptr %sdmmc_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdmmc_base, align 4
  %add.ptr37 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %19) #5, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_wmt_sdmmc__273_999_wmt_mci_driver_init6, !1, !"__initcall__kmod_wmt_sdmmc__273_999_wmt_mci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 999, i32 1}
!2 = !{ptr @__exitcall_wmt_mci_driver_exit, !1, !"__exitcall_wmt_mci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description274, !4, !"__UNIQUE_ID_description274", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 1001, i32 1}
!5 = !{ptr @__UNIQUE_ID_author275, !6, !"__UNIQUE_ID_author275", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 1002, i32 1}
!7 = !{ptr @__UNIQUE_ID_file276, !8, !"__UNIQUE_ID_file276", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 1003, i32 1}
!9 = !{ptr @__UNIQUE_ID_license277, !8, !"__UNIQUE_ID_license277", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 992, i32 11}
!12 = !{ptr @wmt_mci_driver, !13, !"wmt_mci_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 988, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 761, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wmt_mci_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wmt_mci_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 768, i32 3}
!24 = !{ptr @wmt_mci_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wmt_mci_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 776, i32 3}
!28 = !{ptr @wmt_mci_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wmt_mci_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 783, i32 3}
!32 = !{ptr @wmt_mci_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wmt_mci_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 808, i32 26}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 810, i32 26}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 815, i32 3}
!40 = !{ptr @wmt_mci_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wmt_mci_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 823, i32 57}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 825, i32 3}
!46 = !{ptr @wmt_mci_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wmt_mci_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 831, i32 3}
!50 = !{ptr @wmt_mci_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wmt_mci_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 841, i32 3}
!54 = !{ptr @wmt_mci_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wmt_mci_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 850, i32 3}
!58 = !{ptr @wmt_mci_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wmt_mci_probe._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 864, i32 2}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wmt_mci_probe._entry.33, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @wmt_mci_probe._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @wmt_mci_ops, !66, !"wmt_mci_ops", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 725, i32 34}
!67 = !{ptr @init_completion.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/completion.h", i32 87, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 344, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wmt_mci_dma_isr._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wmt_mci_dma_isr._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 918, i32 2}
!77 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wmt_mci_remove._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wmt_mci_remove._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @wmt_mci_dt_ids, !81, !"wmt_mci_dt_ids", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 744, i32 34}
!82 = !{ptr @wm8505_caps, !83, !"wm8505_caps", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 733, i32 28}
!84 = !{ptr @wmt_mci_pm, !85, !"wmt_mci_pm", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/wmt-sdmmc.c", i32 975, i32 32}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 6252961}
!96 = !{i64 2154842725}
!97 = !{i64 2154842966}
!98 = !{i64 6252763}
!99 = !{i64 6252343}
!100 = !{i64 2154843695}
!101 = !{i64 2154843936}
!102 = !{i64 6252143}
!103 = !{i64 2154844391}
!104 = !{i64 6252566}
!105 = !{i64 2154844677}
!106 = !{i64 2154810555}
!107 = !{i64 2154810804}
!108 = !{i64 2154811053}
!109 = !{i64 2154811302}
!110 = !{i64 2154807219}
!111 = !{i64 2154807647}
!112 = !{i64 2154811547}
!113 = !{i64 2154803073}
!114 = !{i64 2154802766}
!115 = !{i64 2154811898}
!116 = !{i64 2154812190}
!117 = !{i64 2154812482}
!118 = !{i64 6253181}
!119 = !{i64 2154808683}
!120 = !{i64 2154812794}
!121 = !{i64 2154813035}
!122 = !{i64 2154813354}
!123 = !{i64 2154813595}
!124 = !{i64 2154813916}
!125 = !{i64 2154814359}
!126 = !{i64 2154814645}
!127 = !{i64 2154814948}
!128 = !{i64 2154815270}
!129 = !{i64 2154815570}
!130 = !{i64 2154816003}
!131 = !{i64 2154816244}
!132 = !{i64 2154803374}
!133 = !{i64 2154803615}
!134 = !{i64 2154816559}
!135 = !{i64 2154817007}
!136 = !{i64 2154817730}
!137 = !{i64 2154822716}
!138 = !{i64 2154822981}
!139 = !{i64 2154823521}
!140 = !{i64 2154821572}
!141 = !{i64 2154821827}
!142 = !{i64 2154802215}
!143 = !{i64 2154802454}
!144 = !{i64 2154824552}
!145 = !{i64 2154824801}
!146 = !{i64 2154825066}
!147 = !{i64 2154825358}
!148 = !{i64 2154825670}
!149 = !{i64 2154825924}
!150 = !{i64 2154803914}
!151 = !{i64 2154804202}
!152 = !{i64 2154804612}
!153 = !{i64 2154804924}
!154 = !{i64 2154805165}
!155 = !{i64 2154805463}
!156 = !{i64 2154805749}
!157 = !{i64 2154806035}
!158 = !{i64 2154806321}
!159 = !{i64 2154806630}
!160 = !{i64 2154806885}
!161 = !{i64 2154846682}
!162 = !{i64 2154846923}
!163 = !{i64 2154847508}
!164 = !{i64 2154847746}
!165 = !{i64 2154848192}
!166 = !{i64 2154848478}
!167 = !{i64 2154848787}
!168 = !{i64 2154849028}
!169 = !{i64 2154849613}
!170 = !{i64 2154849878}
!171 = !{i64 2154850386}
!172 = !{i64 2154850627}
