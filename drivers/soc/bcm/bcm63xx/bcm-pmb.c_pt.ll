; ModuleID = '/llk/IR_all_yes/drivers/soc/bcm/bcm63xx/bcm-pmb.c_pt.bc'
source_filename = "../drivers/soc/bcm/bcm63xx/bcm-pmb.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcm_pmb_pd_data = type { ptr, i32, i8, i8 }
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
%struct.bcm_pmb = type { ptr, ptr, %struct.spinlock, i8, %struct.genpd_onecell_data }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.bcm_pmb_pm_domain = type { ptr, ptr, %struct.generic_pm_domain }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }

@__initcall__kmod_bcm_pmb__172_361_bcm_pmb_driver_init6 = internal global ptr @bcm_pmb_driver_init, section ".initcall6.init", align 4
@bcm_pmb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_pmb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_pmb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcm-pmb\00", [24 x i8] zeroinitializer }, align 32
@bcm_pmb_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-pmb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_pmb_bcm4908_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63138-pmb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_pmb_bcm63138_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm_pmb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pmb->lock\00", [21 x i8] zeroinitializer }, align 32
@bcm_pmb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add genpd provider: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_pmb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/soc/bcm/bcm63xx/bcm-pmb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_pmb_probe._entry_ptr = internal global ptr @bcm_pmb_probe._entry, section ".printk_index", align 4
@bcm_pmb_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported device id: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_pmb_power_on\00", [47 x i8] zeroinitializer }, align 32
@bcm_pmb_power_on._entry_ptr = internal global ptr @bcm_pmb_power_on._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_pmb_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_pmb_power_off\00", [46 x i8] zeroinitializer }, align 32
@bcm_pmb_power_off._entry_ptr = internal global ptr @bcm_pmb_power_off._entry, section ".printk_index", align 4
@bcm_pmb_bcm4908_data = internal constant { [5 x %struct.bcm_pmb_pd_data], [36 x i8] } { [5 x %struct.bcm_pmb_pd_data] [%struct.bcm_pmb_pd_data { ptr @.str.10, i32 3, i8 0, i8 2 }, %struct.bcm_pmb_pd_data { ptr @.str.11, i32 1, i8 1, i8 14 }, %struct.bcm_pmb_pd_data { ptr @.str.12, i32 2, i8 1, i8 15 }, %struct.bcm_pmb_pd_data { ptr @.str.13, i32 4, i8 1, i8 17 }, %struct.bcm_pmb_pd_data zeroinitializer], [36 x i8] zeroinitializer }, align 32
@bcm_pmb_bcm63138_data = internal constant { [2 x %struct.bcm_pmb_pd_data], [40 x i8] } { [2 x %struct.bcm_pmb_pd_data] [%struct.bcm_pmb_pd_data { ptr @.str.14, i32 5, i8 0, i8 3 }, %struct.bcm_pmb_pd_data zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie2\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie0\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie1\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"bcm_pmb_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 353, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 355, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"bcm_pmb_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 347, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 293, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 327, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 250, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 269, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"bcm_pmb_bcm4908_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 334, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"bcm_pmb_bcm63138_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 342, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 335, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 336, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 337, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 338, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [37 x i8] c"../drivers/soc/bcm/bcm63xx/bcm-pmb.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 343, i32 12 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_bcm_pmb__172_361_bcm_pmb_driver_init6, ptr @bcm_pmb_power_off._entry, ptr @bcm_pmb_power_off._entry_ptr, ptr @bcm_pmb_power_on._entry, ptr @bcm_pmb_power_on._entry_ptr, ptr @bcm_pmb_probe._entry, ptr @bcm_pmb_probe._entry_ptr, ptr @bcm_pmb_driver, ptr @.str, ptr @bcm_pmb_of_match, ptr @bcm_pmb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bcm_pmb_bcm4908_data, ptr @bcm_pmb_bcm63138_data, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_bcm4908_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pmb_bcm63138_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_pmb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_pmb_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_pmb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.bcm_pmb, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.bcm_pmb, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm_pmb_probe.__key, i16 noundef signext 3) #6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call11 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %4) #6
  %lnot = xor i1 %call11, true
  %little_endian = getelementptr inbounds %struct.bcm_pmb, ptr %call.i, i32 0, i32 3
  %frombool = zext i1 %lnot to i8
  %5 = ptrtoint ptr %little_endian to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %little_endian, align 4
  %call12 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %for.cond.preheader

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body
  %6 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call12, align 4
  %tobool16.not103 = icmp eq ptr %7, null
  br i1 %tobool16.not103, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %max_id.0105 = phi i32 [ %10, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %e.0104 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call12, %for.cond.preheader.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %e.0104, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %max_id.0105, i32 %9)
  %incdec.ptr = getelementptr %struct.bcm_pmb_pd_data, ptr %e.0104, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = add i32 %10, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %max_id.0.lcssa = phi i32 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %genpd_onecell_data = getelementptr inbounds %struct.bcm_pmb, ptr %call.i, i32 0, i32 4
  %num_domains = getelementptr inbounds %struct.bcm_pmb, ptr %call.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %max_id.0.lcssa, ptr %num_domains, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_id.0.lcssa, i32 4) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !51

devm_kcalloc.exit.thread:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %genpd_onecell_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %genpd_onecell_data, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %for.end
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %17, i32 noundef 3520) #6
  %18 = ptrtoint ptr %genpd_onecell_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i, ptr %genpd_onecell_data, align 4
  %tobool23.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool23.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond26.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond26.preheader:                             ; preds = %devm_kcalloc.exit
  %19 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call12, align 4
  %tobool28.not106 = icmp eq ptr %20, null
  br i1 %tobool28.not106, label %for.cond26.preheader.for.end44_crit_edge, label %for.cond26.preheader.for.body29_crit_edge

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.cond26.preheader.for.end44_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %e.1107 = phi ptr [ %incdec.ptr43, %for.body29.for.body29_crit_edge ], [ %call12, %for.cond26.preheader.for.body29_crit_edge ]
  %call.i100 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1360, i32 noundef 3520) #6
  %21 = ptrtoint ptr %call.i100 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %call.i100, align 8
  %data = getelementptr inbounds %struct.bcm_pmb_pm_domain, ptr %call.i100, i32 0, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %e.1107, ptr %data, align 4
  %23 = ptrtoint ptr %e.1107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %e.1107, align 4
  %genpd = getelementptr inbounds %struct.bcm_pmb_pm_domain, ptr %call.i100, i32 0, i32 2
  %name33 = getelementptr inbounds %struct.bcm_pmb_pm_domain, ptr %call.i100, i32 0, i32 2, i32 10
  %25 = ptrtoint ptr %name33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %name33, align 8
  %power_on = getelementptr inbounds %struct.bcm_pmb_pm_domain, ptr %call.i100, i32 0, i32 2, i32 19
  %26 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bcm_pmb_power_on, ptr %power_on, align 4
  %power_off = getelementptr inbounds %struct.bcm_pmb_pm_domain, ptr %call.i100, i32 0, i32 2, i32 18
  %27 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bcm_pmb_power_off, ptr %power_off, align 8
  %call37 = tail call i32 @pm_genpd_init(ptr noundef %genpd, ptr noundef null, i1 noundef zeroext true) #6
  %28 = ptrtoint ptr %genpd_onecell_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %genpd_onecell_data, align 4
  %id41 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %e.1107, i32 0, i32 1
  %30 = ptrtoint ptr %id41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id41, align 4
  %arrayidx = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %genpd, ptr %arrayidx, align 4
  %incdec.ptr43 = getelementptr %struct.bcm_pmb_pd_data, ptr %e.1107, i32 1
  %33 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr43, align 4
  %tobool28.not = icmp eq ptr %34, null
  br i1 %tobool28.not, label %for.body29.for.end44_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

for.body29.for.end44_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.end44:                                        ; preds = %for.body29.for.end44_crit_edge, %for.cond26.preheader.for.end44_crit_edge
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call47 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %36, ptr noundef %genpd_onecell_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.end44.cleanup_crit_edge, label %do.end52

for.end44.cleanup_crit_edge:                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end52:                                         ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call47) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %for.end44.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.body.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call47, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %for.end44.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_pmb_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  %val.i.i33 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i27 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %genpd, i32 -8
  %data1 = getelementptr i8, ptr %genpd, i32 -4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %id = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge54
    i32 3, label %entry.sw.bb_crit_edge55
    i32 4, label %sw.bb3
    i32 5, label %sw.bb8
  ]

entry.sw.bb_crit_edge55:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge54:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge54, %entry.sw.bb_crit_edge55
  %bus = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus, align 4
  %conv = zext i8 %8 to i32
  %device = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %device, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !52
  %call.i = call fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %3, i32 noundef %conv, i8 noundef zeroext %10, i32 noundef 64, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.bcm_pmb_power_on_zone.exit_crit_edge

sw.bb.bcm_pmb_power_on_zone.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_on_zone.exit

if.end.i:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %and.i = and i32 %13, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.bcm_pmb_power_on_zone.exit_crit_edge

if.end.i.bcm_pmb_power_on_zone.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_on_zone.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i = and i32 %13, -7937
  %or7.i = or i32 %and4.i, 7424
  %call8.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv, i8 noundef zeroext %10, i32 noundef 64, i32 noundef %or7.i) #6
  br label %bcm_pmb_power_on_zone.exit

bcm_pmb_power_on_zone.exit:                       ; preds = %if.then3.i, %if.end.i.bcm_pmb_power_on_zone.exit_crit_edge, %sw.bb.bcm_pmb_power_on_zone.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.bcm_pmb_power_on_zone.exit_crit_edge ], [ 0, %if.end.i.bcm_pmb_power_on_zone.exit_crit_edge ], [ %call8.i, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %bus4 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %bus4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bus4, align 4
  %conv5 = zext i8 %15 to i32
  %device6 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %device6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %device6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i27) #6
  %18 = ptrtoint ptr %val.i27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i27, align 4, !annotation !52
  %call.i28 = call fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %3, i32 noundef %conv5, i8 noundef zeroext %17, i32 noundef 4, ptr noundef nonnull %val.i27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %for.cond.preheader.i, label %sw.bb3.bcm_pmb_power_on_device.exit_crit_edge

sw.bb3.bcm_pmb_power_on_device.exit_crit_edge:    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_on_device.exit

for.cond.preheader.i:                             ; preds = %sw.bb3
  %19 = ptrtoint ptr %val.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i27, align 4
  %and.i30 = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %cmp21.not.i = icmp eq i32 %and.i30, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.bcm_pmb_power_on_device.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.bcm_pmb_power_on_device.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_on_device.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i.i, align 4, !annotation !52
  %mul.i.i = shl i32 %i.022.i, 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 64
  %call.i.i = call fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %3, i32 noundef %conv5, i8 noundef zeroext %17, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %bcm_pmb_power_on_zone.exit.thread18.i

bcm_pmb_power_on_zone.exit.thread18.i:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %bcm_pmb_power_on_device.exit

if.end.i.i:                                       ; preds = %for.body.i
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %23, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %bcm_pmb_power_on_zone.exit.i, label %bcm_pmb_power_on_zone.exit.thread.i

bcm_pmb_power_on_zone.exit.thread.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %for.inc.i

bcm_pmb_power_on_zone.exit.i:                     ; preds = %if.end.i.i
  %and4.i.i = and i32 %23, -7937
  %or7.i.i = or i32 %and4.i.i, 7424
  %call8.i.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv5, i8 noundef zeroext %17, i32 noundef %add.i.i, i32 noundef %or7.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool2.not.i31 = icmp eq i32 %call8.i.i, 0
  br i1 %tobool2.not.i31, label %bcm_pmb_power_on_zone.exit.i.for.inc.i_crit_edge, label %bcm_pmb_power_on_zone.exit.i.bcm_pmb_power_on_device.exit_crit_edge

bcm_pmb_power_on_zone.exit.i.bcm_pmb_power_on_device.exit_crit_edge: ; preds = %bcm_pmb_power_on_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_on_device.exit

bcm_pmb_power_on_zone.exit.i.for.inc.i_crit_edge: ; preds = %bcm_pmb_power_on_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %bcm_pmb_power_on_zone.exit.i.for.inc.i_crit_edge, %bcm_pmb_power_on_zone.exit.thread.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i30
  br i1 %exitcond.not.i, label %for.inc.i.bcm_pmb_power_on_device.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.bcm_pmb_power_on_device.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_on_device.exit

bcm_pmb_power_on_device.exit:                     ; preds = %for.inc.i.bcm_pmb_power_on_device.exit_crit_edge, %bcm_pmb_power_on_zone.exit.i.bcm_pmb_power_on_device.exit_crit_edge, %bcm_pmb_power_on_zone.exit.thread18.i, %for.cond.preheader.i.bcm_pmb_power_on_device.exit_crit_edge, %sw.bb3.bcm_pmb_power_on_device.exit_crit_edge
  %retval.0.i32 = phi i32 [ %call.i28, %sw.bb3.bcm_pmb_power_on_device.exit_crit_edge ], [ %call.i.i, %bcm_pmb_power_on_zone.exit.thread18.i ], [ 0, %for.cond.preheader.i.bcm_pmb_power_on_device.exit_crit_edge ], [ 0, %for.inc.i.bcm_pmb_power_on_device.exit_crit_edge ], [ %call8.i.i, %bcm_pmb_power_on_zone.exit.i.bcm_pmb_power_on_device.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i27) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %bus9 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bus9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bus9, align 4
  %conv10 = zext i8 %25 to i32
  %device11 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %device11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %device11, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i33) #6
  %28 = ptrtoint ptr %val.i.i33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i.i33, align 4, !annotation !52
  %call.i.i34 = call fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %3, i32 noundef %conv10, i8 noundef zeroext %27, i32 noundef 64, ptr noundef nonnull %val.i.i33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i38, label %bcm_pmb_power_on_zone.exit.thread27.i

bcm_pmb_power_on_zone.exit.thread27.i:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i33) #6
  br label %cleanup

if.end.i.i38:                                     ; preds = %sw.bb8
  %29 = ptrtoint ptr %val.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i33, align 4
  %and.i.i36 = and i32 %30, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool2.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool2.not.i.i37, label %bcm_pmb_power_on_zone.exit.i44, label %bcm_pmb_power_on_zone.exit.thread.i39

bcm_pmb_power_on_zone.exit.thread.i39:            ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i33) #6
  br label %if.end.i46

bcm_pmb_power_on_zone.exit.i44:                   ; preds = %if.end.i.i38
  %and4.i.i40 = and i32 %30, -7937
  %or7.i.i41 = or i32 %and4.i.i40, 7424
  %call8.i.i42 = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv10, i8 noundef zeroext %27, i32 noundef 64, i32 noundef %or7.i.i41) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i42)
  %tobool.not.i43 = icmp eq i32 %call8.i.i42, 0
  br i1 %tobool.not.i43, label %bcm_pmb_power_on_zone.exit.i44.if.end.i46_crit_edge, label %bcm_pmb_power_on_zone.exit.i44.cleanup_crit_edge

bcm_pmb_power_on_zone.exit.i44.cleanup_crit_edge: ; preds = %bcm_pmb_power_on_zone.exit.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

bcm_pmb_power_on_zone.exit.i44.if.end.i46_crit_edge: ; preds = %bcm_pmb_power_on_zone.exit.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i46

if.end.i46:                                       ; preds = %bcm_pmb_power_on_zone.exit.i44.if.end.i46_crit_edge, %bcm_pmb_power_on_zone.exit.thread.i39
  %call1.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv10, i8 noundef zeroext %27, i32 noundef 48, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i45 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i45, label %if.end4.i, label %if.end.i46.cleanup_crit_edge

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i46
  %call5.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv10, i8 noundef zeroext %27, i32 noundef 40, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv10, i8 noundef zeroext %27, i32 noundef 40, i32 noundef 0) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.7, i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.i, %if.end4.i.cleanup_crit_edge, %if.end.i46.cleanup_crit_edge, %bcm_pmb_power_on_zone.exit.i44.cleanup_crit_edge, %bcm_pmb_power_on_zone.exit.thread27.i, %bcm_pmb_power_on_device.exit, %bcm_pmb_power_on_zone.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i32, %bcm_pmb_power_on_device.exit ], [ %retval.0.i, %bcm_pmb_power_on_zone.exit ], [ %call9.i, %if.end8.i ], [ %call8.i.i42, %bcm_pmb_power_on_zone.exit.i44.cleanup_crit_edge ], [ %call1.i, %if.end.i46.cleanup_crit_edge ], [ %call5.i, %if.end4.i.cleanup_crit_edge ], [ %call.i.i34, %bcm_pmb_power_on_zone.exit.thread27.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_pmb_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  %val.i19 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %genpd, i32 -8
  %data1 = getelementptr i8, ptr %genpd, i32 -4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %id = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %5, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge25
    i32 3, label %entry.sw.bb_crit_edge26
    i32 4, label %sw.bb3
  ]

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26
  %bus = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus, align 4
  %conv = zext i8 %8 to i32
  %device = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %device, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !52
  %call.i = call fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %3, i32 noundef %conv, i8 noundef zeroext %10, i32 noundef 64, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.bcm_pmb_power_off_zone.exit_crit_edge

sw.bb.bcm_pmb_power_off_zone.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_off_zone.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %or.i = and i32 %13, -1537
  %and.i = or i32 %or.i, 512
  %call2.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv, i8 noundef zeroext %10, i32 noundef 64, i32 noundef %and.i) #6
  br label %bcm_pmb_power_off_zone.exit

bcm_pmb_power_off_zone.exit:                      ; preds = %if.end.i, %sw.bb.bcm_pmb_power_off_zone.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %sw.bb.bcm_pmb_power_off_zone.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %bus4 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %bus4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bus4, align 4
  %conv5 = zext i8 %15 to i32
  %device6 = getelementptr inbounds %struct.bcm_pmb_pd_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %device6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %device6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i19) #6
  %18 = ptrtoint ptr %val.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i19, align 4, !annotation !52
  %call.i20 = call fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %3, i32 noundef %conv5, i8 noundef zeroext %17, i32 noundef 64, ptr noundef nonnull %val.i19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i23, label %sw.bb3.bcm_pmb_power_off_device.exit_crit_edge

sw.bb3.bcm_pmb_power_off_device.exit_crit_edge:   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_off_device.exit

if.end.i23:                                       ; preds = %sw.bb3
  %19 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i19, align 4
  %and.i22 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool1.not.i = icmp eq i32 %and.i22, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i23.bcm_pmb_power_off_device.exit_crit_edge

if.end.i23.bcm_pmb_power_off_device.exit_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_pmb_power_off_device.exit

if.then2.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %3, i32 noundef %conv5, i8 noundef zeroext %17, i32 noundef 64, i32 noundef 512) #6
  br label %bcm_pmb_power_off_device.exit

bcm_pmb_power_off_device.exit:                    ; preds = %if.then2.i, %if.end.i23.bcm_pmb_power_off_device.exit_crit_edge, %sw.bb3.bcm_pmb_power_off_device.exit_crit_edge
  %retval.0.i24 = phi i32 [ %call.i20, %sw.bb3.bcm_pmb_power_off_device.exit_crit_edge ], [ 0, %if.end.i23.bcm_pmb_power_off_device.exit_crit_edge ], [ %call3.i, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i19) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %bcm_pmb_power_off_device.exit, %bcm_pmb_power_off_zone.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i24, %bcm_pmb_power_off_device.exit ], [ %retval.0.i, %bcm_pmb_power_off_zone.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_pmb_bpcm_read(ptr noundef %pmb, i32 noundef %bus, i8 noundef zeroext %device, i32 noundef %offset, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.bcm_pmb, ptr %pmb, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %mul = shl i32 %bus, 5
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %lock = getelementptr inbounds %struct.bcm_pmb, ptr %pmb, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %conv6 = zext i8 %device to i32
  %shr.i = lshr i32 %offset, 2
  %and.i.i = shl nuw nsw i32 %conv6, 12
  %or1.i.i = or i32 %shr.i, %and.i.i
  %or2.i.i = or i32 %or1.i.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !54
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %if.end14.i.i.do.body3.i.i_crit_edge, %entry
  %timeout.0.i.i = phi i32 [ 1000, %entry ], [ %dec.i.i, %if.end14.i.i.do.body3.i.i_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !55
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i.i, label %do.body3.i.i.bpcm_rd.exit_crit_edge, label %if.end.i.i

do.body3.i.i.bpcm_rd.exit_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end.i.i:                                       ; preds = %do.body3.i.i
  %and7.i.i = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end.i.i.bpcm_rd.exit_crit_edge

if.end.i.i.bpcm_rd.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  %and11.i.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.bpcm_rd.exit_crit_edge

if.end10.i.i.bpcm_rd.exit_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end14.i.i:                                     ; preds = %if.end10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp.not.i.i, label %if.end14.i.i.bpcm_rd.exit_crit_edge, label %if.end14.i.i.do.body3.i.i_crit_edge

if.end14.i.i.do.body3.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i.i

if.end14.i.i.bpcm_rd.exit_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

bpcm_rd.exit:                                     ; preds = %if.end14.i.i.bpcm_rd.exit_crit_edge, %if.end10.i.i.bpcm_rd.exit_crit_edge, %if.end.i.i.bpcm_rd.exit_crit_edge, %do.body3.i.i.bpcm_rd.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.body3.i.i.bpcm_rd.exit_crit_edge ], [ -5, %if.end.i.i.bpcm_rd.exit_crit_edge ], [ -110, %if.end10.i.i.bpcm_rd.exit_crit_edge ], [ -110, %if.end14.i.i.bpcm_rd.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !55
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br i1 %tobool.not.i.i, label %if.then, label %bpcm_rd.exit.if.end_crit_edge

bpcm_rd.exit.if.end_crit_edge:                    ; preds = %bpcm_rd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %bpcm_rd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %little_endian = getelementptr inbounds %struct.bcm_pmb, ptr %pmb, i32 0, i32 3
  %9 = ptrtoint ptr %little_endian to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %little_endian, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %cond = select i1 %tobool9.not, i32 %12, i32 %13
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %bpcm_rd.exit.if.end_crit_edge
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_pmb_bpcm_write(ptr noundef %pmb, i32 noundef %bus, i8 noundef zeroext %device, i32 noundef %offset, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.bcm_pmb, ptr %pmb, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %little_endian = getelementptr inbounds %struct.bcm_pmb, ptr %pmb, i32 0, i32 3
  %2 = ptrtoint ptr %little_endian to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %little_endian, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %val)
  %cond = select i1 %tobool.not, i32 %val, i32 %4
  %mul = shl i32 %bus, 5
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %lock = getelementptr inbounds %struct.bcm_pmb, ptr %pmb, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %conv6 = zext i8 %device to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %cond) #6
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !54
  %shr.i = lshr i32 %offset, 2
  %and.i.i = shl nuw nsw i32 %conv6, 12
  %or.i.i = or i32 %shr.i, %and.i.i
  %or2.i.i = or i32 %or.i.i, -2146435072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !54
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %if.end14.i.i.do.body3.i.i_crit_edge, %entry
  %timeout.0.i.i = phi i32 [ 1000, %entry ], [ %dec.i.i, %if.end14.i.i.do.body3.i.i_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !55
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i.i, label %do.body3.i.i.bpcm_wr.exit_crit_edge, label %if.end.i.i

do.body3.i.i.bpcm_wr.exit_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_wr.exit

if.end.i.i:                                       ; preds = %do.body3.i.i
  %and7.i.i = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end.i.i.bpcm_wr.exit_crit_edge

if.end.i.i.bpcm_wr.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_wr.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  %and11.i.i = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.bpcm_wr.exit_crit_edge

if.end10.i.i.bpcm_wr.exit_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_wr.exit

if.end14.i.i:                                     ; preds = %if.end10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp.not.i.i, label %if.end14.i.i.bpcm_wr.exit_crit_edge, label %if.end14.i.i.do.body3.i.i_crit_edge

if.end14.i.i.do.body3.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i.i

if.end14.i.i.bpcm_wr.exit_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_wr.exit

bpcm_wr.exit:                                     ; preds = %if.end14.i.i.bpcm_wr.exit_crit_edge, %if.end10.i.i.bpcm_wr.exit_crit_edge, %if.end.i.i.bpcm_wr.exit_crit_edge, %do.body3.i.i.bpcm_wr.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.body3.i.i.bpcm_wr.exit_crit_edge ], [ -5, %if.end.i.i.bpcm_wr.exit_crit_edge ], [ -110, %if.end10.i.i.bpcm_wr.exit_crit_edge ], [ -110, %if.end14.i.i.bpcm_wr.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_bcm_pmb__172_361_bcm_pmb_driver_init6, !1, !"__initcall__kmod_bcm_pmb__172_361_bcm_pmb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 361, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 355, i32 11}
!4 = !{ptr @bcm_pmb_driver, !5, !"bcm_pmb_driver", i1 false, i1 false}
!5 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 353, i32 31}
!6 = !{ptr @bcm_pmb_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 293, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 327, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bcm_pmb_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @bcm_pmb_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 250, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm_pmb_power_on._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm_pmb_power_on._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 269, i32 3}
!24 = !{ptr @bcm_pmb_power_off._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm_pmb_power_off._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @bcm_pmb_of_match, !27, !"bcm_pmb_of_match", i1 false, i1 false}
!27 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 347, i32 34}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 335, i32 12}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 336, i32 12}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 337, i32 12}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 338, i32 12}
!36 = !{ptr @bcm_pmb_bcm4908_data, !37, !"bcm_pmb_bcm4908_data", i1 false, i1 false}
!37 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 334, i32 37}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 343, i32 12}
!40 = !{ptr @bcm_pmb_bcm63138_data, !41, !"bcm_pmb_bcm63138_data", i1 false, i1 false}
!41 = !{!"../drivers/soc/bcm/bcm63xx/bcm-pmb.c", i32 342, i32 37}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"auto-init"}
!53 = !{i64 2152530129}
!54 = !{i64 693284}
!55 = !{i64 693702}
!56 = !{i64 2152530775}
!57 = !{i64 2152532005}
!58 = !{i8 0, i8 2}
!59 = !{i64 2152532389}
