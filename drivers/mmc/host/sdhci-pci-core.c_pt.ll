; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pci-core.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pci-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_fixes = type { i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_chip = type { ptr, i32, i32, i8, i8, i8, ptr, i32, [8 x ptr] }
%struct.sdhci_pci_slot = type { ptr, ptr, i32, i8, ptr, [108 x i8], [0 x i32] }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.intel_host = type { i32, i32, i8, i8, i8, i32, i32, i32, i32 }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }

@sdhci_pci_enable_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1911, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Will use DMA mode even though HW doesn't fully claim to support it.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_pci_enable_dma\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mmc/host/sdhci-pci-core.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_pci_enable_dma._entry_ptr = internal global ptr @sdhci_pci_enable_dma._entry, section ".printk_index", align 4
@__initcall__kmod_sdhci_pci__308_2264_sdhci_driver_init6 = internal global ptr @sdhci_driver_init, section ".initcall6.init", align 4
@sdhci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @pci_ids, ptr @sdhci_pci_probe, ptr @sdhci_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_driver_exit = internal global ptr @sdhci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [50 x i8] c"sdhci_pci.author=Pierre Ossman <pierre@ossman.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [74 x i8] c"sdhci_pci.description=Secure Digital Host Controller Interface PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [42 x i8] c"sdhci_pci.file=drivers/mmc/host/sdhci-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [22 x i8] c"sdhci_pci.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhci_pci\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhci-pci\00", [22 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [91 x %struct.pci_device_id], [704 x i8] } { [91 x %struct.pci_device_id] [%struct.pci_device_id { i32 4480, i32 2082, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ricoh to i32), i32 0 }, %struct.pci_device_id { i32 4480, i32 2115, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ricoh_mmc to i32), i32 0 }, %struct.pci_device_id { i32 4480, i32 59426, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ricoh_mmc to i32), i32 0 }, %struct.pci_device_id { i32 4480, i32 59427, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ricoh_mmc to i32), i32 0 }, %struct.pci_device_id { i32 5412, i32 1360, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ene_712 to i32), i32 0 }, %struct.pci_device_id { i32 5412, i32 1361, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ene_712 to i32), i32 0 }, %struct.pci_device_id { i32 5412, i32 1872, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ene_714 to i32), i32 0 }, %struct.pci_device_id { i32 5412, i32 1873, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ene_714 to i32), i32 0 }, %struct.pci_device_id { i32 4523, i32 16641, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_cafe to i32), i32 0 }, %struct.pci_device_id { i32 6523, i32 9089, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_jmicron to i32), i32 0 }, %struct.pci_device_id { i32 6523, i32 9090, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_jmicron to i32), i32 0 }, %struct.pci_device_id { i32 6523, i32 9105, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_jmicron to i32), i32 0 }, %struct.pci_device_id { i32 6523, i32 9106, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_jmicron to i32), i32 0 }, %struct.pci_device_id { i32 4424, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_syskt to i32), i32 0 }, %struct.pci_device_id { i32 4358, i32 38352, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_via to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 21072, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_rtsx to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2215, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_qrk to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2055, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mrst_hc0 to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2056, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mrst_hc1_hc2 to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2127, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mrst_hc1_hc2 to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2080, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2081, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2082, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2083, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2084, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 34825, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_pch_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 34826, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_pch_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3860, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3861, i32 4243, i32 30852, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_ni_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3861, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3862, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3920, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8852, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8853, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8854, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2297, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2298, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2299, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2277, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2278, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mfd_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 4496, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_mrfld_mmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40235, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40236, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40237, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6619, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6363, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2764, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2768, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2762, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6860, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6864, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6858, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 23244, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 23248, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 23242, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12748, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12752, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12746, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40388, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40437, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 41845, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 13508, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 13560, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19271, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19272, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 708, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 757, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 1781, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19908, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19960, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39108, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39160, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 21700, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33056, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33312, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33313, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33568, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33569, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 34080, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33824, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 33825, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 34336, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 4631, i32 34337, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_o2 to i32), i32 0 }, %struct.pci_device_id { i32 5862, i32 1648, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_arasan to i32), i32 0 }, %struct.pci_device_id { i32 5827, i32 49666, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_snps to i32), i32 0 }, %struct.pci_device_id { i32 6048, i32 38736, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_gl9750 to i32), i32 0 }, %struct.pci_device_id { i32 6048, i32 38741, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_gl9755 to i32), i32 0 }, %struct.pci_device_id { i32 6048, i32 59235, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @sdhci_gl9763e to i32), i32 0 }, %struct.pci_device_id { i32 4130, i32 -1, i32 -1, i32 -1, i32 525568, i32 16776960, i32 ptrtoint (ptr @sdhci_amd to i32), i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 525568, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [704 x i8] zeroinitializer }, align 32
@sdhci_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_pci_suspend, ptr @sdhci_pci_resume, ptr @sdhci_pci_suspend, ptr @sdhci_pci_resume, ptr @sdhci_pci_suspend, ptr @sdhci_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pci_runtime_suspend, ptr @sdhci_pci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_ricoh = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 131, i32 0, i8 0, i8 0, ptr @ricoh_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_ricoh_mmc = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 134217861, i32 0, i8 0, i8 0, ptr null, ptr @ricoh_mmc_probe_slot, ptr null, ptr null, ptr null, ptr @ricoh_mmc_resume, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_ene_712 = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 40, i32 0, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_ene_714 = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 56, i32 0, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_cafe = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 55296, i32 0, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_jmicron = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 0, i32 0, i8 0, i8 0, ptr @jmicron_probe, ptr @jmicron_probe_slot, ptr null, ptr @jmicron_remove_slot, ptr @jmicron_suspend, ptr @jmicron_resume, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_syskt = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 2048, i32 0, i8 0, i8 0, ptr @syskt_probe, ptr @syskt_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_via = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 0, i32 0, i8 0, i8 0, ptr @via_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_rtsx = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 0, i32 648, i8 0, i8 0, ptr null, ptr @rtsx_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_qrk = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 536870912, i32 0, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_mrst_hc0 = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 536870976, i32 0, i8 0, i8 0, ptr null, ptr @mrst_hc_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_mrst_hc1_hc2 = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 536870976, i32 0, i8 0, i8 0, ptr @mrst_hc_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_mfd_sd = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 0, i8 1, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_mfd_sdio = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 1, i8 1, i8 0, ptr null, ptr @mfd_sdio_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_mfd_emmc = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 0, i8 1, i8 0, ptr null, ptr @mfd_emmc_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_pch_sdio = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 64, i32 0, i8 0, i8 0, ptr null, ptr @pch_hc_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_byt_emmc = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67633152, i32 2312, i8 1, i8 0, ptr null, ptr @byt_emmc_probe_slot, ptr @byt_add_host, ptr @byt_remove_slot, ptr null, ptr @byt_resume, ptr null, ptr @byt_runtime_resume, ptr @sdhci_intel_byt_ops, i32 28 }, [44 x i8] zeroinitializer }, align 32
@sdhci_ni_byt_sdio = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67633152, i32 9, i8 1, i8 0, ptr null, ptr @ni_byt_sdio_probe_slot, ptr @byt_add_host, ptr @byt_remove_slot, ptr null, ptr @byt_resume, ptr null, ptr @byt_runtime_resume, ptr @sdhci_intel_byt_ops, i32 28 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_byt_sdio = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67633152, i32 9, i8 1, i8 0, ptr null, ptr @byt_sdio_probe_slot, ptr @byt_add_host, ptr @byt_remove_slot, ptr null, ptr @byt_resume, ptr null, ptr @byt_runtime_resume, ptr @sdhci_intel_byt_ops, i32 28 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_byt_sd = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67633152, i32 280, i8 1, i8 1, ptr null, ptr @byt_sd_probe_slot, ptr @byt_add_host, ptr @byt_remove_slot, ptr null, ptr @byt_resume, ptr null, ptr @byt_runtime_resume, ptr @sdhci_intel_byt_ops, i32 28 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_mrfld_mmc = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 72, i8 1, i8 0, ptr null, ptr @intel_mrfld_mmc_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_intel_glk_emmc = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67633152, i32 2312, i8 1, i8 0, ptr null, ptr @glk_emmc_probe_slot, ptr @glk_emmc_add_host, ptr @byt_remove_slot, ptr @sdhci_cqhci_suspend, ptr @sdhci_cqhci_resume, ptr @glk_runtime_suspend, ptr @glk_runtime_resume, ptr @sdhci_intel_glk_ops, i32 28 }, [44 x i8] zeroinitializer }, align 32
@sdhci_o2 = external dso_local constant %struct.sdhci_pci_fixes, align 4
@sdhci_arasan = external dso_local constant %struct.sdhci_pci_fixes, align 4
@sdhci_snps = external dso_local constant %struct.sdhci_pci_fixes, align 4
@sdhci_gl9750 = external dso_local constant %struct.sdhci_pci_fixes, align 4
@sdhci_gl9755 = external dso_local constant %struct.sdhci_pci_fixes, align 4
@sdhci_gl9763e = external dso_local constant %struct.sdhci_pci_fixes, align 4
@sdhci_amd = internal constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 0, i32 0, i8 0, i8 0, ptr @amd_probe, ptr @amd_probe_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_sdhci_pci_ops, i32 0 }, [44 x i8] zeroinitializer }, align 32
@jmicron_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1368, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Refusing to bind to secondary interface.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jmicron_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@jmicron_probe._entry_ptr = internal global ptr @jmicron_probe._entry, section ".printk_index", align 4
@jmicron_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 1379, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failure enabling card power\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@jmicron_probe._entry_ptr.13 = internal global ptr @jmicron_probe._entry.10, section ".printk_index", align 4
@jmicron_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 1485, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jmicron_resume\00", [17 x i8] zeroinitializer }, align 32
@jmicron_resume._entry_ptr = internal global ptr @jmicron_resume._entry, section ".printk_index", align 4
@syskt_probe_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1542, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"SysKonnect CardBus2SDIO, board rev %d.%d, chip rev %d.%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syskt_probe_slot\00", [47 x i8] zeroinitializer }, align 32
@syskt_probe_slot._entry_ptr = internal global ptr @syskt_probe_slot._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@syskt_probe_slot._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1558, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"power regulator never stabilized\00", [63 x i8] zeroinitializer }, align 32
@syskt_probe_slot._entry_ptr.19 = internal global ptr @syskt_probe_slot._entry.17, section ".printk_index", align 4
@sdhci_intel_byt_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr @sdhci_intel_set_power, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_intel_set_uhs_signaling, ptr @sdhci_pci_hw_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max-frequency\00", [18 x i8] zeroinitializer }, align 32
@intel_dsm_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel_dsm_init\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: DSM not supported, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@intel_start_signal_voltage_switch.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"intel_start_signal_voltage_switch\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: %s DSM fn %u error %d result %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active_ltr\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idle_ltr\00", [23 x i8] zeroinitializer }, align 32
@sdhci_intel_glk_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr @sdhci_intel_set_power, ptr @sdhci_cqhci_irq, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_cqhci_reset, ptr null, ptr @sdhci_intel_set_uhs_signaling, ptr @sdhci_pci_hw_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@glk_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @sdhci_pci_dumpregs, ptr null, ptr null, ptr @sdhci_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@glk_rpm_retune_wa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Requiring re-tune after rpm resume\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"glk_rpm_retune_wa\00", [46 x i8] zeroinitializer }, align 32
@glk_rpm_retune_wa._entry_ptr = internal global ptr @glk_rpm_retune_wa._entry, section ".printk_index", align 4
@amd_sdhci_pci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @amd_sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amd_execute_tuning_hs200._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1672, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no tuning point found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amd_execute_tuning_hs200\00", [39 x i8] zeroinitializer }, align 32
@amd_execute_tuning_hs200._entry_ptr = internal global ptr @amd_execute_tuning_hs200._entry, section ".printk_index", align 4
@amd_sdhci_reset.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amd_sdhci_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: power_state=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@sdhci_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 2174, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SDHCI controller found [%04x:%04x] (rev %x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@sdhci_pci_probe._entry_ptr = internal global ptr @sdhci_pci_probe._entry, section ".printk_index", align 4
@sdhci_pci_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 2, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"found %d slot(s)\0A\00", [46 x i8] zeroinitializer }, align 32
@sdhci_pci_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 2192, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid first BAR. Aborting.\0A\00", [34 x i8] zeroinitializer }, align 32
@sdhci_pci_probe._entry_ptr.41 = internal global ptr @sdhci_pci_probe._entry.39, section ".printk_index", align 4
@sdhci_pci_probe_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 2020, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BAR %d is not iomem. Aborting.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_pci_probe_slot\00", [43 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr = internal global ptr @sdhci_pci_probe_slot._entry, section ".printk_index", align 4
@sdhci_pci_probe_slot._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 2026, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid iomem size. You may experience problems.\0A\00", [46 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr.46 = internal global ptr @sdhci_pci_probe_slot._entry.44, section ".printk_index", align 4
@sdhci_pci_probe_slot._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 2030, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Vendor specific interface. Aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr.49 = internal global ptr @sdhci_pci_probe_slot._entry.47, section ".printk_index", align 4
@sdhci_pci_probe_slot._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 2035, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown interface. Aborting.\0A\00", [34 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr.52 = internal global ptr @sdhci_pci_probe_slot._entry.50, section ".printk_index", align 4
@sdhci_pci_probe_slot._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.2, i32 2041, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot allocate host\0A\00", [42 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr.55 = internal global ptr @sdhci_pci_probe_slot._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@sdhci_pci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr @sdhci_pci_hw_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.43, ptr @.str.2, i32 2062, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot request region\0A\00", [41 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr.59 = internal global ptr @sdhci_pci_probe_slot._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.43, ptr @.str.2, i32 2096, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to setup card detect gpio\0A\00", [62 x i8] zeroinitializer }, align 32
@sdhci_pci_probe_slot._entry_ptr.63 = internal global ptr @sdhci_pci_probe_slot._entry.61, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 4173, i64 5197]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 9089, i64 9105]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 9090, i64 9106]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 9090, i64 9106]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 9090, i64 9106]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 9090, i64 9106]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 16, i64 3860, i64 3861, i64 3862, i64 3920, i64 8852, i64 8853, i64 8854]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 16, i64 3860, i64 3861, i64 3862, i64 3920, i64 8852, i64 8853, i64 8854]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [9 x i64] [i64 7, i64 16, i64 3860, i64 3861, i64 3862, i64 3920, i64 8852, i64 8853, i64 8854]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 16, i64 2762, i64 6858, i64 12746, i64 23242]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1910, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"sdhci_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2254, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2264, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2255, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1796, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"sdhci_pci_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1998, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"sdhci_ricoh\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 282, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"sdhci_ricoh_mmc\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 289, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"sdhci_ene_712\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 300, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"sdhci_ene_714\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 305, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"sdhci_cafe\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 311, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"sdhci_jmicron\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1493, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"sdhci_syskt\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1566, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"sdhci_via\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1580, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [11 x i8] c"sdhci_rtsx\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1590, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"sdhci_intel_qrk\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 318, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"sdhci_intel_mrst_hc0\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 361, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant [25 x i8] c"sdhci_intel_mrst_hc1_hc2\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 366, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"sdhci_intel_mfd_sd\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 371, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"sdhci_intel_mfd_sdio\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 377, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"sdhci_intel_mfd_emmc\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 384, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"sdhci_intel_pch_sdio\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 390, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"sdhci_intel_byt_emmc\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1133, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"sdhci_ni_byt_sdio\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1175, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant [21 x i8] c"sdhci_intel_byt_sdio\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1194, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"sdhci_intel_byt_sd\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1213, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"sdhci_intel_mrfld_mmc\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1294, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"sdhci_intel_glk_emmc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1153, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant [10 x i8] c"sdhci_amd\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1790, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1367, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1379, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1485, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1539, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1557, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"sdhci_intel_byt_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 670, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 834, i32 32 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 508, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 664, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 851, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 852, i32 21 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"sdhci_intel_glk_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 680, i32 31 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"glk_cqhci_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 913, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1008, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"amd_sdhci_pci_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1782, i32 31 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1672, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1756, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2173, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2181, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2192, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2020, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2025, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2030, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2035, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2041, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2051, i32 18 }
@___asan_gen_.332 = private unnamed_addr constant [14 x i8] c"sdhci_pci_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1927, i32 31 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2062, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2085, i32 41 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [37 x i8] c"../drivers/mmc/host/sdhci-pci-core.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 2096, i32 4 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_sdhci_driver_exit, ptr @__initcall__kmod_sdhci_pci__308_2264_sdhci_driver_init6, ptr @amd_execute_tuning_hs200._entry, ptr @amd_execute_tuning_hs200._entry_ptr, ptr @glk_rpm_retune_wa._entry, ptr @glk_rpm_retune_wa._entry_ptr, ptr @jmicron_probe._entry, ptr @jmicron_probe._entry.10, ptr @jmicron_probe._entry_ptr, ptr @jmicron_probe._entry_ptr.13, ptr @jmicron_resume._entry, ptr @jmicron_resume._entry_ptr, ptr @sdhci_driver_exit, ptr @sdhci_pci_enable_dma._entry, ptr @sdhci_pci_enable_dma._entry_ptr, ptr @sdhci_pci_probe._entry, ptr @sdhci_pci_probe._entry.39, ptr @sdhci_pci_probe._entry_ptr, ptr @sdhci_pci_probe._entry_ptr.41, ptr @sdhci_pci_probe_slot._entry, ptr @sdhci_pci_probe_slot._entry.44, ptr @sdhci_pci_probe_slot._entry.47, ptr @sdhci_pci_probe_slot._entry.50, ptr @sdhci_pci_probe_slot._entry.53, ptr @sdhci_pci_probe_slot._entry.57, ptr @sdhci_pci_probe_slot._entry.61, ptr @sdhci_pci_probe_slot._entry_ptr, ptr @sdhci_pci_probe_slot._entry_ptr.46, ptr @sdhci_pci_probe_slot._entry_ptr.49, ptr @sdhci_pci_probe_slot._entry_ptr.52, ptr @sdhci_pci_probe_slot._entry_ptr.55, ptr @sdhci_pci_probe_slot._entry_ptr.59, ptr @sdhci_pci_probe_slot._entry_ptr.63, ptr @syskt_probe_slot._entry, ptr @syskt_probe_slot._entry.17, ptr @syskt_probe_slot._entry_ptr, ptr @syskt_probe_slot._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sdhci_driver, ptr @.str.5, ptr @.str.6, ptr @pci_ids, ptr @sdhci_pci_pm_ops, ptr @sdhci_ricoh, ptr @sdhci_ricoh_mmc, ptr @sdhci_ene_712, ptr @sdhci_ene_714, ptr @sdhci_cafe, ptr @sdhci_jmicron, ptr @sdhci_syskt, ptr @sdhci_via, ptr @sdhci_rtsx, ptr @sdhci_intel_qrk, ptr @sdhci_intel_mrst_hc0, ptr @sdhci_intel_mrst_hc1_hc2, ptr @sdhci_intel_mfd_sd, ptr @sdhci_intel_mfd_sdio, ptr @sdhci_intel_mfd_emmc, ptr @sdhci_intel_pch_sdio, ptr @sdhci_intel_byt_emmc, ptr @sdhci_ni_byt_sdio, ptr @sdhci_intel_byt_sdio, ptr @sdhci_intel_byt_sd, ptr @sdhci_intel_mrfld_mmc, ptr @sdhci_intel_glk_emmc, ptr @sdhci_amd, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @sdhci_intel_byt_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @sdhci_intel_glk_ops, ptr @glk_cqhci_ops, ptr @.str.30, ptr @.str.31, ptr @amd_sdhci_pci_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @sdhci_pci_ops, ptr @.str.58, ptr @.str.60, ptr @.str.62], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_enable_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 2912, i32 3616, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_ricoh to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_ricoh_mmc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_ene_712 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_ene_714 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cafe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_jmicron to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_syskt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_via to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_rtsx to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_qrk to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_mrst_hc0 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_mrst_hc1_hc2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_mfd_sd to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_mfd_sdio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_mfd_emmc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_pch_sdio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_byt_emmc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_ni_byt_sdio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_byt_sdio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_byt_sd to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_mrfld_mmc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_glk_emmc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_amd to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmicron_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmicron_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmicron_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syskt_probe_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syskt_probe_slot._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_byt_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_intel_glk_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glk_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glk_rpm_retune_wa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sdhci_pci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_execute_tuning_hs200._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_probe_slot._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdhci_pci_resume_host(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %call = tail call i32 @sdhci_resume_host(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %call5 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %9, i1 noundef zeroext false) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %10 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_slots, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_set_cd_wake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdhci_pci_enable_dma(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %class = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class, align 8
  %and = and i32 %5, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 525568, i32 %and)
  %cmp = icmp ne i32 %and, 525568
  %and3 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3)
  %cmp4.not = icmp eq i32 %and3, 1
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true5:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and6 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %land.lhs.true5.if.end_crit_edge, label %do.end

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true5.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @pci_set_master(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sdhci_driver, ptr noundef null, ptr noundef nonnull @.str.5) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @sdhci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_probe(ptr noundef %pdev, ptr noundef readonly %ent) #0 align 64 {
entry:
  %slots = alloca i8, align 1
  %first_bar = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slots) #10
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %slots, align 1, !annotation !198
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %first_bar) #10
  %1 = ptrtoint ptr %first_bar to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %first_bar, align 1, !annotation !198
  %cmp = icmp eq ptr %pdev, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !199

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci-pci-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2170, 0\0A.popsection", ""() #10, !srcloc !200
  unreachable

do.body8:                                         ; preds = %entry
  %cmp9 = icmp eq ptr %ent, null
  br i1 %cmp9, label %do.body17, label %do.end28, !prof !199

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci-pci-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2171, 0\0A.popsection", ""() #10, !srcloc !201
  unreachable

do.end28:                                         ; preds = %do.body8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv29 = zext i16 %5 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision, align 4
  %conv30 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv29, i32 noundef %conv30) #13
  %call = call i32 @pci_read_config_byte(ptr noundef nonnull %pdev, i32 noundef 64, ptr noundef nonnull %slots) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.end33, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %do.end28
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slots, align 1
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 7
  %narrow = add nuw nsw i8 %11, 1
  store i8 %narrow, ptr %slots, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_pci_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_pci_probe, %if.then45)) #10
          to label %do.body51 [label %if.then45], !srcloc !202

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slots, align 1
  %conv47 = zext i8 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_pci_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv47) #10
  br label %do.body51

do.body51:                                        ; preds = %if.then45, %if.end33
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %slots, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp53 = icmp ugt i8 %15, 8
  br i1 %cmp53, label %do.body62, label %do.end70, !prof !199

do.body62:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci-pci-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2183, 0\0A.popsection", ""() #10, !srcloc !203
  unreachable

do.end70:                                         ; preds = %do.body51
  %call71 = call i32 @pci_read_config_byte(ptr noundef nonnull %pdev, i32 noundef 64, ptr noundef nonnull %first_bar) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %do.end70.cleanup_crit_edge

do.end70.cleanup_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %do.end70
  %16 = ptrtoint ptr %first_bar to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %first_bar, align 1
  %18 = and i8 %17, 7
  store i8 %18, ptr %first_bar, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp79 = icmp ugt i8 %18, 5
  br i1 %cmp79, label %do.end84, label %if.end86

do.end84:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #13
  br label %cleanup

if.end86:                                         ; preds = %if.end74
  %call87 = call i32 @pcim_enable_device(ptr noundef nonnull %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #10
  %tobool93.not = icmp eq ptr %call.i, null
  br i1 %tobool93.not, label %if.end90.cleanup_crit_edge, label %if.end95

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_data, align 4
  %22 = inttoptr i32 %21 to ptr
  %fixes = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %fixes to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %fixes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool98.not = icmp eq i32 %21, 0
  br i1 %tobool98.not, label %if.end95.if.end108_crit_edge, label %if.then99

if.end95.if.end108_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 4
  %quirks101 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %quirks101 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %quirks101, align 4
  %quirks2 = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks2, align 4
  %quirks2103 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %quirks2103 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %quirks2103, align 4
  %allow_runtime_pm = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %22, i32 0, i32 2
  %30 = ptrtoint ptr %allow_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %allow_runtime_pm, align 4, !range !204
  %allow_runtime_pm106 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %allow_runtime_pm106 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %allow_runtime_pm106, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then99, %if.end95.if.end108_crit_edge
  %33 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %slots, align 1
  %conv109 = zext i8 %34 to i32
  %num_slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv109, ptr %num_slots, align 4
  %pm_retune = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %pm_retune to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %pm_retune, align 1
  %rpm_retune = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %rpm_retune to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %rpm_retune, align 2
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %39 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fixes, align 4
  %tobool111.not = icmp eq ptr %40, null
  br i1 %tobool111.not, label %if.end108.if.end121_crit_edge, label %land.lhs.true

if.end108.if.end121_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

land.lhs.true:                                    ; preds = %if.end108
  %probe = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %probe, align 4
  %tobool113.not = icmp eq ptr %42, null
  br i1 %tobool113.not, label %land.lhs.true.if.end121_crit_edge, label %if.then114

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then114:                                       ; preds = %land.lhs.true
  %call117 = call i32 %42(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then114.if.end121_crit_edge, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then114.if.end121_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end121:                                        ; preds = %if.then114.if.end121_crit_edge, %land.lhs.true.if.end121_crit_edge, %if.end108.if.end121_crit_edge
  %43 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_slots, align 4
  %conv123 = trunc i32 %44 to i8
  %45 = ptrtoint ptr %slots to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv123, ptr %slots, align 1
  %conv124219 = and i32 %44, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv124219)
  %cmp125220.not = icmp eq i32 %conv124219, 0
  br i1 %cmp125220.not, label %if.end121.for.end142_crit_edge, label %for.body.lr.ph

if.end121.for.end142_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end142

for.body.lr.ph:                                   ; preds = %if.end121
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %quirks.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 1
  %quirks2.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 2
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %can_wakeup.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 1
  %allow_runtime_pm.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end138.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end138.for.body_crit_edge ]
  %46 = ptrtoint ptr %first_bar to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %first_bar, align 1
  %conv127 = zext i8 %47 to i32
  %add.i = add nuw i32 %i.0221, %conv127
  %48 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fixes, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %for.body.cond.end.i_crit_edge, label %cond.true.i

for.body.cond.end.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %priv_size2.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %priv_size2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %priv_size2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.cond.end.i_crit_edge
  %cond.i = phi i32 [ %51, %cond.true.i ], [ 0, %for.body.cond.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %add.i
  %flags.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %add.i, i32 3
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %add.i) #13
  br label %for.cond131.preheader

if.end.i:                                         ; preds = %cond.end.i
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %add.i, i32 1
  %54 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i = icmp eq i32 %55, 0
  br i1 %cmp.i, label %if.end.i.do.end20.i_crit_edge, label %cond.end14.i

if.end.i.do.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20.i

cond.end14.i:                                     ; preds = %if.end.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %55, 1
  %add13.i = sub i32 %sub.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add13.i)
  %cmp16.i = icmp ult i32 %add13.i, 256
  br i1 %cmp16.i, label %cond.end14.i.do.end20.i_crit_edge, label %cond.end14.i.if.end22.i_crit_edge

cond.end14.i.if.end22.i_crit_edge:                ; preds = %cond.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

cond.end14.i.do.end20.i_crit_edge:                ; preds = %cond.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20.i

do.end20.i:                                       ; preds = %cond.end14.i.do.end20.i_crit_edge, %if.end.i.do.end20.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end20.i, %cond.end14.i.if.end22.i_crit_edge
  %58 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %class.i, align 8
  %and23.i = and i32 %59, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and23.i)
  %cmp24.i = icmp eq i32 %and23.i, 2
  br i1 %cmp24.i, label %do.end28.i, label %if.end31.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #13
  br label %for.cond131.preheader

if.end31.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and23.i)
  %cmp34.i = icmp ugt i32 %and23.i, 2
  br i1 %cmp34.i, label %do.end38.i, label %if.end41.i

do.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #13
  br label %for.cond131.preheader

if.end41.i:                                       ; preds = %if.end31.i
  %add43.i = add i32 %cond.i, 128
  %call44.i = call ptr @sdhci_alloc_host(ptr noundef %dev, i32 noundef %add43.i) #10
  %cmp.i.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end49.i, label %if.end52.i

do.end49.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #13
  br label %sdhci_pci_probe_slot.exit

if.end52.i:                                       ; preds = %if.end41.i
  %private.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 81
  %60 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %private.i.i, align 128
  %host55.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 1, i32 1
  %61 = ptrtoint ptr %host55.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call44.i, ptr %host55.i, align 4
  %cd_idx.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 1, i32 2
  %62 = ptrtoint ptr %cd_idx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %cd_idx.i, align 8
  %63 = ptrtoint ptr %call44.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.56, ptr %call44.i, align 128
  %64 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fixes, align 4
  %tobool57.not.i = icmp eq ptr %65, null
  br i1 %tobool57.not.i, label %if.end52.i.cond.end64.i_crit_edge, label %land.lhs.true.i

if.end52.i.cond.end64.i_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end64.i

land.lhs.true.i:                                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i, align 4
  %tobool59.not.i = icmp eq ptr %67, null
  %spec.select.i = select i1 %tobool59.not.i, ptr @sdhci_pci_ops, ptr %67
  br label %cond.end64.i

cond.end64.i:                                     ; preds = %land.lhs.true.i, %if.end52.i.cond.end64.i_crit_edge
  %cond65.i = phi ptr [ @sdhci_pci_ops, %if.end52.i.cond.end64.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %ops66.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 9
  %68 = ptrtoint ptr %ops66.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cond65.i, ptr %ops66.i, align 4
  %69 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %quirks.i, align 4
  %quirks67.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 1
  %71 = ptrtoint ptr %quirks67.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %quirks67.i, align 4
  %72 = ptrtoint ptr %quirks2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %quirks2.i, align 4
  %quirks268.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 2
  %74 = ptrtoint ptr %quirks268.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %quirks268.i, align 8
  %75 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq.i, align 4
  %irq69.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 3
  %77 = ptrtoint ptr %irq69.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %irq69.i, align 4
  %shl.i = shl nuw i32 1, %add.i
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 10
  %78 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.end64.i.dev_name.exit.i_crit_edge

cond.end64.i.dev_name.exit.i_crit_edge:           ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %cond.end64.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %83, %if.end.i.i ], [ %81, %cond.end64.i.dev_name.exit.i_crit_edge ]
  %call71.i = call i32 @pcim_iomap_regions(ptr noundef nonnull %pdev, i32 noundef %shl.i, ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end78.i, label %do.end76.i

do.end76.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #13
  br label %cleanup.i

if.end78.i:                                       ; preds = %dev_name.exit.i
  %call79.i = call ptr @pcim_iomap_table(ptr noundef nonnull %pdev) #10
  %arrayidx80.i = getelementptr ptr, ptr %call79.i, i32 %add.i
  %84 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx80.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 0, i32 4
  %86 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %ioaddr.i, align 16
  %87 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fixes, align 4
  %tobool82.not.i = icmp eq ptr %88, null
  br i1 %tobool82.not.i, label %if.end78.i.if.end93.i_crit_edge, label %land.lhs.true83.i

if.end78.i.if.end93.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

land.lhs.true83.i:                                ; preds = %if.end78.i
  %probe_slot.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %probe_slot.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %probe_slot.i, align 4
  %tobool85.not.i = icmp eq ptr %90, null
  br i1 %tobool85.not.i, label %land.lhs.true83.i.if.end93.i_crit_edge, label %if.then86.i

land.lhs.true83.i.if.end93.i_crit_edge:           ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.then86.i:                                      ; preds = %land.lhs.true83.i
  %call89.i = call i32 %90(ptr noundef %private.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.then86.i.if.end93.i_crit_edge, label %if.then86.i.cleanup.i_crit_edge

if.then86.i.cleanup.i_crit_edge:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then86.i.if.end93.i_crit_edge:                 ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then86.i.if.end93.i_crit_edge, %land.lhs.true83.i.if.end93.i_crit_edge, %if.end78.i.if.end93.i_crit_edge
  %91 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmc.i, align 8
  %pm_caps.i = getelementptr inbounds %struct.mmc_host, ptr %92, i32 0, i32 19
  %93 = ptrtoint ptr %pm_caps.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %pm_caps.i, align 4
  %94 = load ptr, ptr %mmc.i, align 8
  %slotno96.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 59
  %95 = ptrtoint ptr %slotno96.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %i.0221, ptr %slotno96.i, align 4
  %96 = load ptr, ptr %mmc.i, align 8
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %96, i32 0, i32 17
  %97 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %caps2.i, align 4
  %or.i = or i32 %98, 16384
  store i32 %or.i, ptr %caps2.i, align 4
  %99 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i)
  %tobool.i.i = icmp slt i16 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %if.then100.i, label %if.end93.i.if.end104.i_crit_edge

if.end93.i.if.end104.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then100.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmc.i, align 8
  %pm_caps102.i = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 19
  %102 = ptrtoint ptr %pm_caps102.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pm_caps102.i, align 4
  %or103.i = or i32 %103, 2
  store i32 %or103.i, ptr %pm_caps102.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then100.i, %if.end93.i.if.end104.i_crit_edge
  %104 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmc.i, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %105, i32 0, i32 16
  %106 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %caps.i, align 32
  %and106.i = and i32 %107, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.end104.i.if.end111.i_crit_edge, label %if.then108.i

if.end104.i.if.end111.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  %call110.i = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.end104.i.if.end111.i_crit_edge
  %108 = ptrtoint ptr %cd_idx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cd_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp113.i = icmp sgt i32 %109, -1
  br i1 %cmp113.i, label %if.then114.i, label %if.end111.i.if.end140.i_crit_edge

if.end111.i.if.end140.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

if.then114.i:                                     ; preds = %if.end111.i
  %110 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmc.i, align 8
  %cd_override_level.i = getelementptr inbounds %struct.sdhci_host, ptr %call44.i, i32 1, i32 3
  %112 = ptrtoint ptr %cd_override_level.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %cd_override_level.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool117.i = icmp ne i8 %113, 0
  %call118.i = call i32 @mmc_gpiod_request_cd(ptr noundef %111, ptr noundef nonnull @.str.60, i32 noundef %109, i1 noundef zeroext %tobool117.i, i32 noundef 0) #10
  %114 = zext i32 %call118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call118.i, label %if.end128.i [
    i32 0, label %if.then114.i.if.end140.i_crit_edge
    i32 -517, label %if.then114.i.remove.i_crit_edge
  ]

if.then114.i.remove.i_crit_edge:                  ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove.i

if.then114.i.if.end140.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

if.end128.i:                                      ; preds = %if.then114.i
  %115 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmc.i, align 8
  %117 = ptrtoint ptr %cd_idx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cd_idx.i, align 8
  %119 = ptrtoint ptr %cd_override_level.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %cd_override_level.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool126.i = icmp ne i8 %120, 0
  %call127.i = call i32 @mmc_gpiod_request_cd(ptr noundef %116, ptr noundef null, i32 noundef %118, i1 noundef zeroext %tobool126.i, i32 noundef 0) #10
  %121 = zext i32 %call127.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call127.i, label %do.end136.i [
    i32 -517, label %if.end128.i.remove.i_crit_edge
    i32 0, label %if.end128.i.if.end140.i_crit_edge
  ]

if.end128.i.if.end140.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

if.end128.i.remove.i_crit_edge:                   ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove.i

do.end136.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.62) #13
  %122 = ptrtoint ptr %cd_idx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %cd_idx.i, align 8
  br label %if.end140.i

if.end140.i:                                      ; preds = %do.end136.i, %if.end128.i.if.end140.i_crit_edge, %if.then114.i.if.end140.i_crit_edge, %if.end111.i.if.end140.i_crit_edge
  %123 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fixes, align 4
  %tobool142.not.i = icmp eq ptr %124, null
  br i1 %tobool142.not.i, label %if.end140.i.if.else.i_crit_edge, label %land.lhs.true143.i

if.end140.i.if.else.i_crit_edge:                  ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true143.i:                               ; preds = %if.end140.i
  %add_host.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %add_host.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add_host.i, align 4
  %tobool145.not.i = icmp eq ptr %126, null
  br i1 %tobool145.not.i, label %land.lhs.true143.i.if.else.i_crit_edge, label %if.then146.i

land.lhs.true143.i.if.else.i_crit_edge:           ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then146.i:                                     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #12
  %call149.i = call i32 %126(ptr noundef %private.i.i) #10
  br label %if.end151.i

if.else.i:                                        ; preds = %land.lhs.true143.i.if.else.i_crit_edge, %if.end140.i.if.else.i_crit_edge
  %call150.i = call i32 @sdhci_add_host(ptr noundef %call44.i) #10
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else.i, %if.then146.i
  %ret.1.i = phi i32 [ %call149.i, %if.then146.i ], [ %call150.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool152.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool152.not.i, label %if.end154.i, label %if.end151.i.remove.i_crit_edge

if.end151.i.remove.i_crit_edge:                   ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove.i

if.end154.i:                                      ; preds = %if.end151.i
  %127 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fixes, align 4
  %tobool156.not.i = icmp eq ptr %128, null
  br i1 %tobool156.not.i, label %if.end154.i.sdhci_pci_probe_slot.exit_crit_edge, label %land.lhs.true157.i

if.end154.i.sdhci_pci_probe_slot.exit_crit_edge:  ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_probe_slot.exit

land.lhs.true157.i:                               ; preds = %if.end154.i
  %own_cd_for_runtime_pm.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %own_cd_for_runtime_pm.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %own_cd_for_runtime_pm.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool159.not.i = icmp eq i8 %130, 0
  br i1 %tobool159.not.i, label %land.lhs.true157.i.sdhci_pci_probe_slot.exit_crit_edge, label %land.lhs.true160.i

land.lhs.true157.i.sdhci_pci_probe_slot.exit_crit_edge: ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_probe_slot.exit

land.lhs.true160.i:                               ; preds = %land.lhs.true157.i
  %131 = ptrtoint ptr %cd_idx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cd_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp162.i = icmp slt i32 %132, 0
  br i1 %cmp162.i, label %if.then163.i, label %land.lhs.true160.i.sdhci_pci_probe_slot.exit_crit_edge

land.lhs.true160.i.sdhci_pci_probe_slot.exit_crit_edge: ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_probe_slot.exit

if.then163.i:                                     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %allow_runtime_pm.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %allow_runtime_pm.i, align 4
  br label %sdhci_pci_probe_slot.exit

remove.i:                                         ; preds = %if.end151.i.remove.i_crit_edge, %if.end128.i.remove.i_crit_edge, %if.then114.i.remove.i_crit_edge
  %ret.2.i = phi i32 [ %call127.i, %if.end128.i.remove.i_crit_edge ], [ %ret.1.i, %if.end151.i.remove.i_crit_edge ], [ %call118.i, %if.then114.i.remove.i_crit_edge ]
  %134 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fixes, align 4
  %tobool166.not.i = icmp eq ptr %135, null
  br i1 %tobool166.not.i, label %remove.i.cleanup.i_crit_edge, label %land.lhs.true167.i

remove.i.cleanup.i_crit_edge:                     ; preds = %remove.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true167.i:                               ; preds = %remove.i
  %remove_slot.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %135, i32 0, i32 7
  %136 = ptrtoint ptr %remove_slot.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %remove_slot.i, align 4
  %tobool169.not.i = icmp eq ptr %137, null
  br i1 %tobool169.not.i, label %land.lhs.true167.i.cleanup.i_crit_edge, label %if.then170.i

land.lhs.true167.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then170.i:                                     ; preds = %land.lhs.true167.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %137(ptr noundef %private.i.i, i32 noundef 0) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then170.i, %land.lhs.true167.i.cleanup.i_crit_edge, %remove.i.cleanup.i_crit_edge, %if.then86.i.cleanup.i_crit_edge, %do.end76.i
  %ret.3.i = phi i32 [ %call71.i, %do.end76.i ], [ %call89.i, %if.then86.i.cleanup.i_crit_edge ], [ %ret.2.i, %if.then170.i ], [ %ret.2.i, %land.lhs.true167.i.cleanup.i_crit_edge ], [ %ret.2.i, %remove.i.cleanup.i_crit_edge ]
  call void @sdhci_free_host(ptr noundef %call44.i) #10
  %138 = inttoptr i32 %ret.3.i to ptr
  br label %sdhci_pci_probe_slot.exit

sdhci_pci_probe_slot.exit:                        ; preds = %cleanup.i, %if.then163.i, %land.lhs.true160.i.sdhci_pci_probe_slot.exit_crit_edge, %land.lhs.true157.i.sdhci_pci_probe_slot.exit_crit_edge, %if.end154.i.sdhci_pci_probe_slot.exit_crit_edge, %do.end49.i
  %retval.0.i208 = phi ptr [ %call44.i, %do.end49.i ], [ %138, %cleanup.i ], [ %private.i.i, %if.then163.i ], [ %private.i.i, %land.lhs.true160.i.sdhci_pci_probe_slot.exit_crit_edge ], [ %private.i.i, %land.lhs.true157.i.sdhci_pci_probe_slot.exit_crit_edge ], [ %private.i.i, %if.end154.i.sdhci_pci_probe_slot.exit_crit_edge ]
  %cmp.i209 = icmp ugt ptr %retval.0.i208, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %sdhci_pci_probe_slot.exit.for.cond131.preheader_crit_edge, label %if.end138

sdhci_pci_probe_slot.exit.for.cond131.preheader_crit_edge: ; preds = %sdhci_pci_probe_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %sdhci_pci_probe_slot.exit.for.cond131.preheader_crit_edge, %do.end38.i, %do.end28.i, %do.end.i
  %retval.0.i208229 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end28.i ], [ inttoptr (i32 -19 to ptr), %do.end38.i ], [ inttoptr (i32 -19 to ptr), %do.end.i ], [ %retval.0.i208, %sdhci_pci_probe_slot.exit.for.cond131.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0221)
  %cmp132223.not = icmp eq i32 %i.0221, 0
  br i1 %cmp132223.not, label %for.cond131.preheader.for.end_crit_edge, label %for.cond131.preheader.for.body134_crit_edge

for.cond131.preheader.for.body134_crit_edge:      ; preds = %for.cond131.preheader
  br label %for.body134

for.cond131.preheader.for.end_crit_edge:          ; preds = %for.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body134:                                      ; preds = %sdhci_pci_remove_slot.exit.for.body134_crit_edge, %for.cond131.preheader.for.body134_crit_edge
  %i.1224.in = phi i32 [ %i.1224, %sdhci_pci_remove_slot.exit.for.body134_crit_edge ], [ %i.0221, %for.cond131.preheader.for.body134_crit_edge ]
  %i.1224 = add nsw i32 %i.1224.in, -1
  %arrayidx = getelementptr %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 8, i32 %i.1224
  %139 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx, align 4
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %host.i, align 4
  %ioaddr.i210 = getelementptr inbounds %struct.sdhci_host, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %ioaddr.i210 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ioaddr.i210, align 16
  %add.ptr.i = getelementptr i8, ptr %144, i32 48
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %145)
  %cmp.i211 = icmp eq i32 %145, -1
  %spec.select.i212 = zext i1 %cmp.i211 to i32
  %146 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %host.i, align 4
  call void @sdhci_remove_host(ptr noundef %147, i32 noundef %spec.select.i212) #10
  %148 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %140, align 128
  %fixes.i213 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %149, i32 0, i32 6
  %150 = ptrtoint ptr %fixes.i213 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fixes.i213, align 4
  %tobool.not.i214 = icmp eq ptr %151, null
  br i1 %tobool.not.i214, label %for.body134.sdhci_pci_remove_slot.exit_crit_edge, label %land.lhs.true.i216

for.body134.sdhci_pci_remove_slot.exit_crit_edge: ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_remove_slot.exit

land.lhs.true.i216:                               ; preds = %for.body134
  %remove_slot.i215 = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %remove_slot.i215 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %remove_slot.i215, align 4
  %tobool5.not.i = icmp eq ptr %153, null
  br i1 %tobool5.not.i, label %land.lhs.true.i216.sdhci_pci_remove_slot.exit_crit_edge, label %if.then6.i

land.lhs.true.i216.sdhci_pci_remove_slot.exit_crit_edge: ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_remove_slot.exit

if.then6.i:                                       ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #12
  call void %153(ptr noundef %140, i32 noundef %spec.select.i212) #10
  br label %sdhci_pci_remove_slot.exit

sdhci_pci_remove_slot.exit:                       ; preds = %if.then6.i, %land.lhs.true.i216.sdhci_pci_remove_slot.exit_crit_edge, %for.body134.sdhci_pci_remove_slot.exit_crit_edge
  %154 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %host.i, align 4
  call void @sdhci_free_host(ptr noundef %155) #10
  %cmp132 = icmp sgt i32 %i.1224.in, 1
  br i1 %cmp132, label %sdhci_pci_remove_slot.exit.for.body134_crit_edge, label %sdhci_pci_remove_slot.exit.for.end_crit_edge

sdhci_pci_remove_slot.exit.for.end_crit_edge:     ; preds = %sdhci_pci_remove_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sdhci_pci_remove_slot.exit.for.body134_crit_edge: ; preds = %sdhci_pci_remove_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body134

for.end:                                          ; preds = %sdhci_pci_remove_slot.exit.for.end_crit_edge, %for.cond131.preheader.for.end_crit_edge
  %156 = ptrtoint ptr %retval.0.i208229 to i32
  br label %cleanup

if.end138:                                        ; preds = %sdhci_pci_probe_slot.exit
  %arrayidx140 = getelementptr %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 8, i32 %i.0221
  %157 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %retval.0.i208, ptr %arrayidx140, align 4
  %inc = add nuw nsw i32 %i.0221, 1
  %158 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %slots, align 1
  %conv124 = zext i8 %159 to i32
  %cmp125 = icmp ult i32 %inc, %conv124
  br i1 %cmp125, label %if.end138.for.body_crit_edge, label %if.end138.for.end142_crit_edge

if.end138.for.end142_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end142

if.end138.for.body_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end142:                                       ; preds = %if.end138.for.end142_crit_edge, %if.end121.for.end142_crit_edge
  %allow_runtime_pm143 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %call.i, i32 0, i32 3
  %160 = ptrtoint ptr %allow_runtime_pm143 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %allow_runtime_pm143, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool144.not = icmp eq i8 %161, 0
  br i1 %tobool144.not, label %for.end142.cleanup_crit_edge, label %if.then145

for.end142.cleanup_crit_edge:                     ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then145:                                       ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sdhci_pci_runtime_pm_allow(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %for.end142.cleanup_crit_edge, %for.end, %if.then114.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %do.end84, %do.end70.cleanup_crit_edge, %do.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end84 ], [ %156, %for.end ], [ %call, %do.end28.cleanup_crit_edge ], [ %call71, %do.end70.cleanup_crit_edge ], [ %call87, %if.end86.cleanup_crit_edge ], [ -12, %if.end90.cleanup_crit_edge ], [ %call117, %if.then114.cleanup_crit_edge ], [ 0, %if.then145 ], [ 0, %for.end142.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %first_bar) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slots) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %allow_runtime_pm = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %allow_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allow_runtime_pm, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev) #10
  %usage_count.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !207
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %sdhci_pci_remove_slot.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %sdhci_pci_remove_slot.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdhci_pci_chip, ptr %1, i32 0, i32 8, i32 %i.07
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp eq i32 %13, -1
  %spec.select.i = zext i1 %cmp.i to i32
  %14 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host.i, align 4
  tail call void @sdhci_remove_host(ptr noundef %15, i32 noundef %spec.select.i) #10
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 128
  %fixes.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %fixes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fixes.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.sdhci_pci_remove_slot.exit_crit_edge, label %land.lhs.true.i

for.body.sdhci_pci_remove_slot.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_remove_slot.exit

land.lhs.true.i:                                  ; preds = %for.body
  %remove_slot.i = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %remove_slot.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remove_slot.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.sdhci_pci_remove_slot.exit_crit_edge, label %if.then6.i

land.lhs.true.i.sdhci_pci_remove_slot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_remove_slot.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %8, i32 noundef %spec.select.i) #10
  br label %sdhci_pci_remove_slot.exit

sdhci_pci_remove_slot.exit:                       ; preds = %if.then6.i, %land.lhs.true.i.sdhci_pci_remove_slot.exit_crit_edge, %for.body.sdhci_pci_remove_slot.exit_crit_edge
  %22 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host.i, align 4
  tail call void @sdhci_free_host(ptr noundef %23) #10
  %inc = add nuw nsw i32 %i.07, 1
  %24 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_slots, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %sdhci_pci_remove_slot.exit.for.body_crit_edge, label %sdhci_pci_remove_slot.exit.for.end_crit_edge

sdhci_pci_remove_slot.exit.for.end_crit_edge:     ; preds = %sdhci_pci_remove_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sdhci_pci_remove_slot.exit.for.body_crit_edge:    ; preds = %sdhci_pci_remove_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %sdhci_pci_remove_slot.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ricoh_probe(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 5197, label %entry.if.then_crit_edge
    i16 4173, label %entry.if.then_crit_edge9
  ]

entry.if.then_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge9
  %quirks = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 1
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %quirks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ricoh_mmc_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %caps = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 23077281, ptr %caps, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ricoh_mmc_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 500) #10
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.i = icmp sgt i32 %1, 0
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.sdhci_pci_resume_host.exit_crit_edge

entry.sdhci_pci_resume_host.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_resume_host.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.015.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %call.i = tail call i32 @sdhci_resume_host(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.sdhci_pci_resume_host.exit_crit_edge

if.end.i.sdhci_pci_resume_host.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_resume_host.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc.i, align 8
  %call5.i = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %9, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %10 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdhci_pci_resume_host.exit_crit_edge

for.inc.i.sdhci_pci_resume_host.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_resume_host.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sdhci_pci_resume_host.exit:                       ; preds = %for.inc.i.sdhci_pci_resume_host.exit_crit_edge, %if.end.i.sdhci_pci_resume_host.exit_crit_edge, %entry.sdhci_pci_resume_host.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sdhci_pci_resume_host.exit_crit_edge ], [ %call.i, %if.end.i.sdhci_pci_resume_host.exit_crit_edge ], [ 0, %for.inc.i.sdhci_pci_resume_host.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmicron_probe(ptr nocapture noundef %chip) #0 align 64 {
entry:
  %scratch.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %or = or i32 %5, 10112
  store i32 %or, ptr %quirks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %7, label %if.end.if.end35_crit_edge [
    i16 9089, label %if.end.if.end14_crit_edge
    i16 9105, label %if.then12
  ]

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %mmcdev.0 = phi i32 [ 9106, %if.then12 ], [ 9090, %if.end.if.end14_crit_edge ]
  %call85 = tail call ptr @pci_get_device(i32 noundef 6523, i32 noundef %mmcdev.0, ptr noundef null) #10
  %cmp17.not86 = icmp eq ptr %call85, null
  br i1 %cmp17.not86, label %if.end14.if.end35_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %if.end14.while.body_crit_edge
  %call87 = phi ptr [ %call, %if.end30.while.body_crit_edge ], [ %call85, %if.end14.while.body_crit_edge ]
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devfn, align 4
  %devfn20 = getelementptr inbounds %struct.pci_dev, ptr %call87, i32 0, i32 6
  %13 = ptrtoint ptr %devfn20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devfn20, align 4
  %shr78 = xor i32 %14, %12
  %15 = and i32 %shr78, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23 = icmp eq i32 %15, 0
  br i1 %cmp23, label %land.lhs.true, label %while.body.if.end30_crit_edge

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %while.body
  %bus = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 8
  %bus26 = getelementptr inbounds %struct.pci_dev, ptr %call87, i32 0, i32 1
  %18 = ptrtoint ptr %bus26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus26, align 8
  %cmp27 = icmp eq ptr %17, %19
  br i1 %cmp27, label %if.then32.critedge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %while.body.if.end30_crit_edge
  %call = tail call ptr @pci_get_device(i32 noundef 6523, i32 noundef %mmcdev.0, ptr noundef nonnull %call87) #10
  %cmp17.not = icmp eq ptr %call, null
  br i1 %cmp17.not, label %if.end30.if.end35_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_dev_put(ptr noundef nonnull %call87) #10
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  br label %cleanup59

if.end35:                                         ; preds = %if.end30.if.end35_crit_edge, %if.end14.if.end35_crit_edge, %if.end.if.end35_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scratch.i) #10
  %22 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %scratch.i, align 1, !annotation !198
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %call.i = call i32 @pci_read_config_byte(ptr noundef %24, i32 noundef 174, ptr noundef nonnull %scratch.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %jmicron_pmos.exit, label %jmicron_pmos.exit.thread

jmicron_pmos.exit.thread:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch.i) #10
  br label %do.end41

jmicron_pmos.exit:                                ; preds = %if.end35
  %25 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %scratch.i, align 1
  %27 = or i8 %26, 71
  store i8 %27, ptr %scratch.i, align 1
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %call8.i = call i32 @pci_write_config_byte(ptr noundef %29, i32 noundef 174, i8 noundef zeroext %27) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool37.not = icmp eq i32 %call8.i, 0
  br i1 %tobool37.not, label %if.end44, label %jmicron_pmos.exit.do.end41_crit_edge

jmicron_pmos.exit.do.end41_crit_edge:             ; preds = %jmicron_pmos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.end41:                                         ; preds = %jmicron_pmos.exit.do.end41_crit_edge, %jmicron_pmos.exit.thread
  %retval.0.i83 = phi i32 [ %call.i, %jmicron_pmos.exit.thread ], [ %call8.i, %jmicron_pmos.exit.do.end41_crit_edge ]
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.11) #13
  br label %cleanup59

if.end44:                                         ; preds = %jmicron_pmos.exit
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %device46 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %device46 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device46, align 2
  %.off = add i16 %35, -9105
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.then55, label %if.end44.cleanup59_crit_edge

if.end44.cleanup59_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.then55:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %quirks56 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 1
  %36 = ptrtoint ptr %quirks56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks56, align 4
  %or57 = or i32 %37, -2147483648
  store i32 %or57, ptr %quirks56, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %if.then55, %if.end44.cleanup59_crit_edge, %do.end41, %if.then32.critedge
  %retval.1 = phi i32 [ %retval.0.i83, %do.end41 ], [ -19, %if.then32.critedge ], [ 0, %if.end44.cleanup59_crit_edge ], [ 0, %if.then55 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmicron_probe_slot(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %9, i32 254
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %11 = and i32 %10, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 11272192, i32 %11)
  %cmp7 = icmp ult i32 %11, 11272192
  br i1 %cmp7, label %if.then9, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %or = or i32 %15, 64
  store i32 %or, ptr %quirks, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %16 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slot, align 128
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9106, i16 %21)
  %cmp15 = icmp eq i16 %21, 9106
  br i1 %cmp15, label %if.then17, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %host18 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %22 = ptrtoint ptr %host18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host18, align 4
  %ocr_avail_sd = getelementptr inbounds %struct.sdhci_host, ptr %23, i32 0, i32 61
  %24 = ptrtoint ptr %ocr_avail_sd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3539072, ptr %ocr_avail_sd, align 8
  %25 = load ptr, ptr %host18, align 4
  %ocr_avail_mmc = getelementptr inbounds %struct.sdhci_host, ptr %25, i32 0, i32 62
  %26 = ptrtoint ptr %ocr_avail_mmc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3538944, ptr %ocr_avail_mmc, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end11.if.end20_crit_edge
  %27 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slot, align 128
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %device23 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %device23 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device23, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %32, label %if.end20.if.end35_crit_edge [
    i16 9090, label %if.end20.if.then33_crit_edge
    i16 9106, label %if.end20.if.then33_crit_edge48
  ]

if.end20.if.then33_crit_edge48:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end20.if.then33_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.end20.if.then33_crit_edge, %if.end20.if.then33_crit_edge48
  %host34 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %34 = ptrtoint ptr %host34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host34, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %37, i32 192
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %scratch.0.i = or i8 %38, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %40, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %scratch.0.i) #10, !srcloc !212
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end20.if.end35_crit_edge
  %host36 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %41 = ptrtoint ptr %host36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host36, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps, align 32
  %or37 = or i32 %46, 32768
  store i32 %or37, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jmicron_remove_slot(ptr nocapture noundef readonly %slot, i32 noundef %dead) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dead)
  %tobool.not = icmp eq i32 %dead, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %5, label %if.end.if.end9_crit_edge [
    i16 9090, label %if.end.if.then8_crit_edge
    i16 9106, label %if.end.if.then8_crit_edge12
  ]

if.end.if.then8_crit_edge12:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge12
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 192
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %12 = and i8 %11, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %14, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %12) #10, !srcloc !212
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmicron_suspend(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sdhci_pci_suspend_host(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %3, label %if.end.cleanup_crit_edge [
    i16 9090, label %if.end.if.then7_crit_edge
    i16 9106, label %if.end.if.then7_crit_edge21
  ]

if.end.if.then7_crit_edge21:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge21
  %num_slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %5 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp819 = icmp sgt i32 %6, 0
  br i1 %cmp819, label %if.then7.for.body_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.020
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 192
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %14 = and i8 %13, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %16, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %14) #10, !srcloc !212
  %inc = add nuw nsw i32 %i.020, 1
  %17 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_slots, align 4
  %cmp8 = icmp slt i32 %inc, %18
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmicron_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %scratch.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 9090, label %entry.if.then_crit_edge
    i16 9106, label %entry.if.then_crit_edge31
  ]

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge31
  %num_slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %5 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp729 = icmp sgt i32 %6, 0
  br i1 %cmp729, label %if.then.for.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.030
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 192
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %scratch.0.i = or i8 %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %scratch.0.i) #10, !srcloc !212
  %inc = add nuw nsw i32 %i.030, 1
  %16 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_slots, align 4
  %cmp7 = icmp slt i32 %inc, %17
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scratch.i) #10
  %18 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %scratch.i, align 1, !annotation !198
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %call.i = call i32 @pci_read_config_byte(ptr noundef %20, i32 noundef 174, ptr noundef nonnull %scratch.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %jmicron_pmos.exit, label %jmicron_pmos.exit.thread

jmicron_pmos.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch.i) #10
  br label %do.end

jmicron_pmos.exit:                                ; preds = %if.end
  %21 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %scratch.i, align 1
  %23 = or i8 %22, 71
  store i8 %23, ptr %scratch.i, align 1
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %call8.i = call i32 @pci_write_config_byte(ptr noundef %25, i32 noundef 174, i8 noundef zeroext %23) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not = icmp eq i32 %call8.i, 0
  br i1 %tobool.not, label %if.end11, label %jmicron_pmos.exit.do.end_crit_edge

jmicron_pmos.exit.do.end_crit_edge:               ; preds = %jmicron_pmos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %jmicron_pmos.exit.do.end_crit_edge, %jmicron_pmos.exit.thread
  %retval.0.i28 = phi i32 [ %call.i, %jmicron_pmos.exit.thread ], [ %call8.i, %jmicron_pmos.exit.do.end_crit_edge ]
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end11:                                         ; preds = %jmicron_pmos.exit
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %28 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14.i = icmp sgt i32 %29, 0
  br i1 %cmp14.i, label %if.end11.for.body.i_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.015.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i23 = icmp eq ptr %31, null
  br i1 %tobool.not.i23, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host.i, align 4
  %call.i24 = call i32 @sdhci_resume_host(ptr noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool1.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc.i, align 8
  %call5.i = call i32 @mmc_gpio_set_cd_wake(ptr noundef %37, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %38 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %39
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i28, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ %call.i24, %if.end.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_pci_suspend_host(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i = icmp sgt i32 %1, 0
  br i1 %cmp3.i, label %entry.for.body.i_crit_edge, label %entry.if.then13.i_crit_edge

entry.if.then13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %if.end6.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %cap_cd_wake.0.off05.i = phi i1 [ %cap_cd_wake.1.off0.i, %if.end6.i.for.body.i_crit_edge ], [ false, %entry.for.body.i_crit_edge ]
  %pm_flags.04.i = phi i32 [ %pm_flags.1.i, %if.end6.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.06.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.if.end6.i_crit_edge, label %if.then.i

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc.i, align 8
  %pm_flags1.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %pm_flags1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_flags1.i, align 4
  %or.i = or i32 %9, %pm_flags.04.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp ne i32 %and.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i1 true, i1 %cap_cd_wake.0.off05.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i, %for.body.i.if.end6.i_crit_edge
  %pm_flags.1.i = phi i32 [ %pm_flags.04.i, %for.body.i.if.end6.i_crit_edge ], [ %or.i, %if.then.i ]
  %cap_cd_wake.1.off0.i = phi i1 [ %cap_cd_wake.0.off05.i, %for.body.i.if.end6.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.end.i, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end6.i
  %12 = and i32 %pm_flags.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %.not.i = icmp eq i32 %12, 3
  br i1 %.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call.i = tail call i32 @device_wakeup_enable(ptr noundef %dev.i) #10
  br label %sdhci_pci_init_wakeup.exit

if.else.i:                                        ; preds = %for.end.i
  br i1 %cap_cd_wake.1.off0.i, label %if.else.i.sdhci_pci_init_wakeup.exit_crit_edge, label %if.else.i.if.then13.i_crit_edge

if.else.i.if.then13.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

if.else.i.sdhci_pci_init_wakeup.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_init_wakeup.exit

if.then13.i:                                      ; preds = %if.else.i.if.then13.i_crit_edge, %entry.if.then13.i_crit_edge
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call16.i = tail call i32 @device_wakeup_disable(ptr noundef %dev15.i) #10
  br label %sdhci_pci_init_wakeup.exit

sdhci_pci_init_wakeup.exit:                       ; preds = %if.then13.i, %if.else.i.sdhci_pci_init_wakeup.exit_crit_edge, %if.then11.i
  %17 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp46 = icmp sgt i32 %18, 0
  br i1 %cmp46, label %for.body.lr.ph, label %sdhci_pci_init_wakeup.exit.cleanup21_crit_edge

sdhci_pci_init_wakeup.exit.cleanup21_crit_edge:   ; preds = %sdhci_pci_init_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

for.body.lr.ph:                                   ; preds = %sdhci_pci_init_wakeup.exit
  %pm_retune = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.047
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %host1 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host1, align 4
  %23 = ptrtoint ptr %pm_retune to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pm_retune, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool2.not = icmp eq i8 %24, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %22, i32 0, i32 73
  %25 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp3.not = icmp eq i32 %26, 2
  br i1 %cmp3.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %22, i32 0, i32 10
  %27 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 29
  %29 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %30 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i37 = icmp eq i16 %30, 0
  br i1 %tobool.not.i37, label %if.then4.if.end5_crit_edge, label %if.then.i38

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i38:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 32
  %31 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i38, %if.then4.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @sdhci_suspend_host(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.047)
  %cmp1650.not = icmp eq i32 %i.047, 0
  br i1 %cmp1650.not, label %while.cond.preheader.cleanup21_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup21_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.end9:                                          ; preds = %if.end5
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 12, i32 1
  %34 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i39 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i39)
  %tobool.not.i40 = icmp sgt i16 %bf.load.i39, -1
  br i1 %tobool.not.i40, label %if.end9.for.inc_crit_edge, label %device_may_wakeup.exit

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

device_may_wakeup.exit:                           ; preds = %if.end9
  %wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 12, i32 6
  %35 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %36, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.for.inc_crit_edge, label %if.then11

device_may_wakeup.exit.for.inc_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mmc12 = getelementptr inbounds %struct.sdhci_host, ptr %22, i32 0, i32 10
  %37 = ptrtoint ptr %mmc12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc12, align 8
  %call13 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %38, i1 noundef zeroext true) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %device_may_wakeup.exit.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %39 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_slots.i, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup21_crit_edge

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec51.in = phi i32 [ %dec51, %while.body.while.body_crit_edge ], [ %i.047, %while.cond.preheader.while.body_crit_edge ]
  %dec51 = add nsw i32 %dec51.in, -1
  %arrayidx18 = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %dec51
  %41 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx18, align 4
  %host19 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host19, align 4
  %call20 = tail call i32 @sdhci_resume_host(ptr noundef %44) #10
  %cmp16 = icmp sgt i32 %dec51.in, 1
  br i1 %cmp16, label %while.body.while.body_crit_edge, label %while.body.cleanup21_crit_edge

while.body.cleanup21_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup21:                                        ; preds = %while.body.cleanup21_crit_edge, %for.inc.cleanup21_crit_edge, %while.cond.preheader.cleanup21_crit_edge, %sdhci_pci_init_wakeup.exit.cleanup21_crit_edge
  %retval.0 = phi i32 [ %call6, %while.cond.preheader.cleanup21_crit_edge ], [ 0, %sdhci_pci_init_wakeup.exit.cleanup21_crit_edge ], [ %call6, %while.body.cleanup21_crit_edge ], [ 0, %for.inc.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @syskt_probe(ptr nocapture noundef readonly %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %class = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = and i32 %3, -256
  %4 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and3, ptr %class, align 8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %class5 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %class5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %class5, align 8
  %or = or i32 %8, 1
  store i32 %or, ptr %class5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syskt_probe_slot(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 528
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %ioaddr5 = getelementptr inbounds %struct.sdhci_host, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr5, align 16
  %add.ptr6 = getelementptr i8, ptr %8, i32 529
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %10 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slot, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv = zext i8 %4 to i32
  %14 = lshr i32 %conv, 4
  %and = and i32 %conv, 15
  %conv11 = zext i8 %9 to i32
  %15 = lshr i32 %conv11, 4
  %and14 = and i32 %conv11, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %14, i32 noundef %and, i32 noundef %15, i32 noundef %and14) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp = icmp ugt i8 %9, 31
  br i1 %cmp, label %if.then, label %entry.do.body18_crit_edge

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks, align 4
  %or = or i32 %19, 2
  store i32 %or, ptr %quirks, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then, %entry.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %ioaddr22 = getelementptr inbounds %struct.sdhci_host, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr22, align 16
  %add.ptr23 = getelementptr i8, ptr %23, i32 524
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 -17) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %ioaddr28 = getelementptr inbounds %struct.sdhci_host, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr28, align 16
  %add.ptr29 = getelementptr i8, ptr %27, i32 525
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 -128) #10, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 10737400) #10
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %ioaddr34 = getelementptr inbounds %struct.sdhci_host, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ioaddr34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr34, align 16
  %add.ptr35 = getelementptr i8, ptr %32, i32 526
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %34 = and i16 %33, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not = icmp eq i16 %34, 0
  br i1 %tobool.not, label %if.end42, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %do.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #10
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  %ioaddr34.1 = getelementptr inbounds %struct.sdhci_host, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ioaddr34.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr34.1, align 16
  %add.ptr35.1 = getelementptr i8, ptr %39, i32 526
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.1) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %41 = and i16 %40, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.1 = icmp eq i16 %41, 0
  br i1 %tobool.not.1, label %if.end42.1, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.1:                                       ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 21474800) #10
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  %ioaddr34.2 = getelementptr inbounds %struct.sdhci_host, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ioaddr34.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr34.2, align 16
  %add.ptr35.2 = getelementptr i8, ptr %46, i32 526
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.2) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %48 = and i16 %47, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.2 = icmp eq i16 %48, 0
  br i1 %tobool.not.2, label %if.end42.2, label %if.end42.1.cleanup_crit_edge

if.end42.1.cleanup_crit_edge:                     ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.2:                                       ; preds = %if.end42.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #10
  %50 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %host, align 4
  %ioaddr34.3 = getelementptr inbounds %struct.sdhci_host, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr34.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr34.3, align 16
  %add.ptr35.3 = getelementptr i8, ptr %53, i32 526
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.3) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %55 = and i16 %54, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.3 = icmp eq i16 %55, 0
  br i1 %tobool.not.3, label %if.end42.3, label %if.end42.2.cleanup_crit_edge

if.end42.2.cleanup_crit_edge:                     ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.3:                                       ; preds = %if.end42.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 21474800) #10
  %57 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host, align 4
  %ioaddr34.4 = getelementptr inbounds %struct.sdhci_host, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ioaddr34.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr34.4, align 16
  %add.ptr35.4 = getelementptr i8, ptr %60, i32 526
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.4) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %62 = and i16 %61, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.4 = icmp eq i16 %62, 0
  br i1 %tobool.not.4, label %if.end42.4, label %if.end42.3.cleanup_crit_edge

if.end42.3.cleanup_crit_edge:                     ; preds = %if.end42.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.4:                                       ; preds = %if.end42.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 21474800) #10
  %64 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host, align 4
  %ioaddr34.5 = getelementptr inbounds %struct.sdhci_host, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ioaddr34.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr34.5, align 16
  %add.ptr35.5 = getelementptr i8, ptr %67, i32 526
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.5) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %69 = and i16 %68, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.5 = icmp eq i16 %69, 0
  br i1 %tobool.not.5, label %if.end42.5, label %if.end42.4.cleanup_crit_edge

if.end42.4.cleanup_crit_edge:                     ; preds = %if.end42.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.5:                                       ; preds = %if.end42.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 21474800) #10
  %71 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %host, align 4
  %ioaddr34.6 = getelementptr inbounds %struct.sdhci_host, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ioaddr34.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr34.6, align 16
  %add.ptr35.6 = getelementptr i8, ptr %74, i32 526
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.6) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %76 = and i16 %75, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.6 = icmp eq i16 %76, 0
  br i1 %tobool.not.6, label %if.end42.6, label %if.end42.5.cleanup_crit_edge

if.end42.5.cleanup_crit_edge:                     ; preds = %if.end42.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.6:                                       ; preds = %if.end42.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 21474800) #10
  %78 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host, align 4
  %ioaddr34.7 = getelementptr inbounds %struct.sdhci_host, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ioaddr34.7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioaddr34.7, align 16
  %add.ptr35.7 = getelementptr i8, ptr %81, i32 526
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.7) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %83 = and i16 %82, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.7 = icmp eq i16 %83, 0
  br i1 %tobool.not.7, label %if.end42.7, label %if.end42.6.cleanup_crit_edge

if.end42.6.cleanup_crit_edge:                     ; preds = %if.end42.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.7:                                       ; preds = %if.end42.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 21474800) #10
  %85 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %host, align 4
  %ioaddr34.8 = getelementptr inbounds %struct.sdhci_host, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %ioaddr34.8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ioaddr34.8, align 16
  %add.ptr35.8 = getelementptr i8, ptr %88, i32 526
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.8) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %90 = and i16 %89, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.8 = icmp eq i16 %90, 0
  br i1 %tobool.not.8, label %if.end42.8, label %if.end42.7.cleanup_crit_edge

if.end42.7.cleanup_crit_edge:                     ; preds = %if.end42.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.8:                                       ; preds = %if.end42.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 21474800) #10
  %92 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %host, align 4
  %ioaddr34.9 = getelementptr inbounds %struct.sdhci_host, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ioaddr34.9 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioaddr34.9, align 16
  %add.ptr35.9 = getelementptr i8, ptr %95, i32 526
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.9) #10, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %97 = and i16 %96, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.9 = icmp eq i16 %97, 0
  br i1 %tobool.not.9, label %if.end42.9, label %if.end42.8.cleanup_crit_edge

if.end42.8.cleanup_crit_edge:                     ; preds = %if.end42.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.9:                                       ; preds = %if.end42.8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 21474800) #10
  %99 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %slot, align 128
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %host, align 4
  %ioaddr58 = getelementptr inbounds %struct.sdhci_host, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %ioaddr58 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr58, align 16
  %add.ptr59 = getelementptr i8, ptr %106, i32 525
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 0) #10, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %if.end42.9, %if.end42.8.cleanup_crit_edge, %if.end42.7.cleanup_crit_edge, %if.end42.6.cleanup_crit_edge, %if.end42.5.cleanup_crit_edge, %if.end42.4.cleanup_crit_edge, %if.end42.3.cleanup_crit_edge, %if.end42.2.cleanup_crit_edge, %if.end42.1.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end42.9 ], [ 0, %if.end42.8.cleanup_crit_edge ], [ 0, %if.end42.7.cleanup_crit_edge ], [ 0, %if.end42.6.cleanup_crit_edge ], [ 0, %if.end42.5.cleanup_crit_edge ], [ 0, %if.end42.4.cleanup_crit_edge ], [ 0, %if.end42.3.cleanup_crit_edge ], [ 0, %if.end42.2.cleanup_crit_edge ], [ 0, %if.end42.1.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %do.body18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @via_probe(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp = icmp eq i8 %3, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %or = or i32 %5, 8388608
  store i32 %or, ptr %quirks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtsx_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %or = or i32 %5, 96
  store i32 %or, ptr %caps2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mrst_hc_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 64
  store i32 %or, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mrst_hc_probe(ptr nocapture noundef writeonly %chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_slots, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mfd_sdio_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 16640
  store i32 %or, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mfd_emmc_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 320
  store i32 %or, ptr %caps, align 32
  %6 = load ptr, ptr %host, align 4
  %mmc2 = getelementptr inbounds %struct.sdhci_host, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc2, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps2, align 4
  %or3 = or i32 %10, 1
  store i32 %or3, ptr %caps2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_hc_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 64
  store i32 %or, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_emmc_probe_slot(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @byt_probe_slot(ptr noundef %slot)
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, -1610607808
  store i32 %or, ptr %caps, align 32
  %hw_reset = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 4
  %6 = ptrtoint ptr %hw_reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sdhci_pci_int_hw_reset, ptr %hw_reset, align 16
  %7 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slot, align 128
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8852, i16 %12)
  %cmp = icmp eq i16 %12, 8852
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %timeout_clk = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %timeout_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %timeout_clk, align 128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %select_drive_strength = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 11, i32 19
  %18 = ptrtoint ptr %select_drive_strength to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @intel_select_drive_strength, ptr %select_drive_strength, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_add_host(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call i32 @sdhci_add_host(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @byt_add_debugfs(ptr noundef %slot)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @byt_remove_slot(ptr nocapture noundef readonly %slot, i32 noundef %dead) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc1, align 8
  %slotno = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 59
  %4 = ptrtoint ptr %slotno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slotno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %11, label %if.end.i [
    i16 3860, label %if.then.if.end_crit_edge
    i16 3920, label %if.then.if.end_crit_edge3
    i16 3861, label %if.then.if.end_crit_edge4
    i16 3862, label %if.then.if.end_crit_edge5
    i16 8852, label %if.then.if.end_crit_edge6
    i16 8853, label %if.then.if.end_crit_edge7
    i16 8854, label %if.then.if.end_crit_edge8
  ]

if.then.if.end_crit_edge8:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge7:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge6:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge5:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge4:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge3:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @dev_pm_qos_hide_latency_tolerance(ptr noundef %dev1.i) #10
  %set_latency_tolerance.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 12, i32 27
  %13 = ptrtoint ptr %set_latency_tolerance.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %set_latency_tolerance.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge3, %if.then.if.end_crit_edge4, %if.then.if.end_crit_edge5, %if.then.if.end_crit_edge6, %if.then.if.end_crit_edge7, %if.then.if.end_crit_edge8, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.i = icmp sgt i32 %1, 0
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.sdhci_pci_resume_host.exit_crit_edge

entry.sdhci_pci_resume_host.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_resume_host.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.015.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %call.i = tail call i32 @sdhci_resume_host(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.sdhci_pci_resume_host.exit_crit_edge

if.end.i.sdhci_pci_resume_host.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_resume_host.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc.i, align 8
  %call5.i = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %9, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %10 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdhci_pci_resume_host.exit_crit_edge

for.inc.i.sdhci_pci_resume_host.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_resume_host.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sdhci_pci_resume_host.exit:                       ; preds = %for.inc.i.sdhci_pci_resume_host.exit_crit_edge, %if.end.i.sdhci_pci_resume_host.exit_crit_edge, %entry.sdhci_pci_resume_host.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sdhci_pci_resume_host.exit_crit_edge ], [ %call.i, %if.end.i.sdhci_pci_resume_host.exit_crit_edge ], [ 0, %for.inc.i.sdhci_pci_resume_host.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_runtime_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.i = icmp sgt i32 %1, 0
  br i1 %cmp11.i, label %entry.for.body.i_crit_edge, label %entry.sdhci_pci_runtime_resume_host.exit_crit_edge

entry.sdhci_pci_runtime_resume_host.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_runtime_resume_host.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.012.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %call.i = tail call i32 @sdhci_runtime_resume_host(ptr noundef %5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.sdhci_pci_runtime_resume_host.exit_crit_edge

if.end.i.sdhci_pci_runtime_resume_host.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_runtime_resume_host.exit

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %6 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdhci_pci_runtime_resume_host.exit_crit_edge

for.inc.i.sdhci_pci_runtime_resume_host.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_pci_runtime_resume_host.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sdhci_pci_runtime_resume_host.exit:               ; preds = %for.inc.i.sdhci_pci_runtime_resume_host.exit_crit_edge, %if.end.i.sdhci_pci_runtime_resume_host.exit_crit_edge, %entry.sdhci_pci_runtime_resume_host.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sdhci_pci_runtime_resume_host.exit_crit_edge ], [ %call.i, %if.end.i.sdhci_pci_runtime_resume_host.exit_crit_edge ], [ 0, %for.inc.i.sdhci_pci_runtime_resume_host.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @byt_probe_slot(ptr noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %mmc3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %mmc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc3, align 8
  %d3_retune.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 1, i32 2
  %8 = ptrtoint ptr %d3_retune.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %d3_retune.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_dsm_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byt_probe_slot, %if.then5.i.i)) #10
          to label %byt_read_dsm.exit [label %if.then5.i.i], !srcloc !202

if.then5.i.i:                                     ; preds = %entry
  %init_name.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then5.i.i.dev_name.exit.i.i_crit_edge

if.then5.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev.i.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then5.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i1.i.i = phi ptr [ %12, %if.end.i.i.i ], [ %10, %if.then5.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_dsm_init.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i1.i.i, i32 noundef -95) #10
  br label %byt_read_dsm.exit

byt_read_dsm.exit:                                ; preds = %dev_name.exit.i.i, %entry
  %13 = ptrtoint ptr %d3_retune.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %d3_retune.i.i, align 4, !range !204
  %15 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slot, align 128
  %rpm_retune.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %rpm_retune.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %rpm_retune.i, align 2
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 11, i32 12
  %18 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @intel_execute_tuning, ptr %execute_tuning, align 4
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 11, i32 10
  %19 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @intel_start_signal_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 6
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %f_max, i32 noundef 1) #10
  %slotno = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 59
  %20 = ptrtoint ptr %slotno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slotno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then, label %byt_read_dsm.exit.if.end_crit_edge

byt_read_dsm.exit.if.end_crit_edge:               ; preds = %byt_read_dsm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %byt_read_dsm.exit
  %22 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slot, align 128
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %slot, ptr %slots, align 4
  %25 = load ptr, ptr %slot, align 128
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device.i.i, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %29, label %if.end.i [
    i16 3860, label %if.then.if.end_crit_edge
    i16 3920, label %if.then.if.end_crit_edge19
    i16 3861, label %if.then.if.end_crit_edge20
    i16 3862, label %if.then.if.end_crit_edge21
    i16 8852, label %if.then.if.end_crit_edge22
    i16 8853, label %if.then.if.end_crit_edge23
    i16 8854, label %if.then.if.end_crit_edge24
  ]

if.then.if.end_crit_edge24:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge23:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge22:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge21:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge20:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge19:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %set_latency_tolerance.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 12, i32 27
  %31 = ptrtoint ptr %set_latency_tolerance.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @intel_ltr_set, ptr %set_latency_tolerance.i, align 4
  %call2.i = tail call i32 @dev_pm_qos_expose_latency_tolerance(ptr noundef %dev1.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge19, %if.then.if.end_crit_edge20, %if.then.if.end_crit_edge21, %if.then.if.end_crit_edge22, %if.then.if.end_crit_edge23, %if.then.if.end_crit_edge24, %byt_read_dsm.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pci_int_hw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !220

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i8 %3(ptr noundef %host, i32 noundef 41) #10
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 41
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %6, %if.else.i ]
  %7 = or i8 %retval.0.i, 16
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i10 = icmp eq ptr %11, null
  br i1 %tobool.not.i10, label %do.body.i, label %if.then.i11, !prof !220

if.then.i11:                                      ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %11(ptr noundef %host, i8 noundef zeroext %7, i32 noundef 41) #10
  br label %sdhci_writeb.exit

do.body.i:                                        ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %ioaddr.i12 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i12, align 16
  %add.ptr.i13 = getelementptr i8, ptr %13, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 %7) #10, !srcloc !212
  br label %sdhci_writeb.exit

sdhci_writeb.exit:                                ; preds = %do.body.i, %if.then.i11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1932732) #10
  %15 = and i8 %retval.0.i, -17
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_b.i15 = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write_b.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_b.i15, align 4
  %tobool.not.i16 = icmp eq ptr %19, null
  br i1 %tobool.not.i16, label %do.body.i20, label %if.then.i17, !prof !220

if.then.i17:                                      ; preds = %sdhci_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %host, i8 noundef zeroext %15, i32 noundef 41) #10
  br label %sdhci_writeb.exit21

do.body.i20:                                      ; preds = %sdhci_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %ioaddr.i18 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i18, align 16
  %add.ptr.i19 = getelementptr i8, ptr %21, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 %15) #10, !srcloc !212
  br label %sdhci_writeb.exit21

sdhci_writeb.exit21:                              ; preds = %do.body.i20, %if.then.i17
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @intel_select_drive_strength(ptr nocapture noundef readonly %card, i32 noundef %max_dtr, i32 noundef %host_drv, i32 noundef %card_drv, ptr nocapture noundef readnone %drv_type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %drv_strength = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 42, i32 1
  %2 = ptrtoint ptr %drv_strength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drv_strength, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %card_drv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 %3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @sdhci_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %0 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %fn.0 = phi i32 [ 3, %sw.bb4 ], [ 4, %if.end.sw.epilog_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_start_signal_voltage_switch.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_start_signal_voltage_switch, %if.then10)) #10
          to label %cleanup [label %if.then10], !srcloc !202

if.then10:                                        ; preds = %sw.epilog
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then10.dev_name.exit_crit_edge
  %retval.0.i28 = phi ptr [ %6, %if.end.i ], [ %4, %if.then10.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_start_signal_voltage_switch.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i28, ptr noundef nonnull @.str.24, i32 noundef %fn.0, i32 noundef -95, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_start_signal_voltage_switch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_ltr_set(ptr noundef %dev, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slots, align 4
  %host2 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 2052
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !205
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %val)
  %10 = icmp ugt i32 %val, 2147483646
  br i1 %10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %9, -32769
  br label %if.end19

if.else:                                          ; preds = %entry
  %or = and i32 %9, -36864
  %and7 = or i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %val)
  %cmp9 = icmp ugt i32 %val, 1023
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %shr52 = lshr i32 %val, 5
  %11 = tail call i32 @llvm.umin.i32(i32 %shr52, i32 1023)
  %or13 = or i32 %11, %and7
  %or14 = or i32 %or13, 3072
  br label %if.end19

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %or16 = or i32 %and7, %val
  %or17 = or i32 %or16, 2048
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then10, %if.then
  %ltr.0 = phi i32 [ %and, %if.then ], [ %or14, %if.then10 ], [ %or17, %if.else15 ]
  %active_ltr = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 1, i32 5
  %12 = ptrtoint ptr %active_ltr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_ltr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ltr.0, i32 %13)
  %cmp20 = icmp eq i32 %ltr.0, %13
  br i1 %cmp20, label %if.end19.out_crit_edge, label %do.body

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %ltr.0)
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr, align 16
  %add.ptr24 = getelementptr i8, ptr %16, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #10, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 16
  %add.ptr29 = getelementptr i8, ptr %18, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %14) #10, !srcloc !225
  %19 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host2, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %22, i32 2052
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !205
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %25 = ptrtoint ptr %active_ltr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %active_ltr, align 4
  %26 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr7.i = getelementptr i8, ptr %27, i32 2056
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !205
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %idle_ltr.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 1, i32 5, i32 4
  %30 = ptrtoint ptr %idle_ltr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %idle_ltr.i, align 4
  br label %out

out:                                              ; preds = %do.body, %if.end19.out_crit_edge
  %call.i51 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_latency_tolerance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @byt_add_debugfs(ptr noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %5, label %if.end [
    i16 3860, label %entry.cleanup_crit_edge
    i16 3920, label %entry.cleanup_crit_edge11
    i16 3861, label %entry.cleanup_crit_edge12
    i16 3862, label %entry.cleanup_crit_edge13
    i16 8852, label %entry.cleanup_crit_edge14
    i16 8853, label %entry.cleanup_crit_edge15
    i16 8854, label %entry.cleanup_crit_edge16
  ]

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc1, align 8
  %debugfs_root = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 55
  %11 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root, align 8
  %active_ltr = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 1, i32 5
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.26, i16 noundef zeroext 292, ptr noundef %12, ptr noundef %active_ltr) #10
  %idle_ltr = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 1, i32 5, i32 4
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.27, i16 noundef zeroext 292, ptr noundef %12, ptr noundef %idle_ltr) #10
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %16, i32 2052
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !205
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %19 = ptrtoint ptr %active_ltr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %active_ltr, align 4
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr7.i = getelementptr i8, ptr %21, i32 2056
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !205
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %24 = ptrtoint ptr %idle_ltr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %idle_ltr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13, %entry.cleanup_crit_edge14, %entry.cleanup_crit_edge15, %entry.cleanup_crit_edge16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_hide_latency_tolerance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_intel_set_power(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i33 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %needs_pwr_off = getelementptr inbounds %struct.intel_host, ptr %private.i33, i32 0, i32 4
  %0 = ptrtoint ptr %needs_pwr_off to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_pwr_off, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %needs_pwr_off to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %needs_pwr_off, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp.not = icmp eq i8 %mode, 0
  br i1 %cmp.not, label %if.end5.thread, label %if.then4

if.end5.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sdhci_set_power(ptr noundef %host, i8 noundef zeroext 0, i16 noundef zeroext %vdd) #10
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !220

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %6(ptr noundef %host, i8 noundef zeroext 0, i32 noundef 41) #10
  br label %if.end5.thread49

do.body.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %8, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #10, !srcloc !212
  br label %if.end5.thread49

if.end5.thread49:                                 ; preds = %do.body.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #10
  tail call void @sdhci_set_power(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #10
  br label %for.cond.preheader

if.end5:                                          ; preds = %entry
  tail call void @sdhci_set_power(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp7 = icmp eq i8 %mode, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end5.for.cond.preheader_crit_edge

if.end5.for.cond.preheader_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end5.for.cond.preheader_crit_edge, %if.end5.thread49
  %ops.i34 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %ioaddr.i37 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %sdhci_writeb.exit46.for.body_crit_edge, %for.cond.preheader
  %cntr.048 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %sdhci_writeb.exit46.for.body_crit_edge ]
  %9 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i34, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i35 = icmp eq ptr %12, null
  br i1 %tobool.not.i35, label %if.else.i, label %if.then.i36, !prof !220

if.then.i36:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i8 %12(ptr noundef %host, i32 noundef 41) #10
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ioaddr.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i37, align 16
  %add.ptr.i38 = getelementptr i8, ptr %14, i32 41
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i38) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i36
  %retval.0.i = phi i8 [ %call.i, %if.then.i36 ], [ %15, %if.else.i ]
  %16 = and i8 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %if.end17, label %sdhci_readb.exit.cleanup_crit_edge

sdhci_readb.exit.cleanup_crit_edge:               ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %sdhci_readb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #10
  %or = or i8 %retval.0.i, 1
  %18 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i34, align 4
  %write_b.i40 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %write_b.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_b.i40, align 4
  %tobool.not.i41 = icmp eq ptr %21, null
  br i1 %tobool.not.i41, label %do.body.i45, label %if.then.i42, !prof !220

if.then.i42:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %host, i8 noundef zeroext %or, i32 noundef 41) #10
  br label %sdhci_writeb.exit46

do.body.i45:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %ioaddr.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i37, align 16
  %add.ptr.i44 = getelementptr i8, ptr %23, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i44, i8 %or) #10, !srcloc !212
  br label %sdhci_writeb.exit46

sdhci_writeb.exit46:                              ; preds = %do.body.i45, %if.then.i42
  %inc = add nuw nsw i32 %cntr.048, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %sdhci_writeb.exit46.cleanup_crit_edge, label %sdhci_writeb.exit46.for.body_crit_edge

sdhci_writeb.exit46.for.body_crit_edge:           ; preds = %sdhci_writeb.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sdhci_writeb.exit46.cleanup_crit_edge:            ; preds = %sdhci_writeb.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sdhci_writeb.exit46.cleanup_crit_edge, %sdhci_readb.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end5.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_intel_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timing.off = add i32 %timing, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timing.off)
  %switch = icmp ult i32 %timing.off, 2
  %spec.select = select i1 %switch, i32 4, i32 %timing
  tail call void @sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %spec.select) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pci_hw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_reset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 4
  %0 = ptrtoint ptr %hw_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_reset, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %host) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_byt_sdio_probe_slot(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @byt_probe_slot(ptr noundef %slot)
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 17152
  store i32 %or, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_sdio_probe_slot(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @byt_probe_slot(ptr noundef %slot)
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 17152
  store i32 %or, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_sd_probe_slot(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @byt_probe_slot(ptr noundef %slot)
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 268436096
  store i32 %or, ptr %caps, align 32
  %cd_idx = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 2
  %6 = ptrtoint ptr %cd_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cd_idx, align 8
  %cd_override_level = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 3
  %7 = ptrtoint ptr %cd_override_level to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cd_override_level, align 4
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %13, label %entry.if.end_crit_edge [
    i16 2762, label %entry.if.then_crit_edge
    i16 6858, label %entry.if.then_crit_edge50
    i16 23242, label %entry.if.then_crit_edge51
    i16 12746, label %entry.if.then_crit_edge52
  ]

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge50, %entry.if.then_crit_edge51, %entry.if.then_crit_edge52
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %get_cd = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 6
  %17 = ptrtoint ptr %get_cd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bxt_get_cd, ptr %get_cd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slot, align 128
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4243, i16 %23)
  %cmp26 = icmp eq i16 %23, 4243
  br i1 %cmp26, label %land.lhs.true, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30947, i16 %25)
  %cmp31 = icmp eq i16 %25, 30947
  br i1 %cmp31, label %if.then33, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %mmc35 = getelementptr inbounds %struct.sdhci_host, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %mmc35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc35, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps2, align 4
  %or36 = or i32 %31, 33554432
  store i32 %or36, ptr %caps2, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %land.lhs.true.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %read_b.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %read_b.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_b.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !220

if.then.i.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i8 %37(ptr noundef %33, i32 noundef 41) #10
  br label %byt_needs_pwr_off.exit

if.else.i.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %33, i32 0, i32 4
  %38 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 41
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  br label %byt_needs_pwr_off.exit

byt_needs_pwr_off.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %call.i.i, %if.then.i.i ], [ %40, %if.else.i.i ]
  %private.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 6
  %41 = and i8 %retval.0.i.i, 1
  %needs_pwr_off.i = getelementptr inbounds %struct.intel_host, ptr %private.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %needs_pwr_off.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %needs_pwr_off.i, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bxt_get_cd(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @sdhci_get_cd_nogpio(ptr noundef %mmc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_get_cd_nogpio(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @intel_mrfld_mmc_probe_slot(ptr nocapture noundef %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %and = and i32 %5, 7
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge19
    i32 2, label %sw.bb1
    i32 3, label %sw.bb5
  ]

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge19
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 32
  %or = or i32 %12, 4416
  store i32 %or, ptr %caps, align 32
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cd_idx = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 2
  %13 = ptrtoint ptr %cd_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cd_idx, align 8
  %cd_override_level = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 3
  %14 = ptrtoint ptr %cd_override_level to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %cd_override_level, align 4
  %host2 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %15 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host2, align 4
  %get_cd = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 6
  %17 = ptrtoint ptr %get_cd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mrfld_get_cd, ptr %get_cd, align 4
  %18 = load ptr, ptr %host2, align 4
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks2, align 8
  %or4 = or i32 %20, 4
  store i32 %or4, ptr %quirks2, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host6 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %21 = ptrtoint ptr %host6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host6, align 4
  %ocr_mask = getelementptr inbounds %struct.sdhci_host, ptr %22, i32 0, i32 63
  %23 = ptrtoint ptr %ocr_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 384, ptr %ocr_mask, align 64
  %24 = load ptr, ptr %host6, align 4
  %mmc8 = getelementptr inbounds %struct.sdhci_host, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %mmc8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmc8, align 8
  %caps9 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %caps9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps9, align 32
  %or10 = or i32 %28, 16640
  store i32 %or10, ptr %caps9, align 32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrfld_get_cd(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdhci_get_cd_nogpio(ptr noundef %mmc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glk_emmc_probe_slot(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @byt_probe_slot(ptr noundef %slot) #10
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc.i, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 32
  %or.i = or i32 %5, -1610607808
  store i32 %or.i, ptr %caps.i, align 32
  %hw_reset.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 4
  %6 = ptrtoint ptr %hw_reset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sdhci_pci_int_hw_reset, ptr %hw_reset.i, align 16
  %7 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slot, align 128
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8852, i16 %12)
  %cmp.i = icmp eq i16 %12, 8852
  br i1 %cmp.i, label %if.then.i, label %entry.byt_emmc_probe_slot.exit_crit_edge

entry.byt_emmc_probe_slot.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %byt_emmc_probe_slot.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host.i, align 4
  %timeout_clk.i = getelementptr inbounds %struct.sdhci_host, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %timeout_clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %timeout_clk.i, align 128
  br label %byt_emmc_probe_slot.exit

byt_emmc_probe_slot.exit:                         ; preds = %if.then.i, %entry.byt_emmc_probe_slot.exit_crit_edge
  %16 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host.i, align 4
  %select_drive_strength.i = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 11, i32 19
  %18 = ptrtoint ptr %select_drive_strength.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @intel_select_drive_strength, ptr %select_drive_strength.i, align 4
  %19 = load ptr, ptr %host.i, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps2, align 4
  %or = or i32 %23, 8388608
  store i32 %or, ptr %caps2, align 4
  %24 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slot, align 128
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12748, i16 %29)
  %cmp.not = icmp eq i16 %29, 12748
  br i1 %cmp.not, label %byt_emmc_probe_slot.exit.if.end13_crit_edge, label %if.then3

byt_emmc_probe_slot.exit.if.end13_crit_edge:      ; preds = %byt_emmc_probe_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then3:                                         ; preds = %byt_emmc_probe_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host.i, align 4
  %mmc5 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %mmc5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmc5, align 8
  %caps26 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %caps26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps26, align 4
  %or7 = or i32 %35, 1048576
  store i32 %or7, ptr %caps26, align 4
  %36 = load ptr, ptr %host.i, align 4
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %36, i32 0, i32 11, i32 18
  %37 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @intel_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  %38 = load ptr, ptr %host.i, align 4
  %mmc10 = getelementptr inbounds %struct.sdhci_host, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %mmc10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmc10, align 8
  %caps211 = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %caps211 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %caps211, align 4
  %or12 = or i32 %42, 16777216
  store i32 %or12, ptr %caps211, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %byt_emmc_probe_slot.exit.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glk_emmc_add_host(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %host2 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  %call = tail call i32 @sdhci_setup_host(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup21_crit_edge

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 248, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 512
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %mmio, align 4
  %quirks = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %quirks, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @glk_cqhci_ops, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 16
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %or10 = or i32 %15, 1
  store i32 %or10, ptr %caps, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 8
  %call13 = tail call i32 @cqhci_init(ptr noundef nonnull %call.i, ptr noundef %17, i1 noundef zeroext %tobool7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @__sdhci_add_host(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @byt_add_debugfs(ptr noundef %slot)
  br label %cleanup21

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %5) #10
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup, %if.end20, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ 0, %if.end20 ], [ %call, %entry.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cqhci_suspend(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slots, align 4
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @sdhci_pci_suspend_host(ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cqhci_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.i = icmp sgt i32 %1, 0
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.015.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %call.i = tail call i32 @sdhci_resume_host(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc.i, align 8
  %call5.i = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %9, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %10 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %12 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slots, align 4
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 8
  %call1 = tail call i32 @cqhci_resume(ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glk_runtime_suspend(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12748, i16 %3)
  %cmp.i = icmp eq i16 %3, 12748
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.glk_rpm_retune_chk.exit_crit_edge

entry.glk_rpm_retune_chk.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %glk_rpm_retune_chk.exit

land.lhs.true.i:                                  ; preds = %entry
  %rpm_retune.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %rpm_retune.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rpm_retune.i, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.glk_rpm_retune_chk.exit_crit_edge

land.lhs.true.i.glk_rpm_retune_chk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %glk_rpm_retune_chk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %slots.i.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slots.i.i, align 4
  %private.i.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 0, i32 6
  %host1.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %host1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host1.i.i, align 4
  %rpm_retune_ok.i.i = getelementptr inbounds %struct.intel_host, ptr %private.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %rpm_retune_ok.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rpm_retune_ok.i.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.glk_rpm_retune_chk.exit_crit_edge

if.then.i.glk_rpm_retune_chk.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %glk_rpm_retune_chk.exit

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %mmc.i.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i.i, align 8
  %can_retune.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %can_retune.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i.i = load i16, ptr %can_retune.i.i.i, align 8
  %15 = and i16 %bf.load.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.not.i.i = icmp eq i16 %15, 0
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i.glk_rpm_retune_chk.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.glk_rpm_retune_chk.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %glk_rpm_retune_chk.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %ops.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !220

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 %19(ptr noundef %9, i32 noundef 2100) #10
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 2100
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !205
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %23, %if.else.i.i.i ]
  %24 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i106.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i106.i.i, label %if.else.i111.i.i, label %if.then.i108.i.i, !prof !220

if.then.i108.i.i:                                 ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i107.i.i = tail call i32 %27(ptr noundef %9, i32 noundef 2112) #10
  br label %sdhci_readl.exit113.i.i

if.else.i111.i.i:                                 ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i109.i.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i109.i.i, align 16
  %add.ptr.i110.i.i = getelementptr i8, ptr %29, i32 2112
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i.i) #10, !srcloc !205
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %sdhci_readl.exit113.i.i

sdhci_readl.exit113.i.i:                          ; preds = %if.else.i111.i.i, %if.then.i108.i.i
  %retval.0.i112.i.i = phi i32 [ %call.i107.i.i, %if.then.i108.i.i ], [ %31, %if.else.i111.i.i ]
  %glk_rx_ctrl17.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 1, i32 3
  %32 = ptrtoint ptr %glk_rx_ctrl17.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i.i, ptr %glk_rx_ctrl17.i.i, align 4
  %glk_tun_val8.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 1, i32 4
  %33 = ptrtoint ptr %glk_tun_val8.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i112.i.i, ptr %glk_tun_val8.i.i, align 4
  br label %glk_rpm_retune_chk.exit

glk_rpm_retune_chk.exit:                          ; preds = %sdhci_readl.exit113.i.i, %lor.lhs.false.i.i.glk_rpm_retune_chk.exit_crit_edge, %if.then.i.glk_rpm_retune_chk.exit_crit_edge, %land.lhs.true.i.glk_rpm_retune_chk.exit_crit_edge, %entry.glk_rpm_retune_chk.exit_crit_edge
  %slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %34 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slots.i, align 4
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmc.i, align 8
  %call.i.i = tail call i32 @cqhci_deactivate(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i2 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i2, label %if.end.i, label %glk_rpm_retune_chk.exit.sdhci_cqhci_runtime_suspend.exit_crit_edge

glk_rpm_retune_chk.exit.sdhci_cqhci_runtime_suspend.exit_crit_edge: ; preds = %glk_rpm_retune_chk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_cqhci_runtime_suspend.exit

if.end.i:                                         ; preds = %glk_rpm_retune_chk.exit
  %num_slots.i.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %40 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp30.i.i = icmp sgt i32 %41, 0
  br i1 %cmp30.i.i, label %for.body.lr.ph.i.i, label %if.end.i.sdhci_cqhci_runtime_suspend.exit_crit_edge

if.end.i.sdhci_cqhci_runtime_suspend.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_cqhci_runtime_suspend.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %rpm_retune.i.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.031.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.031.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i3 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i3, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i5

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i5:                                      ; preds = %for.body.i.i
  %host1.i.i4 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %host1.i.i4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host1.i.i4, align 4
  %call.i4.i = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool2.not.i.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.end.i.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031.i.i)
  %cmp934.not.i.i = icmp eq i32 %i.031.i.i, 0
  br i1 %cmp934.not.i.i, label %while.cond.preheader.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_cqhci_runtime_suspend.exit

if.end4.i.i:                                      ; preds = %if.end.i.i5
  %46 = ptrtoint ptr %rpm_retune.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rpm_retune.i.i, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool5.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool5.not.i.i, label %if.end4.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i.i
  %tuning_mode.i.i = getelementptr inbounds %struct.sdhci_host, ptr %45, i32 0, i32 73
  %48 = ptrtoint ptr %tuning_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tuning_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp6.not.i.i = icmp eq i32 %49, 2
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then7.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  %mmc.i.i6 = getelementptr inbounds %struct.sdhci_host, ptr %45, i32 0, i32 10
  %50 = ptrtoint ptr %mmc.i.i6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmc.i.i6, align 8
  %can_retune.i.i.i7 = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 29
  %52 = ptrtoint ptr %can_retune.i.i.i7 to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i.i.i8 = load i16, ptr %can_retune.i.i.i7, align 8
  %53 = and i16 %bf.load.i.i.i8, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i.i.i9 = icmp eq i16 %53, 0
  br i1 %tobool.not.i.i.i9, label %if.then7.i.i.for.inc.i.i_crit_edge, label %if.then.i.i.i10

if.then7.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i.i10:                                  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 32
  %54 = ptrtoint ptr %need_retune.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %need_retune.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i.i10, %if.then7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end4.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %55 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_slots.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %56
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge

for.inc.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_cqhci_runtime_suspend.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec35.in.i.i = phi i32 [ %dec35.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %i.031.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec35.i.i = add nsw i32 %dec35.in.i.i, -1
  %arrayidx11.i.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %dec35.i.i
  %57 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx11.i.i, align 4
  %host12.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %host12.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host12.i.i, align 4
  %call13.i.i = tail call i32 @sdhci_runtime_resume_host(ptr noundef %60, i32 noundef 0) #10
  %cmp9.i.i = icmp sgt i32 %dec35.in.i.i, 1
  br i1 %cmp9.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge

while.body.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_cqhci_runtime_suspend.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

sdhci_cqhci_runtime_suspend.exit:                 ; preds = %while.body.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge, %for.inc.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge, %while.cond.preheader.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge, %if.end.i.sdhci_cqhci_runtime_suspend.exit_crit_edge, %glk_rpm_retune_chk.exit.sdhci_cqhci_runtime_suspend.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %glk_rpm_retune_chk.exit.sdhci_cqhci_runtime_suspend.exit_crit_edge ], [ %call.i4.i, %while.cond.preheader.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge ], [ 0, %if.end.i.sdhci_cqhci_runtime_suspend.exit_crit_edge ], [ %call.i4.i, %while.body.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge ], [ 0, %for.inc.i.i.sdhci_cqhci_runtime_suspend.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glk_runtime_resume(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @glk_rpm_retune_chk(ptr noundef %chip, i1 noundef zeroext false)
  %num_slots.i.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.i.i = icmp sgt i32 %1, 0
  br i1 %cmp11.i.i, label %entry.for.body.i.i_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8, i32 %i.012.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %host.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i.i, align 4
  %call.i.i = tail call i32 @sdhci_runtime_resume_host(ptr noundef %5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.sdhci_cqhci_runtime_resume.exit_crit_edge

if.end.i.i.sdhci_cqhci_runtime_resume.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdhci_cqhci_runtime_resume.exit

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %6 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %8 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slots.i, align 4
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i, align 8
  %call1.i = tail call i32 @cqhci_resume(ptr noundef %13) #10
  br label %sdhci_cqhci_runtime_resume.exit

sdhci_cqhci_runtime_resume.exit:                  ; preds = %if.end.i, %if.end.i.i.sdhci_cqhci_runtime_resume.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i.i, %if.end.i.i.sdhci_cqhci_runtime_resume.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_hs400_enhanced_strobe(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !220

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 120) #10
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !205
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %8 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhanced_strobe, align 1, !range !204
  %and = and i32 %retval.0.i, -2
  %10 = zext i8 %9 to i32
  %val.0 = or i32 %and, %10
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i6 = icmp eq ptr %14, null
  br i1 %tobool.not.i6, label %do.body.i, label %if.then.i7, !prof !220

if.then.i7:                                       ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %14(ptr noundef %private.i, i32 noundef %val.0, i32 noundef 120) #10
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.0) #10
  %ioaddr.i8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %ioaddr.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i8, align 16
  %add.ptr.i9 = getelementptr i8, ptr %17, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %15) #10, !srcloc !225
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pci_dumpregs(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @glk_rpm_retune_chk(ptr nocapture noundef %chip, i1 noundef zeroext %susp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12748, i16 %3)
  %cmp = icmp eq i16 %3, 12748
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rpm_retune = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %rpm_retune to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rpm_retune, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slots.i, align 4
  %private.i.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 0, i32 6
  %host1.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host1.i, align 4
  %rpm_retune_ok.i = getelementptr inbounds %struct.intel_host, ptr %private.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %rpm_retune_ok.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rpm_retune_ok.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i, align 8
  %can_retune.i.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %can_retune.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i = load i16, ptr %can_retune.i.i, align 8
  %15 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.not.i = icmp eq i16 %15, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !220

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %19(ptr noundef %9, i32 noundef 2100) #10
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 2100
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !205
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %23, %if.else.i.i ]
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i106.i = icmp eq ptr %27, null
  br i1 %tobool.not.i106.i, label %if.else.i111.i, label %if.then.i108.i, !prof !220

if.then.i108.i:                                   ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i107.i = tail call i32 %27(ptr noundef %9, i32 noundef 2112) #10
  br label %sdhci_readl.exit113.i

if.else.i111.i:                                   ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i109.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i109.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i109.i, align 16
  %add.ptr.i110.i = getelementptr i8, ptr %29, i32 2112
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #10, !srcloc !205
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %sdhci_readl.exit113.i

sdhci_readl.exit113.i:                            ; preds = %if.else.i111.i, %if.then.i108.i
  %retval.0.i112.i = phi i32 [ %call.i107.i, %if.then.i108.i ], [ %31, %if.else.i111.i ]
  br i1 %susp, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %sdhci_readl.exit113.i
  call void @__sanitizer_cov_trace_pc() #12
  %glk_rx_ctrl17.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 1, i32 3
  %32 = ptrtoint ptr %glk_rx_ctrl17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i, ptr %glk_rx_ctrl17.i, align 4
  %glk_tun_val8.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 1, i32 4
  %33 = ptrtoint ptr %glk_tun_val8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i112.i, ptr %glk_tun_val8.i, align 4
  br label %if.end

if.end9.i:                                        ; preds = %sdhci_readl.exit113.i
  %glk_tun_val10.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 1, i32 4
  %34 = ptrtoint ptr %glk_tun_val10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %glk_tun_val10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not.i = icmp eq i32 %35, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end_crit_edge, label %if.end13.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end13.i:                                       ; preds = %if.end9.i
  %glk_rx_ctrl114.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %7, i32 1, i32 3
  %36 = ptrtoint ptr %glk_rx_ctrl114.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %glk_rx_ctrl114.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %37)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %37
  br i1 %cmp.not.i, label %do.end44.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %rpm_retune_ok.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %rpm_retune_ok.i, align 1
  br label %if.end

do.end44.i:                                       ; preds = %if.end13.i
  %and.i = lshr i32 %retval.0.i.i, 8
  %shr.i = and i32 %and.i, 63
  %shl.i = shl i32 %35, 1
  %add.i = add i32 %shl.i, %shr.i
  %and48.i = and i32 %add.i, 127
  %and65.i = and i32 %retval.0.i.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and48.i, i32 %and65.i)
  %cmp67.i = icmp eq i32 %and48.i, %and65.i
  br i1 %cmp67.i, label %do.end44.i.if.end_crit_edge, label %if.end69.i

do.end44.i.if.end_crit_edge:                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end69.i:                                       ; preds = %do.end44.i
  %and70.i = and i32 %retval.0.i.i, -128
  %or.i = or i32 %and48.i, %and70.i
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i5 = icmp eq ptr %42, null
  br i1 %tobool.not.i5, label %do.body.i, label %if.then.i, !prof !220

if.then.i:                                        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %42(ptr noundef %9, i32 noundef %or.i, i32 noundef 2100) #10
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %45, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %43) #10, !srcloc !225
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i
  %46 = ptrtoint ptr %rpm_retune_ok.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %rpm_retune_ok.i, align 1
  %47 = ptrtoint ptr %rpm_retune to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %rpm_retune, align 2
  %48 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmc.i, align 8
  %can_retune.i114.i = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 29
  %50 = ptrtoint ptr %can_retune.i114.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i115.i = load i16, ptr %can_retune.i114.i, align 8
  %51 = and i16 %bf.load.i115.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i116.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i116.i, label %sdhci_writel.exit.mmc_retune_needed.exit.i_crit_edge, label %if.then.i117.i

sdhci_writel.exit.mmc_retune_needed.exit.i_crit_edge: ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmc_retune_needed.exit.i

if.then.i117.i:                                   ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i.i = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 32
  %52 = ptrtoint ptr %need_retune.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %need_retune.i.i, align 4
  br label %mmc_retune_needed.exit.i

mmc_retune_needed.exit.i:                         ; preds = %if.then.i117.i, %sdhci_writel.exit.mmc_retune_needed.exit.i_crit_edge
  %53 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i118.i = icmp eq ptr %56, null
  br i1 %tobool.not.i118.i, label %if.end.i.i, label %mmc_retune_needed.exit.i.dev_name.exit.i_crit_edge

mmc_retune_needed.exit.i.dev_name.exit.i_crit_edge: ; preds = %mmc_retune_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %mmc_retune_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %mmc_retune_needed.exit.i.dev_name.exit.i_crit_edge
  %retval.0.i119.i = phi ptr [ %58, %if.end.i.i ], [ %56, %mmc_retune_needed.exit.i.dev_name.exit.i_crit_edge ]
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i119.i) #13
  br label %if.end

if.end:                                           ; preds = %dev_name.exit.i, %do.end44.i.if.end_crit_edge, %if.then15.i, %if.end9.i.if.end_crit_edge, %if.then6.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #0 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #10
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #10
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_error, align 4
  %6 = ptrtoint ptr %data_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_error, align 4
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_cqhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps2, align 4
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 63
  %5 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cqe_private, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @cqhci_deactivate(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_probe(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 30731, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %entry.if.then14_crit_edge

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 30987, ptr noundef null) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else.if.end15_crit_edge, label %if.end9

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end9:                                          ; preds = %if.else
  %revision = getelementptr inbounds %struct.pci_dev, ptr %call1, i32 0, i32 12
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %1)
  %cmp = icmp ult i8 %1, 81
  br i1 %cmp, label %if.end9.if.then14_crit_edge, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %if.end9.if.then14_crit_edge, %entry.if.then14_crit_edge
  %quirks2 = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks2, align 4
  %or = or i32 %3, 1024
  store i32 %or, ptr %quirks2, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9.if.end15_crit_edge, %if.else.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amd_probe_slot(ptr nocapture noundef readonly %slot) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 11, i32 12
  %2 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @amd_execute_tuning, ptr %execute_tuning, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #0 align 64 {
entry:
  %val.i46.i = alloca i32, align 4
  %val.i38.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 9
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 35, i32 4, i32 2
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ops.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i.i, align 4
  %read_w.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %read_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_w.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !220

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i16 %9(ptr noundef %private.i, i32 noundef 62) #10
  br label %sdhci_readw.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 62
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !217
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  br label %sdhci_readw.exit.i.i

sdhci_readw.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %call.i.i.i, %if.then.i.i.i ], [ %13, %if.else.i.i.i ]
  %14 = or i16 %retval.0.i.i.i, -32704
  %15 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i.i, align 4
  %write_w.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %write_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_w.i.i.i, align 4
  %tobool.not.i12.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i12.i.i, label %do.body.i.i.i, label %if.then.i13.i.i, !prof !220

if.then.i13.i.i:                                  ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef %private.i, i16 noundef zeroext %14, i32 noundef 62) #10
  br label %sdhci_writew.exit.i.i

do.body.i.i.i:                                    ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %19 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  %ioaddr.i14.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %ioaddr.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i14.i.i, align 16
  %add.ptr.i15.i.i = getelementptr i8, ptr %21, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i.i, i16 %19) #10, !srcloc !233
  br label %sdhci_writew.exit.i.i

sdhci_writew.exit.i.i:                            ; preds = %do.body.i.i.i, %if.then.i13.i.i
  %22 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i.i, align 4
  %read_w.i17.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read_w.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_w.i17.i.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i18.i.i, label %if.else.i23.i.i, label %if.then.i20.i.i, !prof !220

if.then.i20.i.i:                                  ; preds = %sdhci_writew.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i19.i.i = tail call zeroext i16 %25(ptr noundef %private.i, i32 noundef 62) #10
  br label %sdhci_readw.exit25.i.i

if.else.i23.i.i:                                  ; preds = %sdhci_writew.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i21.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %ioaddr.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i21.i.i, align 16
  %add.ptr.i22.i.i = getelementptr i8, ptr %27, i32 62
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i22.i.i) #10, !srcloc !217
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  br label %sdhci_readw.exit25.i.i

sdhci_readw.exit25.i.i:                           ; preds = %if.else.i23.i.i, %if.then.i20.i.i
  %retval.0.i24.i.i = phi i16 [ %call.i19.i.i, %if.then.i20.i.i ], [ %29, %if.else.i23.i.i ]
  %30 = and i16 %retval.0.i24.i.i, -65
  %31 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i.i, align 4
  %write_w.i27.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %write_w.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_w.i27.i.i, align 4
  %tobool.not.i28.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i28.i.i, label %do.body.i32.i.i, label %if.then.i29.i.i, !prof !220

if.then.i29.i.i:                                  ; preds = %sdhci_readw.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %34(ptr noundef %private.i, i16 noundef zeroext %30, i32 noundef 62) #10
  br label %amd_tuning_reset.exit.i

do.body.i32.i.i:                                  ; preds = %sdhci_readw.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %35 = tail call i16 @llvm.bswap.i16(i16 %30) #10
  %ioaddr.i30.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %ioaddr.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i30.i.i, align 16
  %add.ptr.i31.i.i = getelementptr i8, ptr %37, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i31.i.i, i16 %35) #10, !srcloc !233
  br label %amd_tuning_reset.exit.i

amd_tuning_reset.exit.i:                          ; preds = %do.body.i32.i.i, %if.then.i29.i.i
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %ioaddr.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %amd_tuning_reset.exit.i
  %indvars.iv.i = phi i32 [ 0, %amd_tuning_reset.exit.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %valid_win_end.051.i = phi i8 [ 0, %amd_tuning_reset.exit.i ], [ %valid_win_end.1.i, %for.inc.i.for.body.i_crit_edge ]
  %valid_win_max.050.i = phi i8 [ 0, %amd_tuning_reset.exit.i ], [ %valid_win_max.1.i, %for.inc.i.for.body.i_crit_edge ]
  %valid_win.049.i = phi i8 [ 0, %amd_tuning_reset.exit.i ], [ %valid_win.1.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %38 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i.i, align 4, !annotation !198
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 184, ptr noundef nonnull %val.i.i) #10
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %40, -67616
  %41 = shl nuw i32 %indvars.iv.i, 1
  %or.i.i = or i32 %41, %and.i.i
  %or1.i.i = or i32 %or.i.i, 67584
  store i32 %or1.i.i, ptr %val.i.i, align 4
  %call2.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 184, i32 noundef %or1.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %42 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmc.i, align 8
  %call3.i = call i32 @mmc_send_tuning(ptr noundef %43, i32 noundef %opcode, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @msleep(i32 noundef 4) #10
  %44 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i.i, align 4
  %write_b.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write_b.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_b.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i, !prof !220

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %47(ptr noundef %private.i, i8 noundef zeroext 6, i32 noundef 47) #10
  br label %for.inc.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 47
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 6) #10, !srcloc !212
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i8 %valid_win.049.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %valid_win_max.050.i)
  %cmp6.i = icmp ugt i8 %inc.i, %valid_win_max.050.i
  %50 = call i8 @llvm.umax.i8(i8 %inc.i, i8 %valid_win_max.050.i) #10
  %51 = trunc i32 %indvars.iv.i to i8
  %spec.select37.i = select i1 %cmp6.i, i8 %51, i8 %valid_win_end.051.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i.i, %if.then.i.i
  %valid_win.1.i = phi i8 [ %inc.i, %if.else.i ], [ 0, %if.then.i.i ], [ 0, %do.body.i.i ]
  %valid_win_max.1.i = phi i8 [ %50, %if.else.i ], [ %valid_win_max.050.i, %if.then.i.i ], [ %valid_win_max.050.i, %do.body.i.i ]
  %valid_win_end.1.i = phi i8 [ %spec.select37.i, %if.else.i ], [ %valid_win_end.051.i, %if.then.i.i ], [ %valid_win_end.051.i, %do.body.i.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %valid_win_max.1.i)
  %tobool11.not.i = icmp eq i8 %valid_win_max.1.i, 0
  br i1 %tobool11.not.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end13.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = lshr i8 %valid_win_max.1.i, 1
  %sub.i = sub i8 %valid_win_end.1.i, %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i38.i) #10
  %53 = ptrtoint ptr %val.i38.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %val.i38.i, align 4, !annotation !198
  %call.i39.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 184, ptr noundef nonnull %val.i38.i) #10
  %54 = ptrtoint ptr %val.i38.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i38.i, align 4
  %and.i40.i = and i32 %55, -67616
  %conv.i41.i = zext i8 %sub.i to i32
  %shl.i42.i = shl nuw nsw i32 %conv.i41.i, 1
  %or.i43.i = or i32 %shl.i42.i, 67584
  %or1.i44.i = or i32 %and.i40.i, %or.i43.i
  store i32 %or1.i44.i, ptr %val.i38.i, align 4
  %call2.i45.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 184, i32 noundef %or1.i44.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i38.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i46.i) #10
  %56 = ptrtoint ptr %val.i46.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i46.i, align 4, !annotation !198
  %call.i47.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 208, ptr noundef nonnull %val.i46.i) #10
  %57 = ptrtoint ptr %val.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i46.i, align 4
  %or.i48.i = or i32 %58, 48
  store i32 %or.i48.i, ptr %val.i46.i, align 4
  %call1.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 208, i32 noundef %or.i48.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i46.i) #10
  %59 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmc.i, align 8
  %retune_period.i = getelementptr inbounds %struct.mmc_host, ptr %60, i32 0, i32 34
  %61 = ptrtoint ptr %retune_period.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %retune_period.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13.i, %do.end.i
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %if.end13.i ], [ -5, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30982, i16 %5)
  %cmp = icmp ne i16 %5, 30982
  %6 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end48_crit_edge, label %if.then

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then:                                          ; preds = %entry
  tail call void @pci_clear_master(ptr noundef %3) #10
  %call4 = tail call i32 @pci_save_state(ptr noundef %3) #10
  %call5 = tail call i32 @pci_set_power_state(ptr noundef %3, i32 noundef 4) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_sdhci_reset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd_sdhci_reset, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !202

if.then10:                                        ; preds = %if.then
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then10.dev_name.exit_crit_edge
  %retval.0.i65 = phi ptr [ %12, %if.end.i ], [ %10, %if.then10.dev_name.exit_crit_edge ]
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 30
  %13 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amd_sdhci_reset.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i65, i32 noundef %14) #10
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.then
  %call12 = tail call i32 @pci_set_power_state(ptr noundef %3, i32 noundef 0) #10
  tail call void @pci_restore_state(ptr noundef %3) #10
  %call13 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call13, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1776) #10
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then43, %do.end
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !220

if.then.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %18(ptr noundef %host, i32 noundef 36) #10
  br label %sdhci_read_present_state.exit

if.else.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !205
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %sdhci_read_present_state.exit

sdhci_read_present_state.exit:                    ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %22, %if.else.i.i ]
  %and29 = and i32 %retval.0.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true34, label %sdhci_read_present_state.exit.if.end48_crit_edge

sdhci_read_present_state.exit.if.end48_crit_edge: ; preds = %sdhci_read_present_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true34:                                  ; preds = %sdhci_read_present_state.exit
  %call35 = tail call i64 @ktime_get() #10
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %if.then39, label %if.then43

if.then39:                                        ; preds = %land.lhs.true34
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i.i68 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i68, label %if.else.i.i73, label %if.then.i.i70, !prof !220

if.then.i.i70:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i69 = tail call i32 %26(ptr noundef %host, i32 noundef 36) #10
  br label %if.end48

if.else.i.i73:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i72 = getelementptr i8, ptr %28, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #10, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %if.end48

if.then43:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #10
  br label %for.cond

if.end48:                                         ; preds = %if.else.i.i73, %if.then.i.i70, %sdhci_read_present_state.exit.if.end48_crit_edge, %entry.if.end48_crit_edge
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_pci_runtime_pm_allow(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_children.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  tail call void @pm_runtime_allow(ptr noundef %dev) #10
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !235
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !236
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_alloc_host(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fixes = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fixes, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %suspend = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @sdhci_pci_suspend_host(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ %call9, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fixes = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fixes, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %resume = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.i = icmp sgt i32 %7, 0
  br i1 %cmp14.i, label %if.end8.for.body.i_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %1, i32 0, i32 8, i32 %i.015.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %call.i = tail call i32 @sdhci_resume_host(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc.i, align 8
  %call5.i = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %15, i1 noundef zeroext false) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %16 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fixes = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fixes, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %runtime_suspend = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime_suspend, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp30.i = icmp sgt i32 %7, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end8
  %rpm_retune.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %1, i32 0, i32 8, i32 %i.031.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host1.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host1.i, align 4
  %call.i = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031.i)
  %cmp934.not.i = icmp eq i32 %i.031.i, 0
  br i1 %cmp934.not.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %rpm_retune.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rpm_retune.i, align 2, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %if.end4.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %tuning_mode.i = getelementptr inbounds %struct.sdhci_host, ptr %11, i32 0, i32 73
  %14 = ptrtoint ptr %tuning_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tuning_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp6.not.i = icmp eq i32 %15, 2
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then7.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %11, i32 0, i32 10
  %16 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc.i, align 8
  %can_retune.i.i = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 29
  %18 = ptrtoint ptr %can_retune.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %can_retune.i.i, align 8
  %19 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i.i, label %if.then7.i.for.inc.i_crit_edge, label %if.then.i.i

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i.i = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 32
  %20 = ptrtoint ptr %need_retune.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %need_retune.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %21 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %22
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec35.in.i = phi i32 [ %dec35.i, %while.body.i.while.body.i_crit_edge ], [ %i.031.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec35.i = add nsw i32 %dec35.in.i, -1
  %arrayidx11.i = getelementptr %struct.sdhci_pci_chip, ptr %1, i32 0, i32 8, i32 %dec35.i
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11.i, align 4
  %host12.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %host12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host12.i, align 4
  %call13.i = tail call i32 @sdhci_runtime_resume_host(ptr noundef %26, i32 noundef 0) #10
  %cmp9.i = icmp sgt i32 %dec35.in.i, 1
  br i1 %cmp9.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %while.cond.preheader.i.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %while.body.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fixes = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fixes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fixes, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %runtime_resume = getelementptr inbounds %struct.sdhci_pci_fixes, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime_resume, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %num_slots.i = getelementptr inbounds %struct.sdhci_pci_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.i = icmp sgt i32 %7, 0
  br i1 %cmp11.i, label %if.end8.for.body.i_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sdhci_pci_chip, ptr %1, i32 0, i32 8, i32 %i.012.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %call.i = tail call i32 @sdhci_runtime_resume_host(ptr noundef %11, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %12 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_slots.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !91, !92, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !132, !133, !134, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !181, !183, !184, !185, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1910, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sdhci_pci_enable_dma._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sdhci_pci_enable_dma._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_sdhci_pci__308_2264_sdhci_driver_init6, !9, !"__initcall__kmod_sdhci_pci__308_2264_sdhci_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2264, i32 1}
!10 = !{ptr @__exitcall_sdhci_driver_exit, !9, !"__exitcall_sdhci_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author309, !12, !"__UNIQUE_ID_author309", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2266, i32 1}
!13 = !{ptr @__UNIQUE_ID_description310, !14, !"__UNIQUE_ID_description310", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2267, i32 1}
!15 = !{ptr @__UNIQUE_ID_file311, !16, !"__UNIQUE_ID_file311", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2268, i32 1}
!17 = !{ptr @__UNIQUE_ID_license312, !16, !"__UNIQUE_ID_license312", i1 false, i1 false}
!18 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2255, i32 11}
!21 = !{ptr @sdhci_driver, !22, !"sdhci_driver", i1 false, i1 false}
!22 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2254, i32 26}
!23 = !{ptr @pci_ids, !24, !"pci_ids", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1796, i32 35}
!25 = !{ptr @sdhci_ricoh, !26, !"sdhci_ricoh", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 282, i32 37}
!27 = !{ptr @sdhci_ricoh_mmc, !28, !"sdhci_ricoh_mmc", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 289, i32 37}
!29 = !{ptr @sdhci_ene_712, !30, !"sdhci_ene_712", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 300, i32 37}
!31 = !{ptr @sdhci_ene_714, !32, !"sdhci_ene_714", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 305, i32 37}
!33 = !{ptr @sdhci_cafe, !34, !"sdhci_cafe", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 311, i32 37}
!35 = !{ptr @sdhci_jmicron, !36, !"sdhci_jmicron", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1493, i32 37}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1367, i32 4}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @jmicron_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @jmicron_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1379, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @jmicron_probe._entry.10, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @jmicron_probe._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1485, i32 3}
!50 = !{ptr @jmicron_resume._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @jmicron_resume._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sdhci_syskt, !53, !"sdhci_syskt", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1566, i32 37}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1539, i32 2}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @syskt_probe_slot._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @syskt_probe_slot._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1557, i32 3}
!61 = !{ptr @syskt_probe_slot._entry.17, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @syskt_probe_slot._entry_ptr.19, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @sdhci_via, !64, !"sdhci_via", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1580, i32 37}
!65 = !{ptr @sdhci_rtsx, !66, !"sdhci_rtsx", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1590, i32 37}
!67 = !{ptr @sdhci_intel_qrk, !68, !"sdhci_intel_qrk", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 318, i32 37}
!69 = !{ptr @sdhci_intel_mrst_hc0, !70, !"sdhci_intel_mrst_hc0", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 361, i32 37}
!71 = !{ptr @sdhci_intel_mrst_hc1_hc2, !72, !"sdhci_intel_mrst_hc1_hc2", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 366, i32 37}
!73 = !{ptr @sdhci_intel_mfd_sd, !74, !"sdhci_intel_mfd_sd", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 371, i32 37}
!75 = !{ptr @sdhci_intel_mfd_sdio, !76, !"sdhci_intel_mfd_sdio", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 377, i32 37}
!77 = !{ptr @sdhci_intel_mfd_emmc, !78, !"sdhci_intel_mfd_emmc", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 384, i32 37}
!79 = !{ptr @sdhci_intel_pch_sdio, !80, !"sdhci_intel_pch_sdio", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 390, i32 37}
!81 = !{ptr @sdhci_intel_byt_emmc, !82, !"sdhci_intel_byt_emmc", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1133, i32 37}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 834, i32 32}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 508, i32 3}
!87 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @intel_dsm_init.__UNIQUE_ID_ddebug288, !86, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 513, i32 2}
!91 = distinct !{null, !90, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!92 = distinct !{null, !93, !"intel_dsm_guid", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 459, i32 21}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 664, i32 2}
!96 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @intel_start_signal_voltage_switch.__UNIQUE_ID_ddebug290, !95, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 851, i32 21}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 852, i32 21}
!102 = !{ptr @sdhci_intel_byt_ops, !103, !"sdhci_intel_byt_ops", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 670, i32 31}
!104 = !{ptr @sdhci_ni_byt_sdio, !105, !"sdhci_ni_byt_sdio", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1175, i32 37}
!106 = !{ptr @sdhci_intel_byt_sdio, !107, !"sdhci_intel_byt_sdio", i1 false, i1 false}
!107 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1194, i32 37}
!108 = !{ptr @sdhci_intel_byt_sd, !109, !"sdhci_intel_byt_sd", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1213, i32 37}
!110 = !{ptr @sdhci_intel_mrfld_mmc, !111, !"sdhci_intel_mrfld_mmc", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1294, i32 37}
!112 = !{ptr @sdhci_intel_glk_emmc, !113, !"sdhci_intel_glk_emmc", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1153, i32 37}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 892, i32 37}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 893, i32 29}
!118 = !{ptr @glk_cqhci_ops, !119, !"glk_cqhci_ops", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 913, i32 36}
!120 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1008, i32 2}
!122 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @glk_rpm_retune_wa._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @glk_rpm_retune_wa._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @sdhci_intel_glk_ops, !126, !"sdhci_intel_glk_ops", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 680, i32 31}
!127 = !{ptr @sdhci_amd, !128, !"sdhci_amd", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1790, i32 37}
!129 = !{ptr @.str.32, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1672, i32 3}
!131 = !{ptr @.str.33, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @amd_execute_tuning_hs200._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @amd_execute_tuning_hs200._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @amd_sdhci_pci_ops, !135, !"amd_sdhci_pci_ops", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1782, i32 31}
!136 = !{ptr @.str.34, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1756, i32 3}
!138 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @amd_sdhci_reset.__UNIQUE_ID_ddebug306, !137, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2173, i32 2}
!142 = !{ptr @.str.37, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @sdhci_pci_probe._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @sdhci_pci_probe._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.38, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2181, i32 2}
!147 = !{ptr @sdhci_pci_probe.__UNIQUE_ID_ddebug307, !146, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!148 = !{ptr @.str.40, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2192, i32 3}
!150 = !{ptr @sdhci_pci_probe._entry.39, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @sdhci_pci_probe._entry_ptr.41, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2020, i32 3}
!154 = !{ptr @.str.43, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @sdhci_pci_probe_slot._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @sdhci_pci_probe_slot._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2025, i32 3}
!159 = !{ptr @sdhci_pci_probe_slot._entry.44, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @sdhci_pci_probe_slot._entry_ptr.46, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.48, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2030, i32 3}
!163 = !{ptr @sdhci_pci_probe_slot._entry.47, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sdhci_pci_probe_slot._entry_ptr.49, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.51, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2035, i32 3}
!167 = !{ptr @sdhci_pci_probe_slot._entry.50, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @sdhci_pci_probe_slot._entry_ptr.52, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.54, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2041, i32 3}
!171 = !{ptr @sdhci_pci_probe_slot._entry.53, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @sdhci_pci_probe_slot._entry_ptr.55, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2051, i32 18}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2062, i32 3}
!177 = !{ptr @sdhci_pci_probe_slot._entry.57, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @sdhci_pci_probe_slot._entry_ptr.59, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2085, i32 41}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 2096, i32 4}
!183 = !{ptr @sdhci_pci_probe_slot._entry.61, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @sdhci_pci_probe_slot._entry_ptr.63, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @sdhci_pci_ops, !186, !"sdhci_pci_ops", i1 false, i1 false}
!186 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1927, i32 31}
!187 = !{ptr @sdhci_pci_pm_ops, !188, !"sdhci_pci_pm_ops", i1 false, i1 false}
!188 = !{!"../drivers/mmc/host/sdhci-pci-core.c", i32 1998, i32 32}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"auto-init"}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{i64 2156172943, i64 2156173442, i64 2156172980, i64 2156173036, i64 2156173070, i64 2156173094, i64 2156173135, i64 2156173156, i64 2156173184, i64 2156173218}
!201 = !{i64 2156174592, i64 2156175091, i64 2156174629, i64 2156174685, i64 2156174719, i64 2156174743, i64 2156174784, i64 2156174805, i64 2156174833, i64 2156174867}
!202 = !{i64 2148866907, i64 2148866912, i64 2148866925, i64 2148866969, i64 2148867003, i64 2148867024}
!203 = !{i64 2156180386, i64 2156180885, i64 2156180423, i64 2156180479, i64 2156180513, i64 2156180537, i64 2156180578, i64 2156180599, i64 2156180627, i64 2156180661}
!204 = !{i8 0, i8 2}
!205 = !{i64 5974401}
!206 = !{i64 2156172551}
!207 = !{i64 2148326886, i64 2148326912, i64 2148326941, i64 2148326975, i64 2148327006, i64 2148327029}
!208 = !{i64 2156094174}
!209 = !{i64 5974181}
!210 = !{i64 2156093372}
!211 = !{i64 2156093592}
!212 = !{i64 5973786}
!213 = !{i64 2156096287}
!214 = !{i64 2156096543}
!215 = !{i64 2156098941}
!216 = !{i64 2156099247}
!217 = !{i64 5973563}
!218 = !{i64 2156100384}
!219 = !{i64 2156102866}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2155764146}
!222 = !{i64 2155762236}
!223 = !{i64 2155867366}
!224 = !{i64 2155871206}
!225 = !{i64 5973983}
!226 = !{i64 2155871607}
!227 = !{i64 2155866358}
!228 = !{i64 2155866862}
!229 = !{i64 2155762994}
!230 = !{i64 2155761024}
!231 = !{i64 2155763698}
!232 = !{i64 2155761630}
!233 = !{i64 5973363}
!234 = !{i64 2148326305}
!235 = !{i64 811128, i64 811153, i64 811175, i64 811191, i64 811203, i64 811223, i64 811247, i64 811263, i64 811275}
!236 = !{i64 2148326493}
