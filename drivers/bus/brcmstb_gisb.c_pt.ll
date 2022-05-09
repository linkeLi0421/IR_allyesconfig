; ModuleID = '/llk/IR_all_yes/drivers/bus/brcmstb_gisb.c_pt.bc'
source_filename = "../drivers/bus/brcmstb_gisb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmstb_gisb_arb_device = type { ptr, ptr, i8, %struct.mutex, %struct.list_head, i32, [32 x ptr], i32 }

@__initcall__kmod_brcmstb_gisb__187_549_brcm_gisb_driver_init6 = internal global ptr @brcm_gisb_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author188 = internal constant [29 x i8] c"brcmstb_gisb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [58 x i8] c"brcmstb_gisb.description=Broadcom STB GISB arbiter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [43 x i8] c"brcmstb_gisb.file=drivers/bus/brcmstb_gisb\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [28 x i8] c"brcmstb_gisb.license=GPL v2\00", section ".modinfo", align 1
@brcmstb_gisb_arb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @brcmstb_gisb_arb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gisb_arb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm-gisb-arb\00", [18 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7435-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7435 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7400-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7400 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7278 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-gisb-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gisb_offsets_bcm7038 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmstb_gisb_arb_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gisb_arb_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gisb_offsets_bcm7445 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 8, i32 16, i32 -1, i32 472, i32 480, i32 484, i32 2020, i32 2024, i32 2028, i32 2036, i32 2040], [52 x i8] zeroinitializer }, align 32
@gisb_offsets_bcm7435 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 12, i32 20, i32 -1, i32 344, i32 352, i32 356, i32 360, i32 -1, i32 364, i32 372, i32 376], [52 x i8] zeroinitializer }, align 32
@gisb_offsets_bcm7400 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 12, i32 20, i32 -1, i32 184, i32 192, i32 196, i32 200, i32 -1, i32 204, i32 212, i32 216], [52 x i8] zeroinitializer }, align 32
@gisb_offsets_bcm7278 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 8, i32 28, i32 -1, i32 544, i32 560, i32 564, i32 2040, i32 -1, i32 2016, i32 2032, i32 2036], [52 x i8] zeroinitializer }, align 32
@gisb_offsets_bcm7038 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 12, i32 20, i32 -1, i32 184, i32 192, i32 -1, i32 196, i32 -1, i32 200, i32 208, i32 -1], [52 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gdev->lock\00", [20 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to look up compatible string\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmstb_gisb_arb_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bus/brcmstb_gisb.c\00", [37 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_probe._entry_ptr = internal global ptr @brcmstb_gisb_arb_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm,gisb-arb-master-mask\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"brcm,gisb-arb-master-names\00", [37 x i8] zeroinitializer }, align 32
@gisb_arb_sysfs_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gisb_arb_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @brcmstb_gisb_arb_device_list, ptr @brcmstb_gisb_arb_device_list }, [24 x i8] zeroinitializer }, align 32
@gisb_die_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dump_gisb_error, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@gisb_panic_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dump_gisb_error, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 498, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"registered irqs: %d, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_probe._entry_ptr.11 = internal global ptr @brcmstb_gisb_arb_probe._entry.7, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%08x\00", [25 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_decode_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012GISB: %s at 0x%llx [%c %s], core: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"brcmstb_gisb_arb_decode_addr\00", [35 x i8] zeroinitializer }, align 32
@brcmstb_gisb_arb_decode_addr._entry_ptr = internal global ptr @brcmstb_gisb_arb_decode_addr._entry, section ".printk_index", align 4
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"target abort\00", [19 x i8] zeroinitializer }, align 32
@brcmstb_gisb_bp_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012GISB: breakpoint at 0x%llx [%c], core: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmstb_gisb_bp_handler\00", [40 x i8] zeroinitializer }, align 32
@brcmstb_gisb_bp_handler._entry_ptr = internal global ptr @brcmstb_gisb_bp_handler._entry, section ".printk_index", align 4
@gisb_arb_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_gisb_arb_timeout, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_gisb_arb_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gisb_arb_get_timeout, ptr @gisb_arb_set_timeout }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gisb_arb_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"die\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"brcmstb_gisb_arb_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 534, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 536, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"brcmstb_gisb_arb_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 389, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"brcmstb_gisb_arb_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 529, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"gisb_offsets_bcm7445\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 113, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"gisb_offsets_bcm7435\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 99, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"gisb_offsets_bcm7400\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 85, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"gisb_offsets_bcm7278\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 71, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"gisb_offsets_bcm7038\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 418, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 427, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 455, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 463, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"gisb_arb_sysfs_attr_group\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 385, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [29 x i8] c"brcmstb_gisb_arb_device_list\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 138, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"gisb_die_notifier\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 353, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"gisb_panic_notifier\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 357, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 497, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 300, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 259, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 263, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 307, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 337, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"gisb_arb_sysfs_attrs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 380, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"dev_attr_gisb_arb_timeout\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 377, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 202, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 365, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [30 x i8] c"../drivers/bus/brcmstb_gisb.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 368, i32 12 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__initcall__kmod_brcmstb_gisb__187_549_brcm_gisb_driver_init6, ptr @brcmstb_gisb_arb_decode_addr._entry, ptr @brcmstb_gisb_arb_decode_addr._entry_ptr, ptr @brcmstb_gisb_arb_probe._entry, ptr @brcmstb_gisb_arb_probe._entry.7, ptr @brcmstb_gisb_arb_probe._entry_ptr, ptr @brcmstb_gisb_arb_probe._entry_ptr.11, ptr @brcmstb_gisb_bp_handler._entry, ptr @brcmstb_gisb_bp_handler._entry_ptr, ptr @brcmstb_gisb_arb_driver, ptr @.str, ptr @brcmstb_gisb_arb_of_match, ptr @brcmstb_gisb_arb_pm_ops, ptr @gisb_offsets_bcm7445, ptr @gisb_offsets_bcm7435, ptr @gisb_offsets_bcm7400, ptr @gisb_offsets_bcm7278, ptr @gisb_offsets_bcm7038, ptr @brcmstb_gisb_arb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @gisb_arb_sysfs_attr_group, ptr @brcmstb_gisb_arb_device_list, ptr @gisb_die_notifier, ptr @gisb_panic_notifier, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @gisb_arb_sysfs_attrs, ptr @dev_attr_gisb_arb_timeout, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_offsets_bcm7445 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_offsets_bcm7435 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_offsets_bcm7400 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_offsets_bcm7278 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_offsets_bcm7038 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_arb_sysfs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_die_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_panic_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_arb_decode_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_gisb_bp_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gisb_arb_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gisb_arb_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_gisb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_gisb_arb_driver, ptr noundef nonnull @brcmstb_gisb_arb_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_arb_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmstb_gisb_arb_probe.__key) #7
  %next = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %next, ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %next, ptr %prev.i, align 4
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %do.body
  %call14 = tail call ptr @of_match_node(ptr noundef nonnull @brcmstb_gisb_arb_of_match, ptr noundef %1) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %data = getelementptr inbounds %struct.of_device_id, ptr %call14, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %gisb_offsets = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %gisb_offsets to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %gisb_offsets, align 4
  %call22 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %1) #7
  %big_endian = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %call22 to i8
  %9 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %big_endian, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call.i146 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef nonnull @brcmstb_gisb_timeout_handler, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp = icmp slt i32 %call.i146, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %call.i147 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @brcmstb_gisb_tea_handler, ptr noundef null, i32 noundef 0, ptr noundef %13, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp30 = icmp slt i32 %call.i147, 0
  br i1 %cmp30, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp33 = icmp sgt i32 %call3, 0
  br i1 %cmp33, label %if.then34, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then34:                                        ; preds = %if.end32
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %call.i148 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call3, ptr noundef nonnull @brcmstb_gisb_bp_handler, ptr noundef null, i32 noundef 0, ptr noundef %15, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp38 = icmp slt i32 %call.i148, 0
  br i1 %cmp38, label %if.then34.cleanup_crit_edge, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.then34.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %valid_mask = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 5
  %call.i.i149 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %valid_mask, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i149)
  %tobool43.not = icmp sgt i32 %call.i.i149, -1
  br i1 %tobool43.not, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %valid_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %valid_mask, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %call.i150 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %17 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %valid_mask, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %18) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call.i150)
  %cmp50 = icmp eq i32 %call.i.i, %call.i150
  br i1 %cmp50, label %if.then51, label %if.end46.if.end63_crit_edge

if.end46.if.end63_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then51:                                        ; preds = %if.end46
  %19 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %valid_mask, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true), !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %iszero = icmp eq i32 %20, 0
  %sub = select i1 %iszero, i32 -1, i32 %21
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #7, !range !91
  %sub.i.op = xor i32 %22, 31
  %sub55 = select i1 %iszero, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub55)
  %cmp56155 = icmp slt i32 %sub, %sub55
  br i1 %cmp56155, label %if.then51.for.body_crit_edge, label %if.then51.if.end63_crit_edge

if.then51.if.end63_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then51.for.body_crit_edge:                     ; preds = %if.then51
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then51.for.body_crit_edge
  %i.0157 = phi i32 [ %inc62, %for.inc.for.body_crit_edge ], [ %sub, %if.then51.for.body_crit_edge ]
  %j.0156 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %if.then51.for.body_crit_edge ]
  %23 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %valid_mask, align 4
  %shl = shl nuw i32 1, %i.0157
  %and = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %for.body.for.inc_crit_edge, label %if.end60

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end60:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.brcmstb_gisb_arb_device, ptr %call.i, i32 0, i32 6, i32 %i.0157
  %call.i151 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %j.0156) #7
  %inc = add i32 %j.0156, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end60, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end60 ], [ %j.0156, %for.body.for.inc_crit_edge ]
  %inc62 = add nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc62, %sub55
  br i1 %exitcond.not, label %for.inc.if.end63_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end63_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end63:                                         ; preds = %for.inc.if.end63_crit_edge, %if.then51.if.end63_crit_edge, %if.end46.if.end63_crit_edge
  %call65 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @gisb_arb_sysfs_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @brcmstb_gisb_arb_device_list, i32 0, i32 1), align 4
  %call.i.i152 = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %26, ptr noundef nonnull @brcmstb_gisb_arb_device_list) #7
  br i1 %call.i.i152, label %if.end.i.i, label %if.end68.list_add_tail.exit_crit_edge

if.end68.list_add_tail.exit_crit_edge:            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %next, ptr getelementptr inbounds (%struct.list_head, ptr @brcmstb_gisb_arb_device_list, i32 0, i32 1), align 4
  %27 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @brcmstb_gisb_arb_device_list, ptr %next, align 4
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %next, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end68.list_add_tail.exit_crit_edge
  %30 = load volatile ptr, ptr @brcmstb_gisb_arb_device_list, align 4
  %cmp.i.not.i = icmp eq ptr %30, @brcmstb_gisb_arb_device_list
  br i1 %cmp.i.not.i, label %list_add_tail.exit.do.end78_crit_edge, label %list_is_singular.exit

list_add_tail.exit.do.end78_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

list_is_singular.exit:                            ; preds = %list_add_tail.exit
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @brcmstb_gisb_arb_device_list, i32 0, i32 1), align 4
  %cmp.i153.not = icmp eq ptr %30, %31
  br i1 %cmp.i153.not, label %if.then72, label %list_is_singular.exit.do.end78_crit_edge

list_is_singular.exit.do.end78_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.then72:                                        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 @register_die_notifier(ptr noundef nonnull @gisb_die_notifier) #7
  %call74 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @gisb_panic_notifier) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then72, %list_is_singular.exit.do.end78_crit_edge, %list_add_tail.exit.do.end78_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call1, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end63.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end19, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ 0, %do.end78 ], [ -22, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i146, %if.end21.cleanup_crit_edge ], [ %call.i147, %if.end26.cleanup_crit_edge ], [ %call.i148, %if.then34.cleanup_crit_edge ], [ %call65, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_arb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gisb_offsets.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gisb_offsets.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.gisb_read.exit_crit_edge, label %if.end.i

entry.gisb_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read.exit

if.end.i:                                         ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7
  br i1 %tobool.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit

if.else4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit

gisb_read.exit:                                   ; preds = %if.else4.i, %if.then3.i, %entry.gisb_read.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then3.i ], [ %11, %if.else4.i ], [ 0, %entry.gisb_read.exit_crit_edge ]
  %saved_timeout = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %saved_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %saved_timeout, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_arb_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %saved_timeout = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %saved_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved_timeout, align 4
  %gisb_offsets.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gisb_offsets.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %entry.gisb_write.exit_crit_edge, label %if.end.i

entry.gisb_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_write.exit

if.end.i:                                         ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !96
  br label %gisb_write.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #7, !srcloc !96
  br label %gisb_write.exit

gisb_write.exit:                                  ; preds = %if.else.i, %do.body.i, %entry.gisb_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_timeout_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @brcmstb_gisb_arb_decode_addr(ptr noundef %dev_id, ptr noundef nonnull @.str.12)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_tea_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @brcmstb_gisb_arb_decode_addr(ptr noundef %dev_id, ptr noundef nonnull @.str.17)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_gisb_bp_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %m_fmt = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %m_fmt) #7
  %gisb_offsets.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %dev_id, i32 0, i32 1
  %0 = call ptr @memset(ptr %m_fmt, i32 255, i32 11)
  %1 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %2, i32 4
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %dev_id, i32 0, i32 2
  %5 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 %4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7
  br i1 %tobool.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit

if.else4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit

gisb_read.exit:                                   ; preds = %if.else4.i, %if.then3.i
  %retval.0.i = phi i32 [ %9, %if.then3.i ], [ %10, %if.else4.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gisb_read.exit.cleanup_crit_edge, label %if.end

gisb_read.exit.cleanup_crit_edge:                 ; preds = %gisb_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %gisb_read.exit
  %11 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp slt i32 %14, 0
  br i1 %cmp.i.i, label %if.end.gisb_read.exit.i_crit_edge, label %if.end.i.i

if.end.gisb_read.exit.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read.exit.i

if.end.i.i:                                       ; preds = %if.end
  %15 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %18, i32 %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #7
  br i1 %tobool.not.i.i, label %if.else4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit.i

if.else4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit.i

gisb_read.exit.i:                                 ; preds = %if.else4.i.i, %if.then3.i.i, %if.end.gisb_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %19, %if.then3.i.i ], [ %20, %if.else4.i.i ], [ 0, %if.end.gisb_read.exit.i_crit_edge ]
  %21 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i6.i = getelementptr i32, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i7.i = icmp slt i32 %24, 0
  br i1 %cmp.i7.i, label %gisb_read.exit.i.gisb_read_bp_address.exit_crit_edge, label %if.end.i12.i

gisb_read.exit.i.gisb_read_bp_address.exit_crit_edge: ; preds = %gisb_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read_bp_address.exit

if.end.i12.i:                                     ; preds = %gisb_read.exit.i
  %25 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i10.i = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i11.i = getelementptr i8, ptr %28, i32 %24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i11.i) #7
  br i1 %tobool.not.i10.i, label %if.else4.i14.i, label %if.then3.i13.i

if.then3.i13.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read_bp_address.exit

if.else4.i14.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read_bp_address.exit

gisb_read_bp_address.exit:                        ; preds = %if.else4.i14.i, %if.then3.i13.i, %gisb_read.exit.i.gisb_read_bp_address.exit_crit_edge
  %retval.0.i15.i = phi i32 [ %29, %if.then3.i13.i ], [ %30, %if.else4.i14.i ], [ 0, %gisb_read.exit.i.gisb_read_bp_address.exit_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %conv2.i = zext i32 %retval.0.i15.i to i64
  %shl.i = shl nuw i64 %conv2.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %31 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i25 = getelementptr i32, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i26 = icmp slt i32 %34, 0
  br i1 %cmp.i26, label %gisb_read_bp_address.exit.gisb_read.exit35_crit_edge, label %if.end.i31

gisb_read_bp_address.exit.gisb_read.exit35_crit_edge: ; preds = %gisb_read_bp_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read.exit35

if.end.i31:                                       ; preds = %gisb_read_bp_address.exit
  %35 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i29 = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i30 = getelementptr i8, ptr %38, i32 %34
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i30) #7
  br i1 %tobool.not.i29, label %if.else4.i33, label %if.then3.i32

if.then3.i32:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit35

if.else4.i33:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit35

gisb_read.exit35:                                 ; preds = %if.else4.i33, %if.then3.i32, %gisb_read_bp_address.exit.gisb_read.exit35_crit_edge
  %retval.0.i34 = phi i32 [ %39, %if.then3.i32 ], [ %40, %if.else4.i33 ], [ 0, %gisb_read_bp_address.exit.gisb_read.exit35_crit_edge ]
  %valid_mask.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %dev_id, i32 0, i32 5
  %41 = ptrtoint ptr %valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %valid_mask.i, align 4
  %and.i = and i32 %42, %retval.0.i34
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i, label %brcmstb_gisb_master_to_str.exit, label %gisb_read.exit35.if.then5_crit_edge

gisb_read.exit35.if.then5_crit_edge:              ; preds = %gisb_read.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

brcmstb_gisb_master_to_str.exit:                  ; preds = %gisb_read.exit35
  %43 = tail call i32 @llvm.cttz.i32(i32 %and.i, i1 true) #7, !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %iszero.i = icmp eq i32 %and.i, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %43
  %arrayidx.i36 = getelementptr %struct.brcmstb_gisb_arb_device, ptr %dev_id, i32 0, i32 6, i32 %sub.i
  %44 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i36, align 4
  %tobool4.not = icmp eq ptr %45, null
  br i1 %tobool4.not, label %brcmstb_gisb_master_to_str.exit.if.then5_crit_edge, label %brcmstb_gisb_master_to_str.exit.do.end_crit_edge

brcmstb_gisb_master_to_str.exit.do.end_crit_edge: ; preds = %brcmstb_gisb_master_to_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

brcmstb_gisb_master_to_str.exit.if.then5_crit_edge: ; preds = %brcmstb_gisb_master_to_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %brcmstb_gisb_master_to_str.exit.if.then5_crit_edge, %gisb_read.exit35.if.then5_crit_edge
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %m_fmt, i32 noundef 11, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i34)
  br label %do.end

do.end:                                           ; preds = %if.then5, %brcmstb_gisb_master_to_str.exit.do.end_crit_edge
  %m_name.0 = phi ptr [ %45, %brcmstb_gisb_master_to_str.exit.do.end_crit_edge ], [ %m_fmt, %if.then5 ]
  %and9 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond = select i1 %tobool10.not, i32 82, i32 87
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %or.i, i32 noundef %cond, ptr noundef nonnull %m_name.0) #10
  %46 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i40 = getelementptr i32, ptr %47, i32 6
  %48 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i41 = icmp eq i32 %49, -1
  br i1 %cmp.i41, label %do.end.cleanup_crit_edge, label %if.end.i44

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i44:                                       ; preds = %do.end
  %50 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i43 = icmp eq i8 %51, 0
  br i1 %tobool.not.i43, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #7, !srcloc !96
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_id, align 4
  %add.ptr3.i = getelementptr i8, ptr %55, i32 %49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.body.i, %do.end.cleanup_crit_edge, %gisb_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %m_fmt) #7
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmstb_gisb_arb_decode_addr(ptr nocapture noundef readonly %gdev, ptr noundef %reason) unnamed_addr #2 align 64 {
entry:
  %m_fmt = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %m_fmt) #7
  %gisb_offsets.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %gdev, i32 0, i32 1
  %0 = call ptr @memset(ptr %m_fmt, i32 255, i32 11)
  %1 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %2, i32 9
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %gdev, i32 0, i32 2
  %5 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gdev, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 %4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7
  br i1 %tobool.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit

if.else4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit

gisb_read.exit:                                   ; preds = %if.else4.i, %if.then3.i
  %retval.0.i = phi i32 [ %9, %if.then3.i ], [ %10, %if.else4.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gisb_read.exit.cleanup_crit_edge, label %if.end

gisb_read.exit.cleanup_crit_edge:                 ; preds = %gisb_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %gisb_read.exit
  %11 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 8
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp slt i32 %14, 0
  br i1 %cmp.i.i, label %if.end.gisb_read.exit.i_crit_edge, label %if.end.i.i

if.end.gisb_read.exit.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read.exit.i

if.end.i.i:                                       ; preds = %if.end
  %15 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gdev, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %18, i32 %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #7
  br i1 %tobool.not.i.i, label %if.else4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit.i

if.else4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit.i

gisb_read.exit.i:                                 ; preds = %if.else4.i.i, %if.then3.i.i, %if.end.gisb_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %19, %if.then3.i.i ], [ %20, %if.else4.i.i ], [ 0, %if.end.gisb_read.exit.i_crit_edge ]
  %21 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i6.i = getelementptr i32, ptr %22, i32 7
  %23 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i7.i = icmp slt i32 %24, 0
  br i1 %cmp.i7.i, label %gisb_read.exit.i.gisb_read_address.exit_crit_edge, label %if.end.i12.i

gisb_read.exit.i.gisb_read_address.exit_crit_edge: ; preds = %gisb_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read_address.exit

if.end.i12.i:                                     ; preds = %gisb_read.exit.i
  %25 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i10.i = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gdev, align 4
  %add.ptr6.i11.i = getelementptr i8, ptr %28, i32 %24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i11.i) #7
  br i1 %tobool.not.i10.i, label %if.else4.i14.i, label %if.then3.i13.i

if.then3.i13.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read_address.exit

if.else4.i14.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read_address.exit

gisb_read_address.exit:                           ; preds = %if.else4.i14.i, %if.then3.i13.i, %gisb_read.exit.i.gisb_read_address.exit_crit_edge
  %retval.0.i15.i = phi i32 [ %29, %if.then3.i13.i ], [ %30, %if.else4.i14.i ], [ 0, %gisb_read.exit.i.gisb_read_address.exit_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %conv2.i = zext i32 %retval.0.i15.i to i64
  %shl.i = shl nuw i64 %conv2.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %31 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i2 = getelementptr i32, ptr %32, i32 10
  %33 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i3 = icmp slt i32 %34, 0
  br i1 %cmp.i3, label %gisb_read_address.exit.gisb_read.exit12_crit_edge, label %if.end.i8

gisb_read_address.exit.gisb_read.exit12_crit_edge: ; preds = %gisb_read_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read.exit12

if.end.i8:                                        ; preds = %gisb_read_address.exit
  %35 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i6 = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gdev, align 4
  %add.ptr6.i7 = getelementptr i8, ptr %38, i32 %34
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i7) #7
  br i1 %tobool.not.i6, label %if.else4.i10, label %if.then3.i9

if.then3.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit12

if.else4.i10:                                     ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit12

gisb_read.exit12:                                 ; preds = %if.else4.i10, %if.then3.i9, %gisb_read_address.exit.gisb_read.exit12_crit_edge
  %retval.0.i11 = phi i32 [ %39, %if.then3.i9 ], [ %40, %if.else4.i10 ], [ 1, %gisb_read_address.exit.gisb_read.exit12_crit_edge ]
  %valid_mask.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %gdev, i32 0, i32 5
  %41 = ptrtoint ptr %valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %valid_mask.i, align 4
  %and.i = and i32 %42, %retval.0.i11
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i, label %brcmstb_gisb_master_to_str.exit, label %gisb_read.exit12.if.then5_crit_edge

gisb_read.exit12.if.then5_crit_edge:              ; preds = %gisb_read.exit12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

brcmstb_gisb_master_to_str.exit:                  ; preds = %gisb_read.exit12
  %43 = tail call i32 @llvm.cttz.i32(i32 %and.i, i1 true) #7, !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %iszero.i = icmp eq i32 %and.i, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %43
  %arrayidx.i13 = getelementptr %struct.brcmstb_gisb_arb_device, ptr %gdev, i32 0, i32 6, i32 %sub.i
  %44 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i13, align 4
  %tobool4.not = icmp eq ptr %45, null
  br i1 %tobool4.not, label %brcmstb_gisb_master_to_str.exit.if.then5_crit_edge, label %brcmstb_gisb_master_to_str.exit.do.end_crit_edge

brcmstb_gisb_master_to_str.exit.do.end_crit_edge: ; preds = %brcmstb_gisb_master_to_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

brcmstb_gisb_master_to_str.exit.if.then5_crit_edge: ; preds = %brcmstb_gisb_master_to_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %brcmstb_gisb_master_to_str.exit.if.then5_crit_edge, %gisb_read.exit12.if.then5_crit_edge
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %m_fmt, i32 noundef 11, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i11)
  br label %do.end

do.end:                                           ; preds = %if.then5, %brcmstb_gisb_master_to_str.exit.do.end_crit_edge
  %m_name.0 = phi ptr [ %45, %brcmstb_gisb_master_to_str.exit.do.end_crit_edge ], [ %m_fmt, %if.then5 ]
  %and9 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond = select i1 %tobool10.not, i32 82, i32 87
  %and11 = and i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.16, ptr @.str.12
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %reason, i64 noundef %or.i, i32 noundef %cond, ptr noundef nonnull %cond13, ptr noundef nonnull %m_name.0) #10
  %46 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gisb_offsets.i, align 4
  %arrayidx.i17 = getelementptr i32, ptr %47, i32 6
  %48 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i18 = icmp eq i32 %49, -1
  br i1 %cmp.i18, label %do.end.cleanup_crit_edge, label %if.end.i21

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i21:                                       ; preds = %do.end
  %50 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i20 = icmp eq i8 %51, 0
  br i1 %tobool.not.i20, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gdev, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #7, !srcloc !96
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gdev, align 4
  %add.ptr3.i = getelementptr i8, ptr %55, i32 %49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.body.i, %do.end.cleanup_crit_edge, %gisb_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %m_fmt) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gisb_arb_get_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %gisb_offsets.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gisb_offsets.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.gisb_read.exit_crit_edge, label %if.end.i

entry.gisb_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_read.exit

if.end.i:                                         ; preds = %entry
  %big_endian.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7
  br i1 %tobool.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %gisb_read.exit

if.else4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  br label %gisb_read.exit

gisb_read.exit:                                   ; preds = %if.else4.i, %if.then3.i, %entry.gisb_read.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then3.i ], [ %11, %if.else4.i ], [ 0, %entry.gisb_read.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gisb_arb_set_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !98
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end5 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -1, label %if.end.cleanup_crit_edge12
  ]

if.end.cleanup_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %gisb_offsets.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %gisb_offsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gisb_offsets.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp eq i32 %11, -1
  br i1 %cmp.i, label %if.end5.gisb_write.exit_crit_edge, label %if.end.i

if.end5.gisb_write.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %gisb_write.exit

if.end.i:                                         ; preds = %if.end5
  %big_endian.i = getelementptr inbounds %struct.brcmstb_gisb_arb_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !96
  br label %gisb_write.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 %11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  call void @arm_heavy_mb() #7
  %18 = call i32 @llvm.bswap.i32(i32 %7) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %18) #7, !srcloc !96
  br label %gisb_write.exit

gisb_write.exit:                                  ; preds = %if.else.i, %do.body.i, %if.end5.gisb_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %gisb_write.exit, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %gisb_write.exit ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_gisb_error(ptr noundef readnone %self, i32 noundef %v, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %self, @gisb_die_notifier
  %spec.store.select = select i1 %cmp, ptr @.str.23, ptr @.str.22
  %.pn9 = load ptr, ptr @brcmstb_gisb_arb_device_list, align 4
  %cmp1.not10 = icmp eq ptr %.pn9, @brcmstb_gisb_arb_device_list
  br i1 %cmp1.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %gdev.0 = getelementptr i8, ptr %.pn11, i32 -104
  tail call fastcc void @brcmstb_gisb_arb_decode_addr(ptr noundef %gdev.0, ptr noundef nonnull %spec.store.select)
  %0 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp1.not = icmp eq ptr %.pn, @brcmstb_gisb_arb_device_list
  br i1 %cmp1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_brcmstb_gisb__187_549_brcm_gisb_driver_init6, !1, !"__initcall__kmod_brcmstb_gisb__187_549_brcm_gisb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/brcmstb_gisb.c", i32 549, i32 1}
!2 = !{ptr @__UNIQUE_ID_author188, !3, !"__UNIQUE_ID_author188", i1 false, i1 false}
!3 = !{!"../drivers/bus/brcmstb_gisb.c", i32 551, i32 1}
!4 = !{ptr @__UNIQUE_ID_description189, !5, !"__UNIQUE_ID_description189", i1 false, i1 false}
!5 = !{!"../drivers/bus/brcmstb_gisb.c", i32 552, i32 1}
!6 = !{ptr @__UNIQUE_ID_file190, !7, !"__UNIQUE_ID_file190", i1 false, i1 false}
!7 = !{!"../drivers/bus/brcmstb_gisb.c", i32 553, i32 1}
!8 = !{ptr @__UNIQUE_ID_license191, !7, !"__UNIQUE_ID_license191", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/bus/brcmstb_gisb.c", i32 536, i32 11}
!11 = !{ptr @brcmstb_gisb_arb_driver, !12, !"brcmstb_gisb_arb_driver", i1 false, i1 false}
!12 = !{!"../drivers/bus/brcmstb_gisb.c", i32 534, i32 31}
!13 = !{ptr @brcmstb_gisb_arb_of_match, !14, !"brcmstb_gisb_arb_of_match", i1 false, i1 false}
!14 = !{!"../drivers/bus/brcmstb_gisb.c", i32 389, i32 34}
!15 = !{ptr @gisb_offsets_bcm7445, !16, !"gisb_offsets_bcm7445", i1 false, i1 false}
!16 = !{!"../drivers/bus/brcmstb_gisb.c", i32 113, i32 18}
!17 = !{ptr @gisb_offsets_bcm7435, !18, !"gisb_offsets_bcm7435", i1 false, i1 false}
!18 = !{!"../drivers/bus/brcmstb_gisb.c", i32 99, i32 18}
!19 = !{ptr @gisb_offsets_bcm7400, !20, !"gisb_offsets_bcm7400", i1 false, i1 false}
!20 = !{!"../drivers/bus/brcmstb_gisb.c", i32 85, i32 18}
!21 = !{ptr @gisb_offsets_bcm7278, !22, !"gisb_offsets_bcm7278", i1 false, i1 false}
!22 = !{!"../drivers/bus/brcmstb_gisb.c", i32 71, i32 18}
!23 = !{ptr @gisb_offsets_bcm7038, !24, !"gisb_offsets_bcm7038", i1 false, i1 false}
!24 = !{!"../drivers/bus/brcmstb_gisb.c", i32 57, i32 18}
!25 = !{ptr @brcmstb_gisb_arb_pm_ops, !26, !"brcmstb_gisb_arb_pm_ops", i1 false, i1 false}
!26 = !{!"../drivers/bus/brcmstb_gisb.c", i32 529, i32 32}
!27 = !{ptr @brcmstb_gisb_arb_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/bus/brcmstb_gisb.c", i32 418, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/brcmstb_gisb.c", i32 427, i32 3}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @brcmstb_gisb_arb_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcmstb_gisb_arb_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/brcmstb_gisb.c", i32 455, i32 31}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bus/brcmstb_gisb.c", i32 463, i32 4}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bus/brcmstb_gisb.c", i32 497, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @brcmstb_gisb_arb_probe._entry.7, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @brcmstb_gisb_arb_probe._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/brcmstb_gisb.c", i32 300, i32 39}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bus/brcmstb_gisb.c", i32 259, i32 34}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bus/brcmstb_gisb.c", i32 263, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @brcmstb_gisb_arb_decode_addr._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @brcmstb_gisb_arb_decode_addr._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/brcmstb_gisb.c", i32 307, i32 39}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/brcmstb_gisb.c", i32 337, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @brcmstb_gisb_bp_handler._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @brcmstb_gisb_bp_handler._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @gisb_arb_sysfs_attr_group, !64, !"gisb_arb_sysfs_attr_group", i1 false, i1 false}
!64 = !{!"../drivers/bus/brcmstb_gisb.c", i32 385, i32 31}
!65 = !{ptr @gisb_arb_sysfs_attrs, !66, !"gisb_arb_sysfs_attrs", i1 false, i1 false}
!66 = !{!"../drivers/bus/brcmstb_gisb.c", i32 380, i32 26}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bus/brcmstb_gisb.c", i32 377, i32 8}
!69 = !{ptr @dev_attr_gisb_arb_timeout, !68, !"dev_attr_gisb_arb_timeout", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bus/brcmstb_gisb.c", i32 202, i32 22}
!72 = !{ptr @brcmstb_gisb_arb_device_list, !73, !"brcmstb_gisb_arb_device_list", i1 false, i1 false}
!73 = !{!"../drivers/bus/brcmstb_gisb.c", i32 138, i32 8}
!74 = !{ptr @gisb_die_notifier, !75, !"gisb_die_notifier", i1 false, i1 false}
!75 = !{!"../drivers/bus/brcmstb_gisb.c", i32 353, i32 30}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/brcmstb_gisb.c", i32 365, i32 23}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bus/brcmstb_gisb.c", i32 368, i32 12}
!80 = !{ptr @gisb_panic_notifier, !81, !"gisb_panic_notifier", i1 false, i1 false}
!81 = !{!"../drivers/bus/brcmstb_gisb.c", i32 357, i32 30}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i32 0, i32 33}
!92 = !{i8 0, i8 2}
!93 = !{i64 2153089566}
!94 = !{i64 2152424959}
!95 = !{i64 2153089818}
!96 = !{i64 4884192}
!97 = !{i64 2152426314}
!98 = !{!"auto-init"}
