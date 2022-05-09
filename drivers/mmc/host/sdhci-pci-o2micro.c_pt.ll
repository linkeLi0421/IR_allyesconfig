; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pci-o2micro.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pci-o2micro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_fixes = type { i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.sdhci_pci_slot = type { ptr, ptr, i32, i8, ptr, [108 x i8], [0 x i32] }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@sdhci_pci_o2_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pci_o2_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_o2 = dso_local constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 1024, i8 0, i8 0, ptr @sdhci_pci_o2_probe, ptr @sdhci_pci_o2_probe_slot, ptr null, ptr null, ptr null, ptr @sdhci_pci_o2_resume, ptr null, ptr null, ptr @sdhci_pci_o2_ops, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sdhci_pci_o2_probe_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: emmc 1.8v flag is set, force 1.8v signaling voltage\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdhci_pci_o2_probe_slot\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/mmc/host/sdhci-pci-o2micro.c\00", [59 x i8] zeroinitializer }, align 32
@sdhci_pci_o2_probe_slot._entry_ptr = internal global ptr @sdhci_pci_o2_probe_slot._entry, section ".printk_index", align 4
@sdhci_pci_o2_enable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: unsupported MSI, use INTx irq\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdhci_pci_o2_enable_msi\00", [40 x i8] zeroinitializer }, align 32
@sdhci_pci_o2_enable_msi._entry_ptr = internal global ptr @sdhci_pci_o2_enable_msi._entry, section ".printk_index", align 4
@sdhci_pci_o2_enable_msi._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: enable PCI MSI failed, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@sdhci_pci_o2_enable_msi._entry_ptr.7 = internal global ptr @sdhci_pci_o2_enable_msi._entry.5, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdhci_o2_enable_internal_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdhci_o2_enable_internal_clock\00", [33 x i8] zeroinitializer }, align 32
@sdhci_o2_enable_internal_clock._entry_ptr = internal global ptr @sdhci_o2_enable_internal_clock._entry, section ".printk_index", align 4
@sdhci_o2_wait_card_detect_stable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Card Detect debounce never finished.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdhci_o2_wait_card_detect_stable\00", [63 x i8] zeroinitializer }, align 32
@sdhci_o2_wait_card_detect_stable._entry_ptr = internal global ptr @sdhci_o2_wait_card_detect_stable._entry, section ".printk_index", align 4
@sdhci_o2_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: DLL can't lock in 5ms after force L0 during tuning.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdhci_o2_execute_tuning\00", [40 x i8] zeroinitializer }, align 32
@sdhci_o2_execute_tuning._entry_ptr = internal global ptr @sdhci_o2_execute_tuning._entry, section ".printk_index", align 4
@sdhci_o2_execute_tuning._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: o2 dll recovery failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sdhci_o2_execute_tuning._entry_ptr.16 = internal global ptr @sdhci_o2_execute_tuning._entry.14, section ".printk_index", align 4
@dmdn_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 723255296, i32 739901440, i32 924516352, i32 890241024], [16 x i8] zeroinitializer }, align 32
@sdhci_o2_dll_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: DLL unlocked when dll_adjust_count is %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_o2_dll_recovery\00", [42 x i8] zeroinitializer }, align 32
@sdhci_o2_dll_recovery._entry_ptr = internal global ptr @sdhci_o2_dll_recovery._entry, section ".printk_index", align 4
@sdhci_o2_dll_recovery._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: card present detect failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@sdhci_o2_dll_recovery._entry_ptr.21 = internal global ptr @sdhci_o2_dll_recovery._entry.19, section ".printk_index", align 4
@sdhci_o2_dll_recovery._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: DLL adjust over max times\0A\00", [63 x i8] zeroinitializer }, align 32
@sdhci_o2_dll_recovery._entry_ptr.24 = internal global ptr @sdhci_o2_dll_recovery._entry.22, section ".printk_index", align 4
@__sdhci_o2_execute_tuning._entry = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 217, ptr null, ptr null }, align 1
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: HW tuning failed !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__sdhci_o2_execute_tuning\00", [38 x i8] zeroinitializer }, align 32
@__sdhci_o2_execute_tuning._entry_ptr = internal global ptr @__sdhci_o2_execute_tuning._entry, section ".printk_index", align 4
@__sdhci_o2_execute_tuning._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 225, ptr null, ptr null }, align 1
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: Tuning failed, falling back to fixed sampling clock\0A\00", [37 x i8] zeroinitializer }, align 32
@__sdhci_o2_execute_tuning._entry_ptr.29 = internal global ptr @__sdhci_o2_execute_tuning._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 33312, i64 33313, i64 33568, i64 33569, i64 33824, i64 33825, i64 34080, i64 34336, i64 34337]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 16, i64 33824, i64 33825, i64 34080, i64 34336, i64 34337]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 9]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 21]
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"sdhci_pci_o2_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 896, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"sdhci_o2\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 904, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 640, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 527, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 535, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 130, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 94, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 363, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 371, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"dmdn_table\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 70, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 283, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 288, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 296, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 216, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [40 x i8] c"../drivers/mmc/host/sdhci-pci-o2micro.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 224, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__sdhci_o2_execute_tuning._entry, ptr @__sdhci_o2_execute_tuning._entry.27, ptr @__sdhci_o2_execute_tuning._entry_ptr, ptr @__sdhci_o2_execute_tuning._entry_ptr.29, ptr @sdhci_o2_dll_recovery._entry, ptr @sdhci_o2_dll_recovery._entry.19, ptr @sdhci_o2_dll_recovery._entry.22, ptr @sdhci_o2_dll_recovery._entry_ptr, ptr @sdhci_o2_dll_recovery._entry_ptr.21, ptr @sdhci_o2_dll_recovery._entry_ptr.24, ptr @sdhci_o2_enable_internal_clock._entry, ptr @sdhci_o2_enable_internal_clock._entry_ptr, ptr @sdhci_o2_execute_tuning._entry, ptr @sdhci_o2_execute_tuning._entry.14, ptr @sdhci_o2_execute_tuning._entry_ptr, ptr @sdhci_o2_execute_tuning._entry_ptr.16, ptr @sdhci_o2_wait_card_detect_stable._entry, ptr @sdhci_o2_wait_card_detect_stable._entry_ptr, ptr @sdhci_pci_o2_enable_msi._entry, ptr @sdhci_pci_o2_enable_msi._entry.5, ptr @sdhci_pci_o2_enable_msi._entry_ptr, ptr @sdhci_pci_o2_enable_msi._entry_ptr.7, ptr @sdhci_pci_o2_probe_slot._entry, ptr @sdhci_pci_o2_probe_slot._entry_ptr, ptr @sdhci_pci_o2_ops, ptr @sdhci_o2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @dmdn_table, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_o2_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_o2_probe_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_o2_enable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pci_o2_enable_msi._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_enable_internal_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_wait_card_detect_stable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_execute_tuning._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmdn_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_dll_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_dll_recovery._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_o2_dll_recovery._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_o2_probe(ptr noundef %chip) #0 align 64 {
entry:
  %scratch_32.i = alloca i32, align 4
  %scratch = alloca i8, align 1
  %scratch_32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scratch) #5
  %0 = ptrtoint ptr %scratch to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %scratch, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32) #5
  %1 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scratch_32, align 4, !annotation !71
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 -32224, label %entry.sw.bb_crit_edge
    i16 -32223, label %entry.sw.bb_crit_edge272
    i16 -31968, label %entry.sw.bb_crit_edge273
    i16 -31967, label %entry.sw.bb_crit_edge274
    i16 -31712, label %entry.sw.bb53_crit_edge
    i16 -31711, label %entry.sw.bb53_crit_edge275
    i16 -31456, label %entry.sw.bb53_crit_edge276
    i16 -31200, label %entry.sw.bb143_crit_edge
    i16 -31199, label %entry.sw.bb143_crit_edge277
  ]

entry.sw.bb143_crit_edge277:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb143

entry.sw.bb143_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb143

entry.sw.bb53_crit_edge276:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

entry.sw.bb53_crit_edge275:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

entry.sw.bb53_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

entry.sw.bb_crit_edge274:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge273:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge272:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge272, %entry.sw.bb_crit_edge273, %entry.sw.bb_crit_edge274
  %call = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 211, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %7 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scratch, align 1
  %9 = and i8 %8, 127
  store i8 %9, ptr %scratch, align 1
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %call5 = call i32 @pci_write_config_byte(ptr noundef %11, i32 noundef 211, i8 noundef zeroext %9) #5
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %call7 = call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 238, i8 noundef zeroext 8) #5
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %call9 = call i32 @pci_read_config_byte(ptr noundef %15, i32 noundef 236, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %16 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scratch, align 1
  %18 = or i8 %17, 32
  store i8 %18, ptr %scratch, align 1
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %call16 = call i32 @pci_write_config_byte(ptr noundef %20, i32 noundef 236, i8 noundef zeroext %18) #5
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %call18 = call i32 @pci_read_config_byte(ptr noundef %22, i32 noundef 224, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scratch, align 1
  %25 = or i8 %24, 1
  store i8 %25, ptr %scratch, align 1
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %call26 = call i32 @pci_write_config_byte(ptr noundef %27, i32 noundef 224, i8 noundef zeroext %25) #5
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %call28 = call i32 @pci_write_config_byte(ptr noundef %29, i32 noundef 224, i8 noundef zeroext 115) #5
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %call30 = call i32 @pci_write_config_byte(ptr noundef %31, i32 noundef 226, i8 noundef zeroext 57) #5
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %call32 = call i32 @pci_write_config_byte(ptr noundef %33, i32 noundef 231, i8 noundef zeroext 8) #5
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %call34 = call i32 @pci_read_config_byte(ptr noundef %35, i32 noundef 241, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end21
  %36 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %scratch, align 1
  %38 = or i8 %37, 8
  store i8 %38, ptr %scratch, align 1
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %call42 = call i32 @pci_write_config_byte(ptr noundef %40, i32 noundef 241, i8 noundef zeroext %38) #5
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %call44 = call i32 @pci_read_config_byte(ptr noundef %42, i32 noundef 211, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %scratch, align 1
  %45 = or i8 %44, -128
  store i8 %45, ptr %scratch, align 1
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %call52 = call i32 @pci_write_config_byte(ptr noundef %47, i32 noundef 211, i8 noundef zeroext %45) #5
  br label %cleanup

sw.bb53:                                          ; preds = %entry.sw.bb53_crit_edge, %entry.sw.bb53_crit_edge275, %entry.sw.bb53_crit_edge276
  %call55 = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 211, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %sw.bb53.cleanup_crit_edge

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %sw.bb53
  %48 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %scratch, align 1
  %50 = and i8 %49, 127
  store i8 %50, ptr %scratch, align 1
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip, align 4
  %call63 = call i32 @pci_write_config_byte(ptr noundef %52, i32 noundef 211, i8 noundef zeroext %50) #5
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %device65 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %device65 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %device65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31456, i16 %56)
  %cmp = icmp eq i16 %56, -31456
  br i1 %cmp, label %if.then68, label %if.end58.if.end91_crit_edge

if.end58.if.end91_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then68:                                        ; preds = %if.end58
  %call70 = call i32 @pci_read_config_dword(ptr noundef %54, i32 noundef 220, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %if.then68
  %57 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scratch_32, align 4
  %shr = lshr i32 %58, 24
  store i32 %shr, ptr %scratch_32, align 4
  %shr.off = add nsw i32 %shr, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off)
  %switch = icmp ult i32 %shr.off, 2
  br i1 %switch, label %if.then79, label %if.end73.if.end91_crit_edge

if.end73.if.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then79:                                        ; preds = %if.end73
  %59 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 621805568, ptr %scratch_32, align 4
  call fastcc void @o2_pci_set_baseclk(ptr noundef %chip, i32 noundef 621805568)
  %60 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip, align 4
  %call81 = call i32 @pci_read_config_dword(ptr noundef %61, i32 noundef 996, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scratch_32, align 4
  %or85 = or i32 %63, 4194304
  store i32 %or85, ptr %scratch_32, align 4
  %64 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip, align 4
  %call87 = call i32 @pci_write_config_dword(ptr noundef %65, i32 noundef 996, i32 noundef %or85) #5
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip, align 4
  %call89 = call i32 @pci_write_config_byte(ptr noundef %67, i32 noundef 768, i8 noundef zeroext 68) #5
  br label %cleanup

if.end91:                                         ; preds = %if.end73.if.end91_crit_edge, %if.end58.if.end91_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32.i) #5
  %68 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %scratch_32.i, align 4, !annotation !71
  %69 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %70, i32 noundef 220, ptr noundef nonnull %scratch_32.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end91.o2_pci_led_enable.exit_crit_edge

if.end91.o2_pci_led_enable.exit_crit_edge:        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %o2_pci_led_enable.exit

if.end.i:                                         ; preds = %if.end91
  %71 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %scratch_32.i, align 4
  %and.i = and i32 %72, -8193
  store i32 %and.i, ptr %scratch_32.i, align 4
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %74, i32 noundef 220, i32 noundef %and.i) #5
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %76, i32 noundef 212, ptr noundef nonnull %scratch_32.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.o2_pci_led_enable.exit_crit_edge

if.end.i.o2_pci_led_enable.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %o2_pci_led_enable.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scratch_32.i, align 4
  %or.i = or i32 %78, 64
  store i32 %or.i, ptr %scratch_32.i, align 4
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip, align 4
  %call9.i = call i32 @pci_write_config_dword(ptr noundef %80, i32 noundef 212, i32 noundef %or.i) #5
  br label %o2_pci_led_enable.exit

o2_pci_led_enable.exit:                           ; preds = %if.end7.i, %if.end.i.o2_pci_led_enable.exit_crit_edge, %if.end91.o2_pci_led_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32.i) #5
  %81 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip, align 4
  %call93 = call i32 @pci_read_config_dword(ptr noundef %82, i32 noundef 808, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %o2_pci_led_enable.exit.cleanup_crit_edge

o2_pci_led_enable.exit.cleanup_crit_edge:         ; preds = %o2_pci_led_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end96:                                         ; preds = %o2_pci_led_enable.exit
  %83 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %scratch_32, align 4
  %and97 = and i32 %84, -132185857
  %or98 = or i32 %and97, 132171776
  store i32 %or98, ptr %scratch_32, align 4
  %85 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip, align 4
  %call100 = call i32 @pci_write_config_dword(ptr noundef %86, i32 noundef 808, i32 noundef %or98) #5
  %87 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip, align 4
  %call102 = call i32 @pci_read_config_dword(ptr noundef %88, i32 noundef 236, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end105:                                        ; preds = %if.end96
  %89 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %scratch_32, align 4
  %or106 = or i32 %90, 3
  store i32 %or106, ptr %scratch_32, align 4
  %91 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chip, align 4
  %call108 = call i32 @pci_write_config_dword(ptr noundef %92, i32 noundef 236, i32 noundef %or106) #5
  %93 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chip, align 4
  %call110 = call i32 @pci_read_config_dword(ptr noundef %94, i32 noundef 772, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end113:                                        ; preds = %if.end105
  %95 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %scratch_32, align 4
  %and114 = and i32 %96, -524224271
  %or115 = or i32 %and114, 405209350
  store i32 %or115, ptr %scratch_32, align 4
  %97 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip, align 4
  %call117 = call i32 @pci_write_config_dword(ptr noundef %98, i32 noundef 772, i32 noundef %or115) #5
  %99 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chip, align 4
  %call119 = call i32 @pci_read_config_dword(ptr noundef %100, i32 noundef 816, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end122:                                        ; preds = %if.end113
  %101 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %scratch_32, align 4
  %and123 = and i32 %102, -225
  store i32 %and123, ptr %scratch_32, align 4
  %103 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %chip, align 4
  %call125 = call i32 @pci_write_config_dword(ptr noundef %104, i32 noundef 816, i32 noundef %and123) #5
  %105 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %chip, align 4
  %device127 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %device127 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %device127, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31456, i16 %108)
  %cmp129 = icmp eq i16 %108, -31456
  br i1 %cmp129, label %if.then131, label %if.end122.if.end132_crit_edge

if.end122.if.end132_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.then131:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @sdhci_pci_o2_fujin2_pci_init(ptr noundef %chip)
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end122.if.end132_crit_edge
  %109 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chip, align 4
  %call134 = call i32 @pci_read_config_byte(ptr noundef %110, i32 noundef 211, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end137:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %scratch, align 1
  %113 = or i8 %112, -128
  store i8 %113, ptr %scratch, align 1
  %114 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chip, align 4
  %call142 = call i32 @pci_write_config_byte(ptr noundef %115, i32 noundef 211, i8 noundef zeroext %113) #5
  br label %cleanup

sw.bb143:                                         ; preds = %entry.sw.bb143_crit_edge, %entry.sw.bb143_crit_edge277
  %call145 = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 211, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %sw.bb143.cleanup_crit_edge

sw.bb143.cleanup_crit_edge:                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end148:                                        ; preds = %sw.bb143
  %116 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %scratch, align 1
  %118 = and i8 %117, 127
  store i8 %118, ptr %scratch, align 1
  %119 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chip, align 4
  %call153 = call i32 @pci_write_config_byte(ptr noundef %120, i32 noundef 211, i8 noundef zeroext %118) #5
  %121 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chip, align 4
  %call155 = call i32 @pci_read_config_dword(ptr noundef %122, i32 noundef 772, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end158:                                        ; preds = %if.end148
  %123 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %scratch_32, align 4
  %and159 = and i32 %124, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and159)
  %cmp160 = icmp eq i32 %and159, 16777216
  %and163 = and i32 %124, 65535
  br i1 %cmp160, label %if.then162, label %if.else

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  %or164 = or i32 %and163, 523501568
  %125 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or164, ptr %scratch_32, align 4
  %126 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chip, align 4
  %call166 = call i32 @pci_write_config_dword(ptr noundef %127, i32 noundef 772, i32 noundef %or164) #5
  br label %if.end179

if.else:                                          ; preds = %if.end158
  %or168 = or i32 %and163, 621805568
  %128 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or168, ptr %scratch_32, align 4
  %129 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %chip, align 4
  %call170 = call i32 @pci_write_config_dword(ptr noundef %130, i32 noundef 772, i32 noundef %or168) #5
  %131 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chip, align 4
  %call172 = call i32 @pci_read_config_dword(ptr noundef %132, i32 noundef 996, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end175:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %scratch_32, align 4
  %or176 = or i32 %134, 4194304
  store i32 %or176, ptr %scratch_32, align 4
  %135 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip, align 4
  %call178 = call i32 @pci_write_config_dword(ptr noundef %136, i32 noundef 996, i32 noundef %or176) #5
  br label %if.end179

if.end179:                                        ; preds = %if.end175, %if.then162
  %137 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %chip, align 4
  %call181 = call i32 @pci_write_config_byte(ptr noundef %138, i32 noundef 768, i8 noundef zeroext 85) #5
  %139 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chip, align 4
  %call183 = call i32 @pci_read_config_byte(ptr noundef %140, i32 noundef 211, ptr noundef nonnull %scratch) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.end179.cleanup_crit_edge

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end186:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %scratch, align 1
  %143 = or i8 %142, -128
  store i8 %143, ptr %scratch, align 1
  %144 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %chip, align 4
  %call191 = call i32 @pci_write_config_byte(ptr noundef %145, i32 noundef 211, i8 noundef zeroext %143) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %if.end179.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %sw.bb143.cleanup_crit_edge, %if.end137, %if.end132.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %o2_pci_led_enable.exit.cleanup_crit_edge, %if.end84, %if.then79.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge, %if.end47, %if.end37.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ %call18, %if.end12.cleanup_crit_edge ], [ %call34, %if.end21.cleanup_crit_edge ], [ %call44, %if.end37.cleanup_crit_edge ], [ %call55, %sw.bb53.cleanup_crit_edge ], [ %call70, %if.then68.cleanup_crit_edge ], [ %call81, %if.then79.cleanup_crit_edge ], [ %call93, %o2_pci_led_enable.exit.cleanup_crit_edge ], [ %call102, %if.end96.cleanup_crit_edge ], [ %call110, %if.end105.cleanup_crit_edge ], [ %call119, %if.end113.cleanup_crit_edge ], [ %call134, %if.end132.cleanup_crit_edge ], [ %call145, %sw.bb143.cleanup_crit_edge ], [ %call155, %if.end148.cleanup_crit_edge ], [ %call172, %if.else.cleanup_crit_edge ], [ %call183, %if.end179.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end186 ], [ 0, %if.end137 ], [ 0, %if.end84 ], [ 0, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_o2_probe_slot(ptr nocapture noundef %slot) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %host2 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %private.i, align 1
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !72

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %8(ptr noundef %3, i32 noundef 64) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !73
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %12, %if.else.i ]
  %and = and i32 %retval.0.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdhci_readl.exit.if.end_crit_edge, label %if.then

sdhci_readl.exit.if.end_crit_edge:                ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %caps4 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %caps4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps4, align 32
  %or = or i32 %16, 64
  store i32 %or, ptr %caps4, align 32
  br label %if.end

if.end:                                           ; preds = %if.then, %sdhci_readl.exit.if.end_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %20, label %if.end.cleanup_crit_edge [
    i16 -31712, label %if.end.sw.bb_crit_edge
    i16 -31200, label %if.end.sw.bb_crit_edge122
    i16 -31199, label %if.end.sw.bb_crit_edge123
    i16 -31711, label %if.end.sw.bb_crit_edge124
    i16 -31456, label %if.end.sw.bb_crit_edge125
  ]

if.end.sw.bb_crit_edge125:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge124:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge123:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge122:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge122, %if.end.sw.bb_crit_edge123, %if.end.sw.bb_crit_edge124, %if.end.sw.bb_crit_edge125
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not.i94 = icmp eq ptr %25, null
  br i1 %tobool.not.i94, label %if.else.i99, label %if.then.i96, !prof !72

if.then.i96:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call.i95 = tail call i32 %25(ptr noundef %3, i32 noundef 272) #5
  br label %sdhci_readl.exit101

if.else.i99:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i97 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr.i97 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i97, align 16
  %add.ptr.i98 = getelementptr i8, ptr %27, i32 272
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #5, !srcloc !73
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit101

sdhci_readl.exit101:                              ; preds = %if.else.i99, %if.then.i96
  %retval.0.i100 = phi i32 [ %call.i95, %if.then.i96 ], [ %29, %if.else.i99 ]
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i100, ptr %reg, align 4
  %and6 = and i32 %retval.0.i100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %sdhci_readl.exit101.if.end10_crit_edge, label %if.then8

sdhci_readl.exit101.if.end10_crit_edge:           ; preds = %sdhci_readl.exit101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %sdhci_readl.exit101
  call void @__sanitizer_cov_trace_pc() #7
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks, align 4
  %or9 = or i32 %32, 268435456
  store i32 %or9, ptr %quirks, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sdhci_readl.exit101.if.end10_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i102 = tail call zeroext i8 @pci_find_capability(ptr noundef %34, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i102)
  %tobool.not.i103 = icmp eq i8 %call.i102, 0
  br i1 %tobool.not.i103, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end10
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %do.end.i.dev_name.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #8
  br label %sdhci_pci_o2_enable_msi.exit

if.end.i:                                         ; preds = %if.end10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %42, i32 noundef 1, i32 noundef 1, i32 noundef 6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end15.i

do.end9.i:                                        ; preds = %if.end.i
  %mmc11.i = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %43 = ptrtoint ptr %mmc11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc11.i, align 8
  %init_name.i24.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %init_name.i24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i24.i, align 8
  %tobool.not.i25.i = icmp eq ptr %46, null
  br i1 %tobool.not.i25.i, label %if.end.i26.i, label %do.end9.i.dev_name.exit28.i_crit_edge

do.end9.i.dev_name.exit28.i_crit_edge:            ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit28.i

if.end.i26.i:                                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev12.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %class_dev12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %class_dev12.i, align 4
  br label %dev_name.exit28.i

dev_name.exit28.i:                                ; preds = %if.end.i26.i, %do.end9.i.dev_name.exit28.i_crit_edge
  %retval.0.i27.i = phi ptr [ %48, %if.end.i26.i ], [ %46, %do.end9.i.dev_name.exit28.i_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %retval.0.i27.i, i32 noundef %call.i.i) #8
  br label %sdhci_pci_o2_enable_msi.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call17.i = tail call i32 @pci_irq_vector(ptr noundef %50, i32 noundef 0) #5
  %irq.i = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call17.i, ptr %irq.i, align 4
  br label %sdhci_pci_o2_enable_msi.exit

sdhci_pci_o2_enable_msi.exit:                     ; preds = %if.end15.i, %dev_name.exit28.i, %dev_name.exit.i
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %device12 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %device12 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31200, i16 %55)
  %cmp = icmp eq i16 %55, -31200
  br i1 %cmp, label %if.then15, label %sdhci_pci_o2_enable_msi.exit.if.end39_crit_edge

sdhci_pci_o2_enable_msi.exit.if.end39_crit_edge:  ; preds = %sdhci_pci_o2_enable_msi.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then15:                                        ; preds = %sdhci_pci_o2_enable_msi.exit
  %call17 = call i32 @pci_read_config_dword(ptr noundef %53, i32 noundef 776, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %56 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg, align 4
  %and21 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end37_crit_edge, label %do.end

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end:                                           ; preds = %if.end20
  %mmc24 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %58 = ptrtoint ptr %mmc24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmc24, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i104 = icmp eq ptr %61, null
  br i1 %tobool.not.i104, label %if.end.i105, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i105:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i105, %do.end.dev_name.exit_crit_edge
  %retval.0.i106 = phi ptr [ %63, %if.end.i105 ], [ %61, %do.end.dev_name.exit_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i106) #8
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and27 = and i32 %65, -49153
  %or29 = or i32 %and27, 32768
  store i32 %or29, ptr %flags, align 4
  %66 = ptrtoint ptr %mmc24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmc24, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %caps2, align 4
  %or31 = or i32 %69, 2097152
  store i32 %or31, ptr %caps2, align 4
  %70 = load ptr, ptr %mmc24, align 8
  %caps233 = getelementptr inbounds %struct.mmc_host, ptr %70, i32 0, i32 17
  %71 = ptrtoint ptr %caps233 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps233, align 4
  %or34 = or i32 %72, 524288
  store i32 %or34, ptr %caps233, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call36 = call i32 @pci_write_config_dword(ptr noundef %74, i32 noundef 804, i32 noundef 3) #5
  br label %if.end37

if.end37:                                         ; preds = %dev_name.exit, %if.end20.if.end37_crit_edge
  %75 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %host2, align 4
  %get_cd = getelementptr inbounds %struct.sdhci_host, ptr %76, i32 0, i32 11, i32 6
  %77 = ptrtoint ptr %get_cd to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @sdhci_o2_get_cd, ptr %get_cd, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %sdhci_pci_o2_enable_msi.exit.if.end39_crit_edge
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %device41 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %device41 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %device41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31199, i16 %81)
  %cmp43 = icmp eq i16 %81, -31199
  br i1 %cmp43, label %if.then45, label %if.end39.if.end53_crit_edge

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host2, align 4
  %get_cd48 = getelementptr inbounds %struct.sdhci_host, ptr %83, i32 0, i32 11, i32 6
  %84 = ptrtoint ptr %get_cd48 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @sdhci_o2_get_cd, ptr %get_cd48, align 4
  %mmc49 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %85 = ptrtoint ptr %mmc49 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmc49, align 8
  %caps250 = getelementptr inbounds %struct.mmc_host, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %caps250 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %caps250, align 4
  %or51 = or i32 %88, 524288
  store i32 %or51, ptr %caps250, align 4
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 2
  %89 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %quirks2, align 8
  %or52 = or i32 %90, 8
  store i32 %or52, ptr %quirks2, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.end39.if.end53_crit_edge
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 11, i32 12
  %91 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @sdhci_o2_execute_tuning, ptr %execute_tuning, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %device56 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %device56 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31456, i16 %95)
  %cmp58.not = icmp eq i16 %95, -31456
  br i1 %cmp58.not, label %if.end61, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %96 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %tobool.not.i108 = icmp eq ptr %99, null
  br i1 %tobool.not.i108, label %if.else.i113, label %if.then.i110, !prof !72

if.then.i110:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %call.i109 = call i32 %99(ptr noundef %3, i32 noundef 456) #5
  br label %sdhci_readl.exit115

if.else.i113:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i111 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %100 = ptrtoint ptr %ioaddr.i111 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioaddr.i111, align 16
  %add.ptr.i112 = getelementptr i8, ptr %101, i32 456
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #5, !srcloc !73
  %103 = call i32 @llvm.bswap.i32(i32 %102) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit115

sdhci_readl.exit115:                              ; preds = %if.else.i113, %if.then.i110
  %retval.0.i114 = phi i32 [ %call.i109, %if.then.i110 ], [ %103, %if.else.i113 ]
  %or63 = or i32 %retval.0.i114, 4096
  %104 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or63, ptr %reg, align 4
  %105 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i117 = icmp eq ptr %108, null
  br i1 %tobool.not.i117, label %do.body.i, label %if.then.i118, !prof !72

if.then.i118:                                     ; preds = %sdhci_readl.exit115
  call void @__sanitizer_cov_trace_pc() #7
  call void %108(ptr noundef %3, i32 noundef %or63, i32 noundef 456) #5
  br label %cleanup

do.body.i:                                        ; preds = %sdhci_readl.exit115
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  call void @arm_heavy_mb() #5
  %109 = call i32 @llvm.bswap.i32(i32 %or63) #5
  %ioaddr.i119 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %110 = ptrtoint ptr %ioaddr.i119 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ioaddr.i119, align 16
  %add.ptr.i120 = getelementptr i8, ptr %111, i32 456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %109) #5, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i118, %if.end53.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then15.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %if.then.i118 ], [ 0, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_o2_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdhci_pci_o2_probe(ptr noundef %chip)
  %call1 = tail call i32 @sdhci_pci_resume_host(ptr noundef %chip) #5
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2_pci_set_baseclk(ptr nocapture noundef readonly %chip, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %scratch_32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32) #5
  %0 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scratch_32, align 4, !annotation !71
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 772, ptr noundef nonnull %scratch_32) #5
  %3 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scratch_32, align 4
  %and = and i32 %4, 65535
  %or = or i32 %and, %value
  store i32 %or, ptr %scratch_32, align 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef 772, i32 noundef %or) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_pci_o2_fujin2_pci_init(ptr noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  %scratch_32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32) #5
  %0 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scratch_32, align 4, !annotation !71
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 136, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scratch_32, align 4
  %and = and i32 %4, -28673
  store i32 %and, ptr %scratch_32, align 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef 136, i32 noundef %and) #5
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %call4 = call i32 @pci_read_config_dword(ptr noundef %8, i32 noundef 100, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scratch_32, align 4
  %and8 = and i32 %10, -527361
  %or = or i32 %and8, 1024
  store i32 %or, ptr %scratch_32, align 4
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %call10 = call i32 @pci_write_config_dword(ptr noundef %12, i32 noundef 100, i32 noundef %or) #5
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %call12 = call i32 @pci_read_config_dword(ptr noundef %14, i32 noundef 212, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scratch_32, align 4
  %or16 = or i32 %16, 16
  store i32 %or16, ptr %scratch_32, align 4
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %call18 = call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 212, i32 noundef %or16) #5
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %call20 = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef 848, i32 noundef 9362) #5
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %call22 = call i32 @pci_read_config_dword(ptr noundef %22, i32 noundef 104, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scratch_32, align 4
  %and26 = and i32 %24, -12289
  store i32 %and26, ptr %scratch_32, align 4
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %call28 = call i32 @pci_write_config_dword(ptr noundef %26, i32 noundef 104, i32 noundef %and26) #5
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %call30 = call i32 @pci_read_config_dword(ptr noundef %28, i32 noundef 820, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %29 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scratch_32, align 4
  %and34 = and i32 %30, -511
  %or35 = or i32 %and34, 204
  store i32 %or35, ptr %scratch_32, align 4
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %call37 = call i32 @pci_write_config_dword(ptr noundef %32, i32 noundef 820, i32 noundef %or35) #5
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %call39 = call i32 @pci_read_config_dword(ptr noundef %34, i32 noundef 768, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %35 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scratch_32, align 4
  %and43 = and i32 %36, -256
  %or44 = or i32 %and43, 102
  store i32 %or44, ptr %scratch_32, align 4
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %call46 = call i32 @pci_write_config_dword(ptr noundef %38, i32 noundef 768, i32 noundef %or44) #5
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %call48 = call i32 @pci_read_config_dword(ptr noundef %40, i32 noundef 860, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %41 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scratch_32, align 4
  %and52 = and i32 %42, -253
  %or53 = or i32 %and52, 132
  store i32 %or53, ptr %scratch_32, align 4
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 4
  %call55 = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 860, i32 noundef %or53) #5
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %call57 = call i32 @pci_read_config_dword(ptr noundef %46, i32 noundef 992, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %47 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scratch_32, align 4
  %and61 = and i32 %48, -1075838977
  store i32 %and61, ptr %scratch_32, align 4
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %call63 = call i32 @pci_write_config_dword(ptr noundef %50, i32 noundef 992, i32 noundef %and61) #5
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip, align 4
  %call65 = call i32 @pci_read_config_dword(ptr noundef %52, i32 noundef 224, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %if.end60
  %53 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scratch_32, align 4
  %and69 = and i32 %54, 268435455
  %or70 = or i32 %and69, 805306368
  store i32 %or70, ptr %scratch_32, align 4
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %call72 = call i32 @pci_write_config_dword(ptr noundef %56, i32 noundef 224, i32 noundef %or70) #5
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip, align 4
  %call74 = call i32 @pci_read_config_dword(ptr noundef %58, i32 noundef 252, ptr noundef nonnull %scratch_32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %scratch_32, align 4
  %and78 = and i32 %60, -983041
  %or79 = or i32 %and78, 524288
  store i32 %or79, ptr %scratch_32, align 4
  %61 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chip, align 4
  %call81 = call i32 @pci_write_config_dword(ptr noundef %62, i32 noundef 252, i32 noundef %or79) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end68.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_o2_get_cd(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !72

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %3(ptr noundef %private.i, i32 noundef 460) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 460
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !77
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.then, label %sdhci_readw.exit.if.end_crit_edge

sdhci_readw.exit.if.end_crit_edge:                ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @sdhci_o2_enable_internal_clock(ptr noundef %private.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %sdhci_readw.exit.if.end_crit_edge
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i9 = icmp eq ptr %12, null
  br i1 %tobool.not.i9, label %if.else.i14, label %if.then.i11, !prof !72

if.then.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i10 = tail call i32 %12(ptr noundef %private.i, i32 noundef 36) #5
  br label %sdhci_readl.exit

if.else.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i12 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %ioaddr.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i12, align 16
  %add.ptr.i13 = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !73
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i14, %if.then.i11
  %retval.0.i15 = phi i32 [ %call.i10, %if.then.i11 ], [ %16, %if.else.i14 ]
  %and3 = lshr i32 %retval.0.i15, 16
  %and3.lobit = and i32 %and3, 1
  ret i32 %and3.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_o2_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #0 align 64 {
entry:
  %scratch_32.i.i = alloca i32, align 4
  %scratch_8.i = alloca i8, align 1
  %scratch_32.i = alloca i32, align 4
  %scratch_8 = alloca i8, align 1
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %private.i213 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 35, i32 4, i32 2
  %0 = ptrtoint ptr %private.i213 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i213, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scratch_8) #5
  %2 = ptrtoint ptr %scratch_8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %scratch_8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 9
  %3 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timing, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %4, label %if.then [
    i32 9, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge333
  ]

entry.if.end_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #5
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge333
  %6 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %opcode, label %do.end [
    i32 21, label %if.end.if.end30_crit_edge
    i32 19, label %if.end.if.end30_crit_edge334
  ]

if.end.if.end30_crit_edge334:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 326, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %if.end.if.end30_crit_edge334
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !72

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %10(ptr noundef %private.i, i32 noundef 448) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 448
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !77
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %14, %if.else.i ]
  %15 = or i16 %retval.0.i, 2
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i215 = icmp eq ptr %19, null
  br i1 %tobool.not.i215, label %do.body.i, label %if.then.i216, !prof !72

if.then.i216:                                     ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %19(ptr noundef %private.i, i16 noundef zeroext %15, i32 noundef 448) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %20 = tail call i16 @llvm.bswap.i16(i16 %15) #5
  %ioaddr.i217 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %ioaddr.i217 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i217, align 16
  %add.ptr.i218 = getelementptr i8, ptr %22, i32 448
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i218, i16 %20) #5, !srcloc !80
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i216
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %read_w.i220 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %read_w.i220 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_w.i220, align 4
  %tobool.not.i221 = icmp eq ptr %26, null
  br i1 %tobool.not.i221, label %if.else.i226, label %if.then.i223, !prof !72

if.then.i223:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i222 = tail call zeroext i16 %26(ptr noundef %private.i, i32 noundef 44) #5
  br label %sdhci_readw.exit228

if.else.i226:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i224 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %ioaddr.i224 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i224, align 16
  %add.ptr.i225 = getelementptr i8, ptr %28, i32 44
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i225) #5, !srcloc !77
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit228

sdhci_readw.exit228:                              ; preds = %if.else.i226, %if.then.i223
  %retval.0.i227 = phi i16 [ %call.i222, %if.then.i223 ], [ %30, %if.else.i226 ]
  %31 = and i16 %retval.0.i227, -5
  %and = zext i16 %31 to i32
  %32 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %reg_val, align 4
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %write_w.i230 = getelementptr inbounds %struct.sdhci_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %write_w.i230 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_w.i230, align 4
  %tobool.not.i231 = icmp eq ptr %36, null
  br i1 %tobool.not.i231, label %do.body.i235, label %if.then.i232, !prof !72

if.then.i232:                                     ; preds = %sdhci_readw.exit228
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %36(ptr noundef %private.i, i16 noundef zeroext %31, i32 noundef 44) #5
  br label %sdhci_writew.exit236

do.body.i235:                                     ; preds = %sdhci_readw.exit228
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %37 = tail call i16 @llvm.bswap.i16(i16 %31) #5
  %ioaddr.i233 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %ioaddr.i233 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i233, align 16
  %add.ptr.i234 = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i234, i16 %37) #5, !srcloc !80
  br label %sdhci_writew.exit236

sdhci_writew.exit236:                             ; preds = %do.body.i235, %if.then.i232
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call36 = call i32 @pci_read_config_byte(ptr noundef %41, i32 noundef 211, ptr noundef nonnull %scratch_8) #5
  %42 = ptrtoint ptr %scratch_8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %scratch_8, align 1
  %44 = and i8 %43, 127
  store i8 %44, ptr %scratch_8, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call41 = call i32 @pci_write_config_byte(ptr noundef %46, i32 noundef 211, i8 noundef zeroext %44) #5
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call43 = call i32 @pci_read_config_dword(ptr noundef %48, i32 noundef 852, ptr noundef nonnull %reg_val) #5
  %49 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_val, align 4
  %and44 = and i32 %50, -15794177
  %or62 = or i32 %and44, 9502720
  store i32 %or62, ptr %reg_val, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call64 = call i32 @pci_write_config_dword(ptr noundef %52, i32 noundef 852, i32 noundef %or62) #5
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call66 = call i32 @pci_read_config_byte(ptr noundef %54, i32 noundef 211, ptr noundef nonnull %scratch_8) #5
  %55 = ptrtoint ptr %scratch_8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %scratch_8, align 1
  %57 = or i8 %56, -128
  store i8 %57, ptr %scratch_8, align 1
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call71 = call i32 @pci_write_config_byte(ptr noundef %59, i32 noundef 211, i8 noundef zeroext %57) #5
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %read_w.i238 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %read_w.i238 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_w.i238, align 4
  %tobool.not.i239 = icmp eq ptr %63, null
  br i1 %tobool.not.i239, label %if.else.i244, label %if.then.i241, !prof !72

if.then.i241:                                     ; preds = %sdhci_writew.exit236
  call void @__sanitizer_cov_trace_pc() #7
  %call.i240 = call zeroext i16 %63(ptr noundef %private.i, i32 noundef 44) #5
  br label %sdhci_readw.exit246

if.else.i244:                                     ; preds = %sdhci_writew.exit236
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i242 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %ioaddr.i242 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr.i242, align 16
  %add.ptr.i243 = getelementptr i8, ptr %65, i32 44
  %66 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i243) #5, !srcloc !77
  %67 = call i16 @llvm.bswap.i16(i16 %66) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit246

sdhci_readw.exit246:                              ; preds = %if.else.i244, %if.then.i241
  %retval.0.i245 = phi i16 [ %call.i240, %if.then.i241 ], [ %67, %if.else.i244 ]
  %68 = or i16 %retval.0.i245, 4
  %or74 = zext i16 %68 to i32
  %69 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or74, ptr %reg_val, align 4
  %70 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i, align 4
  %write_w.i248 = getelementptr inbounds %struct.sdhci_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write_w.i248 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_w.i248, align 4
  %tobool.not.i249 = icmp eq ptr %73, null
  br i1 %tobool.not.i249, label %do.body.i253, label %if.then.i250, !prof !72

if.then.i250:                                     ; preds = %sdhci_readw.exit246
  call void @__sanitizer_cov_trace_pc() #7
  call void %73(ptr noundef %private.i, i16 noundef zeroext %68, i32 noundef 44) #5
  br label %sdhci_writew.exit254

do.body.i253:                                     ; preds = %sdhci_readw.exit246
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %74 = call i16 @llvm.bswap.i16(i16 %68) #5
  %ioaddr.i251 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %ioaddr.i251 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr.i251, align 16
  %add.ptr.i252 = getelementptr i8, ptr %76, i32 44
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i252, i16 %74) #5, !srcloc !80
  br label %sdhci_writew.exit254

sdhci_writew.exit254:                             ; preds = %do.body.i253, %if.then.i250
  %call76 = call i64 @ktime_get() #5
  %add.i = add i64 %call76, 5000000
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 362) #5
  %ioaddr.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.then106, %sdhci_writew.exit254
  %77 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !72

if.then.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 %80(ptr noundef %private.i, i32 noundef 460) #5
  br label %sdhci_o2_pll_dll_wdt_control.exit

if.else.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 460
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !73
  %84 = call i32 @llvm.bswap.i32(i32 %83) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_o2_pll_dll_wdt_control.exit

sdhci_o2_pll_dll_wdt_control.exit:                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %84, %if.else.i.i ]
  %and92 = and i32 %retval.0.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true97, label %sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge

sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge: ; preds = %sdhci_o2_pll_dll_wdt_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true97:                                  ; preds = %sdhci_o2_pll_dll_wdt_control.exit
  %call98 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call98, %add.i
  br i1 %cmp3.i, label %if.then102, label %if.then106

if.then102:                                       ; preds = %land.lhs.true97
  %85 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %tobool.not.i.i257 = icmp eq ptr %88, null
  br i1 %tobool.not.i.i257, label %if.else.i.i262, label %if.then.i.i259, !prof !72

if.then.i.i259:                                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i258 = call i32 %88(ptr noundef %private.i, i32 noundef 460) #5
  br label %for.end

if.else.i.i262:                                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i261 = getelementptr i8, ptr %90, i32 460
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i261) #5, !srcloc !73
  %92 = call i32 @llvm.bswap.i32(i32 %91) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %for.end

if.then106:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.else.i.i262, %if.then.i.i259, %sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge
  %scratch32.0 = phi i32 [ %call.i.i258, %if.then.i.i259 ], [ %92, %if.else.i.i262 ], [ %retval.0.i.i, %sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge ]
  %and109 = and i32 %scratch32.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.end115, label %for.end.if.end120_crit_edge

for.end.if.end120_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

do.end115:                                        ; preds = %for.end
  %mmc117 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %93 = ptrtoint ptr %mmc117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmc117, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i265 = icmp eq ptr %96, null
  br i1 %tobool.not.i265, label %if.end.i, label %do.end115.dev_name.exit_crit_edge

do.end115.dev_name.exit_crit_edge:                ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 1
  %97 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end115.dev_name.exit_crit_edge
  %retval.0.i266 = phi ptr [ %98, %if.end.i ], [ %96, %do.end115.dev_name.exit_crit_edge ]
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i266) #8
  br label %if.end120

if.end120:                                        ; preds = %dev_name.exit, %for.end.if.end120_crit_edge
  %call121 = call fastcc i32 @sdhci_o2_wait_dll_detect_lock(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %if.end120.if.end136_crit_edge

if.end120.if.end136_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.then123:                                       ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scratch_8.i) #5
  %99 = ptrtoint ptr %scratch_8.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %scratch_8.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32.i) #5
  %100 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %scratch_32.i, align 4
  %101 = ptrtoint ptr %private.i213 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %private.i213, align 128
  %private.i85.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %call3.i = call i32 @pci_read_config_byte(ptr noundef %104, i32 noundef 211, ptr noundef nonnull %scratch_8.i) #5
  %105 = ptrtoint ptr %scratch_8.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %scratch_8.i, align 1
  %107 = and i8 %106, 127
  store i8 %107, ptr %scratch_8.i, align 1
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %102, align 4
  %call6.i = call i32 @pci_write_config_byte(ptr noundef %109, i32 noundef 211, i8 noundef zeroext %107) #5
  %110 = ptrtoint ptr %private.i85.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %private.i85.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %111)
  %cmp134.i = icmp ult i8 %111, 4
  br i1 %cmp134.i, label %while.body.lr.ph.i, label %if.then123.land.lhs.true.i_crit_edge

if.then123.land.lhs.true.i_crit_edge:             ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

while.body.lr.ph.i:                               ; preds = %if.then123
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end38.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %112 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i, align 4
  %write_b.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %write_b.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_b.i.i, align 4
  %tobool.not.i.i269 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i269, label %do.body.i.i, label %if.then.i.i270, !prof !72

if.then.i.i270:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %115(ptr noundef %private.i, i8 noundef zeroext 0, i32 noundef 44) #5
  br label %sdhci_writeb.exit.i

do.body.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i271 = getelementptr i8, ptr %117, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i271, i8 0) #5, !srcloc !82
  br label %sdhci_writeb.exit.i

sdhci_writeb.exit.i:                              ; preds = %do.body.i.i, %if.then.i.i270
  %118 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %tobool.not.i87.i = icmp eq ptr %121, null
  br i1 %tobool.not.i87.i, label %if.else.i.i273, label %if.then.i88.i, !prof !72

if.then.i88.i:                                    ; preds = %sdhci_writeb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i272 = call i32 %121(ptr noundef %private.i, i32 noundef 460) #5
  br label %sdhci_readl.exit.i

if.else.i.i273:                                   ; preds = %sdhci_writeb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i90.i = getelementptr i8, ptr %123, i32 460
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #5, !srcloc !73
  %125 = call i32 @llvm.bswap.i32(i32 %124) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i273, %if.then.i88.i
  %retval.0.i.i274 = phi i32 [ %call.i.i272, %if.then.i88.i ], [ %125, %if.else.i.i273 ]
  %or.i = or i32 %retval.0.i.i274, 4096
  %126 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or.i, ptr %scratch_32.i, align 4
  %127 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i92.i = icmp eq ptr %130, null
  br i1 %tobool.not.i92.i, label %do.body.i96.i, label %if.then.i93.i, !prof !72

if.then.i93.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %130(ptr noundef %private.i, i32 noundef %or.i, i32 noundef 460) #5
  br label %sdhci_writel.exit.i

do.body.i96.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  call void @arm_heavy_mb() #5
  %131 = call i32 @llvm.bswap.i32(i32 %or.i) #5
  %132 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i95.i = getelementptr i8, ptr %133, i32 460
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 %131) #5, !srcloc !76
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i96.i, %if.then.i93.i
  %134 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %102, align 4
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %135, i32 noundef 996, ptr noundef nonnull %scratch_32.i) #5
  %136 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %scratch_32.i, align 4
  %or12.i = or i32 %137, 4194304
  store i32 %or12.i, ptr %scratch_32.i, align 4
  %138 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %102, align 4
  %call14.i = call i32 @pci_write_config_dword(ptr noundef %139, i32 noundef 996, i32 noundef %or12.i) #5
  %140 = ptrtoint ptr %private.i85.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %private.i85.i, align 1
  %idxprom.i = zext i8 %141 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @dmdn_table, i32 0, i32 %idxprom.i
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32.i.i) #5
  %144 = ptrtoint ptr %scratch_32.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %scratch_32.i.i, align 4, !annotation !71
  %145 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %102, align 4
  %call.i97.i = call i32 @pci_read_config_dword(ptr noundef %146, i32 noundef 772, ptr noundef nonnull %scratch_32.i.i) #5
  %147 = ptrtoint ptr %scratch_32.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %scratch_32.i.i, align 4
  %and.i.i = and i32 %148, 65535
  %or.i.i = or i32 %and.i.i, %143
  store i32 %or.i.i, ptr %scratch_32.i.i, align 4
  %149 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %102, align 4
  %call2.i.i = call i32 @pci_write_config_dword(ptr noundef %150, i32 noundef 772, i32 noundef %or.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32.i.i) #5
  %151 = ptrtoint ptr %scratch_8.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %scratch_8.i, align 1
  %152 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i, align 4
  %write_b.i99.i = getelementptr inbounds %struct.sdhci_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %write_b.i99.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_b.i99.i, align 4
  %tobool.not.i100.i = icmp eq ptr %155, null
  br i1 %tobool.not.i100.i, label %do.body.i104.i, label %if.then.i101.i, !prof !72

if.then.i101.i:                                   ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %155(ptr noundef %private.i, i8 noundef zeroext 1, i32 noundef 44) #5
  br label %sdhci_writeb.exit105.i

do.body.i104.i:                                   ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i103.i = getelementptr i8, ptr %157, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i103.i, i8 1) #5, !srcloc !82
  br label %sdhci_writeb.exit105.i

sdhci_writeb.exit105.i:                           ; preds = %do.body.i104.i, %if.then.i101.i
  %158 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmc.i, align 8
  %private.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %159, i32 0, i32 70
  %ops.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %159, i32 1, i32 1, i32 0, i32 6
  %160 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops.i.i.i, align 4
  %read_w.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %read_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read_w.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %163, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !72

if.then.i.i.i:                                    ; preds = %sdhci_writeb.exit105.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i16 %163(ptr noundef %private.i.i.i, i32 noundef 460) #5
  br label %sdhci_readw.exit.i.i

if.else.i.i.i:                                    ; preds = %sdhci_writeb.exit105.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %159, i32 1, i32 1, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %165, i32 460
  %166 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #5, !srcloc !77
  %167 = call i16 @llvm.bswap.i16(i16 %166) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit.i.i

sdhci_readw.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %call.i.i.i, %if.then.i.i.i ], [ %167, %if.else.i.i.i ]
  %168 = and i16 %retval.0.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool.not.i106.i = icmp eq i16 %168, 0
  br i1 %tobool.not.i106.i, label %if.then.i107.i, label %sdhci_readw.exit.i.i.if.end.i.i_crit_edge

sdhci_readw.exit.i.i.if.end.i.i_crit_edge:        ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i107.i:                                   ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @sdhci_o2_enable_internal_clock(ptr noundef %private.i.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i107.i, %sdhci_readw.exit.i.i.if.end.i.i_crit_edge
  %169 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops.i.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %tobool.not.i9.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i9.i.i, label %if.else.i14.i.i, label %if.then.i11.i.i, !prof !72

if.then.i11.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i10.i.i = call i32 %172(ptr noundef %private.i.i.i, i32 noundef 36) #5
  br label %sdhci_o2_get_cd.exit.i

if.else.i14.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i12.i.i = getelementptr inbounds %struct.mmc_host, ptr %159, i32 1, i32 1, i32 0, i32 1, i32 1
  %173 = ptrtoint ptr %ioaddr.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ioaddr.i12.i.i, align 16
  %add.ptr.i13.i.i = getelementptr i8, ptr %174, i32 36
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i.i) #5, !srcloc !73
  %176 = call i32 @llvm.bswap.i32(i32 %175) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_o2_get_cd.exit.i

sdhci_o2_get_cd.exit.i:                           ; preds = %if.else.i14.i.i, %if.then.i11.i.i
  %retval.0.i15.i.i = phi i32 [ %call.i10.i.i, %if.then.i11.i.i ], [ %176, %if.else.i14.i.i ]
  %177 = and i32 %retval.0.i15.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool17.not.i = icmp eq i32 %177, 0
  br i1 %tobool17.not.i, label %do.end32.i, label %if.then.i275

if.then.i275:                                     ; preds = %sdhci_o2_get_cd.exit.i
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %call18.i = call fastcc i32 @sdhci_o2_wait_dll_detect_lock(ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then.i275
  %178 = ptrtoint ptr %scratch_8.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %scratch_8.i, align 1
  %180 = or i8 %179, 4
  store i8 %180, ptr %scratch_8.i, align 1
  %181 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops.i, align 4
  %write_b.i109.i = getelementptr inbounds %struct.sdhci_ops, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %write_b.i109.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_b.i109.i, align 4
  %tobool.not.i110.i = icmp eq ptr %184, null
  br i1 %tobool.not.i110.i, label %do.body.i114.i, label %if.then.i111.i, !prof !72

if.then.i111.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %184(ptr noundef %private.i, i8 noundef zeroext %180, i32 noundef 44) #5
  br label %while.end.i

do.body.i114.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i113.i = getelementptr i8, ptr %186, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113.i, i8 %180) #5, !srcloc !82
  br label %while.end.i

do.end.i:                                         ; preds = %if.then.i275
  %187 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %188, i32 0, i32 1, i32 3
  %189 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i117.i = icmp eq ptr %190, null
  br i1 %tobool.not.i117.i, label %if.end.i118.i, label %do.end.i.if.end38.i_crit_edge

do.end.i.if.end38.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.end.i118.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %188, i32 0, i32 1
  %191 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %class_dev.i, align 4
  br label %if.end38.i

do.end32.i:                                       ; preds = %sdhci_o2_get_cd.exit.i
  %193 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmc.i, align 8
  %init_name.i120.i = getelementptr inbounds %struct.mmc_host, ptr %194, i32 0, i32 1, i32 3
  %195 = ptrtoint ptr %init_name.i120.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %init_name.i120.i, align 8
  %tobool.not.i121.i = icmp eq ptr %196, null
  br i1 %tobool.not.i121.i, label %if.end.i122.i, label %do.end32.i.dev_name.exit124.i_crit_edge

do.end32.i.dev_name.exit124.i_crit_edge:          ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit124.i

if.end.i122.i:                                    ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev35.i = getelementptr inbounds %struct.mmc_host, ptr %194, i32 0, i32 1
  %197 = ptrtoint ptr %class_dev35.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %class_dev35.i, align 4
  br label %dev_name.exit124.i

dev_name.exit124.i:                               ; preds = %if.end.i122.i, %do.end32.i.dev_name.exit124.i_crit_edge
  %retval.0.i123.i = phi ptr [ %198, %if.end.i122.i ], [ %196, %do.end32.i.dev_name.exit124.i_crit_edge ]
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i123.i) #8
  %199 = ptrtoint ptr %private.i85.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %.pr.i = load i8, ptr %private.i85.i, align 1
  br label %land.lhs.true.i

if.end38.i:                                       ; preds = %if.end.i118.i, %do.end.i.if.end38.i_crit_edge
  %retval.0.i119.i = phi ptr [ %192, %if.end.i118.i ], [ %190, %do.end.i.if.end38.i_crit_edge ]
  %200 = ptrtoint ptr %private.i85.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %private.i85.i, align 1
  %conv27.i = zext i8 %201 to i32
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i119.i, i32 noundef %conv27.i) #8
  %202 = ptrtoint ptr %private.i85.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %private.i85.i, align 1
  %inc.i = add i8 %203, 1
  store i8 %inc.i, ptr %private.i85.i, align 1
  %cmp.i276 = icmp ult i8 %inc.i, 4
  br i1 %cmp.i276, label %if.end38.i.while.body.i_crit_edge, label %if.end38.i.land.lhs.true.i_crit_edge

if.end38.i.land.lhs.true.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end38.i.while.body.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %do.body.i114.i, %if.then.i111.i
  %204 = ptrtoint ptr %private.i85.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %private.i85.i, align 1
  %inc141.i = add i8 %205, 1
  store i8 %inc141.i, ptr %private.i85.i, align 1
  %206 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %102, align 4
  %call56.i.c = call i32 @pci_read_config_byte(ptr noundef %207, i32 noundef 211, ptr noundef nonnull %scratch_8.i) #5
  %208 = ptrtoint ptr %scratch_8.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %scratch_8.i, align 1
  %210 = or i8 %209, -128
  store i8 %210, ptr %scratch_8.i, align 1
  %211 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %102, align 4
  %call61.i.c = call i32 @pci_write_config_byte(ptr noundef %212, i32 noundef 211, i8 noundef zeroext %210) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch_8.i) #5
  br label %if.end136

land.lhs.true.i:                                  ; preds = %if.end38.i.land.lhs.true.i_crit_edge, %dev_name.exit124.i, %if.then123.land.lhs.true.i_crit_edge
  %213 = phi i8 [ %.pr.i, %dev_name.exit124.i ], [ %111, %if.then123.land.lhs.true.i_crit_edge ], [ %inc.i, %if.end38.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %213)
  %cmp43.i = icmp eq i8 %213, 4
  br i1 %cmp43.i, label %do.end48.i, label %land.lhs.true.i.sdhci_o2_dll_recovery.exit_crit_edge

land.lhs.true.i.sdhci_o2_dll_recovery.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdhci_o2_dll_recovery.exit

do.end48.i:                                       ; preds = %land.lhs.true.i
  %mmc50.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %214 = ptrtoint ptr %mmc50.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mmc50.i, align 8
  %init_name.i125.i = getelementptr inbounds %struct.mmc_host, ptr %215, i32 0, i32 1, i32 3
  %216 = ptrtoint ptr %init_name.i125.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %init_name.i125.i, align 8
  %tobool.not.i126.i = icmp eq ptr %217, null
  br i1 %tobool.not.i126.i, label %if.end.i127.i, label %do.end48.i.dev_name.exit129.i_crit_edge

do.end48.i.dev_name.exit129.i_crit_edge:          ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit129.i

if.end.i127.i:                                    ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev51.i = getelementptr inbounds %struct.mmc_host, ptr %215, i32 0, i32 1
  %218 = ptrtoint ptr %class_dev51.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %class_dev51.i, align 4
  br label %dev_name.exit129.i

dev_name.exit129.i:                               ; preds = %if.end.i127.i, %do.end48.i.dev_name.exit129.i_crit_edge
  %retval.0.i128.i = phi ptr [ %219, %if.end.i127.i ], [ %217, %do.end48.i.dev_name.exit129.i_crit_edge ]
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i128.i) #8
  br label %sdhci_o2_dll_recovery.exit

sdhci_o2_dll_recovery.exit:                       ; preds = %dev_name.exit129.i, %land.lhs.true.i.sdhci_o2_dll_recovery.exit_crit_edge
  %220 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %102, align 4
  %call56.i = call i32 @pci_read_config_byte(ptr noundef %221, i32 noundef 211, ptr noundef nonnull %scratch_8.i) #5
  %222 = ptrtoint ptr %scratch_8.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %scratch_8.i, align 1
  %224 = or i8 %223, -128
  store i8 %224, ptr %scratch_8.i, align 1
  %225 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %102, align 4
  %call61.i = call i32 @pci_write_config_byte(ptr noundef %226, i32 noundef 211, i8 noundef zeroext %224) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch_8.i) #5
  %mmc131 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %227 = ptrtoint ptr %mmc131 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mmc131, align 8
  %init_name.i277 = getelementptr inbounds %struct.mmc_host, ptr %228, i32 0, i32 1, i32 3
  %229 = ptrtoint ptr %init_name.i277 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %init_name.i277, align 8
  %tobool.not.i278 = icmp eq ptr %230, null
  br i1 %tobool.not.i278, label %if.end.i279, label %sdhci_o2_dll_recovery.exit.dev_name.exit281_crit_edge

sdhci_o2_dll_recovery.exit.dev_name.exit281_crit_edge: ; preds = %sdhci_o2_dll_recovery.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit281

if.end.i279:                                      ; preds = %sdhci_o2_dll_recovery.exit
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev132 = getelementptr inbounds %struct.mmc_host, ptr %228, i32 0, i32 1
  %231 = ptrtoint ptr %class_dev132 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %class_dev132, align 4
  br label %dev_name.exit281

dev_name.exit281:                                 ; preds = %if.end.i279, %sdhci_o2_dll_recovery.exit.dev_name.exit281_crit_edge
  %retval.0.i280 = phi ptr [ %232, %if.end.i279 ], [ %230, %sdhci_o2_dll_recovery.exit.dev_name.exit281_crit_edge ]
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i280) #8
  br label %cleanup

if.end136:                                        ; preds = %while.end.i, %if.end120.if.end136_crit_edge
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 6
  %233 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %234)
  %cmp138 = icmp eq i8 %234, 3
  br i1 %cmp138, label %if.then140, label %if.end152.critedge

if.then140:                                       ; preds = %if.end136
  %235 = ptrtoint ptr %bus_width to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 2, ptr %bus_width, align 1
  call void @sdhci_set_bus_width(ptr noundef %private.i, i32 noundef 2) #5
  %236 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ops.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i283 = icmp eq ptr %239, null
  br i1 %tobool.not.i.i283, label %if.else.i.i288, label %if.then.i.i285, !prof !72

if.then.i.i285:                                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i284 = call zeroext i16 %239(ptr noundef %private.i, i32 noundef 272) #5
  br label %sdhci_readw.exit.i

if.else.i.i288:                                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  %240 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i287 = getelementptr i8, ptr %241, i32 272
  %242 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i287) #5, !srcloc !77
  %243 = call i16 @llvm.bswap.i16(i16 %242) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i288, %if.then.i.i285
  %retval.0.i.i289 = phi i16 [ %call.i.i284, %if.then.i.i285 ], [ %243, %if.else.i.i288 ]
  %244 = and i16 %retval.0.i.i289, -17
  %245 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ops.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %246, i32 0, i32 4
  %247 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %248, null
  br i1 %tobool.not.i5.i, label %do.body.i.i290, label %if.then.i6.i, !prof !72

if.then.i6.i:                                     ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %248(ptr noundef %private.i, i16 noundef zeroext %244, i32 noundef 272) #5
  br label %sdhci_o2_set_tuning_mode.exit

do.body.i.i290:                                   ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %249 = call i16 @llvm.bswap.i16(i16 %244) #5
  %250 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %251, i32 272
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %249) #5, !srcloc !80
  br label %sdhci_o2_set_tuning_mode.exit

sdhci_o2_set_tuning_mode.exit:                    ; preds = %do.body.i.i290, %if.then.i6.i
  call void @sdhci_start_tuning(ptr noundef %private.i) #5
  call fastcc void @__sdhci_o2_execute_tuning(ptr noundef %private.i, i32 noundef %opcode)
  call void @sdhci_end_tuning(ptr noundef %private.i) #5
  %252 = ptrtoint ptr %bus_width to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 3, ptr %bus_width, align 1
  call void @sdhci_set_bus_width(ptr noundef %private.i, i32 noundef 3) #5
  br label %if.end152

if.end152.critedge:                               ; preds = %if.end136
  %253 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ops.i, align 4
  %read_w.i.i292 = getelementptr inbounds %struct.sdhci_ops, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %read_w.i.i292 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read_w.i.i292, align 4
  %tobool.not.i.i293 = icmp eq ptr %256, null
  br i1 %tobool.not.i.i293, label %if.else.i.i298, label %if.then.i.i295, !prof !72

if.then.i.i295:                                   ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i294 = call zeroext i16 %256(ptr noundef %private.i, i32 noundef 272) #5
  br label %sdhci_readw.exit.i302

if.else.i.i298:                                   ; preds = %if.end152.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %257 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i297 = getelementptr i8, ptr %258, i32 272
  %259 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i297) #5, !srcloc !77
  %260 = call i16 @llvm.bswap.i16(i16 %259) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit.i302

sdhci_readw.exit.i302:                            ; preds = %if.else.i.i298, %if.then.i.i295
  %retval.0.i.i299 = phi i16 [ %call.i.i294, %if.then.i.i295 ], [ %260, %if.else.i.i298 ]
  %261 = and i16 %retval.0.i.i299, -17
  %262 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ops.i, align 4
  %write_w.i.i300 = getelementptr inbounds %struct.sdhci_ops, ptr %263, i32 0, i32 4
  %264 = ptrtoint ptr %write_w.i.i300 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write_w.i.i300, align 4
  %tobool.not.i5.i301 = icmp eq ptr %265, null
  br i1 %tobool.not.i5.i301, label %do.body.i.i306, label %if.then.i6.i303, !prof !72

if.then.i6.i303:                                  ; preds = %sdhci_readw.exit.i302
  call void @__sanitizer_cov_trace_pc() #7
  call void %265(ptr noundef %private.i, i16 noundef zeroext %261, i32 noundef 272) #5
  br label %sdhci_o2_set_tuning_mode.exit307

do.body.i.i306:                                   ; preds = %sdhci_readw.exit.i302
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %266 = call i16 @llvm.bswap.i16(i16 %261) #5
  %267 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i8.i305 = getelementptr i8, ptr %268, i32 272
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i305, i16 %266) #5, !srcloc !80
  br label %sdhci_o2_set_tuning_mode.exit307

sdhci_o2_set_tuning_mode.exit307:                 ; preds = %do.body.i.i306, %if.then.i6.i303
  call void @sdhci_start_tuning(ptr noundef %private.i) #5
  call fastcc void @__sdhci_o2_execute_tuning(ptr noundef %private.i, i32 noundef %opcode)
  call void @sdhci_end_tuning(ptr noundef %private.i) #5
  br label %if.end152

if.end152:                                        ; preds = %sdhci_o2_set_tuning_mode.exit307, %sdhci_o2_set_tuning_mode.exit
  %269 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i, align 4
  %read_w.i309 = getelementptr inbounds %struct.sdhci_ops, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %read_w.i309 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %read_w.i309, align 4
  %tobool.not.i310 = icmp eq ptr %272, null
  br i1 %tobool.not.i310, label %if.else.i315, label %if.then.i312, !prof !72

if.then.i312:                                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  %call.i311 = call zeroext i16 %272(ptr noundef %private.i, i32 noundef 448) #5
  br label %sdhci_readw.exit317

if.else.i315:                                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  %273 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i314 = getelementptr i8, ptr %274, i32 448
  %275 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i314) #5, !srcloc !77
  %276 = call i16 @llvm.bswap.i16(i16 %275) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit317

sdhci_readw.exit317:                              ; preds = %if.else.i315, %if.then.i312
  %retval.0.i316 = phi i16 [ %call.i311, %if.then.i312 ], [ %276, %if.else.i315 ]
  %277 = and i16 %retval.0.i316, -3
  %278 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i, align 4
  %write_w.i319 = getelementptr inbounds %struct.sdhci_ops, ptr %279, i32 0, i32 4
  %280 = ptrtoint ptr %write_w.i319 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write_w.i319, align 4
  %tobool.not.i320 = icmp eq ptr %281, null
  br i1 %tobool.not.i320, label %do.body.i324, label %if.then.i321, !prof !72

if.then.i321:                                     ; preds = %sdhci_readw.exit317
  call void @__sanitizer_cov_trace_pc() #7
  call void %281(ptr noundef %private.i, i16 noundef zeroext %277, i32 noundef 448) #5
  br label %sdhci_writew.exit326

do.body.i324:                                     ; preds = %sdhci_readw.exit317
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %282 = call i16 @llvm.bswap.i16(i16 %277) #5
  %283 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i323 = getelementptr i8, ptr %284, i32 448
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i323, i16 %282) #5, !srcloc !80
  br label %sdhci_writew.exit326

sdhci_writew.exit326:                             ; preds = %do.body.i324, %if.then.i321
  call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 2) #5
  call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 4) #5
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %285 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %flags, align 4
  %and157 = and i32 %286, -8193
  store i32 %and157, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %sdhci_writew.exit326, %dev_name.exit281, %do.end, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ -22, %do.end ], [ 0, %sdhci_writew.exit326 ], [ -22, %dev_name.exit281 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch_8) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_o2_enable_internal_clock(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !72

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 460) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 460
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !73
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %or = or i32 %retval.0.i, 4096
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i32 = icmp eq ptr %11, null
  br i1 %tobool.not.i32, label %do.body.i, label %if.then.i33, !prof !72

if.then.i33:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %host, i32 noundef %or, i32 noundef 460) #5
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %ioaddr.i34 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i34, align 16
  %add.ptr.i35 = getelementptr i8, ptr %14, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %12) #5, !srcloc !76
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #5
  %and = and i32 %retval.0.i, -4097
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_l.i37 = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_l.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_l.i37, align 4
  %tobool.not.i38 = icmp eq ptr %19, null
  br i1 %tobool.not.i38, label %do.body.i42, label %if.then.i39, !prof !72

if.then.i39:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %19(ptr noundef %host, i32 noundef %and, i32 noundef 460) #5
  br label %sdhci_writel.exit43

do.body.i42:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %ioaddr.i40 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i40, align 16
  %add.ptr.i41 = getelementptr i8, ptr %22, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %20) #5, !srcloc !76
  br label %sdhci_writel.exit43

sdhci_writel.exit43:                              ; preds = %do.body.i42, %if.then.i39
  %or1 = or i32 %and, 262144
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %write_l.i45 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_l.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_l.i45, align 4
  %tobool.not.i46 = icmp eq ptr %26, null
  br i1 %tobool.not.i46, label %do.body.i50, label %if.then.i47, !prof !72

if.then.i47:                                      ; preds = %sdhci_writel.exit43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %26(ptr noundef %host, i32 noundef %or1, i32 noundef 460) #5
  br label %sdhci_writel.exit51

do.body.i50:                                      ; preds = %sdhci_writel.exit43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %or1) #5
  %ioaddr.i48 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i48, align 16
  %add.ptr.i49 = getelementptr i8, ptr %29, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %27) #5, !srcloc !76
  br label %sdhci_writel.exit51

sdhci_writel.exit51:                              ; preds = %do.body.i50, %if.then.i47
  %call2 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call2, 20000000
  %ioaddr.i56 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %sdhci_writel.exit51
  %call4 = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call4, %add.i
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i53 = icmp eq ptr %33, null
  br i1 %tobool.not.i53, label %if.else.i58, label %if.then.i55, !prof !72

if.then.i55:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call.i54 = tail call zeroext i16 %33(ptr noundef %host, i32 noundef 460) #5
  br label %sdhci_readw.exit

if.else.i58:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %ioaddr.i56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i56, align 16
  %add.ptr.i57 = getelementptr i8, ptr %35, i32 460
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57) #5, !srcloc !77
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i58, %if.then.i55
  %retval.0.i59 = phi i16 [ %call.i54, %if.then.i55 ], [ %37, %if.else.i58 ]
  %38 = and i16 %retval.0.i59, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not = icmp eq i16 %38, 0
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %sdhci_readw.exit
  br i1 %cmp3.i.i, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %39 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i60 = icmp eq ptr %42, null
  br i1 %tobool.not.i60, label %if.end.i, label %do.end.cleanup.thread83_crit_edge

do.end.cleanup.thread83_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread83

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev, align 4
  br label %cleanup.thread83

cleanup.thread83:                                 ; preds = %if.end.i, %do.end.cleanup.thread83_crit_edge
  %retval.0.i61 = phi ptr [ %44, %if.end.i ], [ %42, %do.end.cleanup.thread83_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i61) #8
  br label %out.sink.split

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #5
  br label %while.cond

while.end:                                        ; preds = %sdhci_readw.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #5
  %call.i62 = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i62, 50000000
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %while.end
  %call2.i = tail call i64 @ktime_get() #5
  %cmp3.i.i.i = icmp sgt i64 %call2.i, %add.i.i
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !72

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %50(ptr noundef %host, i32 noundef 36) #5
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %ioaddr.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i56, align 16
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 36
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !73
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %54, %if.else.i.i ]
  %and.i = lshr i32 %retval.0.i.i, 16
  %and5.i = lshr i32 %retval.0.i.i, 18
  %55 = xor i32 %and.i, %and5.i
  %56 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp eq i32 %56, 0
  br i1 %cmp.i, label %sdhci_readl.exit.i.out_crit_edge, label %if.end.i63

sdhci_readl.exit.i.out_crit_edge:                 ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i63:                                       ; preds = %sdhci_readl.exit.i
  br i1 %cmp3.i.i.i, label %do.end.i, label %cleanup.i

do.end.i:                                         ; preds = %if.end.i63
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %57 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %58, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i18.i = icmp eq ptr %60, null
  br i1 %tobool.not.i18.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i19.i = phi ptr [ %62, %if.end.i.i ], [ %60, %do.end.i.dev_name.exit.i_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i19.i) #8
  br label %out.sink.split

cleanup.i:                                        ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #5
  br label %while.cond.i

out.sink.split:                                   ; preds = %dev_name.exit.i, %cleanup.thread83
  tail call void @sdhci_dumpregs(ptr noundef %host) #5
  br label %out

out:                                              ; preds = %out.sink.split, %sdhci_readl.exit.i.out_crit_edge
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool.not.i65 = icmp eq ptr %67, null
  br i1 %tobool.not.i65, label %if.else.i70, label %if.then.i67, !prof !72

if.then.i67:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %call.i66 = tail call i32 %67(ptr noundef %host, i32 noundef 460) #5
  br label %sdhci_readl.exit72

if.else.i70:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %ioaddr.i56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr.i56, align 16
  %add.ptr.i69 = getelementptr i8, ptr %69, i32 460
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #5, !srcloc !73
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_readl.exit72

sdhci_readl.exit72:                               ; preds = %if.else.i70, %if.then.i67
  %retval.0.i71 = phi i32 [ %call.i66, %if.then.i67 ], [ %71, %if.else.i70 ]
  %and14 = and i32 %retval.0.i71, -262145
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %write_l.i74 = getelementptr inbounds %struct.sdhci_ops, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %write_l.i74 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_l.i74, align 4
  %tobool.not.i75 = icmp eq ptr %75, null
  br i1 %tobool.not.i75, label %do.body.i79, label %if.then.i76, !prof !72

if.then.i76:                                      ; preds = %sdhci_readl.exit72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %75(ptr noundef %host, i32 noundef %and14, i32 noundef 460) #5
  br label %sdhci_writel.exit81

do.body.i79:                                      ; preds = %sdhci_readl.exit72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %76 = tail call i32 @llvm.bswap.i32(i32 %and14) #5
  %77 = ptrtoint ptr %ioaddr.i56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioaddr.i56, align 16
  %add.ptr.i78 = getelementptr i8, ptr %78, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %76) #5, !srcloc !76
  br label %sdhci_writel.exit81

sdhci_writel.exit81:                              ; preds = %do.body.i79, %if.then.i76
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_o2_wait_dll_detect_lock(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 189) #5
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then19, %entry
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !72

if.then.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %3(ptr noundef %host, i32 noundef 460) #5
  br label %sdhci_o2_pll_dll_wdt_control.exit

if.else.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 460
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !73
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_o2_pll_dll_wdt_control.exit

sdhci_o2_pll_dll_wdt_control.exit:                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %7, %if.else.i.i ]
  %and = and i32 %retval.0.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge, label %land.lhs.true

sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge: ; preds = %sdhci_o2_pll_dll_wdt_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %sdhci_o2_pll_dll_wdt_control.exit
  %call12 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then19

if.then15:                                        ; preds = %land.lhs.true
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i.i30 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i30, label %if.else.i.i35, label %if.then.i.i32, !prof !72

if.then.i.i32:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i31 = tail call i32 %11(ptr noundef %host, i32 noundef 460) #5
  br label %for.end

if.else.i.i35:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i34 = getelementptr i8, ptr %13, i32 460
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #5, !srcloc !73
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %for.end

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.else.i.i35, %if.then.i.i32, %sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge
  %scratch32.0 = phi i32 [ %call.i.i31, %if.then.i.i32 ], [ %15, %if.else.i.i35 ], [ %retval.0.i.i, %sdhci_o2_pll_dll_wdt_control.exit.for.end_crit_edge ]
  %and21 = and i32 %scratch32.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond = select i1 %tobool22.not, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_start_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sdhci_o2_execute_tuning(ptr noundef %host, i32 noundef %opcode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdhci_send_tuning(ptr noundef %host, i32 noundef %opcode) #5
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !72

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !77
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %conv = zext i16 %retval.0.i to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %sdhci_readw.exit
  %and2 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %tuning_done = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 71
  %8 = ptrtoint ptr %tuning_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tuning_done, align 16
  br label %cleanup16

do.end:                                           ; preds = %if.then
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i26 = icmp eq ptr %12, null
  br i1 %tobool.not.i26, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.cleanup_crit_edge
  %retval.0.i27 = phi ptr [ %14, %if.end.i ], [ %12, %do.end.cleanup_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i27) #8
  br label %do.end10

for.inc:                                          ; preds = %sdhci_readw.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 150
  br i1 %exitcond.not, label %for.inc.do.end10_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end10:                                         ; preds = %for.inc.do.end10_crit_edge, %cleanup
  %mmc12 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %16 = ptrtoint ptr %mmc12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc12, align 8
  %init_name.i28 = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i28, align 8
  %tobool.not.i29 = icmp eq ptr %19, null
  br i1 %tobool.not.i29, label %if.end.i30, label %do.end10.dev_name.exit32_crit_edge

do.end10.dev_name.exit32_crit_edge:               ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit32

if.end.i30:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev13 = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev13, align 4
  br label %dev_name.exit32

dev_name.exit32:                                  ; preds = %if.end.i30, %do.end10.dev_name.exit32_crit_edge
  %retval.0.i31 = phi ptr [ %21, %if.end.i30 ], [ %19, %do.end10.dev_name.exit32_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i31) #8
  tail call void @sdhci_reset_tuning(ptr noundef %host) #5
  br label %cleanup16

cleanup16:                                        ; preds = %dev_name.exit32, %cleanup.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_end_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_send_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pci_resume_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pci_o2_set_clock(ptr noundef %host, i32 noundef %clock) #0 align 64 {
entry:
  %scratch_32.i61 = alloca i32, align 4
  %scratch_32.i = alloca i32, align 4
  %scratch = alloca i8, align 1
  %scratch_32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scratch) #5
  %0 = ptrtoint ptr %scratch to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %scratch, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32) #5
  %1 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scratch_32, align 4, !annotation !71
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %actual_clock, align 8
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !72

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %10(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #5, !srcloc !80
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writew.exit.cleanup_crit_edge, label %if.end

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sdhci_writew.exit
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call2 = call i32 @pci_read_config_byte(ptr noundef %14, i32 noundef 211, ptr noundef nonnull %scratch) #5
  %15 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scratch, align 1
  %17 = and i8 %16, 127
  store i8 %17, ptr %scratch, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call5 = call i32 @pci_write_config_byte(ptr noundef %19, i32 noundef 211, i8 noundef zeroext %17) #5
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp6 = icmp eq i32 %21, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %clock)
  %cmp8 = icmp eq i32 %clock, 200000000
  %or.cond = and i1 %cmp8, %cmp6
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %call12 = call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef 772, ptr noundef nonnull %scratch_32) #5
  %24 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scratch_32, align 4
  %and13 = and i32 %25, -65536
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 740818944, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 740818944
  br i1 %cmp14.not, label %if.then10.if.end25_crit_edge, label %if.then16

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32.i) #5
  %26 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %scratch_32.i, align 4, !annotation !71
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %28, i32 noundef 772, ptr noundef nonnull %scratch_32.i) #5
  %29 = ptrtoint ptr %scratch_32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scratch_32.i, align 4
  %and.i = and i32 %30, 65535
  %or.i = or i32 %and.i, 740818944
  store i32 %or.i, ptr %scratch_32.i, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %32, i32 noundef 772, i32 noundef %or.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32.i) #5
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 621805568, i32 %and13)
  %cmp21.not = icmp eq i32 %and13, 621805568
  br i1 %cmp21.not, label %if.else.if.end25_crit_edge, label %if.then23

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch_32.i61) #5
  %33 = ptrtoint ptr %scratch_32.i61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %scratch_32.i61, align 4, !annotation !71
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %call.i62 = call i32 @pci_read_config_dword(ptr noundef %35, i32 noundef 772, ptr noundef nonnull %scratch_32.i61) #5
  %36 = ptrtoint ptr %scratch_32.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scratch_32.i61, align 4
  %and.i63 = and i32 %37, 65535
  %or.i64 = or i32 %and.i63, 621805568
  store i32 %or.i64, ptr %scratch_32.i61, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %call2.i65 = call i32 @pci_write_config_dword(ptr noundef %39, i32 noundef 772, i32 noundef %or.i64) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32.i61) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge, %if.then16, %if.then10.if.end25_crit_edge
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %call27 = call i32 @pci_read_config_dword(ptr noundef %41, i32 noundef 852, ptr noundef nonnull %scratch_32) #5
  %42 = ptrtoint ptr %scratch_32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scratch_32, align 4
  %and28 = and i32 %43, -15794177
  store i32 %and28, ptr %scratch_32, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %call30 = call i32 @pci_write_config_dword(ptr noundef %45, i32 noundef 852, i32 noundef %and28) #5
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %call32 = call i32 @pci_read_config_byte(ptr noundef %47, i32 noundef 211, ptr noundef nonnull %scratch) #5
  %48 = ptrtoint ptr %scratch to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %scratch, align 1
  %50 = or i8 %49, -128
  store i8 %50, ptr %scratch, align 1
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %call36 = call i32 @pci_write_config_byte(ptr noundef %52, i32 noundef 211, i8 noundef zeroext %50) #5
  %53 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmc, align 8
  %actual_clock38 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 58
  %call39 = call zeroext i16 @sdhci_calc_clk(ptr noundef %host, i32 noundef %clock, ptr noundef %actual_clock38) #5
  %55 = or i16 %call39, 1
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i, !prof !72

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void %59(ptr noundef %host, i16 noundef zeroext %55, i32 noundef 44) #5
  br label %sdhci_writew.exit.i

do.body.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %60 = call i16 @llvm.bswap.i16(i16 %55) #5
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 44
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %60) #5, !srcloc !80
  br label %sdhci_writew.exit.i

sdhci_writew.exit.i:                              ; preds = %do.body.i.i, %if.then.i.i
  call fastcc void @sdhci_o2_enable_internal_clock(ptr noundef %host) #5
  %63 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmc, align 8
  %private.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 70
  %ops.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 1, i32 1, i32 0, i32 6
  %65 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i.i.i, align 4
  %read_w.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %read_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_w.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !72

if.then.i.i.i:                                    ; preds = %sdhci_writew.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i16 %68(ptr noundef %private.i.i.i, i32 noundef 460) #5
  br label %sdhci_readw.exit.i.i

if.else.i.i.i:                                    ; preds = %sdhci_writew.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 1, i32 1, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 460
  %71 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #5, !srcloc !77
  %72 = call i16 @llvm.bswap.i16(i16 %71) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %sdhci_readw.exit.i.i

sdhci_readw.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %call.i.i.i, %if.then.i.i.i ], [ %72, %if.else.i.i.i ]
  %73 = and i16 %retval.0.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i11.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i11.i, label %if.then.i12.i, label %sdhci_readw.exit.i.i.if.end.i.i_crit_edge

sdhci_readw.exit.i.i.if.end.i.i_crit_edge:        ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i12.i:                                    ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @sdhci_o2_enable_internal_clock(ptr noundef %private.i.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i12.i, %sdhci_readw.exit.i.i.if.end.i.i_crit_edge
  %74 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool.not.i9.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i9.i.i, label %if.else.i14.i.i, label %if.then.i11.i.i, !prof !72

if.then.i11.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i10.i.i = call i32 %77(ptr noundef %private.i.i.i, i32 noundef 36) #5
  br label %sdhci_o2_get_cd.exit.i

if.else.i14.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i12.i.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 1, i32 1, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %ioaddr.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr.i12.i.i, align 16
  %add.ptr.i13.i.i = getelementptr i8, ptr %79, i32 36
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i.i) #5, !srcloc !73
  %81 = call i32 @llvm.bswap.i32(i32 %80) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  br label %sdhci_o2_get_cd.exit.i

sdhci_o2_get_cd.exit.i:                           ; preds = %if.else.i14.i.i, %if.then.i11.i.i
  %retval.0.i15.i.i = phi i32 [ %call.i10.i.i, %if.then.i11.i.i ], [ %81, %if.else.i14.i.i ]
  %82 = and i32 %retval.0.i15.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i66 = icmp eq i32 %82, 0
  br i1 %tobool.not.i66, label %sdhci_o2_get_cd.exit.i.cleanup_crit_edge, label %if.then.i67

sdhci_o2_get_cd.exit.i.cleanup_crit_edge:         ; preds = %sdhci_o2_get_cd.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i67:                                      ; preds = %sdhci_o2_get_cd.exit.i
  %83 = or i16 %call39, 5
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i, align 4
  %write_w.i14.i = getelementptr inbounds %struct.sdhci_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %write_w.i14.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_w.i14.i, align 4
  %tobool.not.i15.i = icmp eq ptr %87, null
  br i1 %tobool.not.i15.i, label %do.body.i19.i, label %if.then.i16.i, !prof !72

if.then.i16.i:                                    ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #7
  call void %87(ptr noundef %host, i16 noundef zeroext %83, i32 noundef 44) #5
  br label %cleanup

do.body.i19.i:                                    ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  call void @arm_heavy_mb() #5
  %88 = call i16 @llvm.bswap.i16(i16 %83) #5
  %ioaddr.i17.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %89 = ptrtoint ptr %ioaddr.i17.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr.i17.i, align 16
  %add.ptr.i18.i = getelementptr i8, ptr %90, i32 44
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18.i, i16 %88) #5, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %do.body.i19.i, %if.then.i16.i, %sdhci_o2_get_cd.exit.i.cleanup_crit_edge, %sdhci_writew.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch_32) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scratch) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pci_enable_dma(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdhci_calc_clk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @sdhci_o2, !1, !"sdhci_o2", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 904, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 640, i32 5}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sdhci_pci_o2_probe_slot._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sdhci_pci_o2_probe_slot._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 527, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sdhci_pci_o2_enable_msi._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sdhci_pci_o2_enable_msi._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 535, i32 3}
!15 = !{ptr @sdhci_pci_o2_enable_msi._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sdhci_pci_o2_enable_msi._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 130, i32 4}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sdhci_o2_enable_internal_clock._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @sdhci_o2_enable_internal_clock._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 94, i32 4}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sdhci_o2_wait_card_detect_stable._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sdhci_o2_wait_card_detect_stable._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 363, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sdhci_o2_execute_tuning._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @sdhci_o2_execute_tuning._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 371, i32 4}
!34 = !{ptr @sdhci_o2_execute_tuning._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sdhci_o2_execute_tuning._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 283, i32 5}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sdhci_o2_dll_recovery._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sdhci_o2_dll_recovery._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 288, i32 4}
!43 = !{ptr @sdhci_o2_dll_recovery._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sdhci_o2_dll_recovery._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 296, i32 3}
!47 = !{ptr @sdhci_o2_dll_recovery._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sdhci_o2_dll_recovery._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @dmdn_table, !50, !"dmdn_table", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 70, i32 18}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 216, i32 4}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__sdhci_o2_execute_tuning._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @__sdhci_o2_execute_tuning._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 224, i32 2}
!58 = !{ptr @__sdhci_o2_execute_tuning._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__sdhci_o2_execute_tuning._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @sdhci_pci_o2_ops, !61, !"sdhci_pci_o2_ops", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-pci-o2micro.c", i32 896, i32 31}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 5003215}
!74 = !{i64 2155002567}
!75 = !{i64 2155000597}
!76 = !{i64 5002797}
!77 = !{i64 5002377}
!78 = !{i64 2155003271}
!79 = !{i64 2155001203}
!80 = !{i64 5002177}
!81 = !{i64 2155001809}
!82 = !{i64 5002600}
