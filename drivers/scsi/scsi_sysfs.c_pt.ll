; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_sysfs.c_pt.bc'
source_filename = "../drivers/scsi/scsi_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+scsi_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_bus_type\09\09\09\09"
module asm "\09.long\09__crc_scsi_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_remove_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_remove_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_remove_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_remove_target\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_remove_target\09\09\09\09"
module asm "\09.long\09__crc_scsi_remove_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_remove_target:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_remove_target\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_remove_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_register_driver\09\09\09\09"
module asm "\09.long\09__crc_scsi_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_register_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_register_interface\09\09\09\09"
module asm "\09.long\09__crc_scsi_register_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_register_interface\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_is_sdev_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_is_sdev_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_is_sdev_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_is_sdev_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_is_sdev_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_is_sdev_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { i32, ptr }
%struct.anon.0 = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.85 = type { i8, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sdev_states = internal constant { [9 x %struct.anon], [56 x i8] } { [9 x %struct.anon] [%struct.anon { i32 1, ptr @.str.6 }, %struct.anon { i32 2, ptr @.str.7 }, %struct.anon { i32 3, ptr @.str.8 }, %struct.anon { i32 4, ptr @.str.9 }, %struct.anon { i32 5, ptr @.str.10 }, %struct.anon { i32 6, ptr @.str.11 }, %struct.anon { i32 7, ptr @.str.12 }, %struct.anon { i32 8, ptr @.str.13 }, %struct.anon { i32 9, ptr @.str.14 }], [56 x i8] zeroinitializer }, align 32
@shost_states = internal constant { [7 x %struct.anon.0], [40 x i8] } { [7 x %struct.anon.0] [%struct.anon.0 { i32 1, ptr @.str.6 }, %struct.anon.0 { i32 2, ptr @.str.7 }, %struct.anon.0 { i32 3, ptr @.str.8 }, %struct.anon.0 { i32 4, ptr @.str.9 }, %struct.anon.0 { i32 5, ptr @.str.15 }, %struct.anon.0 { i32 6, ptr @.str.16 }, %struct.anon.0 { i32 7, ptr @.str.17 }], [40 x i8] zeroinitializer }, align 32
@scsi_shost_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @scsi_sysfs_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@scsi_shost_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @scsi_shost_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scsi\00", [27 x i8] zeroinitializer }, align 32
@scsi_bus_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@scsi_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_bus_match, ptr @scsi_bus_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_bus_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_bus_type to i32), ptr @__kstrtab_scsi_bus_type, ptr @__kstrtabns_scsi_bus_type }, section "___ksymtab_gpl+scsi_bus_type", align 4
@scsi_sysfs_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sdev_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_device_cls_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add device: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add class device: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register bsg queue, errno=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_remove_device to i32), ptr @__kstrtab_scsi_remove_device, ptr @__kstrtabns_scsi_remove_device }, section "___ksymtab+scsi_remove_device", align 4
@__kstrtab_scsi_remove_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_remove_target = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_remove_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_remove_target to i32), ptr @__kstrtab_scsi_remove_target, ptr @__kstrtabns_scsi_remove_target }, section "___ksymtab+scsi_remove_target", align 4
@__kstrtab_scsi_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_register_driver to i32), ptr @__kstrtab_scsi_register_driver, ptr @__kstrtabns_scsi_register_driver }, section "___ksymtab+scsi_register_driver", align 4
@__kstrtab_scsi_register_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_register_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_register_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_register_interface to i32), ptr @__kstrtab_scsi_register_interface, ptr @__kstrtabns_scsi_register_interface }, section "___ksymtab+scsi_register_interface", align 4
@scsi_dev_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.56, ptr @scsi_sdev_attr_groups, ptr null, ptr null, ptr @scsi_device_dev_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d:%d:%d:%llu\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_is_sdev_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_is_sdev_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_is_sdev_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_is_sdev_device to i32), ptr @__kstrtab_scsi_is_sdev_device, ptr @__kstrtabns_scsi_is_sdev_device }, section "___ksymtab+scsi_is_sdev_device", align 4
@blank_transport_template = dso_local global { %struct.scsi_transport_template, [76 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"created\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cancel\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deleted\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"quiesce\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"transport-offline\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blocked\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"created-blocked\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cancel/recovery\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"deleted/recovery\00", [47 x i8] zeroinitializer }, align 32
@scsi_sysfs_shost_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @dev_attr_use_blk_mq, ptr @dev_attr_unique_id, ptr @dev_attr_host_busy, ptr @dev_attr_cmd_per_lun, ptr @dev_attr_can_queue, ptr @dev_attr_sg_tablesize, ptr @dev_attr_sg_prot_tablesize, ptr @dev_attr_proc_name, ptr @dev_attr_scan, ptr @dev_attr_hstate, ptr @dev_attr_supported_mode, ptr @dev_attr_active_mode, ptr @dev_attr_prot_capabilities, ptr @dev_attr_prot_guard_type, ptr @dev_attr_host_reset, ptr @dev_attr_eh_deadline, ptr @dev_attr_nr_hw_queues, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_use_blk_mq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_use_blk_mq, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_unique_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_unique_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_busy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_host_busy, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cmd_per_lun = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cmd_per_lun, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_can_queue = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_can_queue, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sg_tablesize = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sg_tablesize, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sg_prot_tablesize = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sg_prot_tablesize, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_proc_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_proc_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_scan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_scan }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hstate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_shost_state, ptr @store_shost_state }, [36 x i8] zeroinitializer }, align 32
@dev_attr_supported_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_shost_supported_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_shost_active_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prot_capabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_prot_capabilities, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prot_guard_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_prot_guard_type, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_host_reset }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eh_deadline = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_shost_eh_deadline, ptr @store_shost_eh_deadline }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nr_hw_queues = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_nr_hw_queues, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"use_blk_mq\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unique_id\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_busy\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmd_per_lun\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hd\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can_queue\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sg_tablesize\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sg_prot_tablesize\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"proc_name\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scan\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%10s %10s %16s %c\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"supported_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Initiator\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Target\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"active_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prot_capabilities\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prot_guard_type\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adapter\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eh_deadline\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_hw_queues\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MODALIAS=scsi:t-0x%02x\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scsi_device\00", [20 x i8] zeroinitializer }, align 32
@scsi_target_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.59, i32 1331, ptr @.str.60, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"target device_add failed, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scsi_target_add\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/scsi/scsi_sysfs.c\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scsi_target_add._entry_ptr = internal global ptr @scsi_target_add._entry, section ".printk_index", align 4
@scsi_sdev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @scsi_sdev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@scsi_sdev_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @scsi_sdev_attr_is_visible, ptr @scsi_sdev_bin_attr_is_visible, ptr @scsi_sdev_attrs, ptr @scsi_sdev_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@scsi_sdev_attrs = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @dev_attr_device_blocked, ptr @dev_attr_type, ptr @dev_attr_scsi_level, ptr @dev_attr_device_busy, ptr @dev_attr_vendor, ptr @dev_attr_model, ptr @dev_attr_rev, ptr @dev_attr_rescan, ptr @dev_attr_delete, ptr @dev_attr_state, ptr @dev_attr_timeout, ptr @dev_attr_eh_timeout, ptr @dev_attr_iocounterbits, ptr @dev_attr_iorequest_cnt, ptr @dev_attr_iodone_cnt, ptr @dev_attr_ioerr_cnt, ptr @dev_attr_modalias, ptr @dev_attr_queue_depth, ptr @dev_attr_queue_type, ptr @dev_attr_wwid, ptr @dev_attr_blacklist, ptr @dev_attr_dh_state, ptr @dev_attr_access_state, ptr @dev_attr_preferred_path, ptr @dev_attr_queue_ramp_up_period, ptr @dev_attr_evt_media_change, ptr @dev_attr_evt_inquiry_change_reported, ptr @dev_attr_evt_capacity_change_reported, ptr @dev_attr_evt_soft_threshold_reached, ptr @dev_attr_evt_mode_parameter_change_reported, ptr @dev_attr_evt_lun_change_reported, ptr null], [32 x i8] zeroinitializer }, align 32
@scsi_sdev_bin_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_vpd_pg0, ptr @dev_attr_vpd_pg83, ptr @dev_attr_vpd_pg80, ptr @dev_attr_vpd_pg89, ptr @dev_attr_inquiry, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_queue_depth = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_queue_depth, ptr @sdev_store_queue_depth }, [36 x i8] zeroinitializer }, align 32
@dev_attr_queue_ramp_up_period = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_queue_ramp_up_period, ptr @sdev_store_queue_ramp_up_period }, [36 x i8] zeroinitializer }, align 32
@dev_attr_access_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_access_state, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_preferred_path = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_preferred_path, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue_depth\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"queue_ramp_up_period\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"access_state\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@sdev_access_states = internal constant { [7 x %struct.anon.85], [40 x i8] } { [7 x %struct.anon.85] [%struct.anon.85 { i8 0, ptr @.str.66 }, %struct.anon.85 { i8 1, ptr @.str.67 }, %struct.anon.85 { i8 2, ptr @.str.68 }, %struct.anon.85 { i8 3, ptr @.str.69 }, %struct.anon.85 { i8 4, ptr @.str.70 }, %struct.anon.85 { i8 14, ptr @.str.11 }, %struct.anon.85 { i8 15, ptr @.str.71 }], [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"active/optimized\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"active/non-optimized\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unavailable\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lba-dependent\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"transitioning\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"preferred_path\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@dev_attr_vpd_pg0 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @show_vpd_pg0, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dev_attr_vpd_pg80 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @show_vpd_pg80, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dev_attr_vpd_pg83 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @show_vpd_pg83, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dev_attr_vpd_pg89 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @show_vpd_pg89, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpd_pg0\00", [24 x i8] zeroinitializer }, align 32
@show_vpd_pg0.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpd_pg80\00", [23 x i8] zeroinitializer }, align 32
@show_vpd_pg80.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpd_pg83\00", [23 x i8] zeroinitializer }, align 32
@show_vpd_pg83.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpd_pg89\00", [23 x i8] zeroinitializer }, align 32
@show_vpd_pg89.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dev_attr_device_blocked = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_device_blocked, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_type, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_scsi_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_scsi_level, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_busy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_device_busy, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_vendor, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_model, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_rev, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rescan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_rescan_field }, [36 x i8] zeroinitializer }, align 32
@dev_attr_delete = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @sdev_store_delete }, [36 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_state_field, ptr @store_state_field }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_timeout, ptr @sdev_store_timeout }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eh_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_eh_timeout, ptr @sdev_store_eh_timeout }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iocounterbits = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_iostat_counterbits, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iorequest_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_iostat_iorequest_cnt, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iodone_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_iostat_iodone_cnt, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ioerr_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_iostat_ioerr_cnt, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_modalias, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_queue_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_queue_type_field, ptr @store_queue_type_field }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wwid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_wwid, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_blacklist = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_blacklist, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dh_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_dh_state, ptr @sdev_store_dh_state }, [36 x i8] zeroinitializer }, align 32
@dev_attr_evt_media_change = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_evt_media_change, ptr @sdev_store_evt_media_change }, [36 x i8] zeroinitializer }, align 32
@dev_attr_evt_inquiry_change_reported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_evt_inquiry_change_reported, ptr @sdev_store_evt_inquiry_change_reported }, [36 x i8] zeroinitializer }, align 32
@dev_attr_evt_capacity_change_reported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_evt_capacity_change_reported, ptr @sdev_store_evt_capacity_change_reported }, [36 x i8] zeroinitializer }, align 32
@dev_attr_evt_soft_threshold_reached = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_evt_soft_threshold_reached, ptr @sdev_store_evt_soft_threshold_reached }, [36 x i8] zeroinitializer }, align 32
@dev_attr_evt_mode_parameter_change_reported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_evt_mode_parameter_change_reported, ptr @sdev_store_evt_mode_parameter_change_reported }, [36 x i8] zeroinitializer }, align 32
@dev_attr_evt_lun_change_reported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdev_show_evt_lun_change_reported, ptr @sdev_store_evt_lun_change_reported }, [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_blocked\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scsi_level\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_busy\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.8s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.16s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rev\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.4s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescan\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delete\00", [25 x i8] zeroinitializer }, align 32
@sdev_store_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eh_timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iocounterbits\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iorequest_cnt\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iodone_cnt\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ioerr_cnt\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scsi:t-0x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"queue_type\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"simple\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ignoring write to deprecated queue_type attribute\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wwid\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"blacklist\00", [22 x i8] zeroinitializer }, align 32
@sdev_bflags_name = internal constant { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr null, ptr null, ptr null, ptr null, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr null, ptr @.str.131, ptr @.str.132, ptr null, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sINVALID_BIT(%d)\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NOLUN\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FORCELUN\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BORKEN\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KEY\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SINGLELUN\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NOTQ\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPARSELUN\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAX5LUN\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ISROM\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LARGELUN\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INQUIRY_36\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IGN_MEDIA_CHANGE\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NOSTARTONADD\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REPORTLUN2\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NOREPORTLUN\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NOT_LOCKABLE\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NO_ULD_ATTACH\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SELECT_NO_ATN\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RETRY_HWERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAX_512\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NO_DIF\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SKIP_VPD_PAGES\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TRY_VPD_PAGES\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NO_RSOC\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX_1024\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UNMAP_LIMIT_WS\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RETRY_ITF\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RETRY_ASC_C1\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dh_state\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"detached\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"activate\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't detach handler %s.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"evt_media_change\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"evt_inquiry_change_reported\00", [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"evt_capacity_change_reported\00", [35 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"evt_soft_threshold_reached\00", [37 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"evt_mode_parameter_change_reported\00", [61 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"evt_lun_change_reported\00", [40 x i8] zeroinitializer }, align 32
@dev_attr_inquiry = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.151, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @show_inquiry, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inquiry\00", [24 x i8] zeroinitializer }, align 32
@scsi_device_dev_release_usercontext.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.152 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@scsi_device_dev_release_usercontext.__warned.153 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scsi_device_dev_release_usercontext.__warned.154 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scsi_device_dev_release_usercontext.__warned.155 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.sdev_show_access_state = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.162 = private unnamed_addr constant [12 x i8] c"sdev_states\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 35, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"shost_states\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 64, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [22 x i8] c"scsi_shost_attr_group\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 427, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"scsi_shost_groups\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 431, i32 31 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 556, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"scsi_bus_type\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 555, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 571, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [11 x i8] c"sdev_class\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 523, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1376, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1384, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1400, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [14 x i8] c"scsi_dev_type\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1589, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1606, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [25 x i8] c"blank_transport_template\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1649, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 36, i32 18 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 37, i32 18 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 38, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 39, i32 14 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 40, i32 18 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 41, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 42, i32 28 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 43, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 44, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 69, i32 20 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 70, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 71, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant [23 x i8] c"scsi_sysfs_shost_attrs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 406, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"dev_attr_use_blk_mq\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [19 x i8] c"dev_attr_unique_id\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"dev_attr_host_busy\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"dev_attr_cmd_per_lun\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"dev_attr_can_queue\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [22 x i8] c"dev_attr_sg_tablesize\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [27 x i8] c"dev_attr_sg_prot_tablesize\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"dev_attr_proc_name\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [14 x i8] c"dev_attr_scan\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"dev_attr_hstate\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 235, i32 32 }
@___asan_gen_.276 = private unnamed_addr constant [24 x i8] c"dev_attr_supported_mode\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"dev_attr_active_mode\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"dev_attr_prot_capabilities\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [25 x i8] c"dev_attr_prot_guard_type\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c"dev_attr_host_reset\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [21 x i8] c"dev_attr_eh_deadline\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [22 x i8] c"dev_attr_nr_hw_queues\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 394, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 392, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 372, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 387, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 385, i32 27 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 373, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 374, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 375, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 376, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 379, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 196, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 139, i32 20 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 120, i32 18 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 236, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 268, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 244, i32 28 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 247, i32 29 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 247, i32 43 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 247, i32 50 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 247, i32 54 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 249, i32 28 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 282, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 277, i32 28 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 377, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 378, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 318, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 286, i32 23 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 288, i32 28 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 370, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 327, i32 43 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 344, i32 20 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 404, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 551, i32 22 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 524, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1331, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [22 x i8] c"scsi_sdev_attr_groups\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1317, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [21 x i8] c"scsi_sdev_attr_group\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1310, i32 31 }
@___asan_gen_.435 = private unnamed_addr constant [16 x i8] c"scsi_sdev_attrs\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1265, i32 26 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c"scsi_sdev_bin_attrs\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1302, i32 30 }
@___asan_gen_.441 = private unnamed_addr constant [21 x i8] c"dev_attr_queue_depth\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [30 x i8] c"dev_attr_queue_ramp_up_period\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [22 x i8] c"dev_attr_access_state\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [24 x i8] c"dev_attr_preferred_path\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1040, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1212, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1166, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1164, i32 50 }
@___asan_gen_.465 = private unnamed_addr constant [19 x i8] c"sdev_access_states\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 91, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 92, i32 31 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 93, i32 30 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 94, i32 31 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 95, i32 35 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 96, i32 27 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 98, i32 37 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1183, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1181, i32 23 }
@___asan_gen_.492 = private unnamed_addr constant [17 x i8] c"dev_attr_vpd_pg0\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [18 x i8] c"dev_attr_vpd_pg80\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [18 x i8] c"dev_attr_vpd_pg83\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [18 x i8] c"dev_attr_vpd_pg89\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 916, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 695, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 723, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 914, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 913, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 915, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant [24 x i8] c"dev_attr_device_blocked\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [20 x i8] c"dev_attr_scsi_level\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [21 x i8] c"dev_attr_device_busy\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [16 x i8] c"dev_attr_vendor\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [15 x i8] c"dev_attr_model\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [13 x i8] c"dev_attr_rev\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [16 x i8] c"dev_attr_rescan\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [16 x i8] c"dev_attr_delete\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 856, i32 8 }
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"dev_attr_timeout\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [20 x i8] c"dev_attr_eh_timeout\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [23 x i8] c"dev_attr_iocounterbits\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [23 x i8] c"dev_attr_iorequest_cnt\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [20 x i8] c"dev_attr_iodone_cnt\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [19 x i8] c"dev_attr_ioerr_cnt\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c"dev_attr_queue_type\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [14 x i8] c"dev_attr_wwid\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [19 x i8] c"dev_attr_blacklist\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [18 x i8] c"dev_attr_dh_state\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [26 x i8] c"dev_attr_evt_media_change\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [37 x i8] c"dev_attr_evt_inquiry_change_reported\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [38 x i8] c"dev_attr_evt_capacity_change_reported\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [36 x i8] c"dev_attr_evt_soft_threshold_reached\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [44 x i8] c"dev_attr_evt_mode_parameter_change_reported\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [33 x i8] c"dev_attr_evt_lun_change_reported\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 694, i32 8 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 672, i32 1 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 673, i32 1 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 685, i32 8 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 674, i32 1 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 675, i32 1 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 676, i32 1 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 756, i32 8 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 791, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 718, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 747, i32 8 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 948, i32 8 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 961, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 962, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 963, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 972, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 970, i32 28 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 885, i32 8 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 863, i32 21 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 866, i32 10 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 880, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1057, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1093, i32 8 }
@___asan_gen_.690 = private unnamed_addr constant [17 x i8] c"sdev_bflags_name\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1061, i32 26 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1084, i32 21 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1087, i32 7 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 1, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 2, i32 1 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 3, i32 1 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 4, i32 1 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 5, i32 1 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 6, i32 1 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 7, i32 1 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 8, i32 1 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 9, i32 1 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 10, i32 1 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 11, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 12, i32 1 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 13, i32 1 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 14, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 15, i32 1 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 16, i32 1 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 17, i32 1 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 18, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 19, i32 1 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 20, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 21, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 22, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 23, i32 1 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 24, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 25, i32 1 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 26, i32 1 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 27, i32 1 }
@___asan_gen_.781 = private unnamed_addr constant [34 x i8] c"./drivers/scsi/scsi_devinfo_tbl.c\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 28, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1145, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1103, i32 28 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1124, i32 27 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1132, i32 27 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1136, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1007, i32 1 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1008, i32 1 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1009, i32 1 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1010, i32 1 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1011, i32 1 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1012, i32 1 }
@___asan_gen_.819 = private unnamed_addr constant [17 x i8] c"dev_attr_inquiry\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 932, i32 29 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 934, i32 11 }
@___asan_gen_.825 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.826 = private constant [29 x i8] c"../drivers/scsi/scsi_sysfs.c\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 485, i32 12 }
@___asan_gen_.828 = private unnamed_addr constant [36 x i8] c"switch.table.sdev_show_access_state\00", align 1
@llvm.compiler.used = appending global [230 x ptr] [ptr @__ksymtab_scsi_bus_type, ptr @__ksymtab_scsi_is_sdev_device, ptr @__ksymtab_scsi_register_driver, ptr @__ksymtab_scsi_register_interface, ptr @__ksymtab_scsi_remove_device, ptr @__ksymtab_scsi_remove_target, ptr @scsi_target_add._entry, ptr @scsi_target_add._entry_ptr, ptr @sdev_states, ptr @shost_states, ptr @scsi_shost_attr_group, ptr @scsi_shost_groups, ptr @.str, ptr @scsi_bus_type, ptr @scsi_sysfs_register.__key, ptr @sdev_class, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @scsi_dev_type, ptr @.str.5, ptr @blank_transport_template, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @scsi_sysfs_shost_attrs, ptr @dev_attr_use_blk_mq, ptr @dev_attr_unique_id, ptr @dev_attr_host_busy, ptr @dev_attr_cmd_per_lun, ptr @dev_attr_can_queue, ptr @dev_attr_sg_tablesize, ptr @dev_attr_sg_prot_tablesize, ptr @dev_attr_proc_name, ptr @dev_attr_scan, ptr @dev_attr_hstate, ptr @dev_attr_supported_mode, ptr @dev_attr_active_mode, ptr @dev_attr_prot_capabilities, ptr @dev_attr_prot_guard_type, ptr @dev_attr_host_reset, ptr @dev_attr_eh_deadline, ptr @dev_attr_nr_hw_queues, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @scsi_sdev_attr_groups, ptr @scsi_sdev_attr_group, ptr @scsi_sdev_attrs, ptr @scsi_sdev_bin_attrs, ptr @dev_attr_queue_depth, ptr @dev_attr_queue_ramp_up_period, ptr @dev_attr_access_state, ptr @dev_attr_preferred_path, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @sdev_access_states, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @dev_attr_vpd_pg0, ptr @dev_attr_vpd_pg80, ptr @dev_attr_vpd_pg83, ptr @dev_attr_vpd_pg89, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @dev_attr_device_blocked, ptr @dev_attr_type, ptr @dev_attr_scsi_level, ptr @dev_attr_device_busy, ptr @dev_attr_vendor, ptr @dev_attr_model, ptr @dev_attr_rev, ptr @dev_attr_rescan, ptr @dev_attr_delete, ptr @dev_attr_state, ptr @dev_attr_timeout, ptr @dev_attr_eh_timeout, ptr @dev_attr_iocounterbits, ptr @dev_attr_iorequest_cnt, ptr @dev_attr_iodone_cnt, ptr @dev_attr_ioerr_cnt, ptr @dev_attr_modalias, ptr @dev_attr_queue_type, ptr @dev_attr_wwid, ptr @dev_attr_blacklist, ptr @dev_attr_dh_state, ptr @dev_attr_evt_media_change, ptr @dev_attr_evt_inquiry_change_reported, ptr @dev_attr_evt_capacity_change_reported, ptr @dev_attr_evt_soft_threshold_reached, ptr @dev_attr_evt_mode_parameter_change_reported, ptr @dev_attr_evt_lun_change_reported, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @sdev_bflags_name, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @dev_attr_inquiry, ptr @.str.151, ptr @.str.152, ptr @switch.table.sdev_show_access_state], section "llvm.metadata"
@0 = internal global [223 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdev_states to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shost_states to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_shost_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sysfs_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdev_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank_transport_template to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sysfs_shost_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_use_blk_mq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_unique_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_busy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cmd_per_lun to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_can_queue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sg_tablesize to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sg_prot_tablesize to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_proc_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_scan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hstate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_supported_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prot_capabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prot_guard_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eh_deadline to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nr_hw_queues to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_target_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sdev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sdev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sdev_attrs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sdev_bin_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queue_depth to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queue_ramp_up_period to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_access_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_preferred_path to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdev_access_states to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vpd_pg0 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vpd_pg80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vpd_pg83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vpd_pg89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_blocked to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_scsi_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_busy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rescan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_delete to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eh_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iocounterbits to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iorequest_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iodone_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ioerr_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queue_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wwid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_blacklist to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dh_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_evt_media_change to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_evt_inquiry_change_reported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_evt_capacity_change_reported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_evt_soft_threshold_reached to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_evt_mode_parameter_change_reported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_evt_lun_change_reported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdev_bflags_name to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inquiry to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdev_show_access_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_device_state_name(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %if.then, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name3 = getelementptr [9 x %struct.anon], ptr @sdev_states, i32 0, i32 %switch.tableidx, i32 1
  %1 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %entry.for.end_crit_edge
  %name.0 = phi ptr [ %2, %if.then ], [ null, %entry.for.end_crit_edge ]
  ret ptr %name.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_host_state_name(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 7
  br i1 %0, label %if.then, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name3 = getelementptr [7 x %struct.anon.0], ptr @shost_states, i32 0, i32 %switch.tableidx, i32 1
  %1 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %entry.for.end_crit_edge
  %name.0 = phi ptr [ %2, %if.then ], [ null, %entry.for.end_crit_edge ]
  ret ptr %name.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scsi_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %gendrv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @scsi_dev_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_uld_attach = getelementptr i8, ptr %dev, i32 -100
  %2 = ptrtoint ptr %no_uld_attach to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %no_uld_attach, align 4
  %3 = and i64 %bf.load, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %inq_periph_qual = getelementptr i8, ptr %dev, i32 -250
  %4 = ptrtoint ptr %inq_periph_qual to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %inq_periph_qual, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp eq i8 %5, 0
  %cond = zext i1 %cmp3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @scsi_dev_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %type1 = getelementptr i8, ptr %dev, i32 -252
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type1, align 4
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.55, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_sysfs_register() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @scsi_bus_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @__class_register(ptr noundef nonnull @sdev_class, ptr noundef nonnull @scsi_sysfs_register.__key) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bus_unregister(ptr noundef nonnull @scsi_bus_type) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %error.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.then.if.end4_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_sysfs_unregister() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @class_unregister(ptr noundef nonnull @sdev_class) #15
  tail call void @bus_unregister(ptr noundef nonnull @scsi_bus_type) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_sysfs_add_sdev(ptr noundef %sdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %0 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev_target, align 8
  %state.i = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @device_add(ptr noundef %dev.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %scsi_target_add.exit

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @transport_add_device(ptr noundef %dev.i) #15
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev.i, i32 noundef 0) #15
  tail call void @pm_runtime_enable(ptr noundef %dev.i) #15
  %is_prepared.i.i = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 3, i32 12, i32 1
  %5 = ptrtoint ptr %is_prepared.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i.i = load i16, ptr %is_prepared.i.i, align 4
  %6 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %bf.cast.not.i.i = icmp eq i16 %6, 0
  br i1 %bf.cast.not.i.i, label %if.then.i.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i.i = or i16 %bf.load.i.i, 16384
  %7 = ptrtoint ptr %is_prepared.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %bf.set.i.i, ptr %is_prepared.i.i, align 4
  br label %if.end

scsi_target_add.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %call.i) #18
  br label %cleanup

if.end:                                           ; preds = %if.then.i.i, %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 3
  tail call void @transport_configure_device(ptr noundef %dev) #15
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %is_prepared.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 12, i32 1
  %8 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %9 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not.i = icmp eq i16 %9, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end.device_enable_async_suspend.exit_crit_edge

if.end.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i = or i16 %bf.load.i, 16384
  %10 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %if.end.device_enable_async_suspend.exit_crit_edge
  tail call void @scsi_autopm_get_target(ptr noundef %1) #15
  %call.i68 = tail call i32 @__pm_runtime_set_status(ptr noundef %sdev_gendev, i32 noundef 0) #15
  %rpm_autosuspend = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %11 = ptrtoint ptr %rpm_autosuspend to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load = load i64, ptr %rpm_autosuspend, align 4
  %12 = and i64 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool3.not = icmp eq i64 %12, 0
  br i1 %tobool3.not, label %if.then4, label %device_enable_async_suspend.exit.if.end6_crit_edge

device_enable_async_suspend.exit.if.end6_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pm_runtime_forbid(ptr noundef %sdev_gendev) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %device_enable_async_suspend.exit.if.end6_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %sdev_gendev) #15
  tail call void @scsi_autopm_put_target(ptr noundef %1) #15
  %call8 = tail call i32 @scsi_autopm_get_device(ptr noundef %sdev) #15
  tail call void @scsi_dh_add_device(ptr noundef %sdev) #15
  %call10 = tail call i32 @device_add(ptr noundef %sdev_gendev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %call10) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56
  %is_prepared.i69 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56, i32 12, i32 1
  %13 = ptrtoint ptr %is_prepared.i69 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i70 = load i16, ptr %is_prepared.i69, align 4
  %14 = and i16 %bf.load.i70, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %bf.cast.not.i71 = icmp eq i16 %14, 0
  br i1 %bf.cast.not.i71, label %if.then.i73, label %if.end13.device_enable_async_suspend.exit75_crit_edge

if.end13.device_enable_async_suspend.exit75_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %device_enable_async_suspend.exit75

if.then.i73:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i72 = or i16 %bf.load.i70, 16384
  %15 = ptrtoint ptr %is_prepared.i69 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.set.i72, ptr %is_prepared.i69, align 4
  br label %device_enable_async_suspend.exit75

device_enable_async_suspend.exit75:               ; preds = %if.then.i73, %if.end13.device_enable_async_suspend.exit75_crit_edge
  %call15 = tail call i32 @device_add(ptr noundef %sdev_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %device_enable_async_suspend.exit75
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %call15) #15
  tail call void @device_del(ptr noundef %sdev_gendev) #15
  br label %cleanup

if.end19:                                         ; preds = %device_enable_async_suspend.exit75
  %call21 = tail call i32 @transport_add_device(ptr noundef %sdev_gendev) #15
  %16 = ptrtoint ptr %rpm_autosuspend to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load22 = load i64, ptr %rpm_autosuspend, align 4
  %bf.set = or i64 %bf.load22, 8388608
  store i64 %bf.set, ptr %rpm_autosuspend, align 4
  %call24 = tail call ptr @scsi_bsg_register_queue(ptr noundef %sdev) #15
  %bsg_dev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 65
  %17 = ptrtoint ptr %bsg_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24, ptr %bsg_dev, align 8
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %call24 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %18) #15
  %19 = ptrtoint ptr %bsg_dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bsg_dev, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end19.if.end31_crit_edge
  %error.0 = phi i32 [ %18, %if.then27 ], [ 0, %if.end19.if.end31_crit_edge ]
  tail call void @scsi_autopm_put_device(ptr noundef %sdev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then17, %if.then12, %scsi_target_add.exit
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call15, %if.then17 ], [ %error.0, %if.end31 ], [ %call.i, %scsi_target_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_configure_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_get_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dh_add_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_add_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_bsg_register_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__scsi_remove_device(ptr noundef %sdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_visible = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %2 = ptrtoint ptr %is_visible to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %is_visible, align 4
  %3 = and i64 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #15
  %call = tail call i32 @scsi_device_set_state(ptr noundef %sdev, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.then1.if.end12_crit_edge, label %if.then3

if.then1.if.end12_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then3:                                         ; preds = %if.then1
  %call4 = tail call i32 @scsi_device_set_state(ptr noundef %sdev, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_start_queue(ptr noundef %sdev) #15
  br label %if.end12

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %state_mutex) #15
  br label %cleanup

if.end12:                                         ; preds = %if.then6, %if.then1.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #15
  %bsg_dev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 65
  %4 = ptrtoint ptr %bsg_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsg_dev, align 8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bsg_unregister_queue(ptr noundef nonnull %5) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56
  tail call void @device_unregister(ptr noundef %sdev_dev) #15
  tail call void @transport_remove_device(ptr noundef %sdev_gendev) #15
  tail call void @device_del(ptr noundef %sdev_gendev) #15
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sdev_dev17 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56
  tail call void @put_device(ptr noundef %sdev_dev17) #15
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end16
  %state_mutex19 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex19, i32 noundef 0) #15
  %call20 = tail call i32 @scsi_device_set_state(ptr noundef %sdev, i32 noundef 4) #15
  tail call void @mutex_unlock(ptr noundef %state_mutex19) #15
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %6 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue, align 4
  tail call void @blk_cleanup_queue(ptr noundef %7) #15
  %requeue_work = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 58
  %call22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %requeue_work) #15
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostt, align 8
  %slave_destroy = getelementptr inbounds %struct.scsi_host_template, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %slave_destroy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_destroy, align 8
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %if.end18.if.end28_crit_edge, label %if.then24

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %13(ptr noundef %sdev) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end18.if.end28_crit_edge
  tail call void @transport_destroy_device(ptr noundef %sdev_gendev) #15
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 -24
  tail call void @scsi_target_reap(ptr noundef %add.ptr.i) #15
  tail call void @put_device(ptr noundef %sdev_gendev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_start_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_unregister_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_target_reap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_remove_device(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %scan_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #15
  tail call void @__scsi_remove_device(ptr noundef %sdev)
  tail call void @mutex_unlock(ptr noundef %scan_mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_remove_target(ptr noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call378 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %__targets = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %__targets to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn7279 = load ptr, ptr %__targets, align 4
  %cmp8.not7380 = icmp eq ptr %.pn7279, %__targets
  br i1 %cmp8.not7380, label %dev_to_shost.exit.for.end_crit_edge, label %dev_to_shost.exit.for.body.lr.ph_crit_edge

dev_to_shost.exit.for.body.lr.ph_crit_edge:       ; preds = %dev_to_shost.exit
  br label %for.body.lr.ph

dev_to_shost.exit.for.end_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %__scsi_remove_target.exit.for.body.lr.ph_crit_edge, %dev_to_shost.exit.for.body.lr.ph_crit_edge
  %.pn7282 = phi ptr [ %.pn72, %__scsi_remove_target.exit.for.body.lr.ph_crit_edge ], [ %.pn7279, %dev_to_shost.exit.for.body.lr.ph_crit_edge ]
  %call381 = phi i32 [ %call3, %__scsi_remove_target.exit.for.body.lr.ph_crit_edge ], [ %call378, %dev_to_shost.exit.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn74 = phi ptr [ %.pn7282, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn74, i32 984
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %.off = add i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %parent20 = getelementptr i8, ptr %.pn74, i32 156
  %9 = ptrtoint ptr %parent20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent20, align 8
  %cmp21 = icmp eq ptr %10, %dev
  %dev19 = getelementptr i8, ptr %.pn74, i32 20
  %cmp25 = icmp eq ptr %dev19, %dev
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp25
  br i1 %or.cond, label %if.then27, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then27:                                        ; preds = %if.end
  %state.le = getelementptr i8, ptr %.pn74, i32 984
  %parent20.le = getelementptr i8, ptr %.pn74, i32 156
  %starget.0.le = getelementptr i8, ptr %.pn74, i32 -4
  %reap_ref = getelementptr i8, ptr %.pn74, i32 948
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reap_ref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %reap_ref, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reap_ref, ptr %reap_ref, i32 1, ptr elementtype(i32) %reap_ref) #15, !srcloc !417
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then27.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !418

if.then27.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then27
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !419

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then27.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then27.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %reap_ref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %13 = ptrtoint ptr %state.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp29 = icmp eq i32 %14, 1
  %. = select i1 %cmp29, i32 4, i32 3
  %15 = ptrtoint ptr %state.le to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %state.le, align 4
  %16 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call381) #15
  %18 = ptrtoint ptr %parent20.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent20.le, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %kref_get.exit
  %dev.addr.0.i.i = phi ptr [ %19, %kref_get.exit ], [ %21, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.dev_to_shost.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i

while.body.i.i.dev_to_shost.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_to_shost.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %dev_to_shost.exit.i

dev_to_shost.exit.i:                              ; preds = %while.end.i.i, %while.body.i.i.dev_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.dev_to_shost.exit.i_crit_edge ]
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_lock.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #15
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn6670.i = load ptr, ptr %retval.0.i.i, align 8
  %cmp8.not6771.i = icmp eq ptr %.pn6670.i, %retval.0.i.i
  br i1 %cmp8.not6771.i, label %dev_to_shost.exit.i.__scsi_remove_target.exit_crit_edge, label %for.body.lr.ph.lr.ph.i

dev_to_shost.exit.i.__scsi_remove_target.exit_crit_edge: ; preds = %dev_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__scsi_remove_target.exit

for.body.lr.ph.lr.ph.i:                           ; preds = %dev_to_shost.exit.i
  %channel10.i = getelementptr i8, ptr %.pn74, i32 952
  %id13.i = getelementptr i8, ptr %.pn74, i32 956
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end25.i.for.body.lr.ph.i_crit_edge, %for.body.lr.ph.lr.ph.i
  %.pn6673.i = phi ptr [ %.pn6670.i, %for.body.lr.ph.lr.ph.i ], [ %.pn66.i, %if.end25.i.for.body.lr.ph.i_crit_edge ]
  %flags.072.i = phi i32 [ %call3.i, %for.body.lr.ph.lr.ph.i ], [ %call37.i, %if.end25.i.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn68.i = phi ptr [ %.pn6673.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %channel.i = getelementptr i8, ptr %.pn68.i, i32 124
  %25 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel.i, align 4
  %27 = ptrtoint ptr %channel10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp11.not.i = icmp eq i32 %26, %28
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %id.i = getelementptr i8, ptr %.pn68.i, i32 120
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 8
  %31 = ptrtoint ptr %id13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp14.not.i = icmp eq i32 %30, %32
  br i1 %cmp14.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sdev_state.i = getelementptr i8, ptr %.pn68.i, i32 2468
  %33 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sdev_state.i, align 4
  %.off.i = add i32 %34, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false22.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false22.i:                                ; preds = %if.end.i
  %sdev_gendev.i = getelementptr i8, ptr %.pn68.i, i32 400
  %call23.i = tail call ptr @get_device(ptr noundef %sdev_gendev.i) #15
  %tobool.not.i63 = icmp eq ptr %call23.i, null
  br i1 %tobool.not.i63, label %lor.lhs.false22.i.for.inc.i_crit_edge, label %if.end25.i

lor.lhs.false22.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end25.i:                                       ; preds = %lor.lhs.false22.i
  %sdev.0.le.i = getelementptr i8, ptr %.pn68.i, i32 -8
  %35 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %flags.072.i) #15
  %37 = ptrtoint ptr %sdev.0.le.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdev.0.le.i, align 8
  %scan_mutex.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex.i.i, i32 noundef 0) #15
  tail call void @__scsi_remove_device(ptr noundef %sdev.0.le.i) #15
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i.i) #15
  tail call void @put_device(ptr noundef %sdev_gendev.i) #15
  %39 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_lock.i, align 4
  %call37.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #15
  %41 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn66.i = load ptr, ptr %retval.0.i.i, align 8
  %cmp8.not67.i = icmp eq ptr %.pn66.i, %retval.0.i.i
  br i1 %cmp8.not67.i, label %if.end25.i.__scsi_remove_target.exit_crit_edge, label %if.end25.i.for.body.lr.ph.i_crit_edge

if.end25.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.lr.ph.i

if.end25.i.__scsi_remove_target.exit_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__scsi_remove_target.exit

for.inc.i:                                        ; preds = %lor.lhs.false22.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %.pn68.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn68.i, align 8
  %cmp8.not.i = icmp eq ptr %.pn.i, %retval.0.i.i
  br i1 %cmp8.not.i, label %for.inc.i.__scsi_remove_target.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.__scsi_remove_target.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__scsi_remove_target.exit

__scsi_remove_target.exit:                        ; preds = %for.inc.i.__scsi_remove_target.exit_crit_edge, %if.end25.i.__scsi_remove_target.exit_crit_edge, %dev_to_shost.exit.i.__scsi_remove_target.exit_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call3.i, %dev_to_shost.exit.i.__scsi_remove_target.exit_crit_edge ], [ %flags.072.i, %for.inc.i.__scsi_remove_target.exit_crit_edge ], [ %call37.i, %if.end25.i.__scsi_remove_target.exit_crit_edge ]
  %43 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %flags.0.lcssa.i) #15
  tail call void @scsi_target_reap(ptr noundef %starget.0.le) #15
  %45 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #15
  %47 = ptrtoint ptr %__targets to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn72 = load ptr, ptr %__targets, align 4
  %cmp8.not73 = icmp eq ptr %.pn72, %__targets
  br i1 %cmp8.not73, label %__scsi_remove_target.exit.for.end_crit_edge, label %__scsi_remove_target.exit.for.body.lr.ph_crit_edge

__scsi_remove_target.exit.for.body.lr.ph_crit_edge: ; preds = %__scsi_remove_target.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.lr.ph

__scsi_remove_target.exit.for.end_crit_edge:      ; preds = %__scsi_remove_target.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %48 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp8.not = icmp eq ptr %.pn, %__targets
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__scsi_remove_target.exit.for.end_crit_edge, %dev_to_shost.exit.for.end_crit_edge
  %call3.lcssa = phi i32 [ %call378, %dev_to_shost.exit.for.end_crit_edge ], [ %call381, %for.inc.for.end_crit_edge ], [ %call3, %__scsi_remove_target.exit.for.end_crit_edge ]
  %49 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %call3.lcssa) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_register_driver(ptr noundef %drv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @scsi_bus_type, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %drv) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_register_interface(ptr noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.class_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sdev_class, ptr %class, align 4
  %call = tail call i32 @class_interface_register(ptr noundef %intf) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_sysfs_add_host(ptr noundef %shost) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call void @transport_setup_device(ptr noundef %shost_gendev) #15
  %call.i = tail call i32 @transport_add_device(ptr noundef %shost_gendev) #15
  tail call void @transport_configure_device(ptr noundef %shost_gendev) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_sysfs_device_initialize(ptr noundef %sdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostt1 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt1, align 8
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %4 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev_target, align 8
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  tail call void @device_initialize(ptr noundef %sdev_gendev) #15
  %bus = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 5
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @scsi_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @scsi_dev_type, ptr %type, align 4
  tail call void @scsi_enable_async_suspend(ptr noundef %sdev_gendev) #15
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lun, align 8
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %13, i32 noundef %15, i64 noundef %17) #15
  %sdev_groups = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 48
  %18 = ptrtoint ptr %sdev_groups to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_groups, align 8
  %groups = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 34
  %20 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %groups, align 8
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56
  tail call void @device_initialize(ptr noundef %sdev_dev) #15
  %call9 = tail call ptr @get_device(ptr noundef %sdev_gendev) #15
  %parent = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9, ptr %parent, align 8
  %class = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 56, i32 33
  %22 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sdev_class, ptr %class, align 4
  %23 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdev, align 8
  %host_no14 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no14, align 4
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 8
  %31 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lun, align 8
  %call18 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %sdev_dev, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %28, i32 noundef %30, i64 noundef %32) #15
  %scsi_level = getelementptr inbounds %struct.scsi_target, ptr %5, i32 0, i32 12
  %33 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %scsi_level, align 8
  %scsi_level19 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %35 = ptrtoint ptr %scsi_level19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %scsi_level19, align 1
  %36 = add i8 %34, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %36)
  %37 = icmp ult i8 %36, -3
  br i1 %37, label %entry.if.end_crit_edge, label %land.lhs.true26

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true26:                                  ; preds = %entry
  %no_scsi2_lun_in_cdb = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 36
  %38 = ptrtoint ptr %no_scsi2_lun_in_cdb to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %no_scsi2_lun_in_cdb, align 8
  %39 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not = icmp eq i16 %39, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true26.if.end_crit_edge

land.lhs.true26.if.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  %lun_in_cdb = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %40 = ptrtoint ptr %lun_in_cdb to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %bf.load27 = load i64, ptr %lun_in_cdb, align 4
  %bf.set = or i64 %bf.load27, 524288
  store i64 %bf.set, ptr %lun_in_cdb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true26.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @transport_setup_device(ptr noundef %sdev_gendev) #15
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_lock, align 4
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #15
  %same_target_siblings = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 3
  %devices = getelementptr inbounds %struct.scsi_target, ptr %5, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.scsi_target, ptr %5, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %same_target_siblings, ptr noundef %44, ptr noundef %devices) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %same_target_siblings, ptr %prev.i, align 4
  %46 = ptrtoint ptr %same_target_siblings to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %devices, ptr %same_target_siblings, align 4
  %prev3.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %same_target_siblings, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %siblings = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 2
  %prev.i71 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i71, align 4
  %call.i.i72 = tail call zeroext i1 @__list_add_valid(ptr noundef %siblings, ptr noundef %50, ptr noundef %1) #15
  br i1 %call.i.i72, label %if.end.i.i74, label %list_add_tail.exit.list_add_tail.exit75_crit_edge

list_add_tail.exit.list_add_tail.exit75_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit75

if.end.i.i74:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %siblings, ptr %prev.i71, align 4
  %52 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %1, ptr %siblings, align 4
  %prev3.i.i73 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %prev3.i.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i73, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %siblings, ptr %50, align 4
  br label %list_add_tail.exit75

list_add_tail.exit75:                             ; preds = %if.end.i.i74, %list_add_tail.exit.list_add_tail.exit75_crit_edge
  %55 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %call34) #15
  %reap_ref = getelementptr inbounds %struct.scsi_target, ptr %5, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reap_ref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %reap_ref, i32 1, i32 3, i32 1) #15
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reap_ref, ptr %reap_ref, i32 1, ptr elementtype(i32) %reap_ref) #15, !srcloc !417
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit75.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !418

list_add_tail.exit75.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit75
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %58 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !419

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit75.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit75.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %reap_ref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_enable_async_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_setup_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_is_sdev_device(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @scsi_dev_type
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_use_blk_mq(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.19, i32 3)
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_unique_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %unique_id = getelementptr i8, ptr %dev, i32 -1040
  %0 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unique_id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_host_busy(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1512
  %call = tail call i32 @scsi_host_busy(ptr noundef %add.ptr) #15
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_cmd_per_lun(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_per_lun = getelementptr i8, ptr %dev, i32 -1024
  %0 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_per_lun, align 8
  %conv = sext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_can_queue(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %can_queue = getelementptr i8, ptr %dev, i32 -1028
  %0 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %can_queue, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sg_tablesize(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_tablesize = getelementptr i8, ptr %dev, i32 -1022
  %0 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sg_tablesize, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.28, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sg_prot_tablesize(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_prot_tablesize = getelementptr i8, ptr %dev, i32 -1020
  %0 = ptrtoint ptr %sg_prot_tablesize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sg_prot_tablesize, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.28, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_proc_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostt = getelementptr i8, ptr %dev, i32 -1272
  %0 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostt, align 8
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_name, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_scan(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  %last.i48.i = alloca ptr, align 4
  %last.i38.i = alloca ptr, align 4
  %last.i.i = alloca ptr, align 4
  %s1.i = alloca [15 x i8], align 1
  %s2.i = alloca [15 x i8], align 1
  %s3.i = alloca [17 x i8], align 1
  %junk.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1512
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %s1.i) #15
  %0 = call ptr @memset(ptr %s1.i, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %s2.i) #15
  %1 = call ptr @memset(ptr %s2.i, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %s3.i) #15
  %2 = call ptr @memset(ptr %s3.i, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %junk.i) #15
  %3 = ptrtoint ptr %junk.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %junk.i, align 1, !annotation !420
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.33, ptr noundef nonnull %s1.i, ptr noundef nonnull %s2.i, ptr noundef nonnull %s3.i, ptr noundef nonnull %junk.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.scsi_scan.exit.thread_crit_edge

entry.scsi_scan.exit.thread_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_scan.exit.thread

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i.i) #15
  %4 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %last.i.i, align 4, !annotation !420
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %s1.i, ptr noundef nonnull dereferenceable(2) @.str.34, i32 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.end6.i_crit_edge, label %if.else.i.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.else.i.i:                                      ; preds = %if.end.i
  %call1.i.i = call i64 @simple_strtoull(ptr noundef nonnull %s1.i, ptr noundef nonnull %last.i.i, i32 noundef 0) #15
  %5 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2.not.i.i = icmp eq i8 %8, 0
  %extract.t.i = trunc i64 %call1.i.i to i32
  br i1 %cmp2.not.i.i, label %if.else.i.i.if.end6.i_crit_edge, label %check_set.exit.i

if.else.i.i.if.end6.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

check_set.exit.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i.i) #15
  br label %scsi_scan.exit.thread

if.end6.i:                                        ; preds = %if.else.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %channel.0.off0.i = phi i32 [ %extract.t.i, %if.else.i.i.if.end6.i_crit_edge ], [ -1, %if.end.i.if.end6.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i38.i) #15
  %9 = ptrtoint ptr %last.i38.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %last.i38.i, align 4, !annotation !420
  %bcmp73.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %s2.i, ptr noundef nonnull dereferenceable(2) @.str.34, i32 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73.i)
  %cmp.i40.i = icmp eq i32 %bcmp73.i, 0
  br i1 %cmp.i40.i, label %if.end6.i.if.end11.i_crit_edge, label %if.else.i44.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.else.i44.i:                                    ; preds = %if.end6.i
  %call1.i42.i = call i64 @simple_strtoull(ptr noundef nonnull %s2.i, ptr noundef nonnull %last.i38.i, i32 noundef 0) #15
  %10 = ptrtoint ptr %last.i38.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last.i38.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2.not.i43.i = icmp eq i8 %13, 0
  %extract.t74.i = trunc i64 %call1.i42.i to i32
  br i1 %cmp2.not.i43.i, label %if.else.i44.i.if.end11.i_crit_edge, label %check_set.exit47.i

if.else.i44.i.if.end11.i_crit_edge:               ; preds = %if.else.i44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

check_set.exit47.i:                               ; preds = %if.else.i44.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i38.i) #15
  br label %scsi_scan.exit.thread

if.end11.i:                                       ; preds = %if.else.i44.i.if.end11.i_crit_edge, %if.end6.i.if.end11.i_crit_edge
  %id.0.off0.i = phi i32 [ %extract.t74.i, %if.else.i44.i.if.end11.i_crit_edge ], [ -1, %if.end6.i.if.end11.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i38.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i48.i) #15
  %14 = ptrtoint ptr %last.i48.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %last.i48.i, align 4, !annotation !420
  %bcmp75.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %s3.i, ptr noundef nonnull dereferenceable(2) @.str.34, i32 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75.i)
  %cmp.i50.i = icmp eq i32 %bcmp75.i, 0
  br i1 %cmp.i50.i, label %if.end11.i.if.end16.i_crit_edge, label %if.else.i54.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.else.i54.i:                                    ; preds = %if.end11.i
  %call1.i52.i = call i64 @simple_strtoull(ptr noundef nonnull %s3.i, ptr noundef nonnull %last.i48.i, i32 noundef 0) #15
  %15 = ptrtoint ptr %last.i48.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %last.i48.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp2.not.i53.i = icmp eq i8 %18, 0
  br i1 %cmp2.not.i53.i, label %if.else.i54.i.if.end16.i_crit_edge, label %check_set.exit57.i

if.else.i54.i.if.end16.i_crit_edge:               ; preds = %if.else.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

check_set.exit57.i:                               ; preds = %if.else.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i48.i) #15
  br label %scsi_scan.exit.thread

if.end16.i:                                       ; preds = %if.else.i54.i.if.end16.i_crit_edge, %if.end11.i.if.end16.i_crit_edge
  %lun.0.i = phi i64 [ %call1.i52.i, %if.else.i54.i.if.end16.i_crit_edge ], [ -1, %if.end11.i.if.end16.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i48.i) #15
  %transportt.i = getelementptr i8, ptr %dev, i32 -1268
  %19 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transportt.i, align 4
  %user_scan.i = getelementptr inbounds %struct.scsi_transport_template, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %user_scan.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_scan.i, align 4
  %tobool17.not.i = icmp eq ptr %22, null
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %call22.i = call i32 %22(ptr noundef %add.ptr, i32 noundef %channel.0.off0.i, i32 noundef %id.0.off0.i, i64 noundef %lun.0.i) #15
  br label %scsi_scan.exit

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %call25.i = call i32 @scsi_scan_host_selected(ptr noundef %add.ptr, i32 noundef %channel.0.off0.i, i32 noundef %id.0.off0.i, i64 noundef %lun.0.i, i32 noundef 2) #15
  br label %scsi_scan.exit

scsi_scan.exit.thread:                            ; preds = %check_set.exit57.i, %check_set.exit47.i, %check_set.exit.i, %entry.scsi_scan.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %junk.i) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %s3.i) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %s2.i) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %s1.i) #15
  br label %23

scsi_scan.exit:                                   ; preds = %if.else.i, %if.then18.i
  %retval.0.i = phi i32 [ %call22.i, %if.then18.i ], [ %call25.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %junk.i) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %s3.i) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %s2.i) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %s1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %cmp, i32 %count, i32 %retval.0.i
  br label %23

23:                                               ; preds = %scsi_scan.exit, %scsi_scan.exit.thread
  %24 = phi i32 [ -22, %scsi_scan.exit.thread ], [ %spec.select, %scsi_scan.exit ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_scan_host_selected(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_shost_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_state = getelementptr i8, ptr %dev, i32 -932
  %0 = ptrtoint ptr %shost_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shost_state, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name3.i = getelementptr [7 x %struct.anon.0], ptr @shost_states, i32 0, i32 %switch.tableidx, i32 1
  %3 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef nonnull %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_shost_state(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1512
  %call3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.6, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %arrayidx5 = getelementptr i8, ptr %buf, i32 7
  %0 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp6 = icmp eq i8 %1, 10
  br i1 %cmp6, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call3.1 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp eq i32 %call3.1, 0
  br i1 %cmp4.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx5.1 = getelementptr i8, ptr %buf, i32 7
  %2 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp6.1 = icmp eq i8 %3, 10
  br i1 %cmp6.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call3.2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef %buf, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp eq i32 %call3.2, 0
  br i1 %cmp4.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx5.2 = getelementptr i8, ptr %buf, i32 6
  %4 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp6.2 = icmp eq i8 %5, 10
  br i1 %cmp6.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %call3.3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.9, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp eq i32 %call3.3, 0
  br i1 %cmp4.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx5.3 = getelementptr i8, ptr %buf, i32 7
  %6 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp6.3 = icmp eq i8 %7, 10
  br i1 %cmp6.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %call3.4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.15, ptr noundef %buf, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp eq i32 %call3.4, 0
  br i1 %cmp4.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx5.4 = getelementptr i8, ptr %buf, i32 8
  %8 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp6.4 = icmp eq i8 %9, 10
  br i1 %cmp6.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %call3.5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.16, ptr noundef %buf, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp eq i32 %call3.5, 0
  br i1 %cmp4.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx5.5 = getelementptr i8, ptr %buf, i32 15
  %10 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp6.5 = icmp eq i8 %11, 10
  br i1 %cmp6.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %call3.6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.17, ptr noundef %buf, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %cmp4.6 = icmp eq i32 %call3.6, 0
  br i1 %cmp4.6, label %land.lhs.true.6, label %for.inc.5.cleanup15_crit_edge

for.inc.5.cleanup15_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup15

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx5.6 = getelementptr i8, ptr %buf, i32 16
  %12 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp6.6 = icmp eq i8 %13, 10
  br i1 %cmp6.6, label %land.lhs.true.6.for.end_crit_edge, label %land.lhs.true.6.cleanup15_crit_edge

land.lhs.true.6.cleanup15_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup15

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.031.lcssa = phi i32 [ 0, %land.lhs.true.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 3, %land.lhs.true.3.for.end_crit_edge ], [ 4, %land.lhs.true.4.for.end_crit_edge ], [ 5, %land.lhs.true.5.for.end_crit_edge ], [ 6, %land.lhs.true.6.for.end_crit_edge ]
  %arrayidx.le = getelementptr [7 x %struct.anon.0], ptr @shost_states, i32 0, i32 %i.031.lcssa
  %14 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.end.cleanup15_crit_edge, label %if.end10

for.end.cleanup15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup15

if.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @scsi_host_set_state(ptr noundef %add.ptr, i32 noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %count. = select i1 %tobool12.not, i32 %count, i32 -22
  br label %cleanup15

cleanup15:                                        ; preds = %if.end10, %for.end.cleanup15_crit_edge, %land.lhs.true.6.cleanup15_crit_edge, %for.inc.5.cleanup15_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup15_crit_edge ], [ %count., %if.end10 ], [ -22, %land.lhs.true.6.cleanup15_crit_edge ], [ -22, %for.inc.5.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_shost_supported_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostt = getelementptr i8, ptr %dev, i32 -1272
  %0 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostt, align 8
  %supported_mode1 = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %supported_mode1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %supported_mode1, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 0
  %narrow = select i1 %cmp, i8 1, i8 %bf.clear
  %spec.store.select = zext i8 %narrow to i32
  %and.i = and i32 %spec.store.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.38, i32 10)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %len.0.i = phi i32 [ 9, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  %and1.i = and i32 %spec.store.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.show_shost_mode.exit_crit_edge, label %if.then3.i

if.end.i.show_shost_mode.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %show_shost_mode.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.0.i
  %cond.i = select i1 %tobool.not.i, ptr @.str.41, ptr @.str.40
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.42) #15
  %add.i = add i32 %call5.i, %len.0.i
  br label %show_shost_mode.exit

show_shost_mode.exit:                             ; preds = %if.then3.i, %if.end.i.show_shost_mode.exit_crit_edge
  %len.1.i = phi i32 [ %add.i, %if.then3.i ], [ %len.0.i, %if.end.i.show_shost_mode.exit_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %len.1.i
  %4 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 2560, ptr %add.ptr7.i, align 1
  %add9.i = add i32 %len.1.i, 1
  ret i32 %add9.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_shost_active_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %active_mode = getelementptr i8, ptr %dev, i32 -992
  %0 = ptrtoint ptr %active_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %active_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = call ptr @memcpy(ptr %buf, ptr @.str.45, i32 9)
  br label %cleanup

if.else:                                          ; preds = %entry
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.cast = zext i16 %bf.lshr to i32
  %and.i = and i32 %bf.cast, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.38, i32 10)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %len.0.i = phi i32 [ 9, %if.then.i ], [ 0, %if.else.if.end.i_crit_edge ]
  %and1.i = and i32 %bf.cast, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.show_shost_mode.exit_crit_edge, label %if.then3.i

if.end.i.show_shost_mode.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %show_shost_mode.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.0.i
  %cond.i = select i1 %tobool.not.i, ptr @.str.41, ptr @.str.40
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.42) #15
  %add.i = add i32 %call5.i, %len.0.i
  br label %show_shost_mode.exit

show_shost_mode.exit:                             ; preds = %if.then3.i, %if.end.i.show_shost_mode.exit_crit_edge
  %len.1.i = phi i32 [ %add.i, %if.then3.i ], [ %len.0.i, %if.end.i.show_shost_mode.exit_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %len.1.i
  %3 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 2560, ptr %add.ptr7.i, align 1
  %add9.i = add i32 %len.1.i, 1
  br label %cleanup

cleanup:                                          ; preds = %show_shost_mode.exit, %if.then
  %retval.0 = phi i32 [ 8, %if.then ], [ %add9.i, %show_shost_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_prot_capabilities(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_capabilities = getelementptr i8, ptr %dev, i32 -956
  %0 = ptrtoint ptr %prot_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prot_capabilities, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_prot_guard_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %prot_guard_type = getelementptr i8, ptr %dev, i32 -952
  %0 = ptrtoint ptr %prot_guard_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prot_guard_type, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_host_reset(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1512
  %hostt = getelementptr i8, ptr %dev, i32 -1272
  %0 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostt, align 8
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.49) #15
  br i1 %call.i, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.50) #15
  br i1 %call1.i, label %if.else.i.if.end_crit_edge, label %if.else.i.exit_store_host_reset.thread_crit_edge

if.else.i.exit_store_host_reset.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_store_host_reset.thread

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %entry.if.end_crit_edge ], [ 2, %if.else.i.if.end_crit_edge ]
  %host_reset = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_reset, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.exit_store_host_reset.thread_crit_edge, label %exit_store_host_reset

if.end.exit_store_host_reset.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_store_host_reset.thread

exit_store_host_reset:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 %3(ptr noundef %add.ptr, i32 noundef %retval.0.i.ph) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  %spec.select = select i1 %cmp, i32 %count, i32 %call4
  br label %exit_store_host_reset.thread

exit_store_host_reset.thread:                     ; preds = %exit_store_host_reset, %if.end.exit_store_host_reset.thread_crit_edge, %if.else.i.exit_store_host_reset.thread_crit_edge
  %4 = phi i32 [ -22, %if.else.i.exit_store_host_reset.thread_crit_edge ], [ -95, %if.end.exit_store_host_reset.thread_crit_edge ], [ %spec.select, %exit_store_host_reset ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_shost_eh_deadline(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eh_deadline = getelementptr i8, ptr %dev, i32 -1064
  %0 = ptrtoint ptr %eh_deadline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eh_deadline, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.52, i32 5)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %div = sdiv i32 %1, 100
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_shost_eh_deadline(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %deadline = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deadline) #15
  %0 = ptrtoint ptr %deadline to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %deadline, align 4, !annotation !420
  %transportt = getelementptr i8, ptr %dev, i32 -1268
  %1 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %transportt, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %eh_strategy_handler = getelementptr inbounds %struct.scsi_transport_template, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %eh_strategy_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eh_strategy_handler, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hostt = getelementptr i8, ptr %dev, i32 -1272
  %5 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostt, align 8
  %eh_host_reset_handler = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %eh_host_reset_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eh_host_reset_handler, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.53, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.do.body13_crit_edge, label %if.else

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

if.else:                                          ; preds = %if.end
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %deadline) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.else.do.body13_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.do.body13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

do.body13:                                        ; preds = %if.else.do.body13_crit_edge, %if.end.do.body13_crit_edge
  %host_lock = getelementptr i8, ptr %dev, i32 -1444
  %9 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_lock, align 4
  %call17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %shost_state.i = getelementptr i8, ptr %dev, i32 -932
  %11 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shost_state.i, align 4
  %.off.i = add i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %do.body13.if.end31_crit_edge, label %scsi_host_in_recovery.exit

do.body13.if.end31_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

scsi_host_in_recovery.exit:                       ; preds = %do.body13
  %tmf_in_progress.i = getelementptr i8, ptr %dev, i32 -992
  %13 = ptrtoint ptr %tmf_in_progress.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %tmf_in_progress.i, align 8
  %14 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool21.not = icmp eq i16 %14, 0
  br i1 %tobool21.not, label %if.else23, label %scsi_host_in_recovery.exit.if.end31_crit_edge

scsi_host_in_recovery.exit.if.end31_crit_edge:    ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.else23:                                        ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %deadline to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %deadline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp24 = icmp eq i32 %16, -1
  %mul28 = mul i32 %16, 100
  %.sink = select i1 %cmp24, i32 -1, i32 %mul28
  %eh_deadline = getelementptr i8, ptr %dev, i32 -1064
  %17 = ptrtoint ptr %eh_deadline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %eh_deadline, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else23, %scsi_host_in_recovery.exit.if.end31_crit_edge, %do.body13.if.end31_crit_edge
  %ret.0 = phi i32 [ -16, %scsi_host_in_recovery.exit.if.end31_crit_edge ], [ -16, %do.body13.if.end31_crit_edge ], [ %count, %if.else23 ]
  %18 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call17) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end31 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call.i, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deadline) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_nr_hw_queues(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_hw_queues = getelementptr i8, ptr %dev, i32 -1220
  %0 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_hw_queues, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_device_cls_release(ptr noundef %class_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_gendev = getelementptr i8, ptr %class_dev, i32 -928
  tail call void @put_device(ptr noundef %sdev_gendev) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_device_dev_release(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %module = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %5) #15
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %hostt2 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %hostt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostt2, align 8
  %module3 = getelementptr inbounds %struct.scsi_host_template, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %module3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %module3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ew = getelementptr i8, ptr %dev, i32 1856
  %call4 = tail call i32 @execute_in_process_context(ptr noundef nonnull @scsi_device_dev_release_usercontext, ptr noundef %ew) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @scsi_sdev_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %i) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -408
  %cmp = icmp eq ptr %attr, @dev_attr_queue_depth
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %change_queue_depth = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %change_queue_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %change_queue_depth, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %attr, @dev_attr_queue_ramp_up_period
  br i1 %cmp1, label %land.lhs.true2, label %if.end8

land.lhs.true2:                                   ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %hostt4 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %hostt4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostt4, align 8
  %change_queue_depth5 = getelementptr inbounds %struct.scsi_host_template, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %change_queue_depth5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %change_queue_depth5, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end19_crit_edge

land.lhs.true2.if.end19_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq ptr %attr, @dev_attr_access_state
  br i1 %cmp9, label %land.lhs.true10, label %if.end13

land.lhs.true10:                                  ; preds = %if.end8
  %handler = getelementptr i8, ptr %kobj, i32 1944
  %12 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler, align 8
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end19_crit_edge

land.lhs.true10.if.end19_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %cmp14 = icmp eq ptr %attr, @dev_attr_preferred_path
  br i1 %cmp14, label %land.lhs.true15, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true15:                                  ; preds = %if.end13
  %handler16 = getelementptr i8, ptr %kobj, i32 1944
  %14 = ptrtoint ptr %handler16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler16, align 8
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end19_crit_edge

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true15.if.end19_crit_edge, %if.end13.if.end19_crit_edge, %land.lhs.true10.if.end19_crit_edge, %land.lhs.true2.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %17, %if.end19 ], [ 292, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @scsi_sdev_bin_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readnone %attr, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_vpd_pg0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %vpd_pg0 = getelementptr i8, ptr %kobj, i32 -136
  %0 = ptrtoint ptr %vpd_pg0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpd_pg0, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %attr, @dev_attr_vpd_pg80
  br i1 %cmp1, label %land.lhs.true2, label %if.end5

land.lhs.true2:                                   ; preds = %if.end
  %vpd_pg80 = getelementptr i8, ptr %kobj, i32 -128
  %2 = ptrtoint ptr %vpd_pg80 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpd_pg80, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end15_crit_edge

land.lhs.true2.if.end15_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq ptr %attr, @dev_attr_vpd_pg83
  br i1 %cmp6, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %if.end5
  %vpd_pg83 = getelementptr i8, ptr %kobj, i32 -132
  %4 = ptrtoint ptr %vpd_pg83 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpd_pg83, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end15_crit_edge

land.lhs.true7.if.end15_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %cmp11 = icmp eq ptr %attr, @dev_attr_vpd_pg89
  br i1 %cmp11, label %land.lhs.true12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true12:                                  ; preds = %if.end10
  %vpd_pg89 = getelementptr i8, ptr %kobj, i32 -124
  %6 = ptrtoint ptr %vpd_pg89 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpd_pg89, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end15_crit_edge

land.lhs.true12.if.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true12.if.end15_crit_edge, %if.end10.if.end15_crit_edge, %land.lhs.true7.if.end15_crit_edge, %land.lhs.true2.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ 292, %if.end15 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %land.lhs.true12.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_queue_depth(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_depth = getelementptr i8, ptr %dev, i32 -300
  %0 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_depth, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_queue_depth(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %change_queue_depth = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %change_queue_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %change_queue_depth, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp3 = icmp sgt i32 %call, %9
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %change_queue_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %change_queue_depth, align 4
  %call7 = tail call i32 %11(ptr noundef %add.ptr, i32 noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %queue_depth = getelementptr i8, ptr %dev, i32 -300
  %12 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_depth, align 4
  %max_queue_depth = getelementptr i8, ptr %dev, i32 -298
  %14 = ptrtoint ptr %max_queue_depth to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %max_queue_depth, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_queue_ramp_up_period(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_ramp_up_period = getelementptr i8, ptr %dev, i32 -288
  %0 = ptrtoint ptr %queue_ramp_up_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_ramp_up_period, align 8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #15
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_queue_ramp_up_period(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #15
  %0 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %period, align 4, !annotation !420
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %period) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %period, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %2) #15
  %queue_ramp_up_period = getelementptr i8, ptr %dev, i32 -288
  %3 = ptrtoint ptr %queue_ramp_up_period to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %queue_ramp_up_period, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_access_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr i8, ptr %dev, i32 1944
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_state1 = getelementptr i8, ptr %dev, i32 1972
  %2 = ptrtoint ptr %access_state1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %access_state1, align 4
  %trunc = trunc i8 %3 to i4
  %switch.tableidx = add i4 %trunc, 2
  %4 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %5 = icmp ult i4 %switch.tableidx, 7
  br i1 %5, label %switch.lookup, label %if.end.scsi_access_state_name.exit_crit_edge

if.end.scsi_access_state_name.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_access_state_name.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = sext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.sdev_show_access_state, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name5.i = getelementptr [7 x %struct.anon.85], ptr @sdev_access_states, i32 0, i32 %switch.load, i32 1
  %8 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name5.i, align 4
  br label %scsi_access_state_name.exit

scsi_access_state_name.exit:                      ; preds = %switch.lookup, %if.end.scsi_access_state_name.exit_crit_edge
  %name.0.i = phi ptr [ %9, %switch.lookup ], [ null, %if.end.scsi_access_state_name.exit_crit_edge ]
  %tobool3.not = icmp eq ptr %name.0.i, null
  %spec.select = select i1 %tobool3.not, ptr @.str.65, ptr %name.0.i
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef nonnull %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %scsi_access_state_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %scsi_access_state_name.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdev_show_preferred_path(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr i8, ptr %dev, i32 1944
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_state = getelementptr i8, ptr %dev, i32 1972
  %2 = ptrtoint ptr %access_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %access_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool1.not = icmp sgt i8 %3, -1
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.19, i32 3)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.73, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then2 ], [ 2, %if.else ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vpd_pg0(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #3 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !421
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg0 = getelementptr i8, ptr %kobj, i32 -136
  %5 = ptrtoint ptr %vpd_pg0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %vpd_pg0, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @show_vpd_pg0.__warned, align 1
  br i1 %.b17, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @show_vpd_pg0.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 916, ptr noundef nonnull @.str.75) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 2
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call13 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %data, i32 noundef %8) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ -22, %do.end9.if.end14_crit_edge ]
  %call.i18 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !422
  %9 = call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i25 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vpd_pg80(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #3 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !421
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg80 = getelementptr i8, ptr %kobj, i32 -128
  %5 = ptrtoint ptr %vpd_pg80 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %vpd_pg80, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @show_vpd_pg80.__warned, align 1
  br i1 %.b17, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @show_vpd_pg80.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 914, ptr noundef nonnull @.str.75) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 2
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call13 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %data, i32 noundef %8) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ -22, %do.end9.if.end14_crit_edge ]
  %call.i18 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !422
  %9 = call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i25 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vpd_pg83(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #3 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !421
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg83 = getelementptr i8, ptr %kobj, i32 -132
  %5 = ptrtoint ptr %vpd_pg83 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %vpd_pg83, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @show_vpd_pg83.__warned, align 1
  br i1 %.b17, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @show_vpd_pg83.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 913, ptr noundef nonnull @.str.75) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 2
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call13 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %data, i32 noundef %8) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ -22, %do.end9.if.end14_crit_edge ]
  %call.i18 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !422
  %9 = call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i25 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vpd_pg89(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #3 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !421
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg89 = getelementptr i8, ptr %kobj, i32 -124
  %5 = ptrtoint ptr %vpd_pg89 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %vpd_pg89, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @show_vpd_pg89.__warned, align 1
  br i1 %.b17, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @show_vpd_pg89.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 915, ptr noundef nonnull @.str.75) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 2
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call13 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %data, i32 noundef %8) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ -22, %do.end9.if.end14_crit_edge ]
  %call.i18 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !422
  %9 = call i32 @llvm.read_register.i32(metadata !407) #15
  %and.i.i.i.i.i25 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_device_blocked(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device_blocked = getelementptr i8, ptr %dev, i32 -360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %device_blocked, i32 noundef 4) #15
  %0 = ptrtoint ptr %device_blocked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %device_blocked, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_scsi_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_level = getelementptr i8, ptr %dev, i32 -251
  %0 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scsi_level, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_device_busy(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %budget_map.i = getelementptr i8, ptr %dev, i32 -384
  %call.i = tail call i32 @sbitmap_weight(ptr noundef %budget_map.i) #15
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %call.i)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_weight(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_vendor(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr i8, ptr %dev, i32 -148
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vendor, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.87, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_model(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr i8, ptr %dev, i32 -144
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.89, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_rev(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr i8, ptr %dev, i32 -140
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rev, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.91, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_rescan_field(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @scsi_rescan_device(ptr noundef %dev) #15
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_delete(ptr noundef %dev, ptr noundef %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call = tail call i32 @scsi_device_get(ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @sysfs_break_active_protection(ptr noundef %dev, ptr noundef %attr) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %land.rhs, label %if.then44.critedge

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @sdev_store_delete.__already_done, align 1
  br i1 %.b56, label %if.end45.critedge57, label %if.then12, !prof !419

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @sdev_store_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 773, i32 noundef 9, ptr noundef null) #15
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %attr) #15
  tail call void @scsi_remove_device(ptr noundef %add.ptr)
  br label %if.end45

if.then44.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %attr) #15
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %scan_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex.i, i32 noundef 0) #15
  tail call void @__scsi_remove_device(ptr noundef %add.ptr) #15
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i) #15
  tail call void @sysfs_unbreak_active_protection(ptr noundef nonnull %call2) #15
  br label %if.end45

if.end45.critedge57:                              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %attr) #15
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %scan_mutex.i58 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex.i58, i32 noundef 0) #15
  tail call void @__scsi_remove_device(ptr noundef %add.ptr) #15
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i58) #15
  br label %if.end45

if.end45:                                         ; preds = %if.end45.critedge57, %if.then44.critedge, %if.then12
  tail call void @scsi_device_put(ptr noundef %add.ptr) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end45 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysfs_break_active_protection(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_state_field(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_state = getelementptr i8, ptr %dev, i32 2068
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 9
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name3.i = getelementptr [9 x %struct.anon], ptr @sdev_states, i32 0, i32 %switch.tableidx, i32 1
  %3 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef nonnull %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_state_field(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.6, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %arrayidx5 = getelementptr i8, ptr %buf, i32 7
  %0 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp6 = icmp eq i8 %1, 10
  br i1 %cmp6, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call3.1 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp eq i32 %call3.1, 0
  br i1 %cmp4.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx5.1 = getelementptr i8, ptr %buf, i32 7
  %2 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp6.1 = icmp eq i8 %3, 10
  br i1 %cmp6.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call3.2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef %buf, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp eq i32 %call3.2, 0
  br i1 %cmp4.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx5.2 = getelementptr i8, ptr %buf, i32 6
  %4 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp6.2 = icmp eq i8 %5, 10
  br i1 %cmp6.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %call3.3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.9, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp eq i32 %call3.3, 0
  br i1 %cmp4.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx5.3 = getelementptr i8, ptr %buf, i32 7
  %6 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp6.3 = icmp eq i8 %7, 10
  br i1 %cmp6.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %call3.4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.10, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp eq i32 %call3.4, 0
  br i1 %cmp4.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx5.4 = getelementptr i8, ptr %buf, i32 7
  %8 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp6.4 = icmp eq i8 %9, 10
  br i1 %cmp6.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %call3.5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.11, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp eq i32 %call3.5, 0
  br i1 %cmp4.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx5.5 = getelementptr i8, ptr %buf, i32 7
  %10 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp6.5 = icmp eq i8 %11, 10
  br i1 %cmp6.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %call3.6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(18) @.str.12, ptr noundef %buf, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %cmp4.6 = icmp eq i32 %call3.6, 0
  br i1 %cmp4.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx5.6 = getelementptr i8, ptr %buf, i32 17
  %12 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp6.6 = icmp eq i8 %13, 10
  br i1 %cmp6.6, label %land.lhs.true.6.for.end_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %call3.7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.13, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %cmp4.7 = icmp eq i32 %call3.7, 0
  br i1 %cmp4.7, label %land.lhs.true.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %arrayidx5.7 = getelementptr i8, ptr %buf, i32 7
  %14 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp6.7 = icmp eq i8 %15, 10
  br i1 %cmp6.7, label %land.lhs.true.7.for.end_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %call3.8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.14, ptr noundef %buf, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.8)
  %cmp4.8 = icmp eq i32 %call3.8, 0
  br i1 %cmp4.8, label %land.lhs.true.8, label %for.inc.7.cleanup29_crit_edge

for.inc.7.cleanup29_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup29

land.lhs.true.8:                                  ; preds = %for.inc.7
  %arrayidx5.8 = getelementptr i8, ptr %buf, i32 15
  %16 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %17)
  %cmp6.8 = icmp eq i8 %17, 10
  br i1 %cmp6.8, label %land.lhs.true.8.for.end_crit_edge, label %land.lhs.true.8.cleanup29_crit_edge

land.lhs.true.8.cleanup29_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup29

land.lhs.true.8.for.end_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.8.for.end_crit_edge, %land.lhs.true.7.for.end_crit_edge, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.062.lcssa = phi i32 [ 0, %land.lhs.true.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 3, %land.lhs.true.3.for.end_crit_edge ], [ 4, %land.lhs.true.4.for.end_crit_edge ], [ 5, %land.lhs.true.5.for.end_crit_edge ], [ 6, %land.lhs.true.6.for.end_crit_edge ], [ 7, %land.lhs.true.7.for.end_crit_edge ], [ 8, %land.lhs.true.8.for.end_crit_edge ]
  %arrayidx.le = getelementptr [9 x %struct.anon], ptr @sdev_states, i32 0, i32 %i.062.lcssa
  %18 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.le, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %for.end.cleanup29_crit_edge [
    i32 2, label %for.end.sw.epilog_crit_edge
    i32 6, label %for.end.sw.epilog_crit_edge66
  ]

for.end.sw.epilog_crit_edge66:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.end.cleanup29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup29

sw.epilog:                                        ; preds = %for.end.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge66
  %state_mutex = getelementptr i8, ptr %dev, i32 1976
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #15
  %sdev_state = getelementptr i8, ptr %dev, i32 2068
  %21 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp9 = icmp eq i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp12 = icmp eq i32 %19, 2
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end26.thread59, label %if.else

if.end26.thread59:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %state_mutex) #15
  br label %cleanup29

if.else:                                          ; preds = %sw.epilog
  %call15 = tail call i32 @scsi_device_set_state(ptr noundef %add.ptr, i32 noundef %19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp ne i32 %call15, 0
  tail call void @mutex_unlock(ptr noundef %state_mutex) #15
  %cmp12.not = xor i1 %cmp12, true
  %brmerge = select i1 %cmp16, i1 true, i1 %cmp12.not
  %.mux = select i1 %cmp16, i32 -22, i32 %count
  br i1 %brmerge, label %if.else.cleanup29_crit_edge, label %if.then25

if.else.cleanup29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup29

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %23 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request_queue, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %24, i1 noundef zeroext true) #15
  tail call void @scsi_rescan_device(ptr noundef %dev) #15
  br label %cleanup29

cleanup29:                                        ; preds = %if.then25, %if.else.cleanup29_crit_edge, %if.end26.thread59, %for.end.cleanup29_crit_edge, %land.lhs.true.8.cleanup29_crit_edge, %for.inc.7.cleanup29_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup29_crit_edge ], [ %count, %if.end26.thread59 ], [ %count, %if.then25 ], [ -22, %land.lhs.true.8.cleanup29_crit_edge ], [ -22, %for.inc.7.cleanup29_crit_edge ], [ %.mux, %if.else.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  %rq_timeout = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %rq_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_timeout, align 8
  %div = udiv i32 %3, 100
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %div)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #3 align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #15
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeout, align 4, !annotation !420
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %timeout)
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %1 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue, align 4
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %mul = mul i32 %4, 100
  call void @blk_queue_rq_timeout(ptr noundef %2, i32 noundef %mul) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #15
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_eh_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eh_timeout = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %eh_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eh_timeout, align 8
  %div = udiv i32 %1, 100
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %div)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_eh_timeout(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %eh_timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eh_timeout) #15
  %0 = ptrtoint ptr %eh_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %eh_timeout, align 4, !annotation !420
  %call = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %eh_timeout) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %eh_timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %eh_timeout, align 4
  %mul = mul i32 %2, 100
  %eh_timeout4 = getelementptr i8, ptr %dev, i32 -104
  %3 = ptrtoint ptr %eh_timeout4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %eh_timeout4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -13, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eh_timeout) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_iostat_counterbits(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_iostat_iorequest_cnt(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iorequest_cnt = getelementptr i8, ptr %dev, i32 -16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %iorequest_cnt, i32 noundef 4) #15
  %0 = ptrtoint ptr %iorequest_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %iorequest_cnt, align 4
  %conv = sext i32 %1 to i64
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.98, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_iostat_iodone_cnt(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iodone_cnt = getelementptr i8, ptr %dev, i32 -12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %iodone_cnt, i32 noundef 4) #15
  %0 = ptrtoint ptr %iodone_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %iodone_cnt, align 4
  %conv = sext i32 %1 to i64
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.98, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_iostat_ioerr_cnt(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioerr_cnt = getelementptr i8, ptr %dev, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ioerr_cnt, i32 noundef 4) #15
  %0 = ptrtoint ptr %ioerr_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ioerr_cnt, align 4
  %conv = sext i32 %1 to i64
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.98, i64 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_modalias(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.102, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_queue_type_field(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %simple_tags = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %simple_tags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %simple_tags, align 4
  %1 = and i64 %bf.load, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  %spec.store.select = select i1 %tobool.not, ptr @.str.104, ptr @.str.105
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef nonnull %spec.store.select)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_queue_type_field(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tagged_supported = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %tagged_supported, align 4
  %1 = and i64 %bf.load, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.106) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_wwid(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call = tail call i32 @scsi_vpd_lun_id(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef 4096) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %buf, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx, align 1
  %inc = add nuw i32 %call, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.0 = phi i32 [ %inc, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %count.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_vpd_lun_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_blacklist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_bflags = getelementptr i8, ptr %dev, i32 -112
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %len.055 = phi i32 [ 0, %entry ], [ %len.2, %cleanup.for.body_crit_edge ]
  %i.051 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = ptrtoint ptr %sdev_bflags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sdev_bflags, align 8
  %shl = shl nuw i32 1, %i.051
  %conv = zext i32 %shl to i64
  %and = and i64 %1, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %i.051)
  %cmp1 = icmp ult i32 %i.051, 34
  br i1 %cmp1, label %if.end6, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr [34 x ptr], ptr @sdev_bflags_name, i32 0, i32 %i.051
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %if.then8

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %len.055
  %sub = sub i32 4096, %len.055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.055)
  %tobool10.not = icmp eq i32 %len.055, 0
  %cond = select i1 %tobool10.not, ptr @.str.41, ptr @.str.109
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond, ptr noundef nonnull %3) #15
  br label %if.end17

if.else:                                          ; preds = %if.end6.if.else_crit_edge, %if.end.if.else_crit_edge
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %len.055
  %sub12 = sub i32 4096, %len.055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.055)
  %tobool13.not = icmp eq i32 %len.055, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.41, ptr @.str.109
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.110, ptr noundef nonnull %cond14, i32 noundef %i.051) #15
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then8
  %call.pn = phi i32 [ %call, %if.then8 ], [ %call15, %if.else ]
  %len.1 = add i32 %call.pn, %len.055
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body.cleanup_crit_edge
  %len.2 = phi i32 [ %len.1, %if.end17 ], [ %len.055, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2)
  %tobool18.not = icmp eq i32 %len.2, 0
  br i1 %tobool18.not, label %for.end.if.end24_crit_edge, label %if.then19

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %len.2
  %sub21 = sub i32 4096, %len.2
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.43) #15
  %add23 = add i32 %call22, %len.2
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %for.end.if.end24_crit_edge
  %len.3 = phi i32 [ %add23, %if.then19 ], [ 0, %for.end.if.end24_crit_edge ]
  ret i32 %len.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_dh_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr i8, ptr %dev, i32 1944
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.140, i32 10)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.scsi_device_handler, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 9, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_dh_state(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %sdev_state = getelementptr i8, ptr %dev, i32 2068
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %handler = getelementptr i8, ptr %dev, i32 1944
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %4 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_queue, align 4
  %call = tail call i32 @scsi_dh_attach(ptr noundef %5, ptr noundef %buf) #15
  br label %if.end22

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.141, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  %activate = getelementptr inbounds %struct.scsi_device_handler, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %activate, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 %7(ptr noundef %add.ptr, ptr noundef null, ptr noundef null) #15
  br label %if.end22

if.else15:                                        ; preds = %if.else
  %call16 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.142, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else15.if.end22.thread_crit_edge

if.else15.if.end22.thread_crit_edge:              ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.thread

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.scsi_device_handler, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.143, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef %9) #15
  br label %if.end22.thread

if.end22:                                         ; preds = %if.then9, %if.then3
  %err.0 = phi i32 [ %call12, %if.then9 ], [ %call, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp23 = icmp slt i32 %err.0, 0
  br i1 %cmp23, label %if.end22.if.end22.thread_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22.if.end22.thread_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.thread

if.end22.thread:                                  ; preds = %if.end22.if.end22.thread_crit_edge, %if.then18, %if.else15.if.end22.thread_crit_edge
  %err.040 = phi i32 [ %err.0, %if.end22.if.end22.thread_crit_edge ], [ -22, %if.else15.if.end22.thread_crit_edge ], [ -22, %if.then18 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end22.thread, %if.end22.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %err.040, %if.end22.thread ], [ %count, %if.end22.cleanup_crit_edge ], [ %count, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dh_attach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_media_change(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  %0 = ptrtoint ptr %supported_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported_events, align 4
  %shr.i = lshr i32 %1, 1
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_media_change(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %supported_events) #15
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events3 = getelementptr i8, ptr %dev, i32 -80
  tail call void @_set_bit(i32 noundef 1, ptr noundef %supported_events3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_inquiry_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  %0 = ptrtoint ptr %supported_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported_events, align 4
  %shr.i = lshr i32 %1, 2
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_inquiry_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %supported_events) #15
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events3 = getelementptr i8, ptr %dev, i32 -80
  tail call void @_set_bit(i32 noundef 2, ptr noundef %supported_events3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_capacity_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  %0 = ptrtoint ptr %supported_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported_events, align 4
  %shr.i = lshr i32 %1, 3
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_capacity_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %supported_events) #15
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events3 = getelementptr i8, ptr %dev, i32 -80
  tail call void @_set_bit(i32 noundef 3, ptr noundef %supported_events3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_soft_threshold_reached(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  %0 = ptrtoint ptr %supported_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported_events, align 4
  %shr.i = lshr i32 %1, 4
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_soft_threshold_reached(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %supported_events) #15
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events3 = getelementptr i8, ptr %dev, i32 -80
  tail call void @_set_bit(i32 noundef 4, ptr noundef %supported_events3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_mode_parameter_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  %0 = ptrtoint ptr %supported_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported_events, align 4
  %shr.i = lshr i32 %1, 5
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_mode_parameter_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %supported_events) #15
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events3 = getelementptr i8, ptr %dev, i32 -80
  tail call void @_set_bit(i32 noundef 5, ptr noundef %supported_events3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_lun_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  %0 = ptrtoint ptr %supported_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported_events, align 4
  %shr.i = lshr i32 %1, 6
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_lun_change_reported(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #15
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events = getelementptr i8, ptr %dev, i32 -80
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %supported_events) #15
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %supported_events3 = getelementptr i8, ptr %dev, i32 -80
  tail call void @_set_bit(i32 noundef 6, ptr noundef %supported_events3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_inquiry(ptr nocapture noundef readnone %filep, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #3 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  %inquiry = getelementptr i8, ptr %kobj, i32 -152
  %1 = ptrtoint ptr %inquiry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inquiry, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %inquiry_len = getelementptr i8, ptr %kobj, i32 -156
  %3 = ptrtoint ptr %inquiry_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %inquiry_len, align 4
  %conv = zext i8 %4 to i32
  %call2 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef nonnull %2, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @execute_in_process_context(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_device_dev_release_usercontext(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2264
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %module = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  tail call void @scsi_dh_release_device(ptr noundef %add.ptr) #15
  %parent2 = getelementptr i8, ptr %work, i32 -1720
  %6 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #15
  %siblings = getelementptr i8, ptr %work, i32 -2256
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %siblings) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %work, i32 -2252
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %siblings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %siblings, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %18 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %siblings, align 4
  %prev.i = getelementptr i8, ptr %work, i32 -2252
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %same_target_siblings = getelementptr i8, ptr %work, i32 -2248
  %call.i.i368 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %same_target_siblings) #15
  br i1 %call.i.i368, label %if.end.i.i371, label %list_del.exit.list_del.exit373_crit_edge

list_del.exit.list_del.exit373_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit373

if.end.i.i371:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i369 = getelementptr i8, ptr %work, i32 -2244
  %20 = ptrtoint ptr %prev.i.i369 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i369, align 4
  %22 = ptrtoint ptr %same_target_siblings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %same_target_siblings, align 4
  %prev1.i.i.i370 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i370 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i370, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit373

list_del.exit373:                                 ; preds = %if.end.i.i371, %list_del.exit.list_del.exit373_crit_edge
  %26 = ptrtoint ptr %same_target_siblings to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %same_target_siblings, align 4
  %prev.i372 = getelementptr i8, ptr %work, i32 -2244
  %27 = ptrtoint ptr %prev.i372 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i372, align 4
  %starved_entry = getelementptr i8, ptr %work, i32 -2164
  %call.i.i374 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %starved_entry) #15
  br i1 %call.i.i374, label %if.end.i.i377, label %list_del.exit373.list_del.exit379_crit_edge

list_del.exit373.list_del.exit379_crit_edge:      ; preds = %list_del.exit373
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit379

if.end.i.i377:                                    ; preds = %list_del.exit373
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i375 = getelementptr i8, ptr %work, i32 -2160
  %28 = ptrtoint ptr %prev.i.i375 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i375, align 4
  %30 = ptrtoint ptr %starved_entry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %starved_entry, align 4
  %prev1.i.i.i376 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i376 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i376, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit379

list_del.exit379:                                 ; preds = %if.end.i.i377, %list_del.exit373.list_del.exit379_crit_edge
  %34 = ptrtoint ptr %starved_entry to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %starved_entry, align 4
  %prev.i378 = getelementptr i8, ptr %work, i32 -2160
  %35 = ptrtoint ptr %prev.i378 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i378, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %host_lock10 = getelementptr inbounds %struct.Scsi_Host, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %host_lock10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host_lock10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %call6) #15
  %event_work = getelementptr i8, ptr %work, i32 -1920
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %event_work) #15
  %event_list = getelementptr i8, ptr %work, i32 -1928
  %40 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %event_list, align 8
  %cmp.i.not390 = icmp eq ptr %41, %event_list
  br i1 %cmp.i.not390, label %list_del.exit379.for.end_crit_edge, label %list_del.exit379.for.body_crit_edge

list_del.exit379.for.body_crit_edge:              ; preds = %list_del.exit379
  br label %for.body

list_del.exit379.for.end_crit_edge:               ; preds = %list_del.exit379
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit385.for.body_crit_edge, %list_del.exit379.for.body_crit_edge
  %this.0391 = phi ptr [ %tmp.0393, %list_del.exit385.for.body_crit_edge ], [ %41, %list_del.exit379.for.body_crit_edge ]
  %42 = ptrtoint ptr %this.0391 to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp.0393 = load ptr, ptr %this.0391, align 4
  %add.ptr17 = getelementptr i8, ptr %this.0391, i32 -4
  %call.i.i380 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.0391) #15
  br i1 %call.i.i380, label %if.end.i.i383, label %for.body.list_del.exit385_crit_edge

for.body.list_del.exit385_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit385

if.end.i.i383:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i381 = getelementptr inbounds %struct.list_head, ptr %this.0391, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i381 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i381, align 4
  %45 = ptrtoint ptr %this.0391 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %this.0391, align 4
  %prev1.i.i.i382 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i382 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i382, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit385

list_del.exit385:                                 ; preds = %if.end.i.i383, %for.body.list_del.exit385_crit_edge
  %49 = ptrtoint ptr %this.0391 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %this.0391, align 4
  %prev.i384 = getelementptr inbounds %struct.list_head, ptr %this.0391, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i384 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i384, align 4
  tail call void @kfree(ptr noundef %add.ptr17) #15
  %cmp.i.not = icmp eq ptr %tmp.0393, %event_list
  br i1 %cmp.i.not, label %list_del.exit385.for.end_crit_edge, label %list_del.exit385.for.body_crit_edge

list_del.exit385.for.body_crit_edge:              ; preds = %list_del.exit385
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit385.for.end_crit_edge:               ; preds = %list_del.exit385
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit385.for.end_crit_edge, %list_del.exit379.for.end_crit_edge
  %request_queue = getelementptr i8, ptr %work, i32 -2260
  %51 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %request_queue, align 4
  tail call void @blk_put_queue(ptr noundef %52) #15
  %53 = ptrtoint ptr %request_queue to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %request_queue, align 4
  %alloc_hint.i = getelementptr i8, ptr %work, i32 -2220
  %54 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %alloc_hint.i, align 4
  tail call void @free_percpu(ptr noundef %55) #15
  %map.i = getelementptr i8, ptr %work, i32 -2224
  %56 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i, align 4
  tail call void @kfree(ptr noundef %57) #15
  %58 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %map.i, align 4
  %inquiry_mutex = getelementptr i8, ptr %work, i32 -2104
  tail call void @mutex_lock_nested(ptr noundef %inquiry_mutex, i32 noundef 0) #15
  %dep_map = getelementptr i8, ptr %work, i32 -2040
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %land.lhs.true, label %for.end.do.end29_crit_edge

for.end.do.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end29

land.lhs.true:                                    ; preds = %for.end
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true26

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end29

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b367 = load i1, ptr @scsi_device_dev_release_usercontext.__warned, align 1
  br i1 %.b367, label %land.lhs.true26.do.end29_crit_edge, label %if.then

land.lhs.true26.do.end29_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end29

if.then:                                          ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @scsi_device_dev_release_usercontext.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 486, ptr noundef nonnull @.str.152) #15
  br label %do.end29

do.end29:                                         ; preds = %if.then, %land.lhs.true26.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %for.end.do.end29_crit_edge
  %vpd_pg031 = getelementptr i8, ptr %work, i32 -1992
  %59 = ptrtoint ptr %vpd_pg031 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vpd_pg031, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !423
  %61 = ptrtoint ptr %vpd_pg031 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr null, ptr %vpd_pg031, align 8
  %call.i386 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool78.not = icmp eq i32 %call.i386, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %do.end29.do.end87_crit_edge

do.end29.do.end87_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end87

land.lhs.true79:                                  ; preds = %do.end29
  %call80 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true79.do.end87_crit_edge, label %land.lhs.true82

land.lhs.true79.do.end87_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end87

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %.b361366 = load i1, ptr @scsi_device_dev_release_usercontext.__warned.153, align 1
  br i1 %.b361366, label %land.lhs.true82.do.end87_crit_edge, label %if.then84

land.lhs.true82.do.end87_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end87

if.then84:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @scsi_device_dev_release_usercontext.__warned.153, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 488, ptr noundef nonnull @.str.152) #15
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %land.lhs.true82.do.end87_crit_edge, %land.lhs.true79.do.end87_crit_edge, %do.end29.do.end87_crit_edge
  %vpd_pg8089 = getelementptr i8, ptr %work, i32 -1984
  %62 = ptrtoint ptr %vpd_pg8089 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vpd_pg8089, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !424
  %64 = ptrtoint ptr %vpd_pg8089 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr null, ptr %vpd_pg8089, align 8
  %call.i387 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %tobool138.not = icmp eq i32 %call.i387, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.end87.do.end147_crit_edge

do.end87.do.end147_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.end87
  %call140 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b362365 = load i1, ptr @scsi_device_dev_release_usercontext.__warned.154, align 1
  br i1 %.b362365, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @scsi_device_dev_release_usercontext.__warned.154, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 490, ptr noundef nonnull @.str.152) #15
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.end87.do.end147_crit_edge
  %vpd_pg83149 = getelementptr i8, ptr %work, i32 -1988
  %65 = ptrtoint ptr %vpd_pg83149 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vpd_pg83149, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !425
  %67 = ptrtoint ptr %vpd_pg83149 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr null, ptr %vpd_pg83149, align 4
  %call.i388 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool198.not = icmp eq i32 %call.i388, 0
  br i1 %tobool198.not, label %land.lhs.true199, label %do.end147.do.end207_crit_edge

do.end147.do.end207_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end207

land.lhs.true199:                                 ; preds = %do.end147
  %call200 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %land.lhs.true199.do.end207_crit_edge, label %land.lhs.true202

land.lhs.true199.do.end207_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end207

land.lhs.true202:                                 ; preds = %land.lhs.true199
  %.b363364 = load i1, ptr @scsi_device_dev_release_usercontext.__warned.155, align 1
  br i1 %.b363364, label %land.lhs.true202.do.end207_crit_edge, label %if.then204

land.lhs.true202.do.end207_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end207

if.then204:                                       ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @scsi_device_dev_release_usercontext.__warned.155, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 492, ptr noundef nonnull @.str.152) #15
  br label %do.end207

do.end207:                                        ; preds = %if.then204, %land.lhs.true202.do.end207_crit_edge, %land.lhs.true199.do.end207_crit_edge, %do.end147.do.end207_crit_edge
  %vpd_pg89209 = getelementptr i8, ptr %work, i32 -1980
  %68 = ptrtoint ptr %vpd_pg89209 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vpd_pg89209, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !426
  %70 = ptrtoint ptr %vpd_pg89209 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr null, ptr %vpd_pg89209, align 4
  tail call void @mutex_unlock(ptr noundef %inquiry_mutex) #15
  %tobool254.not = icmp eq ptr %60, null
  br i1 %tobool254.not, label %do.end207.if.end265_crit_edge, label %do.end261

do.end207.if.end265_crit_edge:                    ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end265

do.end261:                                        ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree_call_rcu(ptr noundef nonnull %60, ptr noundef null) #15
  br label %if.end265

if.end265:                                        ; preds = %do.end261, %do.end207.if.end265_crit_edge
  %tobool266.not = icmp eq ptr %66, null
  br i1 %tobool266.not, label %if.end265.if.end279_crit_edge, label %do.end274

if.end265.if.end279_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end279

do.end274:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree_call_rcu(ptr noundef nonnull %66, ptr noundef null) #15
  br label %if.end279

if.end279:                                        ; preds = %do.end274, %if.end265.if.end279_crit_edge
  %tobool280.not = icmp eq ptr %63, null
  br i1 %tobool280.not, label %if.end279.if.end293_crit_edge, label %do.end288

if.end279.if.end293_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end293

do.end288:                                        ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree_call_rcu(ptr noundef nonnull %63, ptr noundef null) #15
  br label %if.end293

if.end293:                                        ; preds = %do.end288, %if.end279.if.end293_crit_edge
  %tobool294.not = icmp eq ptr %69, null
  br i1 %tobool294.not, label %if.end293.if.end307_crit_edge, label %do.end302

if.end293.if.end307_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end307

do.end302:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree_call_rcu(ptr noundef nonnull %69, ptr noundef null) #15
  br label %if.end307

if.end307:                                        ; preds = %do.end302, %if.end293.if.end307_crit_edge
  %inquiry = getelementptr i8, ptr %work, i32 -2008
  %71 = ptrtoint ptr %inquiry to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %inquiry, align 8
  tail call void @kfree(ptr noundef %72) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  %tobool308.not = icmp eq ptr %7, null
  br i1 %tobool308.not, label %if.end307.if.end310_crit_edge, label %if.then309

if.end307.if.end310_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end310

if.then309:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @put_device(ptr noundef nonnull %7) #15
  br label %if.end310

if.end310:                                        ; preds = %if.then309, %if.end307.if.end310_crit_edge
  tail call void @module_put(ptr noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dh_release_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 223)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 223)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130, !131, !133, !134, !136, !137, !139, !141, !143, !144, !146, !148, !150, !151, !153, !155, !157, !159, !160, !161, !162, !163, !164, !165, !167, !169, !171, !173, !174, !176, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !261, !263, !264, !266, !267, !269, !270, !272, !273, !274, !276, !277, !279, !280, !282, !283, !285, !287, !288, !290, !292, !294, !296, !297, !299, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !365, !367, !369, !371, !373, !374, !376, !377, !379, !380, !382, !383, !385, !386, !388, !389, !391, !392, !394, !396, !398, !400, !401, !403, !405}
!llvm.named.register.sp = !{!407}
!llvm.module.flags = !{!408, !409, !410, !411, !412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = !{ptr @scsi_shost_groups, !1, !"scsi_shost_groups", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_sysfs.c", i32 431, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_sysfs.c", i32 556, i32 18}
!4 = !{ptr @scsi_bus_type, !5, !"scsi_bus_type", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_sysfs.c", i32 555, i32 17}
!6 = !{ptr @__ksymtab_scsi_bus_type, !7, !"__ksymtab_scsi_bus_type", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_sysfs.c", i32 563, i32 1}
!8 = !{ptr @scsi_sysfs_register.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_sysfs.c", i32 571, i32 11}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1376, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1384, i32 3}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1400, i32 4}
!17 = !{ptr @__ksymtab_scsi_remove_device, !18, !"__ksymtab_scsi_remove_device", i1 false, i1 false}
!18 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1492, i32 1}
!19 = !{ptr @__ksymtab_scsi_remove_target, !20, !"__ksymtab_scsi_remove_target", i1 false, i1 false}
!20 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1560, i32 1}
!21 = !{ptr @__ksymtab_scsi_register_driver, !22, !"__ksymtab_scsi_register_driver", i1 false, i1 false}
!22 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1568, i32 1}
!23 = !{ptr @__ksymtab_scsi_register_interface, !24, !"__ksymtab_scsi_register_interface", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1576, i32 1}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1606, i32 35}
!27 = !{ptr @__ksymtab_scsi_is_sdev_device, !28, !"__ksymtab_scsi_is_sdev_device", i1 false, i1 false}
!28 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1645, i32 1}
!29 = !{ptr @blank_transport_template, !30, !"blank_transport_template", i1 false, i1 false}
!30 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1649, i32 32}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/scsi_sysfs.c", i32 36, i32 18}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/scsi_sysfs.c", i32 37, i32 18}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/scsi_sysfs.c", i32 38, i32 17}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/scsi_sysfs.c", i32 39, i32 14}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/scsi_sysfs.c", i32 40, i32 18}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/scsi_sysfs.c", i32 41, i32 18}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/scsi_sysfs.c", i32 42, i32 28}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/scsi_sysfs.c", i32 43, i32 16}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/scsi_sysfs.c", i32 44, i32 24}
!49 = !{ptr @sdev_states, !50, !"sdev_states", i1 false, i1 false}
!50 = !{!"../drivers/scsi/scsi_sysfs.c", i32 35, i32 3}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/scsi_sysfs.c", i32 69, i32 20}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/scsi_sysfs.c", i32 70, i32 27}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/scsi_sysfs.c", i32 71, i32 24}
!57 = !{ptr @shost_states, !58, !"shost_states", i1 false, i1 false}
!58 = !{!"../drivers/scsi/scsi_sysfs.c", i32 64, i32 3}
!59 = !{ptr @scsi_shost_attr_group, !60, !"scsi_shost_attr_group", i1 false, i1 false}
!60 = !{!"../drivers/scsi/scsi_sysfs.c", i32 427, i32 37}
!61 = !{ptr @scsi_sysfs_shost_attrs, !62, !"scsi_sysfs_shost_attrs", i1 false, i1 false}
!62 = !{!"../drivers/scsi/scsi_sysfs.c", i32 406, i32 26}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_sysfs.c", i32 394, i32 8}
!65 = !{ptr @dev_attr_use_blk_mq, !64, !"dev_attr_use_blk_mq", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/scsi_sysfs.c", i32 392, i32 22}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/scsi_sysfs.c", i32 372, i32 1}
!70 = !{ptr @dev_attr_unique_id, !69, !"dev_attr_unique_id", i1 false, i1 false}
!71 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/scsi_sysfs.c", i32 387, i32 8}
!74 = !{ptr @dev_attr_host_busy, !73, !"dev_attr_host_busy", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/scsi_sysfs.c", i32 385, i32 27}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/scsi_sysfs.c", i32 373, i32 1}
!79 = !{ptr @dev_attr_cmd_per_lun, !78, !"dev_attr_cmd_per_lun", i1 false, i1 false}
!80 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/scsi_sysfs.c", i32 374, i32 1}
!83 = !{ptr @dev_attr_can_queue, !82, !"dev_attr_can_queue", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/scsi_sysfs.c", i32 375, i32 1}
!86 = !{ptr @dev_attr_sg_tablesize, !85, !"dev_attr_sg_tablesize", i1 false, i1 false}
!87 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/scsi_sysfs.c", i32 376, i32 1}
!90 = !{ptr @dev_attr_sg_prot_tablesize, !89, !"dev_attr_sg_prot_tablesize", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/scsi_sysfs.c", i32 379, i32 1}
!93 = !{ptr @dev_attr_proc_name, !92, !"dev_attr_proc_name", i1 false, i1 false}
!94 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/scsi_sysfs.c", i32 196, i32 8}
!97 = !{ptr @dev_attr_scan, !96, !"dev_attr_scan", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/scsi_sysfs.c", i32 139, i32 20}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/scsi_sysfs.c", i32 120, i32 18}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/scsi_sysfs.c", i32 236, i32 2}
!104 = !{ptr @dev_attr_hstate, !105, !"dev_attr_hstate", i1 false, i1 false}
!105 = !{!"../drivers/scsi/scsi_sysfs.c", i32 235, i32 32}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/scsi_sysfs.c", i32 268, i32 8}
!108 = !{ptr @dev_attr_supported_mode, !107, !"dev_attr_supported_mode", i1 false, i1 false}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/scsi_sysfs.c", i32 244, i32 22}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/scsi_sysfs.c", i32 244, i32 28}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/scsi_sysfs.c", i32 247, i32 29}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/scsi_sysfs.c", i32 247, i32 43}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/scsi_sysfs.c", i32 247, i32 50}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/scsi_sysfs.c", i32 247, i32 54}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/scsi_sysfs.c", i32 249, i32 28}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/scsi_sysfs.c", i32 282, i32 8}
!125 = !{ptr @dev_attr_active_mode, !124, !"dev_attr_active_mode", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/scsi_sysfs.c", i32 277, i32 28}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/scsi_sysfs.c", i32 377, i32 1}
!130 = !{ptr @dev_attr_prot_capabilities, !129, !"dev_attr_prot_capabilities", i1 false, i1 false}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/scsi_sysfs.c", i32 378, i32 1}
!133 = !{ptr @dev_attr_prot_guard_type, !132, !"dev_attr_prot_guard_type", i1 false, i1 false}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/scsi_sysfs.c", i32 318, i32 8}
!136 = !{ptr @dev_attr_host_reset, !135, !"dev_attr_host_reset", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/scsi_sysfs.c", i32 286, i32 23}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/scsi_sysfs.c", i32 288, i32 28}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/scsi_sysfs.c", i32 370, i32 8}
!143 = !{ptr @dev_attr_eh_deadline, !142, !"dev_attr_eh_deadline", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/scsi_sysfs.c", i32 327, i32 43}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/scsi_sysfs.c", i32 344, i32 20}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/scsi_sysfs.c", i32 404, i32 8}
!150 = !{ptr @dev_attr_nr_hw_queues, !149, !"dev_attr_nr_hw_queues", i1 false, i1 false}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/scsi_sysfs.c", i32 551, i32 22}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/scsi_sysfs.c", i32 524, i32 11}
!155 = !{ptr @sdev_class, !156, !"sdev_class", i1 false, i1 false}
!156 = !{!"../drivers/scsi/scsi_sysfs.c", i32 523, i32 21}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1331, i32 3}
!159 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @scsi_target_add._entry, !158, !"_entry", i1 false, i1 false}
!164 = !{ptr @scsi_target_add._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @scsi_dev_type, !166, !"scsi_dev_type", i1 false, i1 false}
!166 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1589, i32 27}
!167 = !{ptr @scsi_sdev_attr_groups, !168, !"scsi_sdev_attr_groups", i1 false, i1 false}
!168 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1317, i32 38}
!169 = !{ptr @scsi_sdev_attr_group, !170, !"scsi_sdev_attr_group", i1 false, i1 false}
!170 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1310, i32 31}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1040, i32 8}
!173 = !{ptr @dev_attr_queue_depth, !172, !"dev_attr_queue_depth", i1 false, i1 false}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1212, i32 8}
!176 = !{ptr @dev_attr_queue_ramp_up_period, !175, !"dev_attr_queue_ramp_up_period", i1 false, i1 false}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1166, i32 8}
!179 = !{ptr @dev_attr_access_state, !178, !"dev_attr_access_state", i1 false, i1 false}
!180 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1164, i32 50}
!182 = !{ptr @.str.66, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/scsi_sysfs.c", i32 92, i32 31}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/scsi_sysfs.c", i32 93, i32 30}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/scsi_sysfs.c", i32 94, i32 31}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/scsi_sysfs.c", i32 95, i32 35}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/scsi_sysfs.c", i32 96, i32 27}
!192 = !{ptr @.str.71, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/scsi_sysfs.c", i32 98, i32 37}
!194 = !{ptr @sdev_access_states, !195, !"sdev_access_states", i1 false, i1 false}
!195 = !{!"../drivers/scsi/scsi_sysfs.c", i32 91, i32 3}
!196 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1183, i32 8}
!198 = !{ptr @dev_attr_preferred_path, !197, !"dev_attr_preferred_path", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1181, i32 23}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/scsi_sysfs.c", i32 916, i32 1}
!203 = !{ptr @dev_attr_vpd_pg0, !202, !"dev_attr_vpd_pg0", i1 false, i1 false}
!204 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!205 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!208 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!210 = distinct !{null, !211, !"__warned", i1 false, i1 false}
!211 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!212 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.79, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/scsi_sysfs.c", i32 914, i32 1}
!215 = !{ptr @dev_attr_vpd_pg80, !214, !"dev_attr_vpd_pg80", i1 false, i1 false}
!216 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!217 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/scsi_sysfs.c", i32 913, i32 1}
!219 = !{ptr @dev_attr_vpd_pg83, !218, !"dev_attr_vpd_pg83", i1 false, i1 false}
!220 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!221 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/scsi_sysfs.c", i32 915, i32 1}
!223 = !{ptr @dev_attr_vpd_pg89, !222, !"dev_attr_vpd_pg89", i1 false, i1 false}
!224 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!225 = !{ptr @scsi_sdev_attrs, !226, !"scsi_sdev_attrs", i1 false, i1 false}
!226 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1265, i32 26}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/scsi_sysfs.c", i32 694, i32 8}
!229 = !{ptr @dev_attr_device_blocked, !228, !"dev_attr_device_blocked", i1 false, i1 false}
!230 = !{ptr @.str.83, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/scsi_sysfs.c", i32 672, i32 1}
!232 = !{ptr @dev_attr_type, !231, !"dev_attr_type", i1 false, i1 false}
!233 = !{ptr @.str.84, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/scsi_sysfs.c", i32 673, i32 1}
!235 = !{ptr @dev_attr_scsi_level, !234, !"dev_attr_scsi_level", i1 false, i1 false}
!236 = !{ptr @.str.85, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/scsi_sysfs.c", i32 685, i32 8}
!238 = !{ptr @dev_attr_device_busy, !237, !"dev_attr_device_busy", i1 false, i1 false}
!239 = !{ptr @.str.86, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/scsi_sysfs.c", i32 674, i32 1}
!241 = !{ptr @dev_attr_vendor, !240, !"dev_attr_vendor", i1 false, i1 false}
!242 = !{ptr @.str.87, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.88, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/scsi_sysfs.c", i32 675, i32 1}
!245 = !{ptr @dev_attr_model, !244, !"dev_attr_model", i1 false, i1 false}
!246 = !{ptr @.str.89, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.90, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/scsi_sysfs.c", i32 676, i32 1}
!249 = !{ptr @dev_attr_rev, !248, !"dev_attr_rev", i1 false, i1 false}
!250 = !{ptr @.str.91, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.92, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/scsi_sysfs.c", i32 756, i32 8}
!253 = !{ptr @dev_attr_rescan, !252, !"dev_attr_rescan", i1 false, i1 false}
!254 = !{ptr @.str.93, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/scsi_sysfs.c", i32 791, i32 8}
!256 = !{ptr @dev_attr_delete, !255, !"dev_attr_delete", i1 false, i1 false}
!257 = distinct !{null, !258, !"__already_done", i1 false, i1 false}
!258 = !{!"../drivers/scsi/scsi_sysfs.c", i32 773, i32 2}
!259 = !{ptr @dev_attr_state, !260, !"dev_attr_state", i1 false, i1 false}
!260 = !{!"../drivers/scsi/scsi_sysfs.c", i32 856, i32 8}
!261 = !{ptr @.str.94, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/scsi_sysfs.c", i32 718, i32 8}
!263 = !{ptr @dev_attr_timeout, !262, !"dev_attr_timeout", i1 false, i1 false}
!264 = !{ptr @.str.95, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/scsi_sysfs.c", i32 747, i32 8}
!266 = !{ptr @dev_attr_eh_timeout, !265, !"dev_attr_eh_timeout", i1 false, i1 false}
!267 = !{ptr @.str.96, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/scsi_sysfs.c", i32 948, i32 8}
!269 = !{ptr @dev_attr_iocounterbits, !268, !"dev_attr_iocounterbits", i1 false, i1 false}
!270 = !{ptr @.str.97, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/scsi_sysfs.c", i32 961, i32 1}
!272 = !{ptr @dev_attr_iorequest_cnt, !271, !"dev_attr_iorequest_cnt", i1 false, i1 false}
!273 = !{ptr @.str.98, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.99, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/scsi_sysfs.c", i32 962, i32 1}
!276 = !{ptr @dev_attr_iodone_cnt, !275, !"dev_attr_iodone_cnt", i1 false, i1 false}
!277 = !{ptr @.str.100, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/scsi_sysfs.c", i32 963, i32 1}
!279 = !{ptr @dev_attr_ioerr_cnt, !278, !"dev_attr_ioerr_cnt", i1 false, i1 false}
!280 = !{ptr @.str.101, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/scsi_sysfs.c", i32 972, i32 8}
!282 = !{ptr @dev_attr_modalias, !281, !"dev_attr_modalias", i1 false, i1 false}
!283 = !{ptr @.str.102, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/scsi_sysfs.c", i32 970, i32 28}
!285 = !{ptr @.str.103, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/scsi_sysfs.c", i32 885, i32 8}
!287 = !{ptr @dev_attr_queue_type, !286, !"dev_attr_queue_type", i1 false, i1 false}
!288 = !{ptr @.str.104, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/scsi_sysfs.c", i32 863, i32 21}
!290 = !{ptr @.str.105, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/scsi_sysfs.c", i32 866, i32 10}
!292 = !{ptr @.str.106, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/scsi_sysfs.c", i32 880, i32 2}
!294 = !{ptr @.str.107, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1057, i32 8}
!296 = !{ptr @dev_attr_wwid, !295, !"dev_attr_wwid", i1 false, i1 false}
!297 = !{ptr @.str.108, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1093, i32 8}
!299 = !{ptr @dev_attr_blacklist, !298, !"dev_attr_blacklist", i1 false, i1 false}
!300 = !{ptr @.str.109, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1084, i32 21}
!302 = !{ptr @.str.110, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1087, i32 7}
!304 = !{ptr @.str.111, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 1, i32 1}
!306 = !{ptr @.str.112, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 2, i32 1}
!308 = !{ptr @.str.113, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 3, i32 1}
!310 = !{ptr @.str.114, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 4, i32 1}
!312 = !{ptr @.str.115, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 5, i32 1}
!314 = !{ptr @.str.116, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 6, i32 1}
!316 = !{ptr @.str.117, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 7, i32 1}
!318 = !{ptr @.str.118, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 8, i32 1}
!320 = !{ptr @.str.119, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 9, i32 1}
!322 = !{ptr @.str.120, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 10, i32 1}
!324 = !{ptr @.str.121, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 11, i32 1}
!326 = !{ptr @.str.122, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 12, i32 1}
!328 = !{ptr @.str.123, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 13, i32 1}
!330 = !{ptr @.str.124, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 14, i32 1}
!332 = !{ptr @.str.125, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 15, i32 1}
!334 = !{ptr @.str.126, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 16, i32 1}
!336 = !{ptr @.str.127, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 17, i32 1}
!338 = !{ptr @.str.128, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 18, i32 1}
!340 = !{ptr @.str.129, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 19, i32 1}
!342 = !{ptr @.str.130, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 20, i32 1}
!344 = !{ptr @.str.131, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 21, i32 1}
!346 = !{ptr @.str.132, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 22, i32 1}
!348 = !{ptr @.str.133, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 23, i32 1}
!350 = !{ptr @.str.134, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 24, i32 1}
!352 = !{ptr @.str.135, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 25, i32 1}
!354 = !{ptr @.str.136, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 26, i32 1}
!356 = !{ptr @.str.137, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 27, i32 1}
!358 = !{ptr @.str.138, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"./drivers/scsi/scsi_devinfo_tbl.c", i32 28, i32 1}
!360 = !{ptr @sdev_bflags_name, !361, !"sdev_bflags_name", i1 false, i1 false}
!361 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1061, i32 26}
!362 = !{ptr @.str.139, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1145, i32 8}
!364 = !{ptr @dev_attr_dh_state, !363, !"dev_attr_dh_state", i1 false, i1 false}
!365 = !{ptr @.str.140, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1103, i32 28}
!367 = !{ptr @.str.141, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1124, i32 27}
!369 = !{ptr @.str.142, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1132, i32 27}
!371 = !{ptr @.str.143, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1136, i32 3}
!373 = !{ptr @.str.144, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.145, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1007, i32 1}
!376 = !{ptr @dev_attr_evt_media_change, !375, !"dev_attr_evt_media_change", i1 false, i1 false}
!377 = !{ptr @.str.146, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1008, i32 1}
!379 = !{ptr @dev_attr_evt_inquiry_change_reported, !378, !"dev_attr_evt_inquiry_change_reported", i1 false, i1 false}
!380 = !{ptr @.str.147, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1009, i32 1}
!382 = !{ptr @dev_attr_evt_capacity_change_reported, !381, !"dev_attr_evt_capacity_change_reported", i1 false, i1 false}
!383 = !{ptr @.str.148, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1010, i32 1}
!385 = !{ptr @dev_attr_evt_soft_threshold_reached, !384, !"dev_attr_evt_soft_threshold_reached", i1 false, i1 false}
!386 = !{ptr @.str.149, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1011, i32 1}
!388 = !{ptr @dev_attr_evt_mode_parameter_change_reported, !387, !"dev_attr_evt_mode_parameter_change_reported", i1 false, i1 false}
!389 = !{ptr @.str.150, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1012, i32 1}
!391 = !{ptr @dev_attr_evt_lun_change_reported, !390, !"dev_attr_evt_lun_change_reported", i1 false, i1 false}
!392 = !{ptr @scsi_sdev_bin_attrs, !393, !"scsi_sdev_bin_attrs", i1 false, i1 false}
!393 = !{!"../drivers/scsi/scsi_sysfs.c", i32 1302, i32 30}
!394 = !{ptr @.str.151, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/scsi_sysfs.c", i32 934, i32 11}
!396 = !{ptr @dev_attr_inquiry, !397, !"dev_attr_inquiry", i1 false, i1 false}
!397 = !{!"../drivers/scsi/scsi_sysfs.c", i32 932, i32 29}
!398 = distinct !{null, !399, !"__warned", i1 false, i1 false}
!399 = !{!"../drivers/scsi/scsi_sysfs.c", i32 485, i32 12}
!400 = !{ptr @.str.152, !399, !"<string literal>", i1 false, i1 false}
!401 = distinct !{null, !402, !"__warned", i1 false, i1 false}
!402 = !{!"../drivers/scsi/scsi_sysfs.c", i32 487, i32 13}
!403 = distinct !{null, !404, !"__warned", i1 false, i1 false}
!404 = !{!"../drivers/scsi/scsi_sysfs.c", i32 489, i32 13}
!405 = distinct !{null, !406, !"__warned", i1 false, i1 false}
!406 = !{!"../drivers/scsi/scsi_sysfs.c", i32 491, i32 13}
!407 = !{!"sp"}
!408 = !{i32 1, !"wchar_size", i32 2}
!409 = !{i32 1, !"min_enum_size", i32 4}
!410 = !{i32 8, !"branch-target-enforcement", i32 0}
!411 = !{i32 8, !"sign-return-address", i32 0}
!412 = !{i32 8, !"sign-return-address-all", i32 0}
!413 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!414 = !{i32 7, !"uwtable", i32 1}
!415 = !{i32 7, !"frame-pointer", i32 2}
!416 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!417 = !{i64 2148382967, i64 2148382999, i64 2148383028, i64 2148383062, i64 2148383093, i64 2148383116}
!418 = !{!"branch_weights", i32 1, i32 2000}
!419 = !{!"branch_weights", i32 2000, i32 1}
!420 = !{!"auto-init"}
!421 = !{i64 2149397596}
!422 = !{i64 2149397862}
!423 = !{i64 2154709075}
!424 = !{i64 2154718201}
!425 = !{i64 2154727356}
!426 = !{i64 2154736511}
