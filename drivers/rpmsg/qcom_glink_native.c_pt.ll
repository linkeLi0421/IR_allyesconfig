; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/qcom_glink_native.c_pt.bc'
source_filename = "../drivers/rpmsg/qcom_glink_native.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcom_glink_native_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_glink_native_probe\09\09\09\09"
module asm "\09.long\09__crc_qcom_glink_native_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_glink_native_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_glink_native_probe\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_glink_native_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_glink_native_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_glink_native_remove\09\09\09\09"
module asm "\09.long\09__crc_qcom_glink_native_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_glink_native_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_glink_native_remove\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_glink_native_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_glink_native_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_glink_native_unregister\09\09\09\09"
module asm "\09.long\09__crc_qcom_glink_native_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_glink_native_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_glink_native_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_glink_native_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpmsg_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_endpoint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.glink_msg = type { i16, i16, i32, [0 x i8] }
%struct.qcom_glink = type { ptr, ptr, %struct.mbox_client, ptr, ptr, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.idr, %struct.idr, i32, i8, %struct.wait_queue_head, i8 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.glink_channel = type { %struct.rpmsg_endpoint, ptr, ptr, %struct.kref, %struct.spinlock, ptr, i32, i32, %struct.spinlock, %struct.idr, %struct.idr, %struct.work_struct, %struct.list_head, ptr, i32, i32, %struct.completion, %struct.completion, %struct.mutex, i8, %struct.completion }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.command = type { i16, i16, i32, i32, i32 }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.glink_defer_cmd = type { %struct.list_head, %struct.glink_msg, [0 x i8] }
%struct.glink_core_rx_intent = type { ptr, i32, i32, i8, i8, i32, %struct.list_head }
%struct.qcom_glink_pipe = type { i32, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.68 = type { i16, i16, i32 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.69 = type { %struct.glink_msg, [32 x i8] }
%struct.anon.71 = type { i16, i16, i32 }
%struct.anon.70 = type { %struct.glink_msg, i32, i32 }
%struct.anon.73 = type { %struct.glink_msg, i32, i32 }
%struct.anon.74 = type { %struct.glink_msg, [0 x %struct.intent_pair] }
%struct.intent_pair = type { i32, i32 }

@qcom_glink_native_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&glink->tx_lock\00", [16 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&glink->rx_lock\00", [16 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&glink->rx_work)\00", [61 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&glink->tx_avail_notify\00", [40 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&glink->idr_lock\00", [47 x i8] zeroinitializer }, align 32
@qcom_glink_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qcom_glink_group, ptr null], [24 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 1756, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to add groups\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_glink_native_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/rpmsg/qcom_glink_native.c\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry_ptr = internal global ptr @qcom_glink_native_probe._entry, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 1767, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire IPC channel\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry_ptr.17 = internal global ptr @qcom_glink_native_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"glink-native\00", [19 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.11, i32 1777, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry_ptr.21 = internal global ptr @qcom_glink_native_probe._entry.19, section ".printk_index", align 4
@qcom_glink_native_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.11, i32 1789, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register chrdev\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_glink_native_probe._entry_ptr.24 = internal global ptr @qcom_glink_native_probe._entry.22, section ".printk_index", align 4
@__kstrtab_qcom_glink_native_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_glink_native_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_glink_native_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_glink_native_probe to i32), ptr @__kstrtab_qcom_glink_native_probe, ptr @__kstrtabns_qcom_glink_native_probe }, section "___ksymtab_gpl+qcom_glink_native_probe", align 4
@qcom_glink_native_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.11, i32 1813, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't remove GLINK devices: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_glink_native_remove\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_glink_native_remove._entry_ptr = internal global ptr @qcom_glink_native_remove._entry, section ".printk_index", align 4
@__kstrtab_qcom_glink_native_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_glink_native_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_glink_native_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_glink_native_remove to i32), ptr @__kstrtab_qcom_glink_native_remove, ptr @__kstrtabns_qcom_glink_native_remove }, section "___ksymtab_gpl+qcom_glink_native_remove", align 4
@__kstrtab_qcom_glink_native_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_glink_native_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_glink_native_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_glink_native_unregister to i32), ptr @__kstrtab_qcom_glink_native_unregister, ptr @__kstrtabns_qcom_glink_native_unregister }, section "___ksymtab_gpl+qcom_glink_native_unregister", align 4
@__UNIQUE_ID_description232 = internal constant [45 x i8] c"qcom_glink.description=Qualcomm GLINK driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [41 x i8] c"qcom_glink.file=drivers/rpmsg/qcom_glink\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"qcom_glink.license=GPL v2\00", section ".modinfo", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown defer object %d\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_glink_rx_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.11, i32 1484, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to insert channel into rcid list\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_glink_rx_open\00", [45 x i8] zeroinitializer }, align 32
@qcom_glink_rx_open._entry_ptr = internal global ptr @qcom_glink_rx_open._entry, section ".printk_index", align 4
@glink_device_ops = internal constant { %struct.rpmsg_device_ops, [44 x i8] } { %struct.rpmsg_device_ops { ptr null, ptr null, ptr @qcom_glink_create_ept, ptr @qcom_glink_announce_create, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_glink_alloc_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&channel->recv_lock\00", [44 x i8] zeroinitializer }, align 32
@qcom_glink_alloc_channel.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&channel->intent_lock\00", [42 x i8] zeroinitializer }, align 32
@qcom_glink_alloc_channel.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&channel->intent_req_lock\00", [38 x i8] zeroinitializer }, align 32
@qcom_glink_alloc_channel.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&channel->intent_work)\00", [55 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@glink_endpoint_ops = internal constant { %struct.rpmsg_endpoint_ops, [60 x i8] } { %struct.rpmsg_endpoint_ops { ptr @qcom_glink_destroy_ept, ptr @qcom_glink_send, ptr @qcom_glink_sendto, ptr null, ptr @qcom_glink_trysend, ptr @qcom_glink_trysendto, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@qcom_glink_request_intent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.11, i32 1279, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"intent request timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_glink_request_intent\00", [38 x i8] zeroinitializer }, align 32
@qcom_glink_request_intent._entry_ptr = internal global ptr @qcom_glink_request_intent._entry, section ".printk_index", align 4
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,intents\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,glink-channels\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"close request on unknown channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"close ack on unknown channel\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_glink_handle_intent_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.11, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s channel not found for cid %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom_glink_handle_intent_req\00", [35 x i8] zeroinitializer }, align 32
@qcom_glink_handle_intent_req._entry_ptr = internal global ptr @qcom_glink_handle_intent_req._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@qcom_glink_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qcom_glink_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_glink_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_rpmsg_name, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_rpmsg_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpmsg_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpmsg_name\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@qcom_glink_native_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.11, i32 1071, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unhandled rx cmd: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_glink_native_intr\00", [41 x i8] zeroinitializer }, align 32
@qcom_glink_native_intr._entry_ptr = internal global ptr @qcom_glink_native_intr._entry, section ".printk_index", align 4
@qcom_glink_rx_defer.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.11, ptr @.str.54, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_glink\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_glink_rx_defer\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Insufficient data in rx fifo\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@qcom_glink_rx_open_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.11, i32 997, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid open ack packet\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_glink_rx_open_ack\00", [41 x i8] zeroinitializer }, align 32
@qcom_glink_rx_open_ack._entry_ptr = internal global ptr @qcom_glink_rx_open_ack._entry, section ".printk_index", align 4
@qcom_glink_rx_data.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.57, ptr @.str.11, ptr @.str.58, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_glink_rx_data\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Not enough data in fifo\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_glink_rx_data.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.57, ptr @.str.11, ptr @.str.59, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Payload not yet in fifo\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_glink_rx_data.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.57, ptr @.str.11, ptr @.str.60, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Data on non-existing channel\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_glink_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.11, i32 886, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no intent found for channel %s intent %d\00", [55 x i8] zeroinitializer }, align 32
@qcom_glink_rx_data._entry_ptr = internal global ptr @qcom_glink_rx_data._entry, section ".printk_index", align 4
@qcom_glink_rx_data._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.11, i32 893, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Insufficient space in intent\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_glink_rx_data._entry_ptr.64 = internal global ptr @qcom_glink_rx_data._entry.62, section ".printk_index", align 4
@qcom_glink_handle_intent.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.65, ptr @.str.11, ptr @.str.58, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_glink_handle_intent\00", [39 x i8] zeroinitializer }, align 32
@qcom_glink_handle_intent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.65, ptr @.str.11, i32 958, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"intents for non-existing channel\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_glink_handle_intent._entry_ptr = internal global ptr @qcom_glink_handle_intent._entry, section ".printk_index", align 4
@qcom_glink_handle_intent._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str.11, i32 982, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to store remote intent\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_glink_handle_intent._entry_ptr.69 = internal global ptr @qcom_glink_handle_intent._entry.67, section ".printk_index", align 4
@qcom_glink_handle_rx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.11, i32 729, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid channel id received\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_glink_handle_rx_done\00", [38 x i8] zeroinitializer }, align 32
@qcom_glink_handle_rx_done._entry_ptr = internal global ptr @qcom_glink_handle_rx_done._entry, section ".printk_index", align 4
@qcom_glink_handle_rx_done._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.11, i32 738, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid intent id received\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_glink_handle_rx_done._entry_ptr.74 = internal global ptr @qcom_glink_handle_rx_done._entry.72, section ".printk_index", align 4
@qcom_glink_handle_intent_req_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.11, i32 414, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to find channel\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qcom_glink_handle_intent_req_ack\00", [63 x i8] zeroinitializer }, align 32
@qcom_glink_handle_intent_req_ack._entry_ptr = internal global ptr @qcom_glink_handle_intent_req_ack._entry, section ".printk_index", align 4
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmsg_chrdev\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1742, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1743, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1745, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1746, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1748, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"qcom_glink_groups\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1756, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1758, i32 46 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1767, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1775, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1777, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1789, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1813, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1647, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1484, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"glink_device_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1434, i32 38 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 223, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 224, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 225, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 235, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 87, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"glink_endpoint_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1439, i32 40 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1279, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1215, i32 30 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1422, i32 9 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1542, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1578, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 773, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 378, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"qcom_glink_group\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1685, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"qcom_glink_attrs\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1681, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"dev_attr_rpmsg_name\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1679, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1677, i32 40 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1071, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 791, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 997, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 830, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 839, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 848, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 884, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 893, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 950, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 958, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 982, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 729, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 738, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 414, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [37 x i8] c"../drivers/rpmsg/qcom_glink_native.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1706, i32 44 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_qcom_glink_native_probe, ptr @__ksymtab_qcom_glink_native_remove, ptr @__ksymtab_qcom_glink_native_unregister, ptr @qcom_glink_handle_intent._entry, ptr @qcom_glink_handle_intent._entry.67, ptr @qcom_glink_handle_intent._entry_ptr, ptr @qcom_glink_handle_intent._entry_ptr.69, ptr @qcom_glink_handle_intent_req._entry, ptr @qcom_glink_handle_intent_req._entry_ptr, ptr @qcom_glink_handle_intent_req_ack._entry, ptr @qcom_glink_handle_intent_req_ack._entry_ptr, ptr @qcom_glink_handle_rx_done._entry, ptr @qcom_glink_handle_rx_done._entry.72, ptr @qcom_glink_handle_rx_done._entry_ptr, ptr @qcom_glink_handle_rx_done._entry_ptr.74, ptr @qcom_glink_native_intr._entry, ptr @qcom_glink_native_intr._entry_ptr, ptr @qcom_glink_native_probe._entry, ptr @qcom_glink_native_probe._entry.15, ptr @qcom_glink_native_probe._entry.19, ptr @qcom_glink_native_probe._entry.22, ptr @qcom_glink_native_probe._entry_ptr, ptr @qcom_glink_native_probe._entry_ptr.17, ptr @qcom_glink_native_probe._entry_ptr.21, ptr @qcom_glink_native_probe._entry_ptr.24, ptr @qcom_glink_native_remove._entry, ptr @qcom_glink_native_remove._entry_ptr, ptr @qcom_glink_request_intent._entry, ptr @qcom_glink_request_intent._entry_ptr, ptr @qcom_glink_rx_data._entry, ptr @qcom_glink_rx_data._entry.62, ptr @qcom_glink_rx_data._entry_ptr, ptr @qcom_glink_rx_data._entry_ptr.64, ptr @qcom_glink_rx_open._entry, ptr @qcom_glink_rx_open._entry_ptr, ptr @qcom_glink_rx_open_ack._entry, ptr @qcom_glink_rx_open_ack._entry_ptr, ptr @qcom_glink_native_probe.__key, ptr @.str, ptr @qcom_glink_native_probe.__key.1, ptr @.str.2, ptr @qcom_glink_native_probe.__key.3, ptr @.str.4, ptr @qcom_glink_native_probe.__key.5, ptr @.str.6, ptr @qcom_glink_native_probe.__key.7, ptr @.str.8, ptr @qcom_glink_groups, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @glink_device_ops, ptr @qcom_glink_alloc_channel.__key, ptr @.str.31, ptr @qcom_glink_alloc_channel.__key.32, ptr @.str.33, ptr @qcom_glink_alloc_channel.__key.34, ptr @.str.35, ptr @qcom_glink_alloc_channel.__key.36, ptr @.str.37, ptr @init_completion.__key, ptr @.str.38, ptr @glink_endpoint_ops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @xa_init_flags.__key, ptr @.str.47, ptr @qcom_glink_group, ptr @qcom_glink_attrs, ptr @dev_attr_rpmsg_name, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_rx_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_device_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_alloc_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_alloc_channel.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_alloc_channel.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_alloc_channel.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_endpoint_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_request_intent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_handle_intent_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rpmsg_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_native_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_rx_open_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_rx_data._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_handle_intent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_handle_intent._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_handle_rx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_handle_rx_done._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_handle_intent_req_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_glink_native_probe(ptr noundef %dev, i32 noundef %features, ptr noundef %rx, ptr noundef %tx, i1 noundef zeroext %intentless) #0 align 64 {
entry:
  %msg.i = alloca %struct.glink_msg, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 420, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %intentless to i8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %tx_pipe = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tx, ptr %tx_pipe, align 4
  %rx_pipe = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rx, ptr %rx_pipe, align 4
  %features3 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 14
  %3 = ptrtoint ptr %features3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %features, ptr %features3, align 4
  %intentless5 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 15
  %4 = ptrtoint ptr %intentless5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %intentless5, align 4
  %tx_lock = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str, ptr noundef nonnull @qcom_glink_native_probe.__key, i16 noundef signext 3) #12
  %rx_lock = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @qcom_glink_native_probe.__key.1, i16 noundef signext 3) #12
  %rx_queue = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx_queue, ptr %prev.i, align 4
  %rx_work = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #12
  %7 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %rx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @qcom_glink_native_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry16 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i135 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i135 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry16, ptr %prev.i135, align 4
  %func = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @qcom_glink_work, ptr %func, align 4
  %tx_avail_notify = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %tx_avail_notify, ptr noundef nonnull @.str.6, ptr noundef nonnull @qcom_glink_native_probe.__key.5) #12
  %idr_lock = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %idr_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @qcom_glink_native_probe.__key.7, i16 noundef signext 3) #12
  %lcids = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lcids, ptr noundef nonnull @.str.47, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %11 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %12 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_next.i.i, align 4
  %rcids = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %rcids, ptr noundef nonnull @.str.47, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i136 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108868, ptr %xa_flags.i.i.i136, align 4
  %xa_head.i.i.i137 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i.i137, align 4
  %idr_base.i.i138 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %idr_base.i.i138 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %idr_base.i.i138, align 4
  %idr_next.i.i139 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %idr_next.i.i139 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_next.i.i139, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %groups = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qcom_glink_groups, ptr %groups, align 8
  %call28 = tail call i32 @device_add_groups(ptr noundef %dev, ptr noundef nonnull @qcom_glink_groups) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end.if.end34_crit_edge, label %do.end33

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #15
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.end.if.end34_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %name = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 @of_property_read_string(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.then36, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %name, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end34.if.end40_crit_edge
  %mbox_client = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %mbox_client to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %mbox_client, align 4
  %knows_txdone = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %knows_txdone, align 4
  %call44 = tail call ptr @mbox_request_channel(ptr noundef %mbox_client, i32 noundef 0) #12
  %mbox_chan = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call44, ptr %mbox_chan, align 4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %if.end58

if.then47:                                        ; preds = %if.end40
  %cmp50.not = icmp eq ptr %call44, inttoptr (i32 -517 to ptr)
  br i1 %cmp50.not, label %if.then47.if.end55_crit_edge, label %do.end54

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.end54:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %if.then47.if.end55_crit_edge
  %32 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mbox_chan, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end40
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call60 = tail call i32 @of_irq_get(ptr noundef %35, i32 noundef 0) #12
  %call.i140 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call60, ptr noundef nonnull @qcom_glink_native_intr, ptr noundef null, i32 noundef 16512, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool62.not = icmp eq i32 %call.i140, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #15
  %36 = inttoptr i32 %call.i140 to ptr
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  %irq69 = getelementptr inbounds %struct.qcom_glink, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %irq69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call60, ptr %irq69, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #12
  %38 = getelementptr inbounds %struct.glink_msg, ptr %msg.i, i32 0, i32 1
  %39 = getelementptr inbounds %struct.glink_msg, ptr %msg.i, i32 0, i32 2
  %40 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %msg.i, align 2
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 256, ptr %38, align 2
  %42 = ptrtoint ptr %features3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %features3, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %39, align 2
  %call.i141 = call fastcc i32 @qcom_glink_tx(ptr noundef nonnull %call.i, ptr noundef nonnull %msg.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool71.not = icmp eq i32 %call.i141, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %46 = inttoptr i32 %call.i141 to ptr
  br label %cleanup

if.end74:                                         ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 992) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end74.do.end80_crit_edge, label %if.end.i

if.end74.do.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

if.end.i:                                         ; preds = %if.end74
  %call1.i = call fastcc ptr @qcom_glink_alloc_channel(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.77) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %do.end80

if.end5.i:                                        ; preds = %if.end.i
  %rpdev6.i = getelementptr inbounds %struct.glink_channel, ptr %call1.i, i32 0, i32 1
  %48 = ptrtoint ptr %rpdev6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i.i, ptr %rpdev6.i, align 4
  %ept7.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %ept7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call1.i, ptr %ept7.i, align 8
  %ops.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @glink_device_ops, ptr %ops.i, align 8
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %54 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @qcom_glink_device_release, ptr %release.i, align 4
  %id.i.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %55 = call ptr @memcpy(ptr %id.i.i, ptr @.str.77, i32 13)
  %driver_override.i.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %driver_override.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.77, ptr %driver_override.i.i, align 4
  %call1.i.i = call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %phi.cmp = icmp eq i32 %call1.i.i, 0
  br i1 %phi.cmp, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.do.end80_crit_edge

if.end5.i.do.end80_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end80:                                         ; preds = %if.end5.i.do.end80_crit_edge, %if.then3.i, %if.end74.do.end80_crit_edge
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.23) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end5.i.cleanup_crit_edge, %if.then72, %do.end66, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %if.end55 ], [ %36, %do.end66 ], [ %46, %if.then72 ], [ %call.i, %do.end80 ], [ %call.i, %if.end5.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_glink_work(ptr noundef %work) #0 align 64 {
entry:
  %msg.i.i103 = alloca %struct.glink_msg, align 2
  %cmd.i.i = alloca %struct.command, align 2
  %chinfo.i92 = alloca %struct.rpmsg_channel_info, align 4
  %req.i.i = alloca %struct.glink_msg, align 2
  %chinfo.i = alloca %struct.rpmsg_channel_info, align 4
  %name.i.i = alloca ptr, align 4
  %lcid.i = alloca i32, align 4
  %msg.i.i72 = alloca %struct.glink_msg, align 2
  %msg.i.i = alloca %struct.glink_msg, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  %rx_lock = getelementptr i8, ptr %work, i32 44
  %call3113 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #12
  %rx_queue = getelementptr i8, ptr %work, i32 88
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_queue, align 4
  %cmp.i.not114 = icmp eq ptr %1, %rx_queue
  br i1 %cmp.i.not114, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %idr_lock.i104 = getelementptr i8, ptr %work, i32 140
  %rcids.i106 = getelementptr i8, ptr %work, i32 244
  %2 = getelementptr inbounds %struct.command, ptr %cmd.i.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.command, ptr %cmd.i.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.command, ptr %cmd.i.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.command, ptr %cmd.i.i, i32 0, i32 4
  %6 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i103, i32 0, i32 1
  %7 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i103, i32 0, i32 2
  %tx_avail_notify.i = getelementptr i8, ptr %work, i32 312
  %lcids.i95 = getelementptr i8, ptr %work, i32 184
  %src.i100 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo.i92, i32 0, i32 1
  %dst.i101 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo.i92, i32 0, i32 2
  %src.i88 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo.i, i32 0, i32 1
  %dst.i89 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.glink_msg, ptr %req.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.glink_msg, ptr %req.i.i, i32 0, i32 2
  %features1.i73 = getelementptr i8, ptr %work, i32 304
  %10 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i72, i32 0, i32 1
  %11 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i72, i32 0, i32 2
  %12 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i, i32 0, i32 2
  br label %if.end

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %entry.if.then_crit_edge
  %call3.lcssa = phi i32 [ %call3113, %entry.if.then_crit_edge ], [ %call3, %sw.epilog.if.then_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call3.lcssa) #12
  ret void

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %if.end.lr.ph
  %14 = phi ptr [ %1, %if.end.lr.ph ], [ %135, %sw.epilog.if.end_crit_edge ]
  %call3115 = phi i32 [ %call3113, %if.end.lr.ph ], [ %call3, %sw.epilog.if.end_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call3115) #12
  %msg13 = getelementptr inbounds %struct.glink_defer_cmd, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %msg13 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %msg13, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %param116 = getelementptr inbounds %struct.glink_defer_cmd, ptr %14, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %param116 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %param116, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv17 = zext i16 %28 to i32
  %param218 = getelementptr inbounds %struct.glink_defer_cmd, ptr %14, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %param218 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %param218, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i16 %25, label %do.end32 [
    i16 0, label %sw.bb
    i16 1, label %sw.bb19
    i16 2, label %sw.bb20
    i16 3, label %sw.bb22
    i16 11, label %sw.bb23
    i16 7, label %sw.bb24
  ]

sw.bb:                                            ; preds = %list_del.exit
  %33 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %28, label %sw.bb.sw.default.i_crit_edge [
    i16 0, label %sw.bb.sw.epilog_crit_edge
    i16 1, label %sw.bb.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.sw.default.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %features1.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %features1.i73, align 4
  %and.i = and i32 %35, %31
  store i32 %and.i, ptr %features1.i73, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %sw.bb.sw.default.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i) #12
  %36 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 256, ptr %msg.i.i, align 2
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 256, ptr %12, align 2
  %38 = ptrtoint ptr %features1.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features1.i73, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #12
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %13, align 2
  %call.i.i71 = call fastcc i32 @qcom_glink_tx(ptr noundef %add.ptr, ptr noundef nonnull %msg.i.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i) #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %list_del.exit
  %42 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %28, label %sw.bb19.sw.default.i79_crit_edge [
    i16 0, label %sw.bb19.sw.epilog_crit_edge
    i16 1, label %sw.bb.i75
  ]

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb19.sw.default.i79_crit_edge:                 ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i79

sw.bb.i75:                                        ; preds = %sw.bb19
  %43 = ptrtoint ptr %features1.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %features1.i73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %31)
  %cmp.i74 = icmp eq i32 %44, %31
  br i1 %cmp.i74, label %sw.bb.i75.sw.epilog_crit_edge, label %if.end.i

sw.bb.i75.sw.epilog_crit_edge:                    ; preds = %sw.bb.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb.i75
  call void @__sanitizer_cov_trace_pc() #14
  %and.i76 = and i32 %44, %31
  %45 = ptrtoint ptr %features1.i73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and.i76, ptr %features1.i73, align 4
  br label %sw.default.i79

sw.default.i79:                                   ; preds = %if.end.i, %sw.bb19.sw.default.i79_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i72) #12
  %46 = ptrtoint ptr %msg.i.i72 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %msg.i.i72, align 2
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 256, ptr %10, align 2
  %48 = ptrtoint ptr %features1.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %features1.i73, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #12
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %11, align 2
  %call.i.i78 = call fastcc i32 @qcom_glink_tx(ptr noundef %add.ptr, ptr noundef nonnull %msg.i.i72, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i72) #12
  br label %sw.epilog

sw.bb20:                                          ; preds = %list_del.exit
  %data = getelementptr inbounds %struct.glink_defer_cmd, ptr %14, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcid.i) #12
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %52 = ptrtoint ptr %lcid.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %lcid.i, align 4
  %call54.i = call ptr @idr_get_next(ptr noundef %lcids.i95, ptr noundef nonnull %lcid.i) #12
  %cmp6.not5.i = icmp eq ptr %call54.i, null
  br i1 %cmp6.not5.i, label %sw.bb20.if.then12.critedge.i_crit_edge, label %sw.bb20.for.body.i_crit_edge

sw.bb20.for.body.i_crit_edge:                     ; preds = %sw.bb20
  br label %for.body.i

sw.bb20.if.then12.critedge.i_crit_edge:           ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.critedge.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb20.for.body.i_crit_edge
  %call56.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call54.i, %sw.bb20.for.body.i_crit_edge ]
  %name8.i = getelementptr inbounds %struct.glink_channel, ptr %call56.i, i32 0, i32 5
  %53 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name8.i, align 4
  %call9.i = call i32 @strcmp(ptr noundef %54, ptr noundef %data) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %do.body20.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %55 = ptrtoint ptr %lcid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lcid.i, align 4
  %add.i = add i32 %56, 1
  store i32 %add.i, ptr %lcid.i, align 4
  %call5.i = call ptr @idr_get_next(ptr noundef %lcids.i95, ptr noundef nonnull %lcid.i) #12
  %cmp6.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.not.i, label %for.inc.i.if.then12.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then12.critedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.critedge.i

if.then12.critedge.i:                             ; preds = %for.inc.i.if.then12.critedge.i_crit_edge, %sw.bb20.if.then12.critedge.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call2.i) #12
  %call13.i = call fastcc ptr @qcom_glink_alloc_channel(ptr noundef %add.ptr, ptr noundef %data) #12
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then12.critedge.i.qcom_glink_rx_open.exit_crit_edge, label %if.then12.critedge.i.do.body20.i_crit_edge

if.then12.critedge.i.do.body20.i_crit_edge:       ; preds = %if.then12.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20.i

if.then12.critedge.i.qcom_glink_rx_open.exit_crit_edge: ; preds = %if.then12.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_rx_open.exit

do.body20.critedge.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call2.i) #12
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.body20.critedge.i, %if.then12.critedge.i.do.body20.i_crit_edge
  %cmp6.not2.i = phi i1 [ false, %do.body20.critedge.i ], [ true, %if.then12.critedge.i.do.body20.i_crit_edge ]
  %channel.0.i = phi ptr [ %call56.i, %do.body20.critedge.i ], [ %call13.i, %if.then12.critedge.i.do.body20.i_crit_edge ]
  %call28.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %add33.i = add nuw nsw i32 %conv17, 1
  %call34.i = call i32 @idr_alloc(ptr noundef %rcids.i106, ptr noundef %channel.0.i, i32 noundef %conv17, i32 noundef %add33.i, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %do.end40.i, label %if.end42.i

do.end40.i:                                       ; preds = %do.body20.i
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.29) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call28.i) #12
  br i1 %cmp6.not2.i, label %do.end40.i.if.then87.i_crit_edge, label %do.end40.i.qcom_glink_rx_open.exit_crit_edge

do.end40.i.qcom_glink_rx_open.exit_crit_edge:     ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_rx_open.exit

do.end40.i.if.then87.i_crit_edge:                 ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then87.i

if.end42.i:                                       ; preds = %do.body20.i
  %rcid43.i = getelementptr inbounds %struct.glink_channel, ptr %channel.0.i, i32 0, i32 7
  %59 = ptrtoint ptr %rcid43.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call34.i, ptr %rcid43.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call28.i) #12
  %open_req.i = getelementptr inbounds %struct.glink_channel, ptr %channel.0.i, i32 0, i32 17
  call void @complete_all(ptr noundef %open_req.i) #12
  br i1 %cmp6.not2.i, label %if.then46.i, label %if.end42.i.qcom_glink_rx_open.exit_crit_edge

if.end42.i.qcom_glink_rx_open.exit_crit_edge:     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_rx_open.exit

if.then46.i:                                      ; preds = %if.end42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 992) #16
  %tobool48.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool48.not.i, label %if.then46.i.do.body68.i_crit_edge, label %if.end50.i

if.then46.i.do.body68.i_crit_edge:                ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68.i

if.end50.i:                                       ; preds = %if.then46.i
  %ept51.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %ept51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %channel.0.i, ptr %ept51.i, align 8
  %id.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %call53.i = call i32 @strscpy_pad(ptr noundef %id.i, ptr noundef %data, i32 noundef 32) #12
  %src.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %dst.i, align 4
  %ops.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @glink_device_ops, ptr %ops.i, align 8
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 27
  %67 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i.i) #12
  %69 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i.i, align 4, !annotation !182
  %call.i.i80 = call ptr @of_get_next_available_child(ptr noundef %68, ptr noundef null) #12
  %cmp.not14.i.i = icmp eq ptr %call.i.i80, null
  br i1 %cmp.not14.i.i, label %if.end50.i.qcom_glink_match_channel.exit.i_crit_edge, label %if.end50.i.for.body.i.i_crit_edge

if.end50.i.for.body.i.i_crit_edge:                ; preds = %if.end50.i
  br label %for.body.i.i

if.end50.i.qcom_glink_match_channel.exit.i_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_match_channel.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end50.i.for.body.i.i_crit_edge
  %child.015.i.i = phi ptr [ %call6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i80, %if.end50.i.for.body.i.i_crit_edge ]
  %call1.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.015.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %name.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i81, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i81:                                     ; preds = %for.body.i.i
  %70 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name.i.i, align 4
  %call2.i.i = call i32 @strcmp(ptr noundef %71, ptr noundef %data) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i81.qcom_glink_match_channel.exit.i_crit_edge, label %if.end.i.i81.for.inc.i.i_crit_edge

if.end.i.i81.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i81.qcom_glink_match_channel.exit.i_crit_edge: ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_match_channel.exit.i

for.inc.i.i:                                      ; preds = %if.end.i.i81.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call6.i.i = call ptr @of_get_next_available_child(ptr noundef %68, ptr noundef nonnull %child.015.i.i) #12
  %cmp.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.qcom_glink_match_channel.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.qcom_glink_match_channel.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_match_channel.exit.i

qcom_glink_match_channel.exit.i:                  ; preds = %for.inc.i.i.qcom_glink_match_channel.exit.i_crit_edge, %if.end.i.i81.qcom_glink_match_channel.exit.i_crit_edge, %if.end50.i.qcom_glink_match_channel.exit.i_crit_edge
  %child.0.lcssa.i.i = phi ptr [ null, %if.end50.i.qcom_glink_match_channel.exit.i_crit_edge ], [ null, %for.inc.i.i.qcom_glink_match_channel.exit.i_crit_edge ], [ %child.015.i.i, %if.end.i.i81.qcom_glink_match_channel.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #12
  %of_node57.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 27
  %72 = ptrtoint ptr %of_node57.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %child.0.lcssa.i.i, ptr %of_node57.i, align 8
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %76 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @qcom_glink_rpdev_release, ptr %release.i, align 4
  %call61.i = call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %qcom_glink_match_channel.exit.i.do.body68.i_crit_edge

qcom_glink_match_channel.exit.i.do.body68.i_crit_edge: ; preds = %qcom_glink_match_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68.i

if.end64.i:                                       ; preds = %qcom_glink_match_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rpdev65.i = getelementptr inbounds %struct.glink_channel, ptr %channel.0.i, i32 0, i32 1
  %77 = ptrtoint ptr %rpdev65.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i, ptr %rpdev65.i, align 4
  br label %qcom_glink_rx_open.exit

do.body68.i:                                      ; preds = %qcom_glink_match_channel.exit.i.do.body68.i_crit_edge, %if.then46.i.do.body68.i_crit_edge
  %call76.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %78 = ptrtoint ptr %rcid43.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rcid43.i, align 4
  %call83.i = call ptr @idr_remove(ptr noundef %rcids.i106, i32 noundef %79) #12
  %80 = ptrtoint ptr %rcid43.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %rcid43.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call76.i) #12
  br label %if.then87.i

if.then87.i:                                      ; preds = %do.body68.i, %do.end40.i.if.then87.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.glink_channel, ptr %channel.0.i, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %refcount.i) #12
  br label %qcom_glink_rx_open.exit

qcom_glink_rx_open.exit:                          ; preds = %if.then87.i, %if.end64.i, %if.end42.i.qcom_glink_rx_open.exit_crit_edge, %do.end40.i.qcom_glink_rx_open.exit_crit_edge, %if.then12.critedge.i.qcom_glink_rx_open.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcid.i) #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %list_del.exit
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo.i) #12
  %81 = call ptr @memset(ptr %chinfo.i, i32 255, i32 40)
  %call2.i83 = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %call5.i85 = call ptr @idr_find(ptr noundef %rcids.i106, i32 noundef %conv17) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call2.i83) #12
  %tobool.not.i86 = icmp eq ptr %call5.i85, null
  br i1 %tobool.not.i86, label %do.end18.i, label %if.end33.i, !prof !183

do.end18.i:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1542, i32 noundef 9, ptr noundef nonnull @.str.43) #12
  br label %qcom_glink_rx_close.exit

if.end33.i:                                       ; preds = %sw.bb22
  %intent_work.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i85, i32 0, i32 11
  %call34.i87 = call zeroext i1 @cancel_work_sync(ptr noundef %intent_work.i) #12
  %rpdev.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i85, i32 0, i32 1
  %82 = ptrtoint ptr %rpdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rpdev.i, align 4
  %tobool35.not.i = icmp eq ptr %83, null
  br i1 %tobool35.not.i, label %if.end33.i.if.end40.i_crit_edge, label %if.then36.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %name37.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i85, i32 0, i32 5
  %84 = ptrtoint ptr %name37.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name37.i, align 4
  %call38.i = call ptr @strncpy(ptr noundef nonnull %chinfo.i, ptr noundef %85, i32 noundef 32) #12
  %86 = ptrtoint ptr %src.i88 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %src.i88, align 4
  %87 = ptrtoint ptr %dst.i89 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %dst.i89, align 4
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 4
  %call39.i = call i32 @rpmsg_unregister_device(ptr noundef %89, ptr noundef nonnull %chinfo.i) #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end40.i_crit_edge
  %90 = ptrtoint ptr %rpdev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %rpdev.i, align 4
  %rcid42.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i85, i32 0, i32 7
  %91 = ptrtoint ptr %rcid42.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rcid42.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i.i) #12
  %93 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 2816, ptr %req.i.i, align 2
  %conv.i.i = trunc i32 %92 to i16
  %94 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %95 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %8, align 2
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 0, ptr %9, align 2
  %call.i.i90 = call fastcc i32 @qcom_glink_tx(ptr noundef %add.ptr, ptr noundef nonnull %req.i.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i.i) #12
  %call52.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %97 = ptrtoint ptr %rcid42.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rcid42.i, align 4
  %call59.i = call ptr @idr_remove(ptr noundef %rcids.i106, i32 noundef %98) #12
  %99 = ptrtoint ptr %rcid42.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %rcid42.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call52.i) #12
  %refcount.i91 = getelementptr inbounds %struct.glink_channel, ptr %call5.i85, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %refcount.i91) #12
  br label %qcom_glink_rx_close.exit

qcom_glink_rx_close.exit:                         ; preds = %if.end40.i, %do.end18.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo.i) #12
  br label %sw.epilog

sw.bb23:                                          ; preds = %list_del.exit
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo.i92) #12
  %100 = call ptr @memset(ptr %chinfo.i92, i32 255, i32 40)
  call void @__wake_up(ptr noundef %tx_avail_notify.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %call2.i94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %call5.i96 = call ptr @idr_find(ptr noundef %lcids.i95, i32 noundef %conv17) #12
  %tobool.not.i97 = icmp eq ptr %call5.i96, null
  br i1 %tobool.not.i97, label %do.end17.i, label %if.end33.i99, !prof !183

do.end17.i:                                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1578, i32 noundef 9, ptr noundef nonnull @.str.44) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call2.i94) #12
  br label %qcom_glink_rx_close_ack.exit

if.end33.i99:                                     ; preds = %sw.bb23
  %lcid35.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i96, i32 0, i32 6
  %101 = ptrtoint ptr %lcid35.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lcid35.i, align 4
  %call36.i = call ptr @idr_remove(ptr noundef %lcids.i95, i32 noundef %102) #12
  %103 = ptrtoint ptr %lcid35.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %lcid35.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call2.i94) #12
  %rpdev.i98 = getelementptr inbounds %struct.glink_channel, ptr %call5.i96, i32 0, i32 1
  %104 = ptrtoint ptr %rpdev.i98 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rpdev.i98, align 4
  %tobool39.not.i = icmp eq ptr %105, null
  br i1 %tobool39.not.i, label %if.end33.i99.if.end44.i_crit_edge, label %if.then40.i

if.end33.i99.if.end44.i_crit_edge:                ; preds = %if.end33.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.end33.i99
  call void @__sanitizer_cov_trace_pc() #14
  %name41.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i96, i32 0, i32 5
  %106 = ptrtoint ptr %name41.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name41.i, align 4
  %call42.i = call i32 @strscpy(ptr noundef nonnull %chinfo.i92, ptr noundef %107, i32 noundef 32) #12
  %108 = ptrtoint ptr %src.i100 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %src.i100, align 4
  %109 = ptrtoint ptr %dst.i101 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %dst.i101, align 4
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr, align 4
  %call43.i = call i32 @rpmsg_unregister_device(ptr noundef %111, ptr noundef nonnull %chinfo.i92) #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %if.end33.i99.if.end44.i_crit_edge
  %112 = ptrtoint ptr %rpdev.i98 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %rpdev.i98, align 4
  %refcount.i102 = getelementptr inbounds %struct.glink_channel, ptr %call5.i96, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %refcount.i102) #12
  br label %qcom_glink_rx_close_ack.exit

qcom_glink_rx_close_ack.exit:                     ; preds = %if.end44.i, %do.end17.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo.i92) #12
  br label %sw.epilog

sw.bb24:                                          ; preds = %list_del.exit
  %call2.i105 = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i104) #12
  %call5.i107 = call ptr @idr_find(ptr noundef %rcids.i106, i32 noundef %conv17) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i104, i32 noundef %call2.i105) #12
  %tobool.not.i108 = icmp eq ptr %call5.i107, null
  br i1 %tobool.not.i108, label %do.end9.i, label %if.end.i109

do.end9.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv17) #15
  br label %sw.epilog

if.end.i109:                                      ; preds = %sw.bb24
  %call12.i = call fastcc ptr @qcom_glink_alloc_intent(ptr noundef nonnull %call5.i107, i32 noundef %31, i1 noundef zeroext false) #12
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end.i109.if.end16.i_crit_edge, label %if.then14.i

if.end.i109.if.end16.i_crit_edge:                 ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i.i) #12
  %113 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1280, ptr %cmd.i.i, align 2
  %lcid.i.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i107, i32 0, i32 6
  %114 = ptrtoint ptr %lcid.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lcid.i.i, align 4
  %conv.i.i110 = trunc i32 %115 to i16
  %116 = call i16 @llvm.bswap.i16(i16 %conv.i.i110) #12
  %117 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %2, align 2
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 16777216, ptr %3, align 2
  %size.i.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call12.i, i32 0, i32 2
  %119 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size.i.i, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120) #12
  %122 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %4, align 2
  %id3.i.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call12.i, i32 0, i32 1
  %123 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %id3.i.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #12
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %125, ptr %5, align 2
  %call.i.i111 = call fastcc i32 @qcom_glink_tx(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i, i32 noundef 16, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i.i) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end.i109.if.end16.i_crit_edge
  %127 = phi i32 [ 16777216, %if.then14.i ], [ 0, %if.end.i109.if.end16.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i103) #12
  %128 = ptrtoint ptr %msg.i.i103 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 2048, ptr %msg.i.i103, align 2
  %lcid.i33.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i107, i32 0, i32 6
  %129 = ptrtoint ptr %lcid.i33.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %lcid.i33.i, align 4
  %conv.i34.i = trunc i32 %130 to i16
  %131 = call i16 @llvm.bswap.i16(i16 %conv.i34.i) #12
  %132 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %6, align 2
  %133 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %127, ptr %7, align 2
  %call.i35.i = call fastcc i32 @qcom_glink_tx(ptr noundef %add.ptr, ptr noundef nonnull %msg.i.i103, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i103) #12
  br label %sw.epilog

do.end32:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv15 = zext i16 %25 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1647, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %conv15) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end32, %if.end16.i, %do.end9.i, %qcom_glink_rx_close_ack.exit, %qcom_glink_rx_close.exit, %qcom_glink_rx_open.exit, %sw.default.i79, %sw.bb.i75.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %sw.default.i, %sw.bb.sw.epilog_crit_edge
  call void @kfree(ptr noundef %14) #12
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #12
  %134 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %rx_queue, align 4
  %cmp.i.not = icmp eq ptr %135, %rx_queue
  br i1 %cmp.i.not, label %sw.epilog.if.then_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_native_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %msg = alloca %struct.glink_msg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #12
  %0 = getelementptr inbounds %struct.glink_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.glink_msg, ptr %msg, i32 0, i32 2
  %tx_avail_notify = getelementptr inbounds %struct.qcom_glink, ptr %data, i32 0, i32 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %msg, align 8
  tail call void @__wake_up(ptr noundef %tx_avail_notify, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %rx_pipe.i = getelementptr inbounds %struct.qcom_glink, ptr %data, i32 0, i32 4
  %idr_lock.i60 = getelementptr inbounds %struct.qcom_glink, ptr %data, i32 0, i32 11
  %rcids.i = getelementptr inbounds %struct.qcom_glink, ptr %data, i32 0, i32 13
  %mbox_chan = getelementptr inbounds %struct.qcom_glink, ptr %data, i32 0, i32 3
  %lcids.i = getelementptr inbounds %struct.qcom_glink, ptr %data, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  %3 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_pipe.i, align 4
  %avail.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %avail.i, align 4
  %call.i = call i32 %6(ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp = icmp ult i32 %call.i, 8
  br i1 %cmp, label %for.cond.for.end_crit_edge, label %if.end

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.cond
  %7 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_pipe.i, align 4
  %peak.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peak.i, align 4
  call void %10(ptr noundef %8, ptr noundef nonnull %msg, i32 noundef 0, i32 noundef 8) #12
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg, align 8
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %0, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv3 = zext i16 %16 to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %13, label %sw.epilog.thread [
    i16 0, label %if.end.sw.bb_crit_edge
    i16 1, label %if.end.sw.bb_crit_edge67
    i16 3, label %if.end.sw.bb_crit_edge68
    i16 11, label %if.end.sw.bb_crit_edge69
    i16 7, label %if.end.sw.bb_crit_edge70
    i16 4, label %sw.bb6
    i16 2, label %sw.bb8
    i16 9, label %if.end.sw.bb10_crit_edge
    i16 12, label %if.end.sw.bb10_crit_edge71
    i16 13, label %sw.bb12
    i16 5, label %sw.bb15
    i16 6, label %sw.bb16
    i16 14, label %sw.bb17
    i16 8, label %sw.bb18
  ]

if.end.sw.bb10_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

if.end.sw.bb_crit_edge70:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge69:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge68:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge67:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge67, %if.end.sw.bb_crit_edge68, %if.end.sw.bb_crit_edge69, %if.end.sw.bb_crit_edge70
  %call5 = call fastcc i32 @qcom_glink_rx_defer(ptr noundef %data, i32 noundef 0)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @_raw_spin_lock(ptr noundef %idr_lock.i60) #12
  %call.i52 = call ptr @idr_find(ptr noundef %lcids.i, i32 noundef %conv3) #12
  call void @_raw_spin_unlock(ptr noundef %idr_lock.i60) #12
  %tobool.not.i = icmp eq ptr %call.i52, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.55) #15
  br label %qcom_glink_rx_open_ack.exit

if.end.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %open_ack.i = getelementptr inbounds %struct.glink_channel, ptr %call.i52, i32 0, i32 16
  call void @complete_all(ptr noundef %open_ack.i) #12
  br label %qcom_glink_rx_open_ack.exit

qcom_glink_rx_open_ack.exit:                      ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %do.end.i ]
  %23 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %advance.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %advance.i, align 4
  call void %26(ptr noundef %24, i32 noundef 8) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = call fastcc i32 @qcom_glink_rx_defer(ptr noundef %data, i32 noundef %19)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge71
  %call11 = call fastcc i32 @qcom_glink_rx_data(ptr noundef %data, i32 noundef %call.i)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i55 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %advance.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %advance.i55, align 4
  call void %30(ptr noundef %28, i32 noundef 8) #12
  %31 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mbox_chan, align 4
  %call13 = call i32 @mbox_send_message(ptr noundef %32, ptr noundef null) #12
  %33 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %34, i32 noundef 0) #12
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qcom_glink_handle_intent(ptr noundef %data, i32 noundef %conv3, i32 noundef %19, i32 noundef %call.i)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qcom_glink_handle_rx_done(ptr noundef %data, i32 noundef %conv3, i32 noundef %19, i1 noundef zeroext false)
  %35 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i57 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %advance.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %advance.i57, align 4
  call void %38(ptr noundef %36, i32 noundef 8) #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @qcom_glink_handle_rx_done(ptr noundef %data, i32 noundef %conv3, i32 noundef %19, i1 noundef zeroext true)
  %39 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i59 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %advance.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %advance.i59, align 4
  call void %42(ptr noundef %40, i32 noundef 8) #12
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock.i60) #12
  %call5.i = call ptr @idr_find(ptr noundef %rcids.i, i32 noundef %conv3) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock.i60, i32 noundef %call2.i) #12
  %tobool.not.i61 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i61, label %do.end9.i, label %if.end.i62

do.end9.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.75) #15
  br label %qcom_glink_handle_intent_req_ack.exit

if.end.i62:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool = icmp ne i32 %18, 0
  %frombool.i = zext i1 %tobool to i8
  %intent_req_result.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i, i32 0, i32 19
  %45 = ptrtoint ptr %intent_req_result.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool.i, ptr %intent_req_result.i, align 4
  %intent_req_comp.i = getelementptr inbounds %struct.glink_channel, ptr %call5.i, i32 0, i32 20
  call void @complete(ptr noundef %intent_req_comp.i) #12
  br label %qcom_glink_handle_intent_req_ack.exit

qcom_glink_handle_intent_req_ack.exit:            ; preds = %if.end.i62, %do.end9.i
  %46 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i64 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %advance.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %advance.i64, align 4
  call void %49(ptr noundef %47, i32 noundef 8) #12
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %13 to i32
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.50, i32 noundef %conv) #15
  br label %for.end

sw.epilog:                                        ; preds = %qcom_glink_handle_intent_req_ack.exit, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb12, %sw.bb10, %sw.bb8, %qcom_glink_rx_open_ack.exit, %sw.bb
  %ret.1 = phi i32 [ 0, %qcom_glink_handle_intent_req_ack.exit ], [ 0, %sw.bb17 ], [ 0, %sw.bb16 ], [ 0, %sw.bb15 ], [ 0, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %retval.0.i, %qcom_glink_rx_open_ack.exit ], [ %call5, %sw.bb ]
  %tobool19.not = icmp eq i32 %ret.1, 0
  br i1 %tobool19.not, label %sw.epilog.for.cond_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %sw.epilog.thread, %for.cond.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #12
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_glink_native_remove(ptr noundef %glink) #0 align 64 {
entry:
  %cid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #12
  %irq = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #12
  %rx_work.i = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_work.i) #12
  %rx_queue.i = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 9
  %2 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_queue.i, align 4
  %cmp.not18.i = icmp eq ptr %3, %rx_queue.i
  br i1 %cmp.not18.i, label %entry.qcom_glink_cancel_rx_work.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.qcom_glink_cancel_rx_work.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_cancel_rx_work.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dcmd.019.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dcmd.019.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %dcmd.019.i, align 4
  tail call void @kfree(ptr noundef %dcmd.019.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %rx_queue.i
  br i1 %cmp.not.i, label %for.body.i.qcom_glink_cancel_rx_work.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.qcom_glink_cancel_rx_work.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_cancel_rx_work.exit

qcom_glink_cancel_rx_work.exit:                   ; preds = %for.body.i.qcom_glink_cancel_rx_work.exit_crit_edge, %entry.qcom_glink_cancel_rx_work.exit_crit_edge
  %5 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %glink, align 4
  %call = tail call i32 @device_for_each_child(ptr noundef %6, ptr noundef null, ptr noundef nonnull @qcom_glink_remove_device) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %qcom_glink_cancel_rx_work.exit.if.end_crit_edge, label %do.end

qcom_glink_cancel_rx_work.exit.if.end_crit_edge:  ; preds = %qcom_glink_cancel_rx_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %qcom_glink_cancel_rx_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %qcom_glink_cancel_rx_work.exit.if.end_crit_edge
  %lcids = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 12
  %9 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cid, align 4
  %call226 = call ptr @idr_get_next(ptr noundef %lcids, ptr noundef nonnull %cid) #12
  %cmp.not27 = icmp eq ptr %call226, null
  br i1 %cmp.not27, label %if.end.for.cond4.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond4.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %if.end.for.cond4.preheader_crit_edge
  %rcids = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 13
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cid, align 4
  %call529 = call ptr @idr_get_next(ptr noundef %rcids, ptr noundef nonnull %cid) #12
  %cmp6.not30 = icmp eq ptr %call529, null
  br i1 %cmp6.not30, label %for.cond4.preheader.for.end12_crit_edge, label %for.cond4.preheader.for.body7_crit_edge

for.cond4.preheader.for.body7_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body7

for.cond4.preheader.for.end12_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %call228 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call226, %if.end.for.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.glink_channel, ptr %call228, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %refcount)
  %11 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cid, align 4
  %add = add i32 %12, 1
  store i32 %add, ptr %cid, align 4
  %call2 = call ptr @idr_get_next(ptr noundef %lcids, ptr noundef nonnull %cid) #12
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.body.for.cond4.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond4.preheader

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond4.preheader.for.body7_crit_edge
  %call531 = phi ptr [ %call5, %for.body7.for.body7_crit_edge ], [ %call529, %for.cond4.preheader.for.body7_crit_edge ]
  %refcount8 = getelementptr inbounds %struct.glink_channel, ptr %call531, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %refcount8)
  %13 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cid, align 4
  %add11 = add i32 %14, 1
  store i32 %add11, ptr %cid, align 4
  %call5 = call ptr @idr_get_next(ptr noundef %rcids, ptr noundef nonnull %cid) #12
  %cmp6.not = icmp eq ptr %call5, null
  br i1 %cmp6.not, label %for.body7.for.end12_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.body7.for.end12_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end12

for.end12:                                        ; preds = %for.body7.for.end12_crit_edge, %for.cond4.preheader.for.end12_crit_edge
  call void @idr_destroy(ptr noundef %lcids) #12
  call void @idr_destroy(ptr noundef %rcids) #12
  %mbox_chan = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 3
  %15 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_free_channel(ptr noundef %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_remove_device(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  %iid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !186

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iid.i) #12
  %intent_work.i = getelementptr i8, ptr %kref, i32 224
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %intent_work.i) #12
  %intent_lock.i = getelementptr i8, ptr %kref, i32 60
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock.i) #12
  %done_intents.i = getelementptr i8, ptr %kref, i32 268
  %1 = ptrtoint ptr %done_intents.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %done_intents.i, align 4
  %cmp17.not65.i = icmp eq ptr %2, %done_intents.i
  br i1 %cmp17.not65.i, label %if.then.for.cond24.preheader.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.cond24.preheader.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %for.inc.i.for.cond24.preheader.i_crit_edge, %if.then.for.cond24.preheader.i_crit_edge
  %liids.i = getelementptr i8, ptr %kref, i32 104
  %3 = ptrtoint ptr %iid.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %iid.i, align 4
  %call2569.i = call ptr @idr_get_next(ptr noundef %liids.i, ptr noundef nonnull %iid.i) #12
  %cmp26.not70.i = icmp eq ptr %call2569.i, null
  br i1 %cmp26.not70.i, label %for.cond24.preheader.i.for.end31.i_crit_edge, label %for.cond24.preheader.i.for.body28.i_crit_edge

for.cond24.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond24.preheader.i
  br label %for.body28.i

for.cond24.preheader.i.for.end31.i_crit_edge:     ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in66.i = phi ptr [ %.pn68.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in66.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn68.i = load ptr, ptr %.pn.in66.i, align 4
  %reuse.i = getelementptr i8, ptr %.pn.in66.i, i32 -8
  %5 = ptrtoint ptr %reuse.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reuse.i, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %intent.067.i = getelementptr i8, ptr %.pn.in66.i, i32 -20
  %7 = ptrtoint ptr %intent.067.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intent.067.i, align 4
  tail call void @kfree(ptr noundef %8) #12
  tail call void @kfree(ptr noundef %intent.067.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp17.not.i = icmp eq ptr %.pn68.i, %done_intents.i
  br i1 %cmp17.not.i, label %for.inc.i.for.cond24.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.cond24.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond24.preheader.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.cond24.preheader.i.for.body28.i_crit_edge
  %call2571.i = phi ptr [ %call25.i, %for.body28.i.for.body28.i_crit_edge ], [ %call2569.i, %for.cond24.preheader.i.for.body28.i_crit_edge ]
  %9 = ptrtoint ptr %call2571.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call2571.i, align 4
  call void @kfree(ptr noundef %10) #12
  call void @kfree(ptr noundef nonnull %call2571.i) #12
  %11 = ptrtoint ptr %iid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iid.i, align 4
  %add.i = add i32 %12, 1
  store i32 %add.i, ptr %iid.i, align 4
  %call25.i = call ptr @idr_get_next(ptr noundef %liids.i, ptr noundef nonnull %iid.i) #12
  %cmp26.not.i = icmp eq ptr %call25.i, null
  br i1 %cmp26.not.i, label %for.body28.i.for.end31.i_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

for.body28.i.for.end31.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.end31.i:                                      ; preds = %for.body28.i.for.end31.i_crit_edge, %for.cond24.preheader.i.for.end31.i_crit_edge
  call void @idr_destroy(ptr noundef %liids.i) #12
  %riids.i = getelementptr i8, ptr %kref, i32 164
  %13 = ptrtoint ptr %iid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iid.i, align 4
  %call3472.i = call ptr @idr_get_next(ptr noundef %riids.i, ptr noundef nonnull %iid.i) #12
  %cmp35.not73.i = icmp eq ptr %call3472.i, null
  br i1 %cmp35.not73.i, label %for.end31.i.qcom_glink_channel_release.exit_crit_edge, label %for.end31.i.for.body37.i_crit_edge

for.end31.i.for.body37.i_crit_edge:               ; preds = %for.end31.i
  br label %for.body37.i

for.end31.i.qcom_glink_channel_release.exit_crit_edge: ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_channel_release.exit

for.body37.i:                                     ; preds = %for.body37.i.for.body37.i_crit_edge, %for.end31.i.for.body37.i_crit_edge
  %call3474.i = phi ptr [ %call34.i, %for.body37.i.for.body37.i_crit_edge ], [ %call3472.i, %for.end31.i.for.body37.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call3474.i) #12
  %14 = ptrtoint ptr %iid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iid.i, align 4
  %add39.i = add i32 %15, 1
  store i32 %add39.i, ptr %iid.i, align 4
  %call34.i = call ptr @idr_get_next(ptr noundef %riids.i, ptr noundef nonnull %iid.i) #12
  %cmp35.not.i = icmp eq ptr %call34.i, null
  br i1 %cmp35.not.i, label %for.body37.i.qcom_glink_channel_release.exit_crit_edge, label %for.body37.i.for.body37.i_crit_edge

for.body37.i.for.body37.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37.i

for.body37.i.qcom_glink_channel_release.exit_crit_edge: ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_channel_release.exit

qcom_glink_channel_release.exit:                  ; preds = %for.body37.i.qcom_glink_channel_release.exit_crit_edge, %for.end31.i.qcom_glink_channel_release.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -124
  call void @idr_destroy(ptr noundef %riids.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock.i, i32 noundef %call5.i) #12
  %name.i = getelementptr i8, ptr %kref, i32 48
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  call void @kfree(ptr noundef %17) #12
  call void @kfree(ptr noundef %add.ptr.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iid.i) #12
  br label %return

return:                                           ; preds = %qcom_glink_channel_release.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_glink_native_unregister(ptr nocapture noundef readonly %glink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glink, align 4
  tail call void @device_unregister(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_glink_tx(ptr noundef %glink, ptr noundef %hdr, i32 noundef %hlen, ptr noundef %data, i32 noundef %dlen, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.glink_msg, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %dlen, %hlen
  %tx_pipe = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 5
  %0 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_pipe, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp.not = icmp ult i32 %add, %3
  br i1 %cmp.not, label %do.body1, label %entry.cleanup89_crit_edge

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

do.body1:                                         ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #12
  %4 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_pipe, align 4
  %avail.i146 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %avail.i146 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %avail.i146, align 4
  %call.i147 = call i32 %7(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i147, i32 %add)
  %cmp7148 = icmp ult i32 %call.i147, %add
  br i1 %cmp7148, label %while.body.lr.ph, label %do.body1.while.end_crit_edge

do.body1.while.end_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body1
  %sent_read_notify = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 17
  %8 = getelementptr inbounds %struct.glink_msg, ptr %msg.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.glink_msg, ptr %msg.i, i32 0, i32 2
  %mbox_chan.i = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 3
  %tx_avail_notify = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end85.while.body_crit_edge, %while.body.lr.ph
  %flags.0149 = phi i32 [ %call3, %while.body.lr.ph ], [ %call75, %if.end85.while.body_crit_edge ]
  br i1 %wait, label %if.end10, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %while.body
  %10 = ptrtoint ptr %sent_read_notify to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sent_read_notify, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %sent_read_notify to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %sent_read_notify, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #12
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3328, ptr %msg.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %8, align 2
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %9, align 2
  %16 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_pipe, align 4
  %write.i.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 4
  call void %19(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 8, ptr noundef null, i32 noundef 0) #12
  %20 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbox_chan.i, align 4
  %call.i124 = call i32 @mbox_send_message(ptr noundef %21, ptr noundef null) #12
  %22 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox_chan.i, align 4
  call void @mbox_client_txdone(ptr noundef %23, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0149) #12
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 351) #12
  %24 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_pipe, align 4
  %avail.i126 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %avail.i126 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %avail.i126, align 4
  %call.i127 = call i32 %27(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i127, i32 %add)
  %cmp23.not = icmp ult i32 %call.i127, %add
  br i1 %cmp23.not, label %if.then36, label %if.end14.if.end64_crit_edge

if.end14.if.end64_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then36:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %28 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call38140 = call i32 @prepare_to_wait_event(ptr noundef %tx_avail_notify, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %29 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_pipe, align 4
  %avail.i129141 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %avail.i129141 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %avail.i129141, align 4
  %call.i130142 = call i32 %32(ptr noundef %30) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i130142, i32 %add)
  %cmp41.not143.not = icmp ult i32 %call.i130142, %add
  br i1 %cmp41.not143.not, label %if.then36.cleanup_crit_edge, label %if.then36.for.end_crit_edge

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  %__ret37.1145 = phi i32 [ %__ret37.1, %cleanup.cleanup_crit_edge ], [ 1000, %if.then36.cleanup_crit_edge ]
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret37.1145) #12
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %tx_avail_notify, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %33 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_pipe, align 4
  %avail.i129 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %avail.i129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %avail.i129, align 4
  %call.i130 = call i32 %36(ptr noundef %34) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i130, i32 %add)
  %cmp41.not = icmp ult i32 %call.i130, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool47.not = icmp eq i32 %call61, 0
  %spec.store.select92 = select i1 %tobool47.not, i32 1, i32 %call61
  %__ret37.1 = select i1 %cmp41.not, i32 %call61, i32 %spec.store.select92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1)
  %tobool54.not = icmp eq i32 %__ret37.1, 0
  %not.cmp41.not = xor i1 %cmp41.not, true
  %37 = select i1 %not.cmp41.not, i1 true, i1 %tobool54.not
  br i1 %37, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then36.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_avail_notify, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end64

if.end64:                                         ; preds = %for.end, %if.end14.if.end64_crit_edge
  %call75 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #12
  %38 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_pipe, align 4
  %avail.i132 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %avail.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %avail.i132, align 4
  %call.i133 = call i32 %41(ptr noundef %39) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i133, i32 %add)
  %cmp81.not = icmp ult i32 %call.i133, %add
  br i1 %cmp81.not, label %if.end64.if.end85_crit_edge, label %if.then83

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then83:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %sent_read_notify to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %sent_read_notify, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end64.if.end85_crit_edge
  %43 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_pipe, align 4
  %avail.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %avail.i, align 4
  %call.i = call i32 %46(ptr noundef %44) #12
  %cmp7 = icmp ult i32 %call.i, %add
  br i1 %cmp7, label %if.end85.while.body_crit_edge, label %if.end85.while.end_crit_edge

if.end85.while.end_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end85.while.body_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end85.while.end_crit_edge, %do.body1.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %do.body1.while.end_crit_edge ], [ %call75, %if.end85.while.end_crit_edge ]
  %47 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_pipe, align 4
  %write.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i, align 4
  call void %50(ptr noundef %48, ptr noundef %hdr, i32 noundef %hlen, ptr noundef %data, i32 noundef %dlen) #12
  %mbox_chan = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 3
  %51 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mbox_chan, align 4
  %call86 = call i32 @mbox_send_message(ptr noundef %52, ptr noundef null) #12
  %53 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %54, i32 noundef 0) #12
  br label %out

out:                                              ; preds = %while.end, %while.body.out_crit_edge
  %flags.0139 = phi i32 [ %flags.0.lcssa, %while.end ], [ %call3, %while.body.out_crit_edge ]
  %ret.0 = phi i32 [ 0, %while.end ], [ -11, %while.body.out_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0139) #12
  br label %cleanup89

cleanup89:                                        ; preds = %out, %entry.cleanup89_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup89_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qcom_glink_alloc_channel(ptr noundef %glink, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 676) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %recv_lock = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %recv_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @qcom_glink_alloc_channel.__key, i16 noundef signext 3) #12
  %intent_lock = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %intent_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @qcom_glink_alloc_channel.__key.32, i16 noundef signext 3) #12
  %intent_req_lock = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %intent_req_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @qcom_glink_alloc_channel.__key.34) #12
  %glink10 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %glink10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %glink, ptr %glink10, align 8
  %call11 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #12
  %name12 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %name12, align 4
  %open_req = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 17
  %3 = ptrtoint ptr %open_req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %open_req, align 4
  %wait.i = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #12
  %open_ack = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %open_ack to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %open_ack, align 4
  %wait.i39 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i39, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #12
  %intent_req_comp = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 20
  %5 = ptrtoint ptr %intent_req_comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %intent_req_comp, align 4
  %wait.i40 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i40, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #12
  %done_intents = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %done_intents to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %done_intents, ptr %done_intents, align 8
  %prev.i = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %done_intents, ptr %prev.i, align 4
  %intent_work = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %intent_work, i32 noundef 0) #12
  %8 = ptrtoint ptr %intent_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %intent_work, align 4
  %lockdep_map = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @qcom_glink_alloc_channel.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry17 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i41 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry17, ptr %prev.i41, align 4
  %func = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @qcom_glink_rx_done_work, ptr %func, align 8
  %liids = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %liids, ptr noundef nonnull @.str.47, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %12 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108868, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 2
  %13 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idr_next.i.i, align 4
  %riids = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %riids, ptr noundef nonnull @.str.47, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i42 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %16 = ptrtoint ptr %xa_flags.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108868, ptr %xa_flags.i.i.i42, align 4
  %xa_head.i.i.i43 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 2
  %17 = ptrtoint ptr %xa_head.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %xa_head.i.i.i43, align 8
  %idr_base.i.i44 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %idr_base.i.i44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_base.i.i44, align 4
  %idr_next.i.i45 = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %idr_next.i.i45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %idr_next.i.i45, align 8
  %refcount = getelementptr inbounds %struct.glink_channel, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_glink_rpdev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_glink_rx_done_work(ptr noundef %work) #0 align 64 {
entry:
  %cmd = alloca %struct.anon.68, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %glink1 = getelementptr i8, ptr %work, i32 -228
  %0 = ptrtoint ptr %glink1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glink1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #12
  %2 = getelementptr inbounds %struct.anon.68, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.68, ptr %cmd, i32 0, i32 2
  %lcid = getelementptr i8, ptr %work, i32 -172
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %cmd, align 8
  %5 = ptrtoint ptr %lcid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lcid, align 4
  %intent_lock = getelementptr i8, ptr %work, i32 -164
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %done_intents = getelementptr i8, ptr %work, i32 44
  %7 = ptrtoint ptr %done_intents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %done_intents, align 4
  %cmp17.not69 = icmp eq ptr %8, %done_intents
  br i1 %cmp17.not69, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv26 = trunc i32 %6 to i16
  br label %for.body

for.body:                                         ; preds = %do.body31.for.body_crit_edge, %for.body.lr.ph
  %.pn.in71 = phi ptr [ %8, %for.body.lr.ph ], [ %.pn74, %do.body31.for.body_crit_edge ]
  %flags.070 = phi i32 [ %call5, %for.body.lr.ph ], [ %call39, %do.body31.for.body_crit_edge ]
  %intent.073 = getelementptr i8, ptr %.pn.in71, i32 -20
  %9 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn74 = load ptr, ptr %.pn.in71, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in71) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in71, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in71, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %flags.070) #12
  %id = getelementptr i8, ptr %.pn.in71, i32 -16
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %reuse21 = getelementptr i8, ptr %.pn.in71, i32 -8
  %20 = ptrtoint ptr %reuse21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reuse21, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %conv24 = select i1 %tobool.not, i16 6, i16 14
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv24, ptr %cmd, align 8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv26, ptr %2, align 2
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %3, align 4
  %call28 = call fastcc i32 @qcom_glink_tx(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true)
  br i1 %tobool.not, label %if.then, label %list_del.exit.do.body31_crit_edge

list_del.exit.do.body31_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %intent.073 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intent.073, align 4
  call void @kfree(ptr noundef %26) #12
  call void @kfree(ptr noundef %intent.073) #12
  br label %do.body31

do.body31:                                        ; preds = %if.then, %list_del.exit.do.body31_crit_edge
  %call39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %cmp17.not = icmp eq ptr %.pn74, %done_intents
  br i1 %cmp17.not, label %do.body31.for.end_crit_edge, label %do.body31.for.body_crit_edge

do.body31.for.body_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body31.for.end_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.body31.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call5, %entry.for.end_crit_edge ], [ %call39, %do.body31.for.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %flags.0.lcssa) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_glink_create_ept(ptr noundef %rpdev, ptr noundef %cb, ptr noundef %priv, [10 x i32] %chinfo.coerce) #0 align 64 {
entry:
  %req.i.i = alloca %struct.glink_msg, align 2
  %msg.i.i51 = alloca %struct.glink_msg, align 2
  %msg.i.i = alloca %struct.glink_msg, align 2
  %chinfo = alloca %struct.rpmsg_channel_info, align 4
  %cid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chinfo.coerce.fca.0.extract = extractvalue [10 x i32] %chinfo.coerce, 0
  %0 = ptrtoint ptr %chinfo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %chinfo.coerce.fca.0.extract, ptr %chinfo, align 4
  %chinfo.coerce.fca.1.extract = extractvalue [10 x i32] %chinfo.coerce, 1
  %chinfo.coerce.fca.1.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 1
  %1 = ptrtoint ptr %chinfo.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %chinfo.coerce.fca.1.extract, ptr %chinfo.coerce.fca.1.gep, align 4
  %chinfo.coerce.fca.2.extract = extractvalue [10 x i32] %chinfo.coerce, 2
  %chinfo.coerce.fca.2.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 2
  %2 = ptrtoint ptr %chinfo.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %chinfo.coerce.fca.2.extract, ptr %chinfo.coerce.fca.2.gep, align 4
  %chinfo.coerce.fca.3.extract = extractvalue [10 x i32] %chinfo.coerce, 3
  %chinfo.coerce.fca.3.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 3
  %3 = ptrtoint ptr %chinfo.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %chinfo.coerce.fca.3.extract, ptr %chinfo.coerce.fca.3.gep, align 4
  %chinfo.coerce.fca.4.extract = extractvalue [10 x i32] %chinfo.coerce, 4
  %chinfo.coerce.fca.4.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 4
  %4 = ptrtoint ptr %chinfo.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %chinfo.coerce.fca.4.extract, ptr %chinfo.coerce.fca.4.gep, align 4
  %chinfo.coerce.fca.5.extract = extractvalue [10 x i32] %chinfo.coerce, 5
  %chinfo.coerce.fca.5.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 5
  %5 = ptrtoint ptr %chinfo.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %chinfo.coerce.fca.5.extract, ptr %chinfo.coerce.fca.5.gep, align 4
  %chinfo.coerce.fca.6.extract = extractvalue [10 x i32] %chinfo.coerce, 6
  %chinfo.coerce.fca.6.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 6
  %6 = ptrtoint ptr %chinfo.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %chinfo.coerce.fca.6.extract, ptr %chinfo.coerce.fca.6.gep, align 4
  %chinfo.coerce.fca.7.extract = extractvalue [10 x i32] %chinfo.coerce, 7
  %chinfo.coerce.fca.7.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 7
  %7 = ptrtoint ptr %chinfo.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %chinfo.coerce.fca.7.extract, ptr %chinfo.coerce.fca.7.gep, align 4
  %chinfo.coerce.fca.8.extract = extractvalue [10 x i32] %chinfo.coerce, 8
  %chinfo.coerce.fca.8.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 8
  %8 = ptrtoint ptr %chinfo.coerce.fca.8.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %chinfo.coerce.fca.8.extract, ptr %chinfo.coerce.fca.8.gep, align 4
  %chinfo.coerce.fca.9.extract = extractvalue [10 x i32] %chinfo.coerce, 9
  %chinfo.coerce.fca.9.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 9
  %9 = ptrtoint ptr %chinfo.coerce.fca.9.gep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %chinfo.coerce.fca.9.extract, ptr %chinfo.coerce.fca.9.gep, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %10 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ept, align 8
  %glink1 = getelementptr inbounds %struct.glink_channel, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %glink1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %glink1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #12
  %idr_lock = getelementptr inbounds %struct.qcom_glink, ptr %13, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %rcids = getelementptr inbounds %struct.qcom_glink, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cid, align 4
  %call966 = call ptr @idr_get_next(ptr noundef %rcids, ptr noundef nonnull %cid) #12
  %cmp10.not67 = icmp eq ptr %call966, null
  br i1 %cmp10.not67, label %entry.if.then16.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then16.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %call968 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call966, %entry.for.body_crit_edge ]
  %name12 = getelementptr inbounds %struct.glink_channel, ptr %call968, i32 0, i32 5
  %15 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name12, align 4
  %call13 = call i32 @strcmp(ptr noundef %16, ptr noundef nonnull %chinfo) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.else.critedge, label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cid, align 4
  %add = add i32 %18, 1
  store i32 %add, ptr %cid, align 4
  %call9 = call ptr @idr_get_next(ptr noundef %rcids, ptr noundef nonnull %cid) #12
  %cmp10.not = icmp eq ptr %call9, null
  br i1 %cmp10.not, label %for.inc.if.then16.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then16.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.critedge

if.then16.critedge:                               ; preds = %for.inc.if.then16.critedge_crit_edge, %entry.if.then16.critedge_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call6) #12
  %call.i = call fastcc ptr @qcom_glink_alloc_channel(ptr noundef %13, ptr noundef nonnull %chinfo) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then16.critedge.cleanup_crit_edge, label %if.end.i

if.then16.critedge.cleanup_crit_edge:             ; preds = %if.then16.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then16.critedge
  %call3.i = call fastcc i32 @qcom_glink_send_open_req(ptr noundef %13, ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.qcom_glink_create_local.exit.thread_crit_edge

if.end.i.qcom_glink_create_local.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_create_local.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %open_ack.i = getelementptr inbounds %struct.glink_channel, ptr %call.i, i32 0, i32 16
  %call6.i = call i32 @wait_for_completion_timeout(ptr noundef %open_ack.i, i32 noundef 500) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.do.body14.i_crit_edge, label %if.end9.i

if.end5.i.do.body14.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i

if.end9.i:                                        ; preds = %if.end5.i
  %open_req.i = getelementptr inbounds %struct.glink_channel, ptr %call.i, i32 0, i32 17
  %call10.i = call i32 @wait_for_completion_timeout(ptr noundef %open_req.i, i32 noundef 500) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.do.body14.i_crit_edge, label %qcom_glink_create_local.exit

if.end9.i.do.body14.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i

do.body14.i:                                      ; preds = %if.end9.i.do.body14.i_crit_edge, %if.end5.i.do.body14.i_crit_edge
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %lcids.i = getelementptr inbounds %struct.qcom_glink, ptr %13, i32 0, i32 12
  %lcid.i = getelementptr inbounds %struct.glink_channel, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %lcid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lcid.i, align 4
  %call19.i = call ptr @idr_remove(ptr noundef %lcids.i, i32 noundef %20) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call16.i) #12
  br label %qcom_glink_create_local.exit.thread

qcom_glink_create_local.exit.thread:              ; preds = %do.body14.i, %if.end.i.qcom_glink_create_local.exit.thread_crit_edge
  %refcount.i = getelementptr inbounds %struct.glink_channel, ptr %call.i, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %refcount.i) #12
  call fastcc void @kref_put(ptr noundef %refcount.i) #12
  br label %cleanup

qcom_glink_create_local.exit:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i) #12
  %21 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1024, ptr %msg.i.i, align 2
  %rcid.i.i = getelementptr inbounds %struct.glink_channel, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %rcid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rcid.i.i, align 4
  %conv.i.i = trunc i32 %25 to i16
  %26 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %21, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %22, align 2
  %call.i.i = call fastcc i32 @qcom_glink_tx(ptr noundef %13, ptr noundef nonnull %msg.i.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i) #12
  br label %if.end25

if.else.critedge:                                 ; preds = %for.body
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i.i51) #12
  %29 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i51, i32 0, i32 1
  %30 = getelementptr inbounds %struct.glink_msg, ptr %msg.i.i51, i32 0, i32 2
  %31 = ptrtoint ptr %msg.i.i51 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1024, ptr %msg.i.i51, align 2
  %rcid.i.i52 = getelementptr inbounds %struct.glink_channel, ptr %call968, i32 0, i32 7
  %32 = ptrtoint ptr %rcid.i.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rcid.i.i52, align 4
  %conv.i.i53 = trunc i32 %33 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv.i.i53) #12
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %29, align 2
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %30, align 2
  %call.i.i54 = call fastcc i32 @qcom_glink_tx(ptr noundef %13, ptr noundef nonnull %msg.i.i51, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i.i51) #12
  %call.i55 = call fastcc i32 @qcom_glink_send_open_req(ptr noundef %13, ptr noundef nonnull %call968) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i58, label %if.else.critedge.qcom_glink_create_remote.exit_crit_edge

if.else.critedge.qcom_glink_create_remote.exit_crit_edge: ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_create_remote.exit

if.end.i58:                                       ; preds = %if.else.critedge
  %open_ack.i57 = getelementptr inbounds %struct.glink_channel, ptr %call968, i32 0, i32 16
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %open_ack.i57, i32 noundef 500) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i58.qcom_glink_create_remote.exit_crit_edge, label %if.end.i58.if.end25_crit_edge

if.end.i58.if.end25_crit_edge:                    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end.i58.qcom_glink_create_remote.exit_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_create_remote.exit

qcom_glink_create_remote.exit:                    ; preds = %if.end.i58.qcom_glink_create_remote.exit_crit_edge, %if.else.critedge.qcom_glink_create_remote.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i.i) #12
  %37 = getelementptr inbounds %struct.glink_msg, ptr %req.i.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.glink_msg, ptr %req.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 768, ptr %req.i.i, align 2
  %lcid.i.i = getelementptr inbounds %struct.glink_channel, ptr %call968, i32 0, i32 6
  %40 = ptrtoint ptr %lcid.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lcid.i.i, align 4
  %conv.i12.i = trunc i32 %41 to i16
  %42 = call i16 @llvm.bswap.i16(i16 %conv.i12.i) #12
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %37, align 2
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %38, align 2
  %call.i13.i = call fastcc i32 @qcom_glink_tx(ptr noundef %13, ptr noundef nonnull %req.i.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i.i) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end.i58.if.end25_crit_edge, %qcom_glink_create_local.exit
  %channel.0 = phi ptr [ %call.i, %qcom_glink_create_local.exit ], [ %call968, %if.end.i58.if.end25_crit_edge ]
  %45 = ptrtoint ptr %channel.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rpdev, ptr %channel.0, align 4
  %cb28 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %channel.0, i32 0, i32 2
  %46 = ptrtoint ptr %cb28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cb, ptr %cb28, align 4
  %priv29 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %channel.0, i32 0, i32 5
  %47 = ptrtoint ptr %priv29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %priv, ptr %priv29, align 4
  %ops = getelementptr inbounds %struct.rpmsg_endpoint, ptr %channel.0, i32 0, i32 6
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @glink_endpoint_ops, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %qcom_glink_create_remote.exit, %qcom_glink_create_local.exit.thread, %if.then16.critedge.cleanup_crit_edge
  %retval.0 = phi ptr [ %channel.0, %if.end25 ], [ null, %qcom_glink_create_remote.exit ], [ null, %qcom_glink_create_local.exit.thread ], [ null, %if.then16.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_announce_create(ptr nocapture noundef readonly %rpdev) #0 align 64 {
entry:
  %cmd.i = alloca %struct.command, align 2
  %defaults = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %glink1 = getelementptr inbounds %struct.glink_channel, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %glink1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %glink1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %defaults) #12
  %6 = ptrtoint ptr %defaults to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4398046511109, ptr %defaults, align 8
  %intentless = getelementptr inbounds %struct.qcom_glink, ptr %5, i32 0, i32 15
  %7 = ptrtoint ptr %intentless to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %intentless, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %open_ack = getelementptr inbounds %struct.glink_channel, ptr %1, i32 0, i32 16
  %call = tail call zeroext i1 @completion_done(ptr noundef %open_ack) #12
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef null) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.while.body.lr.ph_crit_edge, label %if.end6

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

if.end6:                                          ; preds = %if.end
  %value = getelementptr inbounds %struct.property, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value, align 4
  %length = getelementptr inbounds %struct.property, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %div541 = lshr i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %tobool7.not46 = icmp ult i32 %12, 8
  br i1 %tobool7.not46, label %if.end6.cleanup_crit_edge, label %if.end6.while.body.lr.ph_crit_edge

if.end6.while.body.lr.ph_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end6.while.body.lr.ph_crit_edge, %if.end.while.body.lr.ph_crit_edge
  %val.053 = phi ptr [ %10, %if.end6.while.body.lr.ph_crit_edge ], [ %defaults, %if.end.while.body.lr.ph_crit_edge ]
  %num_groups.052 = phi i32 [ %div541, %if.end6.while.body.lr.ph_crit_edge ], [ 1, %if.end.while.body.lr.ph_crit_edge ]
  %13 = getelementptr inbounds %struct.command, ptr %cmd.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.command, ptr %cmd.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.command, ptr %cmd.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.command, ptr %cmd.i, i32 0, i32 4
  %lcid.i = getelementptr inbounds %struct.glink_channel, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %dec48.in = phi i32 [ %num_groups.052, %while.body.lr.ph ], [ %dec48, %while.end.while.body_crit_edge ]
  %val.147 = phi ptr [ %val.053, %while.body.lr.ph ], [ %incdec.ptr9, %while.end.while.body_crit_edge ]
  %dec48 = add nsw i32 %dec48.in, -1
  %incdec.ptr = getelementptr i32, ptr %val.147, i32 1
  %17 = ptrtoint ptr %val.147 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.147, align 4
  %incdec.ptr9 = getelementptr i32, ptr %val.147, i32 2
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not43 = icmp eq i32 %20, 0
  br i1 %tobool13.not43, label %while.body.while.end_crit_edge, label %while.body.while.body14_crit_edge

while.body.while.body14_crit_edge:                ; preds = %while.body
  br label %while.body14

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body14:                                     ; preds = %if.end18.while.body14_crit_edge, %while.body.while.body14_crit_edge
  %dec1244.in = phi i32 [ %dec1244, %if.end18.while.body14_crit_edge ], [ %20, %while.body.while.body14_crit_edge ]
  %call15 = call fastcc ptr @qcom_glink_alloc_intent(ptr noundef %1, i32 noundef %18, i1 noundef zeroext true)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %while.body14.while.end_crit_edge, label %if.end18

while.body14.while.end_crit_edge:                 ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end18:                                         ; preds = %while.body14
  %dec1244 = add i32 %dec1244.in, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #12
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1280, ptr %cmd.i, align 2
  %22 = ptrtoint ptr %lcid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lcid.i, align 4
  %conv.i = trunc i32 %23 to i16
  %24 = call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %13, align 2
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 16777216, ptr %14, align 2
  %size.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call15, i32 0, i32 2
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #12
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %15, align 2
  %id3.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call15, i32 0, i32 1
  %31 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id3.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #12
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %16, align 2
  %call.i = call fastcc i32 @qcom_glink_tx(ptr noundef %5, ptr noundef nonnull %cmd.i, i32 noundef 16, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #12
  %tobool13.not = icmp eq i32 %dec1244, 0
  br i1 %tobool13.not, label %if.end18.while.end_crit_edge, label %if.end18.while.body14_crit_edge

if.end18.while.body14_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body14

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %while.body14.while.end_crit_edge, %while.body.while.end_crit_edge
  %tobool7.not = icmp eq i32 %dec48, 0
  br i1 %tobool7.not, label %while.end.cleanup_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %defaults) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_glink_send_open_req(ptr noundef %glink, ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.anon.69, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %req) #12
  %0 = getelementptr inbounds i8, ptr %req, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %name = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #18
  %refcount = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !189
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !183

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %idr_lock = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %lcids = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 12
  %call8 = tail call i32 @idr_alloc_cyclic(ptr noundef %lcids, ptr noundef %channel, i32 noundef 1, i32 noundef 65536, i32 noundef 2592) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  br i1 %cmp10, label %kref_get.exit.cleanup_crit_edge, label %if.end

kref_get.exit.cleanup_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kref_get.exit
  %add2 = add i32 %call, 16
  %and = and i32 %add2, -8
  %add = add i32 %call, 1
  %lcid = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 6
  %6 = ptrtoint ptr %lcid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call8, ptr %lcid, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 512, ptr %req, align 2
  %conv13 = trunc i32 %call8 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %param1 = getelementptr inbounds %struct.glink_msg, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %param1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %param1, align 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %add)
  %param2 = getelementptr inbounds %struct.glink_msg, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %param2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %param2, align 2
  %name16 = getelementptr inbounds %struct.anon.69, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %call18 = call ptr @strcpy(ptr noundef %name16, ptr noundef %13) #18
  %call19 = call fastcc i32 @qcom_glink_tx(ptr noundef %glink, ptr noundef nonnull %req, i32 noundef %and, ptr noundef null, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %14 = ptrtoint ptr %lcid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lcid, align 4
  %call38 = call ptr @idr_remove(ptr noundef %lcids, i32 noundef %15) #12
  %16 = ptrtoint ptr %lcid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lcid, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call31) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %if.end.cleanup_crit_edge, %kref_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.body23 ], [ %call8, %kref_get.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %req) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_glink_destroy_ept(ptr noundef %ept) #0 align 64 {
entry:
  %req.i = alloca %struct.glink_msg, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %glink1 = getelementptr inbounds %struct.glink_channel, ptr %ept, i32 0, i32 2
  %0 = ptrtoint ptr %glink1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glink1, align 4
  %recv_lock = getelementptr inbounds %struct.glink_channel, ptr %ept, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_lock) #12
  %cb = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 2
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_lock, i32 noundef %call4) #12
  %rpdev = getelementptr inbounds %struct.glink_channel, ptr %ept, i32 0, i32 1
  %3 = ptrtoint ptr %rpdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rpdev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #12
  %4 = getelementptr inbounds %struct.glink_msg, ptr %req.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.glink_msg, ptr %req.i, i32 0, i32 2
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 768, ptr %req.i, align 2
  %lcid.i = getelementptr inbounds %struct.glink_channel, ptr %ept, i32 0, i32 6
  %7 = ptrtoint ptr %lcid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lcid.i, align 4
  %conv.i = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %4, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %5, align 2
  %call.i = call fastcc i32 @qcom_glink_tx(ptr noundef %1, ptr noundef nonnull %req.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_send(ptr noundef %ept, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qcom_glink_send(ptr noundef %ept, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_sendto(ptr noundef %ept, ptr noundef %data, i32 noundef %len, i32 noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qcom_glink_send(ptr noundef %ept, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_trysend(ptr noundef %ept, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qcom_glink_send(ptr noundef %ept, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_glink_trysendto(ptr noundef %ept, ptr noundef %data, i32 noundef %len, i32 noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__qcom_glink_send(ptr noundef %ept, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qcom_glink_send(ptr noundef %channel, ptr noundef %data, i32 noundef %len, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.anon.71, align 2
  %iid = alloca i32, align 4
  %req = alloca %struct.anon.70, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %glink1 = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %glink1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glink1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iid) #12
  %2 = ptrtoint ptr %iid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #12
  %3 = getelementptr inbounds %struct.glink_msg, ptr %req, i32 0, i32 1
  %4 = getelementptr inbounds %struct.glink_msg, ptr %req, i32 0, i32 2
  %5 = getelementptr inbounds %struct.anon.70, ptr %req, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon.70, ptr %req, i32 0, i32 2
  %intentless = getelementptr inbounds %struct.qcom_glink, ptr %1, i32 0, i32 15
  %7 = call ptr @memset(ptr %req, i32 255, i32 16)
  %8 = ptrtoint ptr %intentless to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %intentless, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

while.cond.preheader:                             ; preds = %entry
  %intent_lock = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 8
  %riids = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 10
  %10 = getelementptr inbounds %struct.anon.71, ptr %cmd.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.71, ptr %cmd.i, i32 0, i32 2
  %intent_req_lock.i = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 18
  %intent_req_comp.i = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 20
  %lcid.i = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 6
  %intent_req_result.i = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %qcom_glink_request_intent.exit.while.cond_crit_edge, %while.cond.preheader
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %12 = ptrtoint ptr %iid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %iid, align 4
  %call8178 = call ptr @idr_get_next(ptr noundef %riids, ptr noundef nonnull %iid) #12
  %cmp9.not179 = icmp eq ptr %call8178, null
  br i1 %cmp9.not179, label %while.cond.if.end36.critedge_crit_edge, label %while.cond.for.body_crit_edge

while.cond.for.body_crit_edge:                    ; preds = %while.cond
  br label %for.body

while.cond.if.end36.critedge_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.cond.for.body_crit_edge
  %call8181 = phi ptr [ %call8, %for.inc.for.body_crit_edge ], [ %call8178, %while.cond.for.body_crit_edge ]
  %intent.1180 = phi ptr [ %intent.3, %for.inc.for.body_crit_edge ], [ null, %while.cond.for.body_crit_edge ]
  %size = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call8181, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %len)
  %cmp11.not = icmp ult i32 %14, %len
  br i1 %cmp11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %in_use = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call8181, i32 0, i32 4
  %15 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %in_use, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  %tobool15.not = icmp eq ptr %intent.1180, null
  br i1 %tobool15.not, label %if.then14.if.end22_crit_edge, label %if.else

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %size17 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.1180, i32 0, i32 2
  %17 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp19 = icmp ugt i32 %18, %14
  %spec.select = select i1 %cmp19, ptr %call8181, ptr %intent.1180
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14.if.end22_crit_edge
  %intent.2 = phi ptr [ %call8181, %if.then14.if.end22_crit_edge ], [ %spec.select, %if.else ]
  %size23 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.2, i32 0, i32 2
  %19 = ptrtoint ptr %size23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %len)
  %cmp24 = icmp eq i32 %20, %len
  br i1 %cmp24, label %if.end22.if.then30_crit_edge, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end22.if.then30_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %intent.3 = phi ptr [ %intent.1180, %land.lhs.true.for.inc_crit_edge ], [ %intent.2, %if.end22.for.inc_crit_edge ], [ %intent.1180, %for.body.for.inc_crit_edge ]
  %21 = ptrtoint ptr %iid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iid, align 4
  %add = add i32 %22, 1
  store i32 %add, ptr %iid, align 4
  %call8 = call ptr @idr_get_next(ptr noundef %riids, ptr noundef nonnull %iid) #12
  %cmp9.not = icmp eq ptr %call8, null
  br i1 %cmp9.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool29.not = icmp eq ptr %intent.3, null
  br i1 %tobool29.not, label %for.end.if.end36.critedge_crit_edge, label %for.end.if.then30_crit_edge

for.end.if.then30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

for.end.if.end36.critedge_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.critedge

if.then30:                                        ; preds = %for.end.if.then30_crit_edge, %if.end22.if.then30_crit_edge
  %intent.4156 = phi ptr [ %intent.2, %if.end22.if.then30_crit_edge ], [ %intent.3, %for.end.if.then30_crit_edge ]
  %in_use31 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.4156, i32 0, i32 4
  %23 = ptrtoint ptr %in_use31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %in_use31, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call5) #12
  %id = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.4156, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %26 = ptrtoint ptr %iid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %iid, align 4
  br label %if.end45

if.end36.critedge:                                ; preds = %for.end.if.end36.critedge_crit_edge, %while.cond.if.end36.critedge_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call5) #12
  br i1 %wait, label %if.end39, label %if.end36.critedge.cleanup_crit_edge

if.end36.critedge.cleanup_crit_edge:              ; preds = %if.end36.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end36.critedge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #12
  call void @mutex_lock_nested(ptr noundef %intent_req_lock.i, i32 noundef 0) #12
  %27 = ptrtoint ptr %intent_req_comp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %intent_req_comp.i, align 4
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 7, ptr %cmd.i, align 2
  %29 = ptrtoint ptr %lcid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lcid.i, align 4
  %conv.i = trunc i32 %30 to i16
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %10, align 2
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %len, ptr %11, align 2
  %call.i = call fastcc i32 @qcom_glink_tx(ptr noundef %1, ptr noundef nonnull %cmd.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.qcom_glink_request_intent.exit_crit_edge

if.end39.qcom_glink_request_intent.exit_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_request_intent.exit

if.end.i:                                         ; preds = %if.end39
  %call3.i = call i32 @wait_for_completion_timeout(ptr noundef %intent_req_comp.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.39) #15
  br label %qcom_glink_request_intent.exit.thread

if.else.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %intent_req_result.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %intent_req_result.i, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool6.not.i = icmp eq i8 %36, 0
  br i1 %tobool6.not.i, label %if.else.i.qcom_glink_request_intent.exit.thread_crit_edge, label %if.else.i.qcom_glink_request_intent.exit_crit_edge

if.else.i.qcom_glink_request_intent.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_request_intent.exit

if.else.i.qcom_glink_request_intent.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_glink_request_intent.exit.thread

qcom_glink_request_intent.exit.thread:            ; preds = %if.else.i.qcom_glink_request_intent.exit.thread_crit_edge, %do.end.i
  %ret.0.i.ph = phi i32 [ -110, %do.end.i ], [ -125, %if.else.i.qcom_glink_request_intent.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %intent_req_lock.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #12
  br label %cleanup

qcom_glink_request_intent.exit:                   ; preds = %if.else.i.qcom_glink_request_intent.exit_crit_edge, %if.end39.qcom_glink_request_intent.exit_crit_edge
  call void @mutex_unlock(ptr noundef %intent_req_lock.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #12
  %cmp41 = icmp slt i32 %call.i, 0
  br i1 %cmp41, label %qcom_glink_request_intent.exit.cleanup_crit_edge, label %qcom_glink_request_intent.exit.while.cond_crit_edge

qcom_glink_request_intent.exit.while.cond_crit_edge: ; preds = %qcom_glink_request_intent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

qcom_glink_request_intent.exit.cleanup_crit_edge: ; preds = %qcom_glink_request_intent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.then30, %entry.if.end45_crit_edge
  %intent.6 = phi ptr [ null, %entry.if.end45_crit_edge ], [ %intent.4156, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %len)
  %cmp49 = icmp sgt i32 %len, 8192
  %or.cond = and i1 %cmp49, %wait
  %sub = add i32 %len, -8192
  %chunk_size.0 = select i1 %or.cond, i32 8192, i32 %len
  %left_size.0 = select i1 %or.cond, i32 %sub, i32 0
  %37 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2304, ptr %req, align 2
  %lcid = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 6
  %38 = ptrtoint ptr %lcid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lcid, align 4
  %conv53 = trunc i32 %39 to i16
  %40 = call i16 @llvm.bswap.i16(i16 %conv53)
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %3, align 2
  %42 = ptrtoint ptr %iid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iid, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %4, align 2
  %46 = call i32 @llvm.bswap.i32(i32 %chunk_size.0)
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %5, align 2
  %48 = call i32 @llvm.bswap.i32(i32 %left_size.0)
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %6, align 2
  %call59 = call fastcc i32 @qcom_glink_tx(ptr noundef %1, ptr noundef nonnull %req, i32 noundef 16, ptr noundef %data, i32 noundef %chunk_size.0, i1 noundef zeroext %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %tobool62.not = icmp eq ptr %intent.6, null
  %or.cond152 = select i1 %tobool60.not, i1 true, i1 %tobool62.not
  br i1 %or.cond152, label %while.cond66.preheader, label %if.then63

while.cond66.preheader:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left_size.0)
  %cmp67182.not = icmp eq i32 %left_size.0, 0
  br i1 %cmp67182.not, label %while.cond66.preheader.cleanup_crit_edge, label %while.cond66.preheader.while.body69_crit_edge

while.cond66.preheader.while.body69_crit_edge:    ; preds = %while.cond66.preheader
  br label %while.body69

while.cond66.preheader.cleanup_crit_edge:         ; preds = %while.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then63:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %in_use64 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.6, i32 0, i32 4
  %50 = ptrtoint ptr %in_use64 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %in_use64, align 1
  br label %cleanup

while.cond66:                                     ; preds = %while.body69
  %cmp67 = icmp sgt i32 %sub74, 0
  br i1 %cmp67, label %while.cond66.while.body69_crit_edge, label %while.cond66.cleanup_crit_edge

while.cond66.cleanup_crit_edge:                   ; preds = %while.cond66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond66.while.body69_crit_edge:              ; preds = %while.cond66
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body69

while.body69:                                     ; preds = %while.cond66.while.body69_crit_edge, %while.cond66.preheader.while.body69_crit_edge
  %left_size.1185 = phi i32 [ %sub74, %while.cond66.while.body69_crit_edge ], [ %sub, %while.cond66.preheader.while.body69_crit_edge ]
  %chunk_size.1184 = phi i32 [ %51, %while.cond66.while.body69_crit_edge ], [ %chunk_size.0, %while.cond66.preheader.while.body69_crit_edge ]
  %data.addr.0183 = phi ptr [ %add.ptr, %while.cond66.while.body69_crit_edge ], [ %data, %while.cond66.preheader.while.body69_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data.addr.0183, i32 %chunk_size.1184
  %51 = call i32 @llvm.smin.i32(i32 %left_size.1185, i32 8192)
  %sub74 = sub nsw i32 %left_size.1185, %51
  %52 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 3072, ptr %req, align 2
  %53 = ptrtoint ptr %lcid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lcid, align 4
  %conv78 = trunc i32 %54 to i16
  %55 = call i16 @llvm.bswap.i16(i16 %conv78)
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %3, align 2
  %57 = ptrtoint ptr %iid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iid, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %4, align 2
  %61 = call i32 @llvm.bswap.i32(i32 %51)
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %5, align 2
  %63 = call i32 @llvm.bswap.i32(i32 %sub74)
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %6, align 2
  %call86 = call fastcc i32 @qcom_glink_tx(ptr noundef %1, ptr noundef nonnull %req, i32 noundef 16, ptr noundef %add.ptr, i32 noundef %51, i1 noundef zeroext %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  %or.cond153 = select i1 %tobool87.not, i1 true, i1 %tobool62.not
  br i1 %or.cond153, label %while.cond66, label %if.then90

if.then90:                                        ; preds = %while.body69
  call void @__sanitizer_cov_trace_pc() #14
  %in_use91 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.6, i32 0, i32 4
  %65 = ptrtoint ptr %in_use91 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %in_use91, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %while.cond66.cleanup_crit_edge, %if.then63, %while.cond66.preheader.cleanup_crit_edge, %qcom_glink_request_intent.exit.cleanup_crit_edge, %qcom_glink_request_intent.exit.thread, %if.end36.critedge.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.then63 ], [ %call86, %if.then90 ], [ %ret.0.i.ph, %qcom_glink_request_intent.exit.thread ], [ %call59, %while.cond66.preheader.cleanup_crit_edge ], [ %call86, %while.cond66.cleanup_crit_edge ], [ %call.i, %qcom_glink_request_intent.exit.cleanup_crit_edge ], [ -16, %if.end36.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iid) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qcom_glink_alloc_intent(ptr noundef %channel, i32 noundef %size, i1 noundef zeroext %reuseable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %reuseable to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #19
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.free_intent_crit_edge, label %do.body6

if.end8.i.i.free_intent_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_intent

do.body6:                                         ; preds = %if.end8.i.i
  %intent_lock = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 8
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %liids = getelementptr inbounds %struct.glink_channel, ptr %channel, i32 0, i32 9
  %call11 = tail call i32 @idr_alloc_cyclic(ptr noundef %liids, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef -1, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call8) #12
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %3) #12
  br label %free_intent

if.end16:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call11, ptr %id, align 4
  %size18 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size18, align 8
  %reuse = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %reuse to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %reuse, align 4
  br label %cleanup

free_intent:                                      ; preds = %if.then14, %if.end8.i.i.free_intent_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_intent, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_intent ], [ %call7.i.i, %if.end16 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #12
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !182
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.49, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #12
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_glink_rx_defer(ptr noundef %glink, i32 noundef %extra) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %extra, 7
  %and = and i32 %add, -8
  %rx_pipe.i = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 4
  %0 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_pipe.i, align 4
  %avail.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %avail.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1) #12
  %add1 = add i32 %and, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add1)
  %cmp = icmp ult i32 %call.i, %add1
  br i1 %cmp, label %do.body, label %if.end8.i.i

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_glink_rx_defer.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_glink_rx_defer, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !190

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_glink_rx_defer.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %add7 = add i32 %and, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 2848) #19
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end11

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %msg = getelementptr inbounds %struct.glink_defer_cmd, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_pipe.i, align 4
  %peak.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peak.i, align 4
  tail call void %11(ptr noundef %9, ptr noundef %msg, i32 noundef 0, i32 noundef %add1) #12
  %rx_lock = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %rx_lock) #12
  %rx_queue = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 9
  %prev.i32 = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i32, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %13, ptr noundef %rx_queue) #12
  br i1 %call.i.i, label %if.end.i.i33, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i33:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %prev.i32, align 4
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_queue, ptr %call9.i.i, align 128
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call9.i.i, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i33, %if.end11.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock) #12
  %rx_work = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i34 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %rx_work) #12
  %19 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %advance.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %advance.i, align 4
  tail call void %22(ptr noundef %20, i32 noundef %add1) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end8.i.i.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -6, %if.then5 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -6, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_glink_rx_data(ptr noundef %glink, i32 noundef %avail) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.anon.73, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hdr) #12
  %0 = getelementptr inbounds %struct.glink_msg, ptr %hdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.glink_msg, ptr %hdr, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %avail)
  %cmp = icmp ult i32 %avail, 16
  %2 = call ptr @memset(ptr %hdr, i32 255, i32 16)
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_glink_rx_data.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_glink_rx_data, %if.then3)) #12
          to label %cleanup [label %if.then3], !srcloc !190

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_glink_rx_data.__UNIQUE_ID_ddebug228, ptr noundef %4, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.anon.73, ptr %hdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.anon.73, ptr %hdr, i32 0, i32 1
  %rx_pipe.i = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 4
  %7 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_pipe.i, align 4
  %peak.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peak.i, align 4
  call void %10(ptr noundef %8, ptr noundef nonnull %hdr, i32 noundef 0, i32 noundef 16) #12
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %6, align 2
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %5, align 2
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %add = add i32 %13, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %avail)
  %cmp7 = icmp ugt i32 %add, %avail
  br i1 %cmp7, label %do.body9, label %if.end26

do.body9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_glink_rx_data.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_glink_rx_data, %if.then21)) #12
          to label %cleanup [label %if.then21], !srcloc !190

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %glink, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_glink_rx_data.__UNIQUE_ID_ddebug229, ptr noundef %18, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %0, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %idr_lock = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 11
  %call33 = call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %rcids = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 13
  %call38 = call ptr @idr_find(ptr noundef %rcids, i32 noundef %conv) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call33) #12
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %do.body42, label %if.end59

do.body42:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_glink_rx_data.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_glink_rx_data, %if.then54)) #12
          to label %advance_rx [label %if.then54], !srcloc !190

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %glink, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_glink_rx_data.__UNIQUE_ID_ddebug230, ptr noundef %23, ptr noundef nonnull @.str.60) #12
  br label %advance_rx

if.end59:                                         ; preds = %if.end26
  %intentless = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 15
  %24 = ptrtoint ptr %intentless to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %intentless, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool60.not = icmp eq i8 %25, 0
  br i1 %tobool60.not, label %if.else78, label %if.then61

if.then61:                                        ; preds = %if.end59
  %buf = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 13
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %tobool62.not = icmp eq ptr %27, null
  br i1 %tobool62.not, label %if.then63, label %if.then61.if.end102_crit_edge

if.then61.if.end102_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then63:                                        ; preds = %if.then61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 28) #16
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %if.then63.cleanup_crit_edge, label %if.end67

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67:                                         ; preds = %if.then63
  %add68 = add i32 %16, %13
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add68, i32 noundef 2592) #19
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i, ptr %call7.i.i, align 8
  %tobool71.not = icmp eq ptr %call9.i, null
  br i1 %tobool71.not, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1162167622, ptr %id, align 4
  %size = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add68, ptr %size, align 8
  %offset = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %offset, align 8
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %buf, align 4
  br label %if.end102

if.else78:                                        ; preds = %if.end59
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %1, align 2
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %intent_lock = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 8
  %call88 = call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %liids = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 9
  %call93 = call ptr @idr_find(ptr noundef %liids, i32 noundef %36) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call88) #12
  %tobool95.not = icmp eq ptr %call93, null
  br i1 %tobool95.not, label %do.end99, label %if.else78.if.end102_crit_edge

if.else78.if.end102_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

do.end99:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %glink, align 4
  %name = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 5
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.61, ptr noundef %40, i32 noundef %36) #15
  br label %advance_rx

if.end102:                                        ; preds = %if.else78.if.end102_crit_edge, %if.end73, %if.then61.if.end102_crit_edge
  %intent.0 = phi ptr [ %call7.i.i, %if.end73 ], [ %call93, %if.else78.if.end102_crit_edge ], [ %27, %if.then61.if.end102_crit_edge ]
  %size103 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.0, i32 0, i32 2
  %41 = ptrtoint ptr %size103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size103, align 4
  %offset104 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.0, i32 0, i32 5
  %43 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset104, align 4
  %sub = sub i32 %42, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp105 = icmp ult i32 %sub, %13
  br i1 %cmp105, label %do.end110, label %if.end112

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %glink, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.63) #15
  br label %advance_rx

if.end112:                                        ; preds = %if.end102
  %47 = ptrtoint ptr %intent.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intent.0, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 %44
  %49 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_pipe.i, align 4
  %peak.i208 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %peak.i208 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %peak.i208, align 4
  call void %52(ptr noundef %50, ptr noundef %add.ptr, i32 noundef 16, i32 noundef %13) #12
  %53 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset104, align 4
  %add116 = add i32 %54, %13
  store i32 %add116, ptr %offset104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool117.not = icmp eq i32 %15, 0
  br i1 %tobool117.not, label %if.then118, label %if.end112.advance_rx_crit_edge

if.end112.advance_rx_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %advance_rx

if.then118:                                       ; preds = %if.end112
  %recv_lock = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %recv_lock) #12
  %cb = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call38, i32 0, i32 2
  %55 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cb, align 4
  %tobool119.not = icmp eq ptr %56, null
  br i1 %tobool119.not, label %if.then118.if.end128_crit_edge, label %if.then120

if.then118.if.end128_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then120:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call38, align 4
  %59 = ptrtoint ptr %intent.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %intent.0, align 4
  %61 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset104, align 4
  %priv = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call38, i32 0, i32 5
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 4
  %call127 = call i32 %56(ptr noundef %58, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef -1) #12
  br label %if.end128

if.end128:                                        ; preds = %if.then120, %if.then118.if.end128_crit_edge
  call void @_raw_spin_unlock(ptr noundef %recv_lock) #12
  %65 = ptrtoint ptr %offset104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %offset104, align 4
  %buf131 = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 13
  %66 = ptrtoint ptr %buf131 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %buf131, align 4
  %67 = ptrtoint ptr %intentless to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %intentless, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i, label %if.end.i210, label %if.then.i209

if.then.i209:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %intent.0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %intent.0, align 4
  call void @kfree(ptr noundef %70) #12
  call void @kfree(ptr noundef nonnull %intent.0) #12
  br label %advance_rx

if.end.i210:                                      ; preds = %if.end128
  %reuse.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.0, i32 0, i32 3
  %71 = ptrtoint ptr %reuse.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %reuse.i, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not.i = icmp eq i8 %72, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i210.if.end4.i211_crit_edge

if.end.i210.if.end4.i211_crit_edge:               ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i211

if.then2.i:                                       ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #14
  %intent_lock.i = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %intent_lock.i) #12
  %liids.i = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 9
  %id.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.0, i32 0, i32 1
  %73 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id.i, align 4
  %call.i = call ptr @idr_remove(ptr noundef %liids.i, i32 noundef %74) #12
  call void @_raw_spin_unlock(ptr noundef %intent_lock.i) #12
  br label %if.end4.i211

if.end4.i211:                                     ; preds = %if.then2.i, %if.end.i210.if.end4.i211_crit_edge
  %intent_lock5.i = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %intent_lock5.i) #12
  %node.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.0, i32 0, i32 6
  %done_intents.i = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 12, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %76, ptr noundef %done_intents.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i211.list_add_tail.exit.i_crit_edge

if.end4.i211.list_add_tail.exit.i_crit_edge:      ; preds = %if.end4.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i211
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %node.i, ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %done_intents.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.glink_core_rx_intent, ptr %intent.0, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %node.i, ptr %76, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end4.i211.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %intent_lock5.i) #12
  %intent_work.i = getelementptr inbounds %struct.glink_channel, ptr %call38, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i18.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %intent_work.i) #12
  br label %advance_rx

advance_rx:                                       ; preds = %list_add_tail.exit.i, %if.then.i209, %if.end112.advance_rx_crit_edge, %do.end110, %do.end99, %if.then54, %do.body42
  %ret.0 = phi i32 [ 0, %do.end110 ], [ 0, %if.end112.advance_rx_crit_edge ], [ -2, %do.end99 ], [ 0, %if.then54 ], [ 0, %do.body42 ], [ 0, %if.then.i209 ], [ 0, %list_add_tail.exit.i ]
  %add134 = add i32 %13, 23
  %and = and i32 %add134, -8
  %82 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %advance.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %advance.i, align 4
  call void %85(ptr noundef %83, i32 noundef %and) #12
  br label %cleanup

cleanup:                                          ; preds = %advance_rx, %if.then72, %if.then63.cleanup_crit_edge, %if.then21, %do.body9, %if.then3, %do.body
  %retval.0 = phi i32 [ %ret.0, %advance_rx ], [ -12, %if.then72 ], [ -11, %if.then3 ], [ -11, %if.then21 ], [ -12, %if.then63.cleanup_crit_edge ], [ -11, %do.body ], [ -11, %do.body9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hdr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_glink_handle_intent(ptr noundef %glink, i32 noundef %cid, i32 noundef %count, i32 noundef %avail) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 8) #12
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 8) #12
  %retval.0.i97 = select i1 %1, i32 -1, i32 %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i97, i32 %avail)
  %cmp = icmp ugt i32 %retval.0.i97, %avail
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_glink_handle_intent.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_glink_handle_intent, %if.then4)) #12
          to label %cleanup [label %if.then4], !srcloc !190

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_glink_handle_intent.__UNIQUE_ID_ddebug231, ptr noundef %4, ptr noundef nonnull @.str.58) #12
  br label %cleanup

do.body7:                                         ; preds = %entry
  %idr_lock = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 11
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %rcids = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 13
  %call16 = tail call ptr @idr_find(ptr noundef %rcids, i32 noundef %cid) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call11) #12
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %do.end22, label %if.end8.i

do.end22:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.66) #15
  br label %cleanup

if.end8.i:                                        ; preds = %do.body7
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i97, i32 noundef 2592) #19
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end8.i.cleanup_crit_edge, label %if.end28

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end8.i
  %rx_pipe.i = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 4
  %7 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_pipe.i, align 4
  %peak.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peak.i, align 4
  tail call void %10(ptr noundef %8, ptr noundef nonnull %call9.i, i32 noundef 0, i32 noundef %retval.0.i97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp29101.not = icmp eq i32 %count, 0
  br i1 %cmp29101.not, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %intent_lock = getelementptr inbounds %struct.glink_channel, ptr %call16, i32 0, i32 8
  %riids = getelementptr inbounds %struct.glink_channel, ptr %call16, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 28) #16
  %tobool32.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool32.not, label %for.body.for.end_crit_edge, label %if.end34

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end34:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.anon.74, ptr %call9.i, i32 0, i32 1, i32 %i.0102
  %iid = getelementptr %struct.anon.74, ptr %call9.i, i32 0, i32 1, i32 %i.0102, i32 1
  %12 = ptrtoint ptr %iid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iid, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %id = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %id, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %size37 = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %size37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size37, align 8
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %add = add i32 %21, 1
  %call53 = tail call i32 @idr_alloc(ptr noundef %riids, ptr noundef nonnull %call7.i.i, i32 noundef %21, i32 noundef %add, i32 noundef 2592) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp slt i32 %call53, 0
  br i1 %cmp55, label %do.end60, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end60:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.68) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end60, %if.end34.for.inc_crit_edge
  %inc = add nuw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  %add63 = add i32 %retval.0.i97, 7
  %and = and i32 %add63, -8
  %24 = ptrtoint ptr %rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_pipe.i, align 4
  %advance.i = getelementptr inbounds %struct.qcom_glink_pipe, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %advance.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %advance.i, align 4
  tail call void %27(ptr noundef %25, i32 noundef %and) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.i.cleanup_crit_edge, %do.end22, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_glink_handle_rx_done(ptr noundef %glink, i32 noundef %cid, i32 noundef %iid, i1 noundef zeroext %reuse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idr_lock = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %idr_lock) #12
  %rcids = getelementptr inbounds %struct.qcom_glink, ptr %glink, i32 0, i32 13
  %call5 = tail call ptr @idr_find(ptr noundef %rcids, i32 noundef %cid) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %idr_lock, i32 noundef %call2) #12
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end9, label %do.body11

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70) #15
  br label %cleanup

do.body11:                                        ; preds = %entry
  %intent_lock = getelementptr inbounds %struct.glink_channel, ptr %call5, i32 0, i32 8
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intent_lock) #12
  %riids = getelementptr inbounds %struct.glink_channel, ptr %call5, i32 0, i32 10
  %call23 = tail call ptr @idr_find(ptr noundef %riids, i32 noundef %iid) #12
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end31

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call18) #12
  %2 = ptrtoint ptr %glink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.73) #15
  br label %cleanup

if.end31:                                         ; preds = %do.body11
  %in_use = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call23, i32 0, i32 4
  %4 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %in_use, align 1
  br i1 %reuse, label %if.end31.if.end36_crit_edge, label %if.then33

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.glink_core_rx_intent, ptr %call23, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call35 = tail call ptr @idr_remove(ptr noundef %riids, i32 noundef %6) #12
  tail call void @kfree(ptr noundef nonnull %call23) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intent_lock, i32 noundef %call18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then25, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_glink_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 8
  %refcount = getelementptr inbounds %struct.glink_channel, ptr %1, i32 0, i32 3
  tail call fastcc void @kref_put(ptr noundef %refcount)
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !47, !49, !51, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !105, !106, !108, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @qcom_glink_native_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1742, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @qcom_glink_native_probe.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1743, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qcom_glink_native_probe.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1745, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qcom_glink_native_probe.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1746, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qcom_glink_native_probe.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1748, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1756, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qcom_glink_native_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @qcom_glink_native_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1758, i32 46}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1767, i32 4}
!27 = !{ptr @qcom_glink_native_probe._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @qcom_glink_native_probe._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1775, i32 11}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1777, i32 3}
!33 = !{ptr @qcom_glink_native_probe._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qcom_glink_native_probe._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1789, i32 3}
!37 = !{ptr @qcom_glink_native_probe._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_glink_native_probe._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_qcom_glink_native_probe, !40, !"__ksymtab_qcom_glink_native_probe", i1 false, i1 false}
!40 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1793, i32 1}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1813, i32 3}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qcom_glink_native_remove._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @qcom_glink_native_remove._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__ksymtab_qcom_glink_native_remove, !48, !"__ksymtab_qcom_glink_native_remove", i1 false, i1 false}
!48 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1827, i32 1}
!49 = !{ptr @__ksymtab_qcom_glink_native_unregister, !50, !"__ksymtab_qcom_glink_native_unregister", i1 false, i1 false}
!50 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1833, i32 1}
!51 = !{ptr @__UNIQUE_ID_description232, !52, !"__UNIQUE_ID_description232", i1 false, i1 false}
!52 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1835, i32 1}
!53 = !{ptr @__UNIQUE_ID_file233, !54, !"__UNIQUE_ID_file233", i1 false, i1 false}
!54 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1836, i32 1}
!55 = !{ptr @__UNIQUE_ID_license234, !54, !"__UNIQUE_ID_license234", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1647, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1484, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qcom_glink_rx_open._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @qcom_glink_rx_open._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @qcom_glink_alloc_channel.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 223, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qcom_glink_alloc_channel.__key.32, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 224, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qcom_glink_alloc_channel.__key.34, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 225, i32 2}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qcom_glink_alloc_channel.__key.36, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 235, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @init_completion.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../include/linux/completion.h", i32 87, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @glink_device_ops, !79, !"glink_device_ops", i1 false, i1 false}
!79 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1434, i32 38}
!80 = !{ptr @glink_endpoint_ops, !81, !"glink_endpoint_ops", i1 false, i1 false}
!81 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1439, i32 40}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1279, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @qcom_glink_request_intent._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @qcom_glink_request_intent._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1215, i32 30}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1422, i32 9}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1542, i32 6}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1578, i32 6}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 773, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qcom_glink_handle_intent_req._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qcom_glink_handle_intent_req._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @xa_init_flags.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @qcom_glink_groups, !104, !"qcom_glink_groups", i1 false, i1 false}
!104 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1685, i32 1}
!105 = !{ptr @qcom_glink_group, !104, !"qcom_glink_group", i1 false, i1 false}
!106 = !{ptr @qcom_glink_attrs, !107, !"qcom_glink_attrs", i1 false, i1 false}
!107 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1681, i32 26}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1679, i32 8}
!110 = !{ptr @dev_attr_rpmsg_name, !109, !"dev_attr_rpmsg_name", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1677, i32 40}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1071, i32 4}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qcom_glink_native_intr._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @qcom_glink_native_intr._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 791, i32 3}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qcom_glink_rx_defer.__UNIQUE_ID_ddebug227, !119, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 997, i32 3}
!125 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qcom_glink_rx_open_ack._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @qcom_glink_rx_open_ack._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 830, i32 3}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @qcom_glink_rx_data.__UNIQUE_ID_ddebug228, !129, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 839, i32 3}
!134 = !{ptr @qcom_glink_rx_data.__UNIQUE_ID_ddebug229, !133, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 848, i32 3}
!137 = !{ptr @qcom_glink_rx_data.__UNIQUE_ID_ddebug230, !136, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 884, i32 4}
!140 = !{ptr @qcom_glink_rx_data._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @qcom_glink_rx_data._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 893, i32 3}
!144 = !{ptr @qcom_glink_rx_data._entry.62, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @qcom_glink_rx_data._entry_ptr.64, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 950, i32 3}
!148 = !{ptr @qcom_glink_handle_intent.__UNIQUE_ID_ddebug231, !147, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 958, i32 3}
!151 = !{ptr @qcom_glink_handle_intent._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @qcom_glink_handle_intent._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 982, i32 4}
!155 = !{ptr @qcom_glink_handle_intent._entry.67, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @qcom_glink_handle_intent._entry_ptr.69, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 729, i32 3}
!159 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @qcom_glink_handle_rx_done._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @qcom_glink_handle_rx_done._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 738, i32 3}
!164 = !{ptr @qcom_glink_handle_rx_done._entry.72, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @qcom_glink_handle_rx_done._entry_ptr.74, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 414, i32 3}
!168 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @qcom_glink_handle_intent_req_ack._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @qcom_glink_handle_intent_req_ack._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/rpmsg/qcom_glink_native.c", i32 1706, i32 44}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"auto-init"}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i64 2148321908}
!185 = !{i64 2148236372, i64 2148236404, i64 2148236433, i64 2148236467, i64 2148236498, i64 2148236521}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2149913651}
!188 = !{i8 0, i8 2}
!189 = !{i64 2148233907, i64 2148233939, i64 2148233968, i64 2148234002, i64 2148234033, i64 2148234056}
!190 = !{i64 2148742340, i64 2148742345, i64 2148742358, i64 2148742402, i64 2148742436, i64 2148742457}
