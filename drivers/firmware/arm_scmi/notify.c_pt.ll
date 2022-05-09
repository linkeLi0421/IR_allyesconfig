; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/notify.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/notify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.scmi_notify_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_event_header = type { i64, i32, i8, [0 x i8] }
%struct.scmi_notify_instance = type { ptr, ptr, %struct.work_struct, ptr, %struct.mutex, ptr, [16 x %struct.hlist_head] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.scmi_registered_events_desc = type { i8, ptr, %struct.events_queue, ptr, ptr, i32, ptr, i32, ptr, %struct.mutex, ptr, [64 x %struct.hlist_head] }
%struct.events_queue = type { i32, %struct.kfifo, %struct.work_struct, ptr }
%struct.kfifo = type { %union.anon.71, [0 x i8] }
%union.anon.71 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scmi_registered_event = type { ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_event_handler = type { i32, %struct.refcount_struct, ptr, %struct.blocking_notifier_head, %struct.hlist_node, i8 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
%struct.scmi_notifier_devres = type { ptr, i8, i8, i32, ptr, ptr }

@scmi_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 594, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SCMI Notifications - discard badly sized message\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_notify\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/arm_scmi/notify.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_notify._entry_ptr = internal global ptr @scmi_notify._entry, section ".printk_index", align 4
@scmi_notify._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 600, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"SCMI Notifications - queue full, dropping proto_id:%d  evt_id:%d  ts:%lld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scmi_notify._entry_ptr.8 = internal global ptr @scmi_notify._entry.5, section ".printk_index", align 4
@scmi_register_protocol_events.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&r_evt->sources_mtx\00", [44 x i8] zeroinitializer }, align 32
@scmi_register_protocol_events.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scmi_register_protocol_events\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SCMI Notifications - registered event - %lX\0A\00", [51 x i8] zeroinitializer }, align 32
@scmi_notification_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ni->pending_mtx\00", [47 x i8] zeroinitializer }, align 32
@scmi_notification_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ni->init_work)\00", [62 x i8] zeroinitializer }, align 32
@notify_ops = internal constant { %struct.scmi_notify_ops, [16 x i8] } { %struct.scmi_notify_ops { ptr @scmi_devm_notifier_register, ptr @scmi_devm_notifier_unregister, ptr @scmi_notifier_register, ptr @scmi_notifier_unregister }, [16 x i8] zeroinitializer }, align 32
@scmi_notification_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1683, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SCMI Notifications - Core Enabled.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scmi_notification_init\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scmi_notification_init._entry_ptr = internal global ptr @scmi_notification_init._entry, section ".printk_index", align 4
@scmi_notification_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 1690, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SCMI Notifications - Initialization Failed.\0A\00", [51 x i8] zeroinitializer }, align 32
@scmi_notification_init._entry_ptr.21 = internal global ptr @scmi_notification_init._entry.19, section ".printk_index", align 4
@scmi_allocate_registered_events_desc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pd->registered_mtx\00", [44 x i8] zeroinitializer }, align 32
@scmi_initialize_events_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&equeue->notify_work)\00", [56 x i8] zeroinitializer }, align 32
@scmi_process_event_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 436, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SCMI Notifications - corrupted EVT header. Flush.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scmi_process_event_header\00", [38 x i8] zeroinitializer }, align 32
@scmi_process_event_header._entry_ptr = internal global ptr @scmi_process_event_header._entry, section ".printk_index", align 4
@scmi_process_event_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SCMI Notifications - corrupted EVT Payload. Flush.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_process_event_payload\00", [37 x i8] zeroinitializer }, align 32
@scmi_process_event_payload._entry_ptr = internal global ptr @scmi_process_event_payload._entry, section ".printk_index", align 4
@scmi_process_event_payload._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 486, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"SCMI Notifications - SKIP UNKNOWN EVT - proto:%X  evt:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@scmi_process_event_payload._entry_ptr.30 = internal global ptr @scmi_process_event_payload._entry.28, section ".printk_index", align 4
@scmi_process_event_payload._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SCMI Notifications - report not available - proto:%X  evt:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@scmi_process_event_payload._entry_ptr.33 = internal global ptr @scmi_process_event_payload._entry.31, section ".printk_index", align 4
@scmi_lookup_and_call_event_chain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@scmi_protocols_late_init.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_protocols_late_init\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SCMI Notifications - finalized PENDING handler - key:%X\0A\00", [39 x i8] zeroinitializer }, align 32
@scmi_protocols_late_init.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SCMI Notifications - purging INVALID handler - key:%X\0A\00", [41 x i8] zeroinitializer }, align 32
@scmi_protocols_late_init.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 1, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SCMI Notifications - purging PENDING handler - key:%X\0A\00", [41 x i8] zeroinitializer }, align 32
@scmi_event_handler_enable_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013SCMI Notifications - Failed to ENABLE events for key:%X !\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scmi_event_handler_enable_events\00", [63 x i8] zeroinitializer }, align 32
@scmi_event_handler_enable_events._entry_ptr = internal global ptr @scmi_event_handler_enable_events._entry, section ".printk_index", align 4
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_devm_release_notifier\00", [37 x i8] zeroinitializer }, align 32
@__scmi_event_handler_get_ops.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__scmi_event_handler_get_ops\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SCMI Notifications - purging UNKNOWN handler - key:%X\0A\00", [41 x i8] zeroinitializer }, align 32
@scmi_allocate_event_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&hndl->chain)->rwsem\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scmi_register_event_handler.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scmi_register_event_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SCMI Notifications - registered NEW handler - key:%X\0A\00", [42 x i8] zeroinitializer }, align 32
@scmi_register_event_handler.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"SCMI Notifications - registered PENDING handler - key:%X\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 594, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 598, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 805, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 815, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1673, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1676, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"notify_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1613, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1683, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1690, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 727, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 666, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 436, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 478, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 484, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 494, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1585, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1590, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1598, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1302, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1471, i32 9 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1078, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 884, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1003, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [38 x i8] c"../drivers/firmware/arm_scmi/notify.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1008, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @scmi_event_handler_enable_events._entry, ptr @scmi_event_handler_enable_events._entry_ptr, ptr @scmi_notification_init._entry, ptr @scmi_notification_init._entry.19, ptr @scmi_notification_init._entry_ptr, ptr @scmi_notification_init._entry_ptr.21, ptr @scmi_notify._entry, ptr @scmi_notify._entry.5, ptr @scmi_notify._entry_ptr, ptr @scmi_notify._entry_ptr.8, ptr @scmi_process_event_header._entry, ptr @scmi_process_event_header._entry_ptr, ptr @scmi_process_event_payload._entry, ptr @scmi_process_event_payload._entry.28, ptr @scmi_process_event_payload._entry.31, ptr @scmi_process_event_payload._entry_ptr, ptr @scmi_process_event_payload._entry_ptr.30, ptr @scmi_process_event_payload._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @scmi_register_protocol_events.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @scmi_notification_init.__key, ptr @.str.13, ptr @scmi_notification_init.__key.14, ptr @.str.15, ptr @notify_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @scmi_allocate_registered_events_desc.__key, ptr @.str.22, ptr @scmi_initialize_events_queue.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @scmi_allocate_event_handler.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_notify._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_register_protocol_events.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_notification_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_notification_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_notification_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_notification_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_allocate_registered_events_desc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_initialize_events_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_process_event_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_process_event_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_process_event_payload._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_process_event_payload._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_event_handler_enable_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_allocate_event_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_notify(ptr noundef %handle, i8 noundef zeroext %proto_id, i8 noundef zeroext %evt_id, ptr noundef %buf, i32 noundef %len, i64 noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  %eh = alloca %struct.scmi_event_header, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eh) #8
  %0 = getelementptr inbounds i8, ptr %eh, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %call = tail call ptr @scmi_notification_instance_data_get(ptr noundef %handle) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %registered_protocols = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %registered_protocols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registered_protocols, align 4
  %idxprom = zext i8 %proto_id to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %conv = zext i8 %evt_id to i32
  %num_events = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_events, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp sgt i32 %7, %conv
  br i1 %cmp, label %if.end16, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true
  %registered_events = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %registered_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %registered_events, align 4
  %arrayidx15 = getelementptr ptr, ptr %9, i32 %conv
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx15, align 4
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %evt = getelementptr inbounds %struct.scmi_registered_event, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %evt, align 4
  %max_payld_sz = getelementptr inbounds %struct.scmi_event, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %max_payld_sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_payld_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %len)
  %cmp22 = icmp ult i32 %15, %len
  br i1 %cmp22, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %kfifo = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %19, i32 0, i32 2, i32 1
  %mask = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %19, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %22 = ptrtoint ptr %kfifo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kfifo, align 4
  %out = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %19, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out, align 4
  %sub.neg = add i32 %21, 1
  %add = sub i32 %sub.neg, %23
  %sub30 = add i32 %add, %25
  %add33 = add i32 %len, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30, i32 %add33)
  %cmp34 = icmp ult i32 %sub30, %add33
  br i1 %cmp34, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef %idxprom, i32 noundef %conv, i64 noundef %ts) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %eh to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %ts, ptr %eh, align 8
  %evt_id45 = getelementptr inbounds %struct.scmi_event_header, ptr %eh, i32 0, i32 2
  %29 = ptrtoint ptr %evt_id45 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %evt_id, ptr %evt_id45, align 4
  %payld_sz = getelementptr inbounds %struct.scmi_event_header, ptr %eh, i32 0, i32 1
  %30 = ptrtoint ptr %payld_sz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %len, ptr %payld_sz, align 8
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %11, align 4
  %kfifo48 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %32, i32 0, i32 2, i32 1
  %call51 = call i32 @__kfifo_in(ptr noundef %kfifo48, ptr noundef nonnull %eh, i32 noundef 16) #8
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %11, align 4
  %kfifo55 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %34, i32 0, i32 2, i32 1
  %call61 = call i32 @__kfifo_in(ptr noundef %kfifo55, ptr noundef %buf, i32 noundef %len) #8
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %11, align 4
  %wq = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %36, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wq, align 4
  %notify_work = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %36, i32 0, i32 2, i32 2
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %notify_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end39, %do.end27, %if.end16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -12, %do.end39 ], [ 0, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eh) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_notification_instance_data_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_register_protocol_events(ptr noundef %handle, i8 noundef zeroext %proto_id, ptr noundef %ph, ptr noundef readonly %ee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ee, null
  br i1 %tobool.not, label %entry.cleanup169_crit_edge, label %lor.lhs.false

entry.cleanup169_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.scmi_protocol_events, ptr %ee, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup169_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup169_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %evts = getelementptr inbounds %struct.scmi_protocol_events, ptr %ee, i32 0, i32 2
  %2 = ptrtoint ptr %evts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evts, align 4
  %tobool3.not = icmp eq ptr %3, null
  %tobool5.not = icmp eq ptr %ph, null
  %or.cond = or i1 %tobool5.not, %tobool3.not
  br i1 %or.cond, label %lor.lhs.false2.cleanup169_crit_edge, label %lor.lhs.false6

lor.lhs.false2.cleanup169_crit_edge:              ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %num_sources7 = getelementptr inbounds %struct.scmi_protocol_events, ptr %ee, i32 0, i32 4
  %4 = ptrtoint ptr %num_sources7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sources7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %land.lhs.true, label %lor.lhs.false6.if.end_crit_edge

lor.lhs.false6.if.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup169_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup169_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false6.if.end_crit_edge
  %call = tail call ptr @scmi_notification_instance_data_get(ptr noundef %handle) #8
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.end.cleanup169_crit_edge, label %if.end13

if.end.cleanup169_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

if.end13:                                         ; preds = %if.end
  %8 = ptrtoint ptr %num_sources7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sources7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.else, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else:                                          ; preds = %if.end13
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call20 = tail call i32 %13(ptr noundef nonnull %ph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp = icmp slt i32 %call20, 1
  br i1 %cmp, label %if.else.cleanup169_crit_edge, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else.cleanup169_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %num_sources.1 = phi i32 [ %call20, %if.else.if.end23_crit_edge ], [ %9, %if.end13.if.end23_crit_edge ]
  %14 = ptrtoint ptr %evts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %evts, align 4
  %num_events = getelementptr inbounds %struct.scmi_protocol_events, ptr %ee, i32 0, i32 3
  %16 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25252.not = icmp eq i32 %17, 0
  br i1 %cmp25252.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.0254 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %payld_sz.0253 = phi i32 [ %20, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %max_payld_sz = getelementptr %struct.scmi_event, ptr %15, i32 %i.0254, i32 1
  %18 = ptrtoint ptr %max_payld_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_payld_sz, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %payld_sz.0253, i32 %19)
  %inc = add nuw i32 %i.0254, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i32 %20, 16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end23.for.end_crit_edge
  %payld_sz.0.lcssa = phi i32 [ 16, %if.end23.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %21 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ee, align 4
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !105
  %registered_protocols.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 5
  %25 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %registered_protocols.i, align 4
  %idxprom.i = zext i8 %proto_id to i32
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %idxprom.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end28.i, label %do.end14.i, !prof !106

do.end14.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 701, i32 noundef 9, ptr noundef null) #8
  br label %if.then31

if.end28.i:                                       ; preds = %for.end
  %handle.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef 456, i32 noundef 3520) #8
  %tobool30.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool30.not.i, label %if.end28.i.if.then31_crit_edge, label %if.end33.i

if.end28.i.if.then31_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.end33.i:                                       ; preds = %if.end28.i
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %proto_id, ptr %call.i.i, align 4
  %ops34.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %ops34.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %24, ptr %ops34.i, align 4
  %ni35.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %ni35.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %ni35.i, align 4
  %kfifo.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 1
  %call.i86.i = tail call i32 @__kfifo_alloc(ptr noundef %kfifo.i.i, i32 noundef %22, i32 noundef 1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool.not.i.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end33.i.if.then31_crit_edge

if.end33.i.if.then31_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.end.i.i:                                       ; preds = %if.end33.i
  %equeue.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2
  %mask.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask.i.i, align 4
  %add.i.i = add i32 %37, 1
  %38 = ptrtoint ptr %equeue.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i.i, ptr %equeue.i, align 4
  %39 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handle.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call.i.i.i = tail call i32 @devm_add_action(ptr noundef %42, ptr noundef nonnull @scmi_kfifo_free, ptr noundef %kfifo.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end40.i, label %devm_add_action_or_reset.exit.i.i

devm_add_action_or_reset.exit.i.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__kfifo_free(ptr noundef %kfifo.i.i) #8
  %phi.cast.i = inttoptr i32 %call.i.i.i to ptr
  br label %scmi_allocate_registered_events_desc.exit

if.end40.i:                                       ; preds = %if.end.i.i
  %notify_work.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 2
  tail call void @__init_work(ptr noundef %notify_work.i.i, i32 noundef 0) #8
  %43 = ptrtoint ptr %notify_work.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %notify_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @scmi_initialize_events_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 2, i32 1
  %44 = ptrtoint ptr %entry12.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry12.i.i, ptr %entry12.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 2, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry12.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 2, i32 2
  %46 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @scmi_events_dispatcher, ptr %func.i.i, align 4
  %notify_wq.i.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 3
  %47 = ptrtoint ptr %notify_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %notify_wq.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %wq.i.i, align 4
  %50 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %handle.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call.i87.i = tail call noalias ptr @devm_kmalloc(ptr noundef %53, i32 noundef %payld_sz.0.lcssa, i32 noundef 3520) #8
  %eh.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %eh.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i87.i, ptr %eh.i, align 4
  %tobool45.not.i = icmp eq ptr %call.i87.i, null
  br i1 %tobool45.not.i, label %if.end40.i.if.then31_crit_edge, label %if.end48.i

if.end40.i.if.then31_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.end48.i:                                       ; preds = %if.end40.i
  %eh_sz49.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %eh_sz49.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %payld_sz.0.lcssa, ptr %eh_sz49.i, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #8
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !107

devm_kcalloc.exit.thread.i:                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %registered_events92.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %registered_events92.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %registered_events92.i, align 4
  br label %if.then31

devm_kcalloc.exit.i:                              ; preds = %if.end48.i
  %59 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handle.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = extractvalue { i32, i1 } %56, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %63, i32 noundef 3520) #8
  %registered_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %registered_events.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call5.i.i.i, ptr %registered_events.i, align 4
  %tobool54.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool54.not.i, label %devm_kcalloc.exit.i.if.then31_crit_edge, label %if.end57.i

devm_kcalloc.exit.i.if.then31_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.end57.i:                                       ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_events58.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %num_events58.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %17, ptr %num_events58.i, align 4
  %registered_mtx.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %registered_mtx.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @scmi_allocate_registered_events_desc.__key) #8
  %registered_events_handlers.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %call.i.i, i32 0, i32 11
  %66 = call ptr @memset(ptr %registered_events_handlers.i, i32 0, i32 256)
  br label %scmi_allocate_registered_events_desc.exit

scmi_allocate_registered_events_desc.exit:        ; preds = %if.end57.i, %devm_add_action_or_reset.exit.i.i
  %retval.0.i238 = phi ptr [ %call.i.i, %if.end57.i ], [ %phi.cast.i, %devm_add_action_or_reset.exit.i.i ]
  %cmp.i = icmp ugt ptr %retval.0.i238, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %scmi_allocate_registered_events_desc.exit.if.then31_crit_edge, label %if.end33

scmi_allocate_registered_events_desc.exit.if.then31_crit_edge: ; preds = %scmi_allocate_registered_events_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %scmi_allocate_registered_events_desc.exit.if.then31_crit_edge, %devm_kcalloc.exit.i.if.then31_crit_edge, %devm_kcalloc.exit.thread.i, %if.end40.i.if.then31_crit_edge, %if.end33.i.if.then31_crit_edge, %if.end28.i.if.then31_crit_edge, %do.end14.i
  %retval.0.i238244 = phi ptr [ %retval.0.i238, %scmi_allocate_registered_events_desc.exit.if.then31_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end33.i.if.then31_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then31_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %if.end40.i.if.then31_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end28.i.if.then31_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end14.i ]
  %67 = ptrtoint ptr %retval.0.i238244 to i32
  br label %cleanup169

if.end33:                                         ; preds = %scmi_allocate_registered_events_desc.exit
  %ph34 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %retval.0.i238, i32 0, i32 10
  %68 = ptrtoint ptr %ph34 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ph, ptr %ph34, align 4
  %69 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp37256.not = icmp eq i32 %70, 0
  br i1 %cmp37256.not, label %if.end33.for.end160_crit_edge, label %for.body38.lr.ph

if.end33.for.end160_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end160

for.body38.lr.ph:                                 ; preds = %if.end33
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_sources.1, i32 4) #8
  %72 = extractvalue { i32, i1 } %71, 1
  %73 = extractvalue { i32, i1 } %71, 0
  %registered_events = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %retval.0.i238, i32 0, i32 8
  br label %for.body38

for.body38:                                       ; preds = %for.inc158.for.body38_crit_edge, %for.body38.lr.ph
  %i.1258 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc159, %for.inc158.for.body38_crit_edge ]
  %evt.0257 = phi ptr [ %15, %for.body38.lr.ph ], [ %incdec.ptr, %for.inc158.for.body38_crit_edge ]
  %74 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %handle.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %77, i32 noundef 112, i32 noundef 3520) #8
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %for.body38.cleanup169_crit_edge, label %if.end43

for.body38.cleanup169_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

if.end43:                                         ; preds = %for.body38
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %retval.0.i238, ptr %call.i, align 4
  %evt44 = getelementptr inbounds %struct.scmi_registered_event, ptr %call.i, i32 0, i32 1
  %79 = ptrtoint ptr %evt44 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %evt.0257, ptr %evt44, align 4
  br i1 %72, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !107

devm_kcalloc.exit.thread:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %sources246 = getelementptr inbounds %struct.scmi_registered_event, ptr %call.i, i32 0, i32 4
  %80 = ptrtoint ptr %sources246 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %sources246, align 4
  br label %cleanup169

devm_kcalloc.exit:                                ; preds = %if.end43
  %81 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %handle.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %84, i32 noundef %73, i32 noundef 3520) #8
  %sources = getelementptr inbounds %struct.scmi_registered_event, ptr %call.i, i32 0, i32 4
  %85 = ptrtoint ptr %sources to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call5.i.i, ptr %sources, align 4
  %tobool49.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool49.not, label %devm_kcalloc.exit.cleanup169_crit_edge, label %if.end51

devm_kcalloc.exit.cleanup169_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

if.end51:                                         ; preds = %devm_kcalloc.exit
  %num_sources52 = getelementptr inbounds %struct.scmi_registered_event, ptr %call.i, i32 0, i32 3
  %86 = ptrtoint ptr %num_sources52 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %num_sources.1, ptr %num_sources52, align 4
  %sources_mtx = getelementptr inbounds %struct.scmi_registered_event, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %sources_mtx, ptr noundef nonnull @.str.9, ptr noundef nonnull @scmi_register_protocol_events.__key) #8
  %87 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handle.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %max_report_sz = getelementptr inbounds %struct.scmi_event, ptr %evt.0257, i32 0, i32 2
  %91 = ptrtoint ptr %max_report_sz to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_report_sz, align 4
  %call.i240 = tail call noalias ptr @devm_kmalloc(ptr noundef %90, i32 noundef %92, i32 noundef 3520) #8
  %report = getelementptr inbounds %struct.scmi_registered_event, ptr %call.i, i32 0, i32 2
  %93 = ptrtoint ptr %report to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i240, ptr %report, align 4
  %tobool57.not = icmp eq ptr %call.i240, null
  br i1 %tobool57.not, label %if.end51.cleanup169_crit_edge, label %if.end59

if.end51.cleanup169_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

if.end59:                                         ; preds = %if.end51
  %94 = ptrtoint ptr %registered_events to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %registered_events, align 4
  %arrayidx60 = getelementptr ptr, ptr %95, i32 %i.1258
  %96 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %arrayidx60, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_register_protocol_events.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_register_protocol_events, %if.then73)) #8
          to label %for.inc158 [label %if.then73], !srcloc !109

if.then73:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handle, align 4
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 4
  %conv101 = zext i8 %102 to i32
  %shl = shl nuw i32 %conv101, 24
  %103 = ptrtoint ptr %evt44 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %evt44, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 4
  %conv132 = zext i8 %106 to i32
  %shl133 = shl nuw nsw i32 %conv132, 16
  %or = or i32 %shl, %shl133
  %or151 = or i32 %or, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_register_protocol_events.__UNIQUE_ID_ddebug303, ptr noundef %98, ptr noundef nonnull @.str.12, i32 noundef %or151) #8
  br label %for.inc158

for.inc158:                                       ; preds = %if.then73, %if.end59
  %inc159 = add nuw i32 %i.1258, 1
  %incdec.ptr = getelementptr %struct.scmi_event, ptr %evt.0257, i32 1
  %107 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_events, align 4
  %cmp37 = icmp ult i32 %inc159, %108
  br i1 %cmp37, label %for.inc158.for.body38_crit_edge, label %for.inc158.for.end160_crit_edge

for.inc158.for.end160_crit_edge:                  ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end160

for.inc158.for.body38_crit_edge:                  ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.end160:                                       ; preds = %for.inc158.for.end160_crit_edge, %if.end33.for.end160_crit_edge
  %109 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %registered_protocols.i, align 4
  %arrayidx161 = getelementptr ptr, ptr %110, i32 %idxprom.i
  %111 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %retval.0.i238, ptr %arrayidx161, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !110
  %init_work = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %112 = load ptr, ptr @system_wq, align 4
  %call.i.i241 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %112, ptr noundef %init_work) #8
  br label %cleanup169

cleanup169:                                       ; preds = %for.end160, %if.end51.cleanup169_crit_edge, %devm_kcalloc.exit.cleanup169_crit_edge, %devm_kcalloc.exit.thread, %for.body38.cleanup169_crit_edge, %if.then31, %if.else.cleanup169_crit_edge, %if.end.cleanup169_crit_edge, %land.lhs.true.cleanup169_crit_edge, %lor.lhs.false2.cleanup169_crit_edge, %lor.lhs.false.cleanup169_crit_edge, %entry.cleanup169_crit_edge
  %retval.4 = phi i32 [ %67, %if.then31 ], [ 0, %for.end160 ], [ -22, %if.else.cleanup169_crit_edge ], [ -22, %land.lhs.true.cleanup169_crit_edge ], [ -22, %lor.lhs.false2.cleanup169_crit_edge ], [ -22, %lor.lhs.false.cleanup169_crit_edge ], [ -22, %entry.cleanup169_crit_edge ], [ -12, %if.end.cleanup169_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %for.body38.cleanup169_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup169_crit_edge ], [ -12, %if.end51.cleanup169_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_deregister_protocol_events(ptr noundef %handle, i8 noundef zeroext %proto_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scmi_notification_instance_data_get(ptr noundef %handle) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %registered_protocols = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %registered_protocols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registered_protocols, align 4
  %idxprom = zext i8 %proto_id to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  %notify_work = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %3, i32 0, i32 2, i32 2
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %notify_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_notification_init(ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %1, ptr noundef null, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 216, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.do.end43_crit_edge, label %if.end5

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %call.i, align 4
  %handle7 = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %handle7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %handle, ptr %handle7, align 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 1024, i32 noundef 3520) #8
  %registered_protocols = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %registered_protocols to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %registered_protocols, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %if.end5.do.end43_crit_edge, label %if.end13

if.end5.do.end43_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.end13:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end13.dev_name.exit_crit_edge ]
  %call16 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %retval.0.i, i32 noundef 70, i32 noundef 0) #8
  %notify_wq = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %notify_wq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %notify_wq, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %dev_name.exit.do.end43_crit_edge, label %do.body

dev_name.exit.do.end43_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.body:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pending_mtx = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %pending_mtx, ptr noundef nonnull @.str.13, ptr noundef nonnull @scmi_notification_init.__key) #8
  %pending_events_handlers = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 6
  %16 = call ptr @memset(ptr %pending_events_handlers, i32 0, i32 64)
  %init_work = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %init_work, i32 noundef 0) #8
  %17 = ptrtoint ptr %init_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %init_work, align 4
  %lockdep_map = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @scmi_notification_init.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry25 = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.scmi_notify_instance, ptr %call.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @scmi_protocols_late_init, ptr %func, align 4
  tail call void @scmi_notification_instance_data_set(ptr noundef %handle, ptr noundef nonnull %call.i) #8
  %notify_ops = getelementptr inbounds %struct.scmi_handle, ptr %handle, i32 0, i32 4
  %21 = ptrtoint ptr %notify_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @notify_ops, ptr %notify_ops, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.16) #11
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  tail call void @devres_close_group(ptr noundef %25, ptr noundef %27) #8
  br label %cleanup

do.end43:                                         ; preds = %dev_name.exit.do.end43_crit_edge, %if.end5.do.end43_crit_edge, %if.end.do.end43_crit_edge
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.20) #11
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle, align 4
  %call46 = tail call i32 @devres_release_group(ptr noundef %31, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %do.end43 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_protocols_late_init(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  %pending_mtx = getelementptr i8, ptr %work, i32 48
  tail call void @mutex_lock_nested(ptr noundef %pending_mtx, i32 noundef 0) #8
  %pending_events_handlers = getelementptr i8, ptr %work, i32 144
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %registered_protocols.i = getelementptr i8, ptr %work, i32 140
  %handle.i = getelementptr i8, ptr %work, i32 -4
  br label %for.body

for.body:                                         ; preds = %for.inc85.for.body_crit_edge, %entry
  %bkt.0150 = phi i32 [ 0, %entry ], [ %inc, %for.inc85.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %pending_events_handlers, i32 0, i32 %bkt.0150
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr9 = getelementptr i8, ptr %1, i32 -112
  %tobool11.not147151 = icmp eq ptr %add.ptr9, null
  %tobool11.not147 = or i1 %tobool.not, %tobool11.not147151
  br i1 %tobool11.not147, label %for.body.for.inc85_crit_edge, label %for.body.land.rhs12_crit_edge

for.body.land.rhs12_crit_edge:                    ; preds = %for.body
  br label %land.rhs12

for.body.for.inc85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

land.rhs12:                                       ; preds = %if.end74.land.rhs12_crit_edge, %for.body.land.rhs12_crit_edge
  %hndl.1148 = phi ptr [ %add.ptr81, %if.end74.land.rhs12_crit_edge ], [ %add.ptr9, %for.body.land.rhs12_crit_edge ]
  %hash = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl.1148, i32 0, i32 4
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash, align 4
  br i1 %tobool.not.i, label %if.else.thread, label %if.end.i

if.end.i:                                         ; preds = %land.rhs12
  %4 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registered_protocols.i, align 4
  %6 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hndl.1148, align 4
  %shr.i = lshr i32 %7, 24
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %and36.i = lshr i32 %7, 16
  %shr37.i = and i32 %and36.i, 255
  %tobool39.not.i = icmp eq ptr %9, null
  br i1 %tobool39.not.i, label %if.end.i.if.else_crit_edge, label %land.lhs.true.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end.i
  %num_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr37.i, i32 %11)
  %cmp.i = icmp ult i32 %shr37.i, %11
  br i1 %cmp.i, label %if.end46.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end46.i:                                       ; preds = %land.lhs.true.i
  %registered_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %registered_events.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registered_events.i, align 4
  %arrayidx45.i = getelementptr ptr, ptr %13, i32 %shr37.i
  %14 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx45.i, align 4
  %tobool49.not.i = icmp eq ptr %15, null
  br i1 %tobool49.not.i, label %if.end46.i.if.else_crit_edge, label %if.end51.i

if.end46.i.if.else_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end51.i:                                       ; preds = %if.end46.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl.1148, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end51.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

if.end51.i.hash_del.exit.i_crit_edge:             ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %if.end51.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %3, ptr %17, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %20 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %hash, align 4
  %21 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %if.end51.i.hash_del.exit.i_crit_edge
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i, align 4
  %24 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hndl.1148, align 4
  %shr70.i = lshr i32 %25, 24
  %conv.i = trunc i32 %shr70.i to i8
  %call.i = tail call i32 @scmi_protocol_acquire(ptr noundef %23, i8 noundef zeroext %conv.i) #8
  %r_evt71.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl.1148, i32 0, i32 2
  %26 = ptrtoint ptr %r_evt71.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %15, ptr %r_evt71.i, align 4
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %15, align 4
  %registered_mtx.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %28, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx.i, i32 noundef 0) #8
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %15, align 4
  %31 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hndl.1148, align 4
  %mul.i.i.i = mul i32 %32, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx76.i = getelementptr %struct.scmi_registered_events_desc, ptr %30, i32 0, i32 11, i32 %shr.i.i
  %33 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx76.i, align 4
  %35 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %hash, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %hash_del.exit.i.do.body18_crit_edge, label %do.body12.i.i

hash_del.exit.i.do.body18_crit_edge:              ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.body12.i.i:                                    ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %hash, ptr %pprev.i.i, align 4
  br label %do.body18

do.body18:                                        ; preds = %do.body12.i.i, %hash_del.exit.i.do.body18_crit_edge
  %37 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %hash, ptr %arrayidx76.i, align 4
  %38 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx76.i, ptr %pprev.i.i.i.i, align 4
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %15, align 4
  %registered_mtx78.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %40, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx78.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocols_late_init.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocols_late_init, %if.then24)) #8
          to label %do.end26 [label %if.then24], !srcloc !109

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handle.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hndl.1148, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_protocols_late_init.__UNIQUE_ID_ddebug409, ptr noundef %44, ptr noundef nonnull @.str.35, i32 noundef %46) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then24, %do.body18
  %enabled.i.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl.1148, i32 0, i32 5
  %47 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled.i.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i122 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i122, label %if.then.i.i, label %do.end26.if.end74_crit_edge

do.end26.if.end74_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then.i.i:                                      ; preds = %do.end26
  %49 = ptrtoint ptr %r_evt71.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %r_evt71.i, align 4
  %51 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hndl.1148, align 4
  %and.i.i = and i32 %52, 65535
  %call.i.i = tail call fastcc i32 @__scmi_enable_evt(ptr noundef %50, i32 noundef %and.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %do.body30

if.then14.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %enabled.i.i, align 4
  br label %if.end74

do.body30:                                        ; preds = %if.then.i.i
  %54 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hndl.1148, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %55) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocols_late_init.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocols_late_init, %if.then42)) #8
          to label %do.end48 [label %if.then42], !srcloc !109

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hndl.1148, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_protocols_late_init.__UNIQUE_ID_ddebug410, ptr noundef %59, ptr noundef nonnull @.str.36, i32 noundef %61) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then42, %do.body30
  %62 = ptrtoint ptr %r_evt71.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %r_evt71.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %registered_mtx.i124 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %65, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx.i124, i32 noundef 0) #8
  %call.i125 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %hndl.1148) #8
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 4
  %registered_mtx4.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %69, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx4.i) #8
  br i1 %call.i125, label %if.then.i, label %do.end48.if.end74_crit_edge

do.end48.if.end74_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then.i:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handle.i, align 4
  tail call void @scmi_protocol_release(ptr noundef %71, i8 noundef zeroext %67) #8
  br label %if.end74

if.else:                                          ; preds = %if.end46.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %r_evt.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl.1148, i32 0, i32 2
  %72 = ptrtoint ptr %r_evt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %r_evt.i, align 4
  %tobool.not.i128 = icmp eq ptr %73, null
  br i1 %tobool.not.i128, label %if.end19.i.critedge, label %if.else.do.body53_crit_edge

if.else.do.body53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.else.thread:                                   ; preds = %land.rhs12
  %r_evt.i141 = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl.1148, i32 0, i32 2
  %74 = ptrtoint ptr %r_evt.i141 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %r_evt.i141, align 4
  %tobool.not.i128142 = icmp eq ptr %75, null
  br i1 %tobool.not.i128142, label %if.else.thread.if.end74_crit_edge, label %if.else.thread.do.body53_crit_edge

if.else.thread.do.body53_crit_edge:               ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.else.thread.if.end74_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end19.i.critedge:                              ; preds = %if.else
  %76 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %registered_protocols.i, align 4
  %78 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hndl.1148, align 4
  %shr.i131 = lshr i32 %79, 24
  %arrayidx.i132 = getelementptr ptr, ptr %77, i32 %shr.i131
  %80 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %arrayidx.i132, align 4
  %phi.cmp.i = icmp eq ptr %81, null
  br i1 %phi.cmp.i, label %if.end19.i.critedge.if.end74_crit_edge, label %if.end19.i.critedge.do.body53_crit_edge

if.end19.i.critedge.do.body53_crit_edge:          ; preds = %if.end19.i.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.end19.i.critedge.if.end74_crit_edge:           ; preds = %if.end19.i.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.body53:                                        ; preds = %if.end19.i.critedge.do.body53_crit_edge, %if.else.thread.do.body53_crit_edge, %if.else.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocols_late_init.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocols_late_init, %if.then65)) #8
          to label %do.end71 [label %if.then65], !srcloc !109

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %handle.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %hndl.1148 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hndl.1148, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_protocols_late_init.__UNIQUE_ID_ddebug411, ptr noundef %85, ptr noundef nonnull @.str.37, i32 noundef %87) #8
  br label %do.end71

do.end71:                                         ; preds = %if.then65, %do.body53
  %88 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %hndl.1148)
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %if.end19.i.critedge.if.end74_crit_edge, %if.else.thread.if.end74_crit_edge, %if.then.i, %do.end48.if.end74_crit_edge, %if.then14.i.i, %do.end26.if.end74_crit_edge
  %tobool77.not = icmp eq ptr %3, null
  %add.ptr81 = getelementptr i8, ptr %3, i32 -112
  %tobool11.not152 = icmp eq ptr %add.ptr81, null
  %tobool11.not = or i1 %tobool77.not, %tobool11.not152
  br i1 %tobool11.not, label %if.end74.for.inc85_crit_edge, label %if.end74.land.rhs12_crit_edge

if.end74.land.rhs12_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs12

if.end74.for.inc85_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

for.inc85:                                        ; preds = %if.end74.for.inc85_crit_edge, %for.body.for.inc85_crit_edge
  %inc = add nuw nsw i32 %bkt.0150, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end86, label %for.inc85.for.body_crit_edge

for.inc85.for.body_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end86:                                        ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %pending_mtx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_notification_instance_data_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_notification_exit(ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scmi_notification_instance_data_get(ptr noundef %handle) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @scmi_notification_instance_data_set(ptr noundef %handle, ptr noundef null) #8
  %notify_wq = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %notify_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #8
  %handle1 = getelementptr inbounds %struct.scmi_notify_instance, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call2 = tail call i32 @devres_release_group(ptr noundef %5, ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_kfifo_free(ptr noundef %kfifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__kfifo_free(ptr noundef %kfifo) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_events_dispatcher(ptr noundef %work) #0 align 64 {
entry:
  %src_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -32
  %in_flight = getelementptr i8, ptr %work, i32 60
  %kfifo.i = getelementptr i8, ptr %work, i32 -20
  %eh.i = getelementptr i8, ptr %work, i32 52
  %tobool8.not.i = icmp eq ptr %add.ptr3, null
  %num_events.i = getelementptr i8, ptr %work, i32 64
  %registered_events.i = getelementptr i8, ptr %work, i32 68
  %ni121.i = getelementptr i8, ptr %work, i32 48
  br label %do.body

do.body:                                          ; preds = %scmi_process_event_payload.exit, %entry
  %0 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_flight, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then:                                          ; preds = %do.body
  %2 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eh.i, align 4
  %call.i = call i32 @__kfifo_out(ptr noundef %kfifo.i, ptr noundef %3, i32 noundef 16) #8
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end.i [
    i32 0, label %if.then.do.end_crit_edge
    i32 16, label %if.end6.i
  ]

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ni121.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ni121.i, align 4
  %handle.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24) #11
  %11 = ptrtoint ptr %kfifo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %kfifo.i, align 4
  %out.i = getelementptr i8, ptr %work, i32 -16
  %13 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %out.i, align 4
  br label %do.end

if.end6.i:                                        ; preds = %if.then
  br i1 %tobool8.not.i, label %if.end6.i.if.then19.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.then19.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %14 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eh.i, align 4
  %evt_id.i = getelementptr inbounds %struct.scmi_event_header, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %evt_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %evt_id.i, align 4
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp9.i = icmp sgt i32 %19, %conv.i
  br i1 %cmp9.i, label %if.end16.i, label %land.lhs.true.i.if.then19.i_crit_edge

land.lhs.true.i.if.then19.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.end16.i:                                       ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %registered_events.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %registered_events.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %23, null
  br i1 %tobool18.not.i, label %if.end16.i.if.then19.i_crit_edge, label %if.end16.i.if.end_crit_edge

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end16.i.if.then19.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i.if.then19.i_crit_edge, %land.lhs.true.i.if.then19.i_crit_edge, %if.end6.i.if.then19.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then19.i, %if.end16.i.if.end_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end16.i.if.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then19.i ]
  %24 = ptrtoint ptr %in_flight to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %in_flight, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end, %do.body.do.cond_crit_edge
  %r_evt.0 = phi ptr [ %retval.0.i, %if.end ], [ %1, %do.body.do.cond_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_id.i) #8
  %25 = ptrtoint ptr %src_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %src_id.i, align 4, !annotation !115
  %26 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eh.i, align 4
  %payld.i = getelementptr inbounds %struct.scmi_event_header, ptr %27, i32 0, i32 3
  %payld_sz.i = getelementptr inbounds %struct.scmi_event_header, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %payld_sz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %payld_sz.i, align 8
  %call.i20 = call i32 @__kfifo_out(ptr noundef %kfifo.i, ptr noundef %payld.i, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i, label %do.cond.scmi_process_event_payload.exit.thread_crit_edge, label %if.end.i

do.cond.scmi_process_event_payload.exit.thread_crit_edge: ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_process_event_payload.exit.thread

if.end.i:                                         ; preds = %do.cond
  %30 = ptrtoint ptr %in_flight to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %in_flight, align 4
  %31 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eh.i, align 4
  %payld_sz4.i = getelementptr inbounds %struct.scmi_event_header, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %payld_sz4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %payld_sz4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i20, i32 %34)
  %cmp.not.i = icmp eq i32 %call.i20, %34
  br i1 %cmp.not.i, label %if.end9.i, label %do.end.i24

do.end.i24:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %ni121.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ni121.i, align 4
  %handle.i22 = getelementptr inbounds %struct.scmi_notify_instance, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %handle.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handle.i22, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.26) #11
  %41 = ptrtoint ptr %kfifo.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %kfifo.i, align 4
  %out.i23 = getelementptr i8, ptr %work, i32 -16
  %43 = ptrtoint ptr %out.i23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %out.i23, align 4
  br label %scmi_process_event_payload.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %cmp.i.i = icmp ugt ptr %r_evt.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end14.i, label %if.end20.i

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %ni121.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ni121.i, align 4
  %handle16.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %handle16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handle16.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr3, align 4
  %conv.i25 = zext i8 %51 to i32
  %evt_id.i26 = getelementptr inbounds %struct.scmi_event_header, ptr %32, i32 0, i32 2
  %52 = ptrtoint ptr %evt_id.i26 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %evt_id.i26, align 4
  %conv19.i = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.29, i32 noundef %conv.i25, i32 noundef %conv19.i) #11
  br label %scmi_process_event_payload.exit

if.end20.i:                                       ; preds = %if.end9.i
  %54 = ptrtoint ptr %r_evt.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %r_evt.0, align 4
  %ops.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %fill_custom_report.i = getelementptr inbounds %struct.scmi_event_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %fill_custom_report.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fill_custom_report.i, align 4
  %ph.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %55, i32 0, i32 10
  %60 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ph.i, align 4
  %evt_id24.i = getelementptr inbounds %struct.scmi_event_header, ptr %32, i32 0, i32 2
  %62 = ptrtoint ptr %evt_id24.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %evt_id24.i, align 4
  %64 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %32, align 8
  %payld27.i = getelementptr inbounds %struct.scmi_event_header, ptr %32, i32 0, i32 3
  %report31.i = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt.0, i32 0, i32 2
  %66 = ptrtoint ptr %report31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %report31.i, align 4
  %call32.i = call ptr %59(ptr noundef %61, i8 noundef zeroext %63, i64 noundef %65, ptr noundef %payld27.i, i32 noundef %call.i20, ptr noundef %67, ptr noundef nonnull %src_id.i) #8
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %do.end37.i, label %do.body53.i

do.end37.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %ni121.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ni121.i, align 4
  %handle39.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %handle39.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handle39.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr3, align 4
  %conv42.i = zext i8 %75 to i32
  %76 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %eh.i, align 4
  %evt_id44.i = getelementptr inbounds %struct.scmi_event_header, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %evt_id44.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %evt_id44.i, align 4
  %conv45.i = zext i8 %79 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.32, i32 noundef %conv42.i, i32 noundef %conv45.i) #11
  br label %scmi_process_event_payload.exit

do.body53.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr3, align 4
  %conv70.i = zext i8 %81 to i32
  %shl.i = shl nuw i32 %conv70.i, 24
  %82 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %eh.i, align 4
  %evt_id80.i = getelementptr inbounds %struct.scmi_event_header, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %evt_id80.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %evt_id80.i, align 4
  %conv101.i = zext i8 %85 to i32
  %shl102.i = shl nuw nsw i32 %conv101.i, 16
  %or.i = or i32 %shl.i, %shl102.i
  %or120.i = or i32 %or.i, 65535
  %86 = ptrtoint ptr %ni121.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ni121.i, align 4
  call fastcc void @scmi_lookup_and_call_event_chain(ptr noundef %87, i32 noundef %or120.i, ptr noundef nonnull %call32.i) #8
  %88 = ptrtoint ptr %src_id.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %src_id.i, align 4
  %90 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr3, align 4
  %conv148.i = zext i8 %91 to i32
  %shl149.i = shl nuw i32 %conv148.i, 24
  %92 = ptrtoint ptr %eh.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %eh.i, align 4
  %evt_id159.i = getelementptr inbounds %struct.scmi_event_header, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %evt_id159.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %evt_id159.i, align 4
  %conv180.i = zext i8 %95 to i32
  %shl181.i = shl nuw nsw i32 %conv180.i, 16
  %and207.i = and i32 %89, 65535
  %or183.i = or i32 %shl149.i, %and207.i
  %or208.i = or i32 %shl181.i, %or183.i
  %96 = ptrtoint ptr %ni121.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ni121.i, align 4
  call fastcc void @scmi_lookup_and_call_event_chain(ptr noundef %97, i32 noundef %or208.i, ptr noundef nonnull %call32.i) #8
  br label %scmi_process_event_payload.exit

scmi_process_event_payload.exit.thread:           ; preds = %do.end.i24, %do.cond.scmi_process_event_payload.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_id.i) #8
  br label %do.end

scmi_process_event_payload.exit:                  ; preds = %do.body53.i, %do.end37.i, %do.end14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_id.i) #8
  br label %do.body

do.end:                                           ; preds = %scmi_process_event_payload.exit.thread, %do.end.i, %if.then.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_lookup_and_call_event_chain(ptr noundef readonly %ni, i32 noundef %evt_key, ptr noundef %report) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.i = icmp eq ptr %ni, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %registered_protocols.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 5
  %0 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registered_protocols.i, align 4
  %shr.i = lshr i32 %evt_key, 24
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i, align 4
  %and35.i = lshr i32 %evt_key, 16
  %shr36.i = and i32 %and35.i, 255
  %tobool38.not.i = icmp eq ptr %3, null
  br i1 %tobool38.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %num_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr36.i, i32 %5)
  %cmp.i = icmp ult i32 %shr36.i, %5
  br i1 %cmp.i, label %if.end45.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45.i:                                       ; preds = %land.lhs.true.i
  %registered_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %registered_events.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registered_events.i, align 4
  %arrayidx44.i = getelementptr ptr, ptr %7, i32 %shr36.i
  %8 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx44.i, align 4
  %tobool48.not.i = icmp eq ptr %9, null
  br i1 %tobool48.not.i, label %if.end45.i.cleanup_crit_edge, label %if.then49.i

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49.i:                                      ; preds = %if.end45.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %registered_mtx.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %11, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx.i, i32 noundef 0) #8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %mul.i.i.i = mul i32 %evt_key, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx51.i = getelementptr %struct.scmi_registered_events_desc, ptr %13, i32 0, i32 11, i32 %shr.i.i
  %14 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx51.i, align 4
  %tobool53.not.i = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -112
  %tobool55.not105108.i = icmp eq ptr %add.ptr.i, null
  %tobool55.not105.i = or i1 %tobool53.not.i, %tobool55.not105108.i
  br i1 %tobool55.not105.i, label %if.then49.i.scmi_get_active_handler.exit_crit_edge, label %if.then49.i.for.body.i_crit_edge

if.then49.i.for.body.i_crit_edge:                 ; preds = %if.then49.i
  br label %for.body.i

if.then49.i.scmi_get_active_handler.exit_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_get_active_handler.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then49.i.for.body.i_crit_edge
  %obj_.0106.i = phi ptr [ %add.ptr65.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.then49.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %obj_.0106.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %obj_.0106.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %evt_key)
  %cmp56.i = icmp eq i32 %17, %evt_key
  br i1 %cmp56.i, label %if.then71.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hash.i = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_.0106.i, i32 0, i32 4
  %18 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash.i, align 4
  %tobool61.not.i = icmp eq ptr %19, null
  %add.ptr65.i = getelementptr i8, ptr %19, i32 -112
  %tobool55.not110.i = icmp eq ptr %add.ptr65.i, null
  %tobool55.not.i = or i1 %tobool61.not.i, %tobool55.not110.i
  br i1 %tobool55.not.i, label %for.inc.i.scmi_get_active_handler.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.scmi_get_active_handler.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_get_active_handler.exit

if.then71.critedge.i:                             ; preds = %for.body.i
  %users.i = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_.0106.i, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then71.critedge.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !107

if.then71.critedge.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then71.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then71.critedge.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.scmi_get_active_handler.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !106

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.scmi_get_active_handler.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_get_active_handler.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then71.critedge.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then71.critedge.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #8
  br label %scmi_get_active_handler.exit

scmi_get_active_handler.exit:                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.scmi_get_active_handler.exit_crit_edge, %for.inc.i.scmi_get_active_handler.exit_crit_edge, %if.then49.i.scmi_get_active_handler.exit_crit_edge
  %obj_.0104.i = phi ptr [ %obj_.0106.i, %if.end15.sink.split.i.i.i.i ], [ %obj_.0106.i, %if.else.i.i.i.i.scmi_get_active_handler.exit_crit_edge ], [ null, %if.then49.i.scmi_get_active_handler.exit_crit_edge ], [ null, %for.inc.i.scmi_get_active_handler.exit_crit_edge ]
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %registered_mtx74.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %23, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx74.i) #8
  %tobool.not = icmp eq ptr %obj_.0104.i, null
  br i1 %tobool.not, label %scmi_get_active_handler.exit.cleanup_crit_edge, label %if.end

scmi_get_active_handler.exit.cleanup_crit_edge:   ; preds = %scmi_get_active_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %scmi_get_active_handler.exit
  %chain = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_.0104.i, i32 0, i32 3
  %call13 = tail call i32 @blocking_notifier_call_chain(ptr noundef %chain, i32 noundef %shr36.i, ptr noundef %report) #8
  %and14 = and i32 %call13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end49_crit_edge, label %land.rhs

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.rhs:                                         ; preds = %if.end
  %.b64 = load i1, ptr @scmi_lookup_and_call_event_chain.__already_done, align 1
  br i1 %.b64, label %land.rhs.if.end49_crit_edge, label %if.then23, !prof !106

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @scmi_lookup_and_call_event_chain.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 405, i32 noundef 9, ptr noundef null) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then23, %land.rhs.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %r_evt1.i = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_.0104.i, i32 0, i32 2
  %24 = ptrtoint ptr %r_evt1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %r_evt1.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %registered_mtx.i65 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %27, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx.i65, i32 noundef 0) #8
  %call.i = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %obj_.0104.i) #8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  %registered_mtx4.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %31, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx4.i) #8
  br i1 %call.i, label %if.then.i, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %handle.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 1
  %32 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle.i, align 4
  tail call void @scmi_protocol_release(ptr noundef %33, i8 noundef zeroext %29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end49.cleanup_crit_edge, %scmi_get_active_handler.exit.cleanup_crit_edge, %if.end45.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef %hndl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !118
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i, !prof !106

if.end5.i.i.i.if.end3_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 3) #8
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !119
  %r_evt = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 2
  %1 = ptrtoint ptr %r_evt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %r_evt, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  %enabled.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 5
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then1.if.end_crit_edge, label %if.then.i

if.then1.if.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then1
  %5 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hndl, align 4
  %and.i = and i32 %6, 65535
  %call.i = tail call fastcc i32 @__scmi_enable_evt(ptr noundef nonnull %2, i32 noundef %and.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %if.then.i.if.end_crit_edge, %if.then1.if.end_crit_edge, %if.then.if.end_crit_edge
  %hash.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end.scmi_free_event_handler.exit_crit_edge, label %if.then.i.i.i

if.end.scmi_free_event_handler.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_free_event_handler.exit

if.then.i.i.i:                                    ; preds = %if.end
  %10 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %9, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %14 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hash.i, align 4
  %15 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %scmi_free_event_handler.exit

scmi_free_event_handler.exit:                     ; preds = %__hlist_del.exit.i.i.i, %if.end.scmi_free_event_handler.exit_crit_edge
  tail call void @kfree(ptr noundef %hndl) #8
  br label %if.end3

if.end3:                                          ; preds = %scmi_free_event_handler.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end3_crit_edge
  ret i1 %cmp.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__scmi_enable_evt(ptr noundef %r_evt, i32 noundef %src_id, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %src_id)
  %cmp = icmp eq i32 %src_id, 65535
  %num_sources1 = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 3
  %0 = ptrtoint ptr %num_sources1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sources1, align 4
  br i1 %cmp, label %if.end6, label %if.else

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %src_id)
  %cmp3 = icmp ugt i32 %1, %src_id
  br i1 %cmp3, label %if.end6.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sources_mtx = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %sources_mtx, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not81 = icmp eq i32 %1, 0
  br i1 %enable, label %for.cond.preheader, label %for.cond20.preheader

if.end6.thread:                                   ; preds = %if.else
  %sources_mtx87 = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %sources_mtx87, i32 noundef 0) #8
  br i1 %enable, label %if.end6.thread.for.body.lr.ph_crit_edge, label %if.end6.thread.for.body22.lr.ph_crit_edge

if.end6.thread.for.body22.lr.ph_crit_edge:        ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.lr.ph

if.end6.thread.for.body.lr.ph_crit_edge:          ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

for.cond20.preheader:                             ; preds = %if.end6
  br i1 %tobool8.not81, label %for.cond20.preheader.cleanup.sink.split_crit_edge, label %for.cond20.preheader.for.body22.lr.ph_crit_edge

for.cond20.preheader.for.body22.lr.ph_crit_edge:  ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.lr.ph

for.cond20.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader.for.body22.lr.ph_crit_edge, %if.end6.thread.for.body22.lr.ph_crit_edge
  %num_sources.088101 = phi i32 [ %1, %for.cond20.preheader.for.body22.lr.ph_crit_edge ], [ 1, %if.end6.thread.for.body22.lr.ph_crit_edge ]
  %src_id.addr.090100 = phi i32 [ 0, %for.cond20.preheader.for.body22.lr.ph_crit_edge ], [ %src_id, %if.end6.thread.for.body22.lr.ph_crit_edge ]
  %sources_mtx9398 = phi ptr [ %sources_mtx, %for.cond20.preheader.for.body22.lr.ph_crit_edge ], [ %sources_mtx87, %if.end6.thread.for.body22.lr.ph_crit_edge ]
  %sources23 = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 4
  %evt34 = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 1
  br label %for.body22

for.cond.preheader:                               ; preds = %if.end6
  br i1 %tobool8.not81, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.cond.preheader.for.body.lr.ph_crit_edge

for.cond.preheader.for.body.lr.ph_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader.for.body.lr.ph_crit_edge, %if.end6.thread.for.body.lr.ph_crit_edge
  %num_sources.089109 = phi i32 [ %1, %for.cond.preheader.for.body.lr.ph_crit_edge ], [ 1, %if.end6.thread.for.body.lr.ph_crit_edge ]
  %src_id.addr.091108 = phi i32 [ 0, %for.cond.preheader.for.body.lr.ph_crit_edge ], [ %src_id, %if.end6.thread.for.body.lr.ph_crit_edge ]
  %sources_mtx92106 = phi ptr [ %sources_mtx, %for.cond.preheader.for.body.lr.ph_crit_edge ], [ %sources_mtx87, %if.end6.thread.for.body.lr.ph_crit_edge ]
  %sources = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 4
  %evt = getelementptr inbounds %struct.scmi_registered_event, ptr %r_evt, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %src_id.addr.184 = phi i32 [ %src_id.addr.091108, %for.body.lr.ph ], [ %inc, %if.end17.for.body_crit_edge ]
  %retvals.083 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end17.for.body_crit_edge ]
  %num_sources.182 = phi i32 [ %num_sources.089109, %for.body.lr.ph ], [ %dec, %if.end17.for.body_crit_edge ]
  %2 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sources, align 4
  %arrayidx = getelementptr %struct.refcount_struct, ptr %3, i32 %src_id.addr.184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.then10, label %if.else16

if.then10:                                        ; preds = %for.body
  %6 = ptrtoint ptr %r_evt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_evt, align 4
  %ops = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %set_notify_enabled = getelementptr inbounds %struct.scmi_event_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %set_notify_enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_notify_enabled, align 4
  %ph = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ph, align 4
  %14 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %evt, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %call12 = tail call i32 %11(ptr noundef %13, i8 noundef zeroext %17, i32 noundef %src_id.addr.184, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %arrayidx, align 4
  br label %if.end17

if.else16:                                        ; preds = %for.body
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #8, !srcloc !116
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else16.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !107

if.else16.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else16
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end17_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !106

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end17_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else16.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else16.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx, i32 noundef %.sink.i.i.i) #8
  br label %if.end17

if.end17:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end17_crit_edge, %if.then14, %if.then10.if.end17_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then10.if.end17_crit_edge ], [ 0, %if.then14 ], [ 0, %if.else.i.i.i.if.end17_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool18.not = icmp eq i32 %ret.0, 0
  %lnot.ext = zext i1 %tobool18.not to i32
  %add = add i32 %retvals.083, %lnot.ext
  %inc = add i32 %src_id.addr.184, 1
  %dec = add i32 %num_sources.182, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.end42.loopexit, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body22:                                       ; preds = %for.inc38.for.body22_crit_edge, %for.body22.lr.ph
  %src_id.addr.280 = phi i32 [ %src_id.addr.090100, %for.body22.lr.ph ], [ %inc39, %for.inc38.for.body22_crit_edge ]
  %num_sources.279 = phi i32 [ %num_sources.088101, %for.body22.lr.ph ], [ %dec40, %for.inc38.for.body22_crit_edge ]
  %21 = ptrtoint ptr %sources23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sources23, align 4
  %arrayidx24 = getelementptr %struct.refcount_struct, ptr %22, i32 %src_id.addr.280
  %call.i.i.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx24, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %arrayidx24, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx24, ptr %arrayidx24, i32 1, ptr elementtype(i32) %arrayidx24) #8, !srcloc !118
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then26, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i75 = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i75, label %if.end5.i.i.i.for.inc38_crit_edge, label %if.then10.i.i.i, !prof !106

if.end5.i.i.i.for.inc38_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx24, i32 noundef 3) #8
  br label %for.inc38

if.then26:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !119
  %24 = ptrtoint ptr %r_evt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %r_evt, align 4
  %ops30 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops30, align 4
  %set_notify_enabled31 = getelementptr inbounds %struct.scmi_event_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %set_notify_enabled31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_notify_enabled31, align 4
  %ph33 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %25, i32 0, i32 10
  %30 = ptrtoint ptr %ph33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ph33, align 4
  %32 = ptrtoint ptr %evt34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %evt34, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %call36 = tail call i32 %29(ptr noundef %31, i8 noundef zeroext %35, i32 noundef %src_id.addr.280, i1 noundef zeroext false) #8
  br label %for.inc38

for.inc38:                                        ; preds = %if.then26, %if.then10.i.i.i, %if.end5.i.i.i.for.inc38_crit_edge
  %inc39 = add i32 %src_id.addr.280, 1
  %dec40 = add i32 %num_sources.279, -1
  %tobool21.not = icmp eq i32 %dec40, 0
  br i1 %tobool21.not, label %for.inc38.cleanup.sink.split_crit_edge, label %for.inc38.for.body22_crit_edge

for.inc38.for.body22_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.inc38.cleanup.sink.split_crit_edge:           ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end42.loopexit:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  %phi.sel = select i1 %phi.cmp, i32 -22, i32 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end42.loopexit, %for.inc38.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %for.cond20.preheader.cleanup.sink.split_crit_edge
  %sources_mtx92107.sink = phi ptr [ %sources_mtx, %for.cond20.preheader.cleanup.sink.split_crit_edge ], [ %sources_mtx, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %sources_mtx92106, %if.end42.loopexit ], [ %sources_mtx9398, %for.inc38.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %for.cond20.preheader.cleanup.sink.split_crit_edge ], [ -22, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %phi.sel, %if.end42.loopexit ], [ 0, %for.inc38.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sources_mtx92107.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_acquire(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_devm_notifier_register(ptr noundef %sdev, i8 noundef zeroext %proto_id, i8 noundef zeroext %evt_id, ptr noundef %src_id, ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @scmi_devm_release_notifier, i32 noundef 20, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.40) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %call1 = tail call i32 @scmi_notifier_register(ptr noundef %1, i8 noundef zeroext %proto_id, i8 noundef zeroext %evt_id, ptr noundef %src_id, ptr noundef %nb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devres_free(ptr noundef nonnull %call) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call, align 4
  %proto_id7 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %proto_id7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %proto_id, ptr %proto_id7, align 4
  %evt_id8 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %evt_id8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %evt_id, ptr %evt_id8, align 1
  %nb9 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %nb9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nb, ptr %nb9, align 4
  %tobool10.not = icmp eq ptr %src_id, null
  br i1 %tobool10.not, label %if.end4.if.end15_crit_edge, label %if.then11

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_id, align 4
  %__src_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %__src_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %__src_id, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end4.if.end15_crit_edge
  %__src_id.sink = phi ptr [ %__src_id, %if.then11 ], [ null, %if.end4.if.end15_crit_edge ]
  %11 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %__src_id.sink, ptr %11, align 4
  %dev = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_devm_notifier_unregister(ptr noundef %sdev, i8 noundef zeroext %proto_id, i8 noundef zeroext %evt_id, ptr noundef readonly %src_id, ptr nocapture noundef readnone %nb) #0 align 64 {
entry:
  %dres = alloca %struct.scmi_notifier_devres, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dres) #8
  %0 = getelementptr inbounds i8, ptr %dres, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %handle = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %4 = ptrtoint ptr %dres to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dres, align 4
  %proto_id2 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %dres, i32 0, i32 1
  %5 = ptrtoint ptr %proto_id2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %proto_id, ptr %proto_id2, align 4
  %evt_id3 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %dres, i32 0, i32 2
  %6 = ptrtoint ptr %evt_id3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %evt_id, ptr %evt_id3, align 1
  %tobool.not = icmp eq ptr %src_id, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_id, align 4
  %__src_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %dres, i32 0, i32 3
  %9 = ptrtoint ptr %__src_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %__src_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %__src_id.sink = phi ptr [ %__src_id, %if.then ], [ null, %entry.if.end_crit_edge ]
  %10 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %dres, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %__src_id.sink, ptr %10, align 4
  %dev = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %call = call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @scmi_devm_release_notifier, ptr noundef nonnull @scmi_devm_notifier_match, ptr noundef nonnull %dres) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.if.end22_crit_edge, label %do.end, !prof !106

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1552, i32 noundef 9, ptr noundef null) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dres) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_notifier_register(ptr noundef %handle, i8 noundef zeroext %proto_id, i8 noundef zeroext %evt_id, ptr noundef readonly %src_id, ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scmi_notification_instance_data_get(ptr noundef %handle) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  %conv16 = zext i8 %proto_id to i32
  %shl = shl nuw i32 %conv16, 24
  %conv41 = zext i8 %evt_id to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or = or i32 %shl42, %shl
  %tobool51.not = icmp eq ptr %src_id, null
  br i1 %tobool51.not, label %do.body4.cond.end77_crit_edge, label %cond.true75

do.body4.cond.end77_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end77

cond.true75:                                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 4
  %phi.bo = and i32 %1, 65535
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true75, %do.body4.cond.end77_crit_edge
  %cond78 = phi i32 [ %phi.bo, %cond.true75 ], [ 65535, %do.body4.cond.end77_crit_edge ]
  %or81 = or i32 %cond78, %or
  %call.i = tail call fastcc ptr @__scmi_event_handler_get_ops(ptr noundef nonnull %call, i32 noundef %or81, i1 noundef zeroext true) #8
  %tobool83.not = icmp eq ptr %call.i, null
  br i1 %tobool83.not, label %cond.end77.cleanup_crit_edge, label %if.end85

cond.end77.cleanup_crit_edge:                     ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %cond.end77
  %chain = getelementptr inbounds %struct.scmi_event_handler, ptr %call.i, i32 0, i32 3
  %call86 = tail call i32 @blocking_notifier_chain_register(ptr noundef %chain, ptr noundef %nb) #8
  %r_evt = getelementptr inbounds %struct.scmi_event_handler, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %r_evt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_evt, align 4
  %tobool87.not = icmp eq ptr %3, null
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %if.then88

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then88:                                        ; preds = %if.end85
  %enabled.i.i = getelementptr inbounds %struct.scmi_event_handler, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled.i.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then88.cleanup_crit_edge

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then88
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %and.i.i = and i32 %7, 65535
  %call.i.i = tail call fastcc i32 @__scmi_enable_evt(ptr noundef nonnull %3, i32 noundef %and.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.then91

if.then14.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled.i.i, align 4
  br label %cleanup

if.then91:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %10) #11
  tail call fastcc void @scmi_put_handler(ptr noundef nonnull %call, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.then14.i.i, %if.then88.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %cond.end77.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %cond.end77.cleanup_crit_edge ], [ -22, %if.then91 ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %if.then88.cleanup_crit_edge ], [ 0, %if.then14.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_notifier_unregister(ptr noundef %handle, i8 noundef zeroext %proto_id, i8 noundef zeroext %evt_id, ptr noundef readonly %src_id, ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scmi_notification_instance_data_get(ptr noundef %handle) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  %conv16 = zext i8 %proto_id to i32
  %shl = shl nuw i32 %conv16, 24
  %conv41 = zext i8 %evt_id to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or = or i32 %shl42, %shl
  %tobool51.not = icmp eq ptr %src_id, null
  br i1 %tobool51.not, label %do.body4.cond.end77_crit_edge, label %cond.true75

do.body4.cond.end77_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end77

cond.true75:                                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 4
  %phi.bo = and i32 %1, 65535
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true75, %do.body4.cond.end77_crit_edge
  %cond78 = phi i32 [ %phi.bo, %cond.true75 ], [ 65535, %do.body4.cond.end77_crit_edge ]
  %or81 = or i32 %cond78, %or
  %call.i = tail call fastcc ptr @__scmi_event_handler_get_ops(ptr noundef nonnull %call, i32 noundef %or81, i1 noundef zeroext false) #8
  %tobool83.not = icmp eq ptr %call.i, null
  br i1 %tobool83.not, label %cond.end77.cleanup_crit_edge, label %if.end85

cond.end77.cleanup_crit_edge:                     ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #10
  %chain = getelementptr inbounds %struct.scmi_event_handler, ptr %call.i, i32 0, i32 3
  %call86 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %chain, ptr noundef %nb) #8
  tail call fastcc void @scmi_put_handler(ptr noundef nonnull %call, ptr noundef nonnull %call.i)
  tail call fastcc void @scmi_put_handler(ptr noundef nonnull %call, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %cond.end77.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %cond.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_devm_release_notifier(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %proto_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %proto_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto_id, align 4
  %evt_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %evt_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %evt_id, align 1
  %src_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 4
  %6 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_id, align 4
  %nb = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 5
  %8 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nb, align 4
  %call = tail call i32 @scmi_notifier_unregister(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %5, ptr noundef %7, ptr noundef %9)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_devm_notifier_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  %tobool1.not = icmp eq ptr %data, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !107

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1503, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %proto_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %proto_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %proto_id, align 4
  %proto_id25 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %proto_id25 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto_id25, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end24
  %evt_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %evt_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %evt_id, align 1
  %evt_id29 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %evt_id29 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %evt_id29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp31 = icmp eq i8 %5, %7
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true33:                                  ; preds = %land.lhs.true
  %nb = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 5
  %8 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nb, align 4
  %nb34 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %data, i32 0, i32 5
  %10 = ptrtoint ptr %nb34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nb34, align 4
  %cmp35 = icmp eq ptr %9, %11
  br i1 %cmp35, label %land.rhs, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true33
  %src_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 4
  %12 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_id, align 4
  %tobool37.not = icmp eq ptr %13, null
  %src_id39 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %src_id39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src_id39, align 4
  %tobool40.not = icmp eq ptr %15, null
  %brmerge = select i1 %tobool37.not, i1 true, i1 %tobool40.not
  %tobool40.not.mux = select i1 %tobool37.not, i1 %tobool40.not, i1 false
  br i1 %brmerge, label %land.rhs.cleanup_crit_edge, label %land.rhs47

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs47:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %__src_id = getelementptr inbounds %struct.scmi_notifier_devres, ptr %res, i32 0, i32 3
  %16 = ptrtoint ptr %__src_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__src_id, align 4
  %__src_id48 = getelementptr inbounds %struct.scmi_notifier_devres, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %__src_id48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__src_id48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp49 = icmp eq i32 %17, %19
  br label %cleanup

cleanup:                                          ; preds = %land.rhs47, %land.rhs.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0.shrunk = phi i1 [ false, %do.end ], [ false, %land.lhs.true33.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end24.cleanup_crit_edge ], [ %cmp49, %land.rhs47 ], [ %tobool40.not.mux, %land.rhs.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_put_handler(ptr noundef %ni, ptr noundef %hndl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %r_evt1 = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 2
  %0 = ptrtoint ptr %r_evt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_evt1, align 4
  %pending_mtx = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pending_mtx, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %if.then4

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef %hndl)
  br label %if.end10

if.then4:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %registered_mtx = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx, i32 noundef 0) #8
  %call = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef %hndl)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %registered_mtx6 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %7, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx6) #8
  br i1 %call, label %if.then8, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 4
  tail call void @scmi_protocol_release(ptr noundef %9, i8 noundef zeroext %5) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then4.if.end10_crit_edge, %if.end.thread
  tail call void @mutex_unlock(ptr noundef %pending_mtx) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__scmi_event_handler_get_ops(ptr noundef %ni, i32 noundef %evt_key, i1 noundef zeroext %create) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %ni, null
  br i1 %tobool.not, label %entry.if.end45.thread_crit_edge, label %if.end

entry.if.end45.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.thread

if.end:                                           ; preds = %entry
  %registered_protocols = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 5
  %0 = ptrtoint ptr %registered_protocols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registered_protocols, align 4
  %shr = lshr i32 %evt_key, 24
  %arrayidx = getelementptr ptr, ptr %1, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %and35 = lshr i32 %evt_key, 16
  %shr36 = and i32 %and35, 255
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %if.end.if.end45.thread_crit_edge, label %land.lhs.true

if.end.if.end45.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.thread

land.lhs.true:                                    ; preds = %if.end
  %num_events = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_events, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr36, i32 %5)
  %cmp = icmp ult i32 %shr36, %5
  br i1 %cmp, label %if.end45, label %land.lhs.true.if.end45.thread_crit_edge

land.lhs.true.if.end45.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.thread

if.end45.thread:                                  ; preds = %land.lhs.true.if.end45.thread_crit_edge, %if.end.if.end45.thread_crit_edge, %entry.if.end45.thread_crit_edge
  %pending_mtx208 = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pending_mtx208, i32 noundef 0) #8
  br label %if.then77

if.end45:                                         ; preds = %land.lhs.true
  %registered_events = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %registered_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registered_events, align 4
  %arrayidx44 = getelementptr ptr, ptr %7, i32 %shr36
  %8 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx44, align 4
  %pending_mtx = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pending_mtx, i32 noundef 0) #8
  %tobool48.not = icmp eq ptr %9, null
  br i1 %tobool48.not, label %if.end45.if.then77_crit_edge, label %if.then49

if.end45.if.then77_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.then49:                                        ; preds = %if.end45
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %registered_mtx = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %11, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx, i32 noundef 0) #8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %mul.i.i = mul i32 %evt_key, 1640531527
  %shr.i = lshr i32 %mul.i.i, 26
  %arrayidx51 = getelementptr %struct.scmi_registered_events_desc, ptr %13, i32 0, i32 11, i32 %shr.i
  %14 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx51, align 4
  %tobool53.not = icmp eq ptr %15, null
  %add.ptr = getelementptr i8, ptr %15, i32 -112
  %tobool55.not235243 = icmp eq ptr %add.ptr, null
  %tobool55.not235 = or i1 %tobool53.not, %tobool55.not235243
  br i1 %tobool55.not235, label %if.then49.if.end75_crit_edge, label %if.then49.for.body_crit_edge

if.then49.for.body_crit_edge:                     ; preds = %if.then49
  br label %for.body

if.then49.if.end75_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then49.for.body_crit_edge
  %obj_.0236 = phi ptr [ %add.ptr65, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.then49.for.body_crit_edge ]
  %16 = ptrtoint ptr %obj_.0236 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %obj_.0236, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %evt_key)
  %cmp56 = icmp eq i32 %17, %evt_key
  br i1 %cmp56, label %if.then71.critedge, label %for.inc

for.inc:                                          ; preds = %for.body
  %hash = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_.0236, i32 0, i32 4
  %18 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash, align 4
  %tobool61.not = icmp eq ptr %19, null
  %add.ptr65 = getelementptr i8, ptr %19, i32 -112
  %tobool55.not247 = icmp eq ptr %add.ptr65, null
  %tobool55.not = or i1 %tobool61.not, %tobool55.not247
  br i1 %tobool55.not, label %for.inc.if.end75_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end75_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then71.critedge:                               ; preds = %for.body
  %users = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_.0236, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #8, !srcloc !116
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then71.critedge.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !107

if.then71.critedge.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.then71.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then71.critedge
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end75_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !106

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end75_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then71.critedge.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then71.critedge.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #8
  br label %if.end75

if.end75:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end75_crit_edge, %for.inc.if.end75_crit_edge, %if.then49.if.end75_crit_edge
  %obj_.0234 = phi ptr [ %obj_.0236, %if.else.i.i.i.if.end75_crit_edge ], [ %obj_.0236, %if.end15.sink.split.i.i.i ], [ null, %if.then49.if.end75_crit_edge ], [ null, %for.inc.if.end75_crit_edge ]
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %registered_mtx74 = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %23, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx74) #8
  %tobool76.not = icmp eq ptr %obj_.0234, null
  br i1 %tobool76.not, label %if.end75.if.then77_crit_edge, label %if.end75.if.end144_crit_edge

if.end75.if.end144_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end75.if.then77_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.then77:                                        ; preds = %if.end75.if.then77_crit_edge, %if.end45.if.then77_crit_edge, %if.end45.thread
  %pending_mtx210216 = phi ptr [ %pending_mtx, %if.end75.if.then77_crit_edge ], [ %pending_mtx208, %if.end45.thread ], [ %pending_mtx, %if.end45.if.then77_crit_edge ]
  %mul.i.i192 = mul i32 %evt_key, 1640531527
  %shr.i193 = lshr i32 %mul.i.i192, 28
  %arrayidx82 = getelementptr %struct.scmi_notify_instance, ptr %ni, i32 0, i32 6, i32 %shr.i193
  %24 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx82, align 4
  %tobool85.not = icmp eq ptr %25, null
  %add.ptr89 = getelementptr i8, ptr %25, i32 -112
  %tobool94.not237242 = icmp eq ptr %add.ptr89, null
  %tobool94.not237 = or i1 %tobool85.not, %tobool94.not237242
  br i1 %tobool94.not237, label %if.then77.if.end119_crit_edge, label %if.then77.for.body95_crit_edge

if.then77.for.body95_crit_edge:                   ; preds = %if.then77
  br label %for.body95

if.then77.if.end119_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

for.body95:                                       ; preds = %for.inc100.for.body95_crit_edge, %if.then77.for.body95_crit_edge
  %obj_79.0238 = phi ptr [ %add.ptr109, %for.inc100.for.body95_crit_edge ], [ %add.ptr89, %if.then77.for.body95_crit_edge ]
  %26 = ptrtoint ptr %obj_79.0238 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %obj_79.0238, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %evt_key)
  %cmp97 = icmp eq i32 %27, %evt_key
  br i1 %cmp97, label %if.then116.critedge, label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %hash102 = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_79.0238, i32 0, i32 4
  %28 = ptrtoint ptr %hash102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hash102, align 4
  %tobool105.not = icmp eq ptr %29, null
  %add.ptr109 = getelementptr i8, ptr %29, i32 -112
  %tobool94.not246 = icmp eq ptr %add.ptr109, null
  %tobool94.not = or i1 %tobool105.not, %tobool94.not246
  br i1 %tobool94.not, label %for.inc100.if.end119_crit_edge, label %for.inc100.for.body95_crit_edge

for.inc100.for.body95_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95

for.inc100.if.end119_crit_edge:                   ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then116.critedge:                              ; preds = %for.body95
  %users117 = getelementptr inbounds %struct.scmi_event_handler, ptr %obj_79.0238, i32 0, i32 1
  %call.i.i.i.i.i194 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users117, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users117, i32 1, i32 3, i32 1) #8
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users117, ptr %users117, i32 1, ptr elementtype(i32) %users117) #8, !srcloc !116
  %asmresult.i.i.i.i.i195 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i195)
  %tobool1.not.i.i.i196 = icmp eq i32 %asmresult.i.i.i.i.i195, 0
  br i1 %tobool1.not.i.i.i196, label %if.then116.critedge.if.end15.sink.split.i.i.i201_crit_edge, label %if.else.i.i.i199, !prof !107

if.then116.critedge.if.end15.sink.split.i.i.i201_crit_edge: ; preds = %if.then116.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i201

if.else.i.i.i199:                                 ; preds = %if.then116.critedge
  %add.i.i.i197 = add i32 %asmresult.i.i.i.i.i195, 1
  %31 = or i32 %add.i.i.i197, %asmresult.i.i.i.i.i195
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i198 = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i198, label %if.else.i.i.i199.if.end144_crit_edge, label %if.else.i.i.i199.if.end15.sink.split.i.i.i201_crit_edge, !prof !106

if.else.i.i.i199.if.end15.sink.split.i.i.i201_crit_edge: ; preds = %if.else.i.i.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i201

if.else.i.i.i199.if.end144_crit_edge:             ; preds = %if.else.i.i.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end15.sink.split.i.i.i201:                     ; preds = %if.else.i.i.i199.if.end15.sink.split.i.i.i201_crit_edge, %if.then116.critedge.if.end15.sink.split.i.i.i201_crit_edge
  %.sink.i.i.i200 = phi i32 [ 2, %if.then116.critedge.if.end15.sink.split.i.i.i201_crit_edge ], [ 1, %if.else.i.i.i199.if.end15.sink.split.i.i.i201_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users117, i32 noundef %.sink.i.i.i200) #8
  br label %if.end144

if.end119:                                        ; preds = %for.inc100.if.end119_crit_edge, %if.then77.if.end119_crit_edge
  br i1 %create, label %if.then123, label %if.end119.if.end144_crit_edge

if.end119.if.end144_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then123:                                       ; preds = %if.end119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 124) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then123.if.end144_crit_edge, label %if.end.i

if.then123.if.end144_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end.i:                                         ; preds = %if.then123
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %evt_key, ptr %call7.i.i.i, align 8
  %chain.i = getelementptr inbounds %struct.scmi_event_handler, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %chain.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @scmi_allocate_event_handler.__key) #8
  %head.i = getelementptr inbounds %struct.scmi_event_handler, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %head.i, align 4
  %users.i = getelementptr inbounds %struct.scmi_event_handler, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  %35 = ptrtoint ptr %users.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %users.i, align 4
  %hash.i = getelementptr inbounds %struct.scmi_event_handler, ptr %call7.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i.i, align 8
  %mul.i.i.i = mul i32 %37, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 28
  %arrayidx.i = getelementptr %struct.scmi_notify_instance, ptr %ni, i32 0, i32 6, i32 %shr.i.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %hash.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.land.lhs.true126_crit_edge, label %do.body12.i.i

if.end.i.land.lhs.true126_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true126

do.body12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %hash.i, ptr %pprev.i.i, align 4
  br label %land.lhs.true126

land.lhs.true126:                                 ; preds = %do.body12.i.i, %if.end.i.land.lhs.true126_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %hash.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.scmi_event_handler, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  %call127 = tail call fastcc i32 @scmi_register_event_handler(ptr noundef %ni, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %land.lhs.true126.if.end144_crit_edge, label %do.body130

land.lhs.true126.if.end144_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

do.body130:                                       ; preds = %land.lhs.true126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__scmi_event_handler_get_ops.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__scmi_event_handler_get_ops, %if.then137)) #8
          to label %do.end141 [label %if.then137], !srcloc !109

if.then137:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 1
  %44 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__scmi_event_handler_get_ops.__UNIQUE_ID_ddebug356, ptr noundef %47, ptr noundef nonnull @.str.42, i32 noundef %49) #8
  br label %do.end141

do.end141:                                        ; preds = %if.then137, %do.body130
  %50 = tail call fastcc zeroext i1 @scmi_put_handler_unlocked(ptr noundef nonnull %call7.i.i.i)
  br label %if.end144

if.end144:                                        ; preds = %do.end141, %land.lhs.true126.if.end144_crit_edge, %if.then123.if.end144_crit_edge, %if.end119.if.end144_crit_edge, %if.end15.sink.split.i.i.i201, %if.else.i.i.i199.if.end144_crit_edge, %if.end75.if.end144_crit_edge
  %pending_mtx210215226 = phi ptr [ %pending_mtx210216, %if.end119.if.end144_crit_edge ], [ %pending_mtx210216, %do.end141 ], [ %pending_mtx210216, %land.lhs.true126.if.end144_crit_edge ], [ %pending_mtx210216, %if.then123.if.end144_crit_edge ], [ %pending_mtx210216, %if.end15.sink.split.i.i.i201 ], [ %pending_mtx210216, %if.else.i.i.i199.if.end144_crit_edge ], [ %pending_mtx, %if.end75.if.end144_crit_edge ]
  %hndl.2 = phi ptr [ null, %if.end119.if.end144_crit_edge ], [ null, %do.end141 ], [ %call7.i.i.i, %land.lhs.true126.if.end144_crit_edge ], [ null, %if.then123.if.end144_crit_edge ], [ %obj_79.0238, %if.end15.sink.split.i.i.i201 ], [ %obj_79.0238, %if.else.i.i.i199.if.end144_crit_edge ], [ %obj_.0234, %if.end75.if.end144_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pending_mtx210215226) #8
  ret ptr %hndl.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scmi_register_event_handler(ptr noundef readonly %ni, ptr noundef %hndl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ni, null
  br i1 %tobool.not.i, label %if.else.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %registered_protocols.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 5
  %0 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registered_protocols.i, align 4
  %2 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hndl, align 4
  %shr.i = lshr i32 %3, 24
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %and36.i = lshr i32 %3, 16
  %shr37.i = and i32 %and36.i, 255
  %tobool39.not.i = icmp eq ptr %5, null
  br i1 %tobool39.not.i, label %if.end.i.if.else_crit_edge, label %land.lhs.true.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end.i
  %num_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr37.i, i32 %7)
  %cmp.i = icmp ult i32 %shr37.i, %7
  br i1 %cmp.i, label %if.end46.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end46.i:                                       ; preds = %land.lhs.true.i
  %registered_events.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %registered_events.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %registered_events.i, align 4
  %arrayidx45.i = getelementptr ptr, ptr %9, i32 %shr37.i
  %10 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx45.i, align 4
  %tobool49.not.i = icmp eq ptr %11, null
  br i1 %tobool49.not.i, label %if.end46.i.if.else_crit_edge, label %if.end51.i

if.end46.i.if.else_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end51.i:                                       ; preds = %if.end46.i
  %hash.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end51.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

if.end51.i.hash_del.exit.i_crit_edge:             ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %if.end51.i
  %14 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hash.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %18 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %hash.i, align 4
  %19 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %if.end51.i.hash_del.exit.i_crit_edge
  %handle.i = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 1
  %20 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle.i, align 4
  %22 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hndl, align 4
  %shr70.i = lshr i32 %23, 24
  %conv.i = trunc i32 %shr70.i to i8
  %call.i = tail call i32 @scmi_protocol_acquire(ptr noundef %21, i8 noundef zeroext %conv.i) #8
  %r_evt71.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 2
  %24 = ptrtoint ptr %r_evt71.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %11, ptr %r_evt71.i, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %11, align 4
  %registered_mtx.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %26, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %registered_mtx.i, i32 noundef 0) #8
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %11, align 4
  %29 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hndl, align 4
  %mul.i.i.i = mul i32 %30, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx76.i = getelementptr %struct.scmi_registered_events_desc, ptr %28, i32 0, i32 11, i32 %shr.i.i
  %31 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx76.i, align 4
  %33 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %hash.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %hash_del.exit.i.do.body_crit_edge, label %do.body12.i.i

hash_del.exit.i.do.body_crit_edge:                ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body12.i.i:                                    ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %hash.i, ptr %pprev.i.i, align 4
  br label %do.body

do.body:                                          ; preds = %do.body12.i.i, %hash_del.exit.i.do.body_crit_edge
  %35 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %hash.i, ptr %arrayidx76.i, align 4
  %36 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx76.i, ptr %pprev.i.i.i.i, align 4
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %11, align 4
  %registered_mtx78.i = getelementptr inbounds %struct.scmi_registered_events_desc, ptr %38, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %registered_mtx78.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_register_event_handler.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_register_event_handler, %if.then5)) #8
          to label %if.end29 [label %if.then5], !srcloc !109

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handle.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hndl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_register_event_handler.__UNIQUE_ID_ddebug342, ptr noundef %42, ptr noundef nonnull @.str.45, i32 noundef %44) #8
  br label %if.end29

if.else:                                          ; preds = %if.end46.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %r_evt.i = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 2
  %45 = ptrtoint ptr %r_evt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %r_evt.i, align 4
  %tobool.not.i42 = icmp eq ptr %46, null
  br i1 %tobool.not.i42, label %if.end19.i.critedge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else.thread:                                   ; preds = %entry
  %r_evt.i51 = getelementptr inbounds %struct.scmi_event_handler, ptr %hndl, i32 0, i32 2
  %47 = ptrtoint ptr %r_evt.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %r_evt.i51, align 4
  %tobool.not.i4252 = icmp eq ptr %48, null
  br i1 %tobool.not.i4252, label %if.else.thread.do.body9_crit_edge, label %if.else.thread.if.end29_crit_edge

if.else.thread.if.end29_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else.thread.do.body9_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.end19.i.critedge:                              ; preds = %if.else
  %49 = ptrtoint ptr %registered_protocols.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %registered_protocols.i, align 4
  %51 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hndl, align 4
  %shr.i45 = lshr i32 %52, 24
  %arrayidx.i46 = getelementptr ptr, ptr %50, i32 %shr.i45
  %53 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %arrayidx.i46, align 4
  %phi.cmp.i = icmp eq ptr %54, null
  br i1 %phi.cmp.i, label %if.end19.i.critedge.do.body9_crit_edge, label %if.end19.i.critedge.if.end29_crit_edge

if.end19.i.critedge.if.end29_crit_edge:           ; preds = %if.end19.i.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end19.i.critedge.do.body9_crit_edge:           ; preds = %if.end19.i.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.body9:                                         ; preds = %if.end19.i.critedge.do.body9_crit_edge, %if.else.thread.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_register_event_handler.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_register_event_handler, %if.then21)) #8
          to label %if.end29 [label %if.then21], !srcloc !109

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %handle22 = getelementptr inbounds %struct.scmi_notify_instance, ptr %ni, i32 0, i32 1
  %55 = ptrtoint ptr %handle22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handle22, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %hndl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hndl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_register_event_handler.__UNIQUE_ID_ddebug343, ptr noundef %58, ptr noundef nonnull @.str.46, i32 noundef %60) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %do.body9, %if.end19.i.critedge.if.end29_crit_edge, %if.else.thread.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.then5, %do.body
  %ret.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.then5 ], [ 0, %do.body ], [ 0, %do.body9 ], [ -22, %if.else.if.end29_crit_edge ], [ -22, %if.end19.i.critedge.if.end29_crit_edge ], [ -22, %if.else.thread.if.end29_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 594, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @scmi_notify._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @scmi_notify._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 598, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @scmi_notify._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @scmi_notify._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @scmi_register_protocol_events.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 805, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 815, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @scmi_register_protocol_events.__UNIQUE_ID_ddebug303, !17, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!21 = !{ptr @scmi_notification_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1673, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @scmi_notification_init.__key.14, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1676, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1683, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @scmi_notification_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @scmi_notification_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1690, i32 2}
!35 = !{ptr @scmi_notification_init._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @scmi_notification_init._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @scmi_allocate_registered_events_desc.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 727, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @scmi_initialize_events_queue.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 666, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 436, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @scmi_process_event_header._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @scmi_process_event_header._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 478, i32 3}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @scmi_process_event_payload._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @scmi_process_event_payload._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 484, i32 3}
!55 = !{ptr @scmi_process_event_payload._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @scmi_process_event_payload._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 494, i32 3}
!59 = !{ptr @scmi_process_event_payload._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @scmi_process_event_payload._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 405, i32 2}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1585, i32 4}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @scmi_protocols_late_init.__UNIQUE_ID_ddebug409, !64, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1590, i32 5}
!69 = !{ptr @scmi_protocols_late_init.__UNIQUE_ID_ddebug410, !68, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1598, i32 5}
!72 = !{ptr @scmi_protocols_late_init.__UNIQUE_ID_ddebug411, !71, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1302, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @scmi_event_handler_enable_events._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @scmi_event_handler_enable_events._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @notify_ops, !79, !"notify_ops", i1 false, i1 false}
!79 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1613, i32 37}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1471, i32 9}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1078, i32 4}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @__scmi_event_handler_get_ops.__UNIQUE_ID_ddebug356, !83, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!86 = !{ptr @scmi_allocate_event_handler.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 884, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1003, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @scmi_register_event_handler.__UNIQUE_ID_ddebug342, !90, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/firmware/arm_scmi/notify.c", i32 1008, i32 4}
!95 = !{ptr @scmi_register_event_handler.__UNIQUE_ID_ddebug343, !94, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2154597006}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2154601746}
!109 = !{i64 2148243525, i64 2148243530, i64 2148243543, i64 2148243587, i64 2148243621, i64 2148243642}
!110 = !{i64 2154733942}
!111 = !{i64 2154734110}
!112 = !{i64 2156500854}
!113 = !{i64 2156486801}
!114 = !{i8 0, i8 2}
!115 = !{!"auto-init"}
!116 = !{i64 2148562193, i64 2148562225, i64 2148562254, i64 2148562288, i64 2148562319, i64 2148562342}
!117 = !{i64 2148650194}
!118 = !{i64 2148564658, i64 2148564690, i64 2148564719, i64 2148564753, i64 2148564784, i64 2148564807}
!119 = !{i64 2149679120}
