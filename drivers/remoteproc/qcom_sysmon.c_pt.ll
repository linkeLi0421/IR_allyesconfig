; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_sysmon.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_sysmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcom_add_sysmon_subdev\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_add_sysmon_subdev\09\09\09\09"
module asm "\09.long\09__crc_qcom_add_sysmon_subdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_add_sysmon_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_add_sysmon_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_add_sysmon_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_remove_sysmon_subdev\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_remove_sysmon_subdev\09\09\09\09"
module asm "\09.long\09__crc_qcom_remove_sysmon_subdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_remove_sysmon_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_remove_sysmon_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_remove_sysmon_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_sysmon_shutdown_acked\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_sysmon_shutdown_acked\09\09\09\09"
module asm "\09.long\09__crc_qcom_sysmon_shutdown_acked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_sysmon_shutdown_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_sysmon_shutdown_acked\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_sysmon_shutdown_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.qcom_sysmon = type { %struct.rproc_subdev, ptr, i32, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, %struct.notifier_block, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.mutex, i8, i8, %struct.qmi_handle, %struct.sockaddr_qrtr }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.sysmon_event = type { ptr, i32 }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.ssctl_subsys_event_resp = type { %struct.qmi_response_type_v01 }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.ssctl_subsys_event_req = type { i8, [15 x i8], i32, i8, i32 }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.ssctl_shutdown_resp = type { %struct.qmi_response_type_v01 }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }

@qcom_add_sysmon_subdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sysmon->lock\00", [18 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sysmon->state_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"shutdown-ack\00", [19 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 642, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to retrieve shutdown-ack IRQ\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_add_sysmon_subdev\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/remoteproc/qcom_sysmon.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev._entry_ptr = internal global ptr @qcom_add_sysmon_subdev._entry, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"q6v5 shutdown-ack\00", [46 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 653, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to acquire shutdown-ack IRQ\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev._entry_ptr.12 = internal global ptr @qcom_add_sysmon_subdev._entry.10, section ".printk_index", align 4
@ssctl_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @ssctl_new_server, ptr @ssctl_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qmi_indication_handler = internal constant { [2 x %struct.qmi_msg_handler], [56 x i8] } { [2 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 4, i32 33, ptr @ssctl_shutdown_ind_ei, i32 0, ptr @sysmon_ind_cb }, %struct.qmi_msg_handler zeroinitializer], [56 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 661, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize qmi handle\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_add_sysmon_subdev._entry_ptr.15 = internal global ptr @qcom_add_sysmon_subdev._entry.13, section ".printk_index", align 4
@sysmon_notifiers = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @sysmon_notifiers, i64 56), ptr getelementptr (i8, ptr @sysmon_notifiers, i64 56) }, ptr @sysmon_notifiers, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@sysmon_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sysmon_lock, i64 52), ptr getelementptr (i8, ptr @sysmon_lock, i64 52) }, ptr @sysmon_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@sysmon_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sysmon_list, ptr @sysmon_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_qcom_add_sysmon_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_add_sysmon_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_add_sysmon_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_add_sysmon_subdev to i32), ptr @__kstrtab_qcom_add_sysmon_subdev, ptr @__kstrtabns_qcom_add_sysmon_subdev }, section "___ksymtab_gpl+qcom_add_sysmon_subdev", align 4
@__kstrtab_qcom_remove_sysmon_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_remove_sysmon_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_remove_sysmon_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_remove_sysmon_subdev to i32), ptr @__kstrtab_qcom_remove_sysmon_subdev, ptr @__kstrtabns_qcom_remove_sysmon_subdev }, section "___ksymtab_gpl+qcom_remove_sysmon_subdev", align 4
@__kstrtab_qcom_sysmon_shutdown_acked = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_sysmon_shutdown_acked = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_sysmon_shutdown_acked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_sysmon_shutdown_acked to i32), ptr @__kstrtab_qcom_sysmon_shutdown_acked, ptr @__kstrtabns_qcom_sysmon_shutdown_acked }, section "___ksymtab_gpl+qcom_sysmon_shutdown_acked", align 4
@__initcall__kmod_qcom_sysmon__237_793_sysmon_driver_init6 = internal global ptr @sysmon_driver_init, section ".initcall6.init", align 4
@sysmon_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str.29, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sysmon_match, ptr @sysmon_probe, ptr @sysmon_remove, ptr @sysmon_callback }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sysmon_driver_exit = internal global ptr @sysmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [47 x i8] c"qcom_sysmon.description=Qualcomm sysmon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"qcom_sysmon.file=drivers/remoteproc/qcom_sysmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"qcom_sysmon.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@ssctl_shutdown_ind_ei = internal global { [1 x %struct.qmi_elem_info], [36 x i8] } zeroinitializer, align 32
@ssctl_subsys_event_resp_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ssctl_send_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 385, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate QMI txn\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssctl_send_event\00", [47 x i8] zeroinitializer }, align 32
@ssctl_send_event._entry_ptr = internal global ptr @ssctl_send_event._entry, section ".printk_index", align 4
@ssctl_subsys_event_req_ei = internal global { [6 x %struct.qmi_elem_info], [56 x i8] } { [6 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 3, i32 15, i32 1, i32 2, i8 1, i32 1, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 2, i32 16, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 20, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 16, i32 24, ptr null }, %struct.qmi_elem_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ssctl_send_event._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 400, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to send subsystem event\0A\00", [32 x i8] zeroinitializer }, align 32
@ssctl_send_event._entry_ptr.22 = internal global ptr @ssctl_send_event._entry.20, section ".printk_index", align 4
@ssctl_send_event._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.6, i32 407, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timeout waiting for subsystem event response\0A\00", [50 x i8] zeroinitializer }, align 32
@ssctl_send_event._entry_ptr.25 = internal global ptr @ssctl_send_event._entry.23, section ".printk_index", align 4
@ssctl_send_event._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.6, i32 409, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"subsystem event rejected\0A\00", [38 x i8] zeroinitializer }, align 32
@ssctl_send_event._entry_ptr.28 = internal global ptr @ssctl_send_event._entry.26, section ".printk_index", align 4
@ssctl_send_event.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.19, ptr @.str.6, ptr @.str.30, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom_sysmon\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"subsystem event accepted\0A\00", [38 x i8] zeroinitializer }, align 32
@qmi_response_type_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssr:%s:%s\00", [22 x i8] zeroinitializer }, align 32
@sysmon_state_string = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@sysmon_send_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 98, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to send sysmon event\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sysmon_send_event\00", [46 x i8] zeroinitializer }, align 32
@sysmon_send_event._entry_ptr = internal global ptr @sysmon_send_event._entry, section ".printk_index", align 4
@sysmon_send_event._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 105, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout waiting for sysmon ack\0A\00", [32 x i8] zeroinitializer }, align 32
@sysmon_send_event._entry_ptr.36 = internal global ptr @sysmon_send_event._entry.34, section ".printk_index", align 4
@sysmon_send_event._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.6, i32 110, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected response to sysmon event\0A\00", [59 x i8] zeroinitializer }, align 32
@sysmon_send_event._entry_ptr.39 = internal global ptr @sysmon_send_event._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"before_powerup\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"after_powerup\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"before_shutdown\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"after_shutdown\00", [17 x i8] zeroinitializer }, align 32
@ssctl_shutdown_resp_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.44, ptr @.str.6, i32 341, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssctl_request_shutdown\00", [41 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown._entry_ptr = internal global ptr @ssctl_request_shutdown._entry, section ".printk_index", align 4
@ssctl_request_shutdown._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.6, i32 348, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to send shutdown request\0A\00", [63 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown._entry_ptr.47 = internal global ptr @ssctl_request_shutdown._entry.45, section ".printk_index", align 4
@ssctl_request_shutdown._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.6, i32 355, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timeout waiting for shutdown response\0A\00", [57 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown._entry_ptr.50 = internal global ptr @ssctl_request_shutdown._entry.48, section ".printk_index", align 4
@ssctl_request_shutdown._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.6, i32 357, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shutdown request rejected\0A\00", [37 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown._entry_ptr.53 = internal global ptr @ssctl_request_shutdown._entry.51, section ".printk_index", align 4
@ssctl_request_shutdown.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.44, ptr @.str.6, ptr @.str.54, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"shutdown request completed\0A\00", [36 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 320, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for shutdown ack\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ssctl_request_shutdown_wait\00", [36 x i8] zeroinitializer }, align 32
@ssctl_request_shutdown_wait._entry_ptr = internal global ptr @ssctl_request_shutdown_wait._entry, section ".printk_index", align 4
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssr:shutdown\00", [19 x i8] zeroinitializer }, align 32
@sysmon_request_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 134, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"send sysmon shutdown request failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sysmon_request_shutdown\00", [40 x i8] zeroinitializer }, align 32
@sysmon_request_shutdown._entry_ptr = internal global ptr @sysmon_request_shutdown._entry, section ".printk_index", align 4
@sysmon_request_shutdown._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.59, ptr @.str.6, i32 141, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sysmon_request_shutdown._entry_ptr.61 = internal global ptr @sysmon_request_shutdown._entry.60, section ".printk_index", align 4
@sysmon_request_shutdown._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.6, i32 147, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unexpected response to sysmon shutdown request\0A\00", [48 x i8] zeroinitializer }, align 32
@sysmon_request_shutdown._entry_ptr.64 = internal global ptr @sysmon_request_shutdown._entry.62, section ".printk_index", align 4
@sysmon_notify.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.65, ptr @.str.6, ptr @.str.66, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sysmon_notify\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"not notifying %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(sysmon_notifiers).rwsem.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(sysmon_notifiers).rwsem\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysmon_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysmon_lock\00", [20 x i8] zeroinitializer }, align 32
@sysmon_match = internal constant { [2 x %struct.rpmsg_device_id], [56 x i8] } { [2 x %struct.rpmsg_device_id] [%struct.rpmsg_device_id { [32 x i8] c"sys_mon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.rpmsg_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sysmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 741, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sysmon device not child of rproc\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sysmon_probe\00", [19 x i8] zeroinitializer }, align 32
@sysmon_probe._entry_ptr = internal global ptr @sysmon_probe._entry, section ".printk_index", align 4
@sysmon_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.6, i32 752, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no sysmon associated with parent rproc\0A\00", [56 x i8] zeroinitializer }, align 32
@sysmon_probe._entry_ptr.75 = internal global ptr @sysmon_probe._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssr:ack\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 634, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 635, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 638, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 641, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 650, i32 7 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 652, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"ssctl_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 463, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"qmi_indication_handler\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 297, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 661, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"sysmon_notifiers\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"sysmon_lock\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"sysmon_list\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 73, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"sysmon_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 783, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 87, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 429, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant [22 x i8] c"ssctl_shutdown_ind_ei\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 285, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"ssctl_subsys_event_resp_ei\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 271, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 385, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"ssctl_subsys_event_req_ei\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 213, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 400, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 407, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 409, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 411, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 87, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"sysmon_state_string\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 60, i32 27 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 98, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 105, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 110, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 61, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 62, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 63, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 64, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant [23 x i8] c"ssctl_shutdown_resp_ei\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 192, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 341, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 348, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 355, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 357, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 359, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 320, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 124, i32 14 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 134, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 141, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 146, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 584, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 19, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 72, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"sysmon_match\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 778, i32 37 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 741, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 752, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [36 x i8] c"../drivers/remoteproc/qcom_sysmon.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 161, i32 24 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sysmon_driver_exit, ptr @__initcall__kmod_qcom_sysmon__237_793_sysmon_driver_init6, ptr @__ksymtab_qcom_add_sysmon_subdev, ptr @__ksymtab_qcom_remove_sysmon_subdev, ptr @__ksymtab_qcom_sysmon_shutdown_acked, ptr @qcom_add_sysmon_subdev._entry, ptr @qcom_add_sysmon_subdev._entry.10, ptr @qcom_add_sysmon_subdev._entry.13, ptr @qcom_add_sysmon_subdev._entry_ptr, ptr @qcom_add_sysmon_subdev._entry_ptr.12, ptr @qcom_add_sysmon_subdev._entry_ptr.15, ptr @ssctl_request_shutdown._entry, ptr @ssctl_request_shutdown._entry.45, ptr @ssctl_request_shutdown._entry.48, ptr @ssctl_request_shutdown._entry.51, ptr @ssctl_request_shutdown._entry_ptr, ptr @ssctl_request_shutdown._entry_ptr.47, ptr @ssctl_request_shutdown._entry_ptr.50, ptr @ssctl_request_shutdown._entry_ptr.53, ptr @ssctl_request_shutdown_wait._entry, ptr @ssctl_request_shutdown_wait._entry_ptr, ptr @ssctl_send_event._entry, ptr @ssctl_send_event._entry.20, ptr @ssctl_send_event._entry.23, ptr @ssctl_send_event._entry.26, ptr @ssctl_send_event._entry_ptr, ptr @ssctl_send_event._entry_ptr.22, ptr @ssctl_send_event._entry_ptr.25, ptr @ssctl_send_event._entry_ptr.28, ptr @sysmon_driver_exit, ptr @sysmon_probe._entry, ptr @sysmon_probe._entry.73, ptr @sysmon_probe._entry_ptr, ptr @sysmon_probe._entry_ptr.75, ptr @sysmon_request_shutdown._entry, ptr @sysmon_request_shutdown._entry.60, ptr @sysmon_request_shutdown._entry.62, ptr @sysmon_request_shutdown._entry_ptr, ptr @sysmon_request_shutdown._entry_ptr.61, ptr @sysmon_request_shutdown._entry_ptr.64, ptr @sysmon_send_event._entry, ptr @sysmon_send_event._entry.34, ptr @sysmon_send_event._entry.37, ptr @sysmon_send_event._entry_ptr, ptr @sysmon_send_event._entry_ptr.36, ptr @sysmon_send_event._entry_ptr.39, ptr @qcom_add_sysmon_subdev.__key, ptr @.str, ptr @qcom_add_sysmon_subdev.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @ssctl_ops, ptr @qmi_indication_handler, ptr @.str.14, ptr @sysmon_notifiers, ptr @sysmon_lock, ptr @sysmon_list, ptr @sysmon_driver, ptr @init_completion.__key, ptr @.str.16, ptr @.str.17, ptr @ssctl_shutdown_ind_ei, ptr @ssctl_subsys_event_resp_ei, ptr @.str.18, ptr @.str.19, ptr @ssctl_subsys_event_req_ei, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @sysmon_state_string, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @ssctl_shutdown_resp_ei, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @sysmon_match, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_add_sysmon_subdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_add_sysmon_subdev.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_add_sysmon_subdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_add_sysmon_subdev._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_indication_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_add_sysmon_subdev._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_notifiers to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_shutdown_ind_ei to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_subsys_event_resp_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_send_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_subsys_event_req_ei to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_send_event._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_send_event._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_send_event._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_state_string to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_send_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_send_event._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_send_event._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_shutdown_resp_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_request_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_request_shutdown._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_request_shutdown._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_request_shutdown._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssctl_request_shutdown_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_request_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_request_shutdown._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_request_shutdown._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_match to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysmon_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_add_sysmon_subdev(ptr noundef %rproc, ptr noundef %name, i32 noundef %ssctl_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 812) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %dev2 = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dev2, align 8
  %rproc3 = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %rproc3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rproc, ptr %rproc3, align 8
  %name4 = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name4, align 4
  %ssctl_instance5 = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %ssctl_instance5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ssctl_instance, ptr %ssctl_instance5, align 8
  %comp = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %comp, align 8
  %wait.i = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #13
  %ind_comp = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %ind_comp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ind_comp, align 8
  %wait.i90 = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i90, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #13
  %shutdown_comp = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %shutdown_comp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %shutdown_comp, align 8
  %wait.i91 = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i91, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #13
  %lock = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @qcom_add_sysmon_subdev.__key) #13
  %state_lock = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @qcom_add_sysmon_subdev.__key.1) #13
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call10 = tail call i32 @of_irq_get_byname(ptr noundef %13, ptr noundef nonnull @.str.3) #13
  %shutdown_irq = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %shutdown_irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10, ptr %shutdown_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call10)
  %cmp14.not = icmp eq i32 %call10, -61
  br i1 %cmp14.not, label %if.then12.if.end34_crit_edge, label %do.end18

if.then12.if.end34_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #17
  %17 = ptrtoint ptr %shutdown_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shutdown_irq, align 8
  %19 = inttoptr i32 %18 to ptr
  br label %cleanup

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 8
  %call25 = tail call i32 @devm_request_threaded_irq(ptr noundef %21, i32 noundef %call10, ptr noundef null, ptr noundef nonnull @sysmon_shutdown_interrupt, i32 noundef 8193, ptr noundef nonnull @.str.9, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else.if.end34_crit_edge, label %do.end30

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11) #17
  %24 = inttoptr i32 %call25 to ptr
  br label %cleanup

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then12.if.end34_crit_edge
  %qmi = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 18
  %call35 = tail call i32 @qmi_handle_init(ptr noundef %qmi, i32 noundef 7, ptr noundef nonnull @ssctl_ops, ptr noundef nonnull @qmi_indication_handler) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.14) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %27 = inttoptr i32 %call35 to ptr
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %call45 = tail call i32 @qmi_add_lookup(ptr noundef %qmi, i32 noundef 43, i32 noundef 0, i32 noundef 0) #13
  %prepare = getelementptr inbounds %struct.rproc_subdev, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sysmon_prepare, ptr %prepare, align 8
  %start = getelementptr inbounds %struct.rproc_subdev, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sysmon_start, ptr %start, align 4
  %stop = getelementptr inbounds %struct.rproc_subdev, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sysmon_stop, ptr %stop, align 8
  %unprepare = getelementptr inbounds %struct.rproc_subdev, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %unprepare to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sysmon_unprepare, ptr %unprepare, align 4
  tail call void @rproc_add_subdev(ptr noundef %rproc, ptr noundef nonnull %call7.i.i) #13
  %nb = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sysmon_notify, ptr %nb, align 4
  %call51 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @sysmon_notifiers, ptr noundef %nb) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysmon_lock, i32 noundef 0) #13
  %node = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 4
  %33 = load ptr, ptr @sysmon_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @sysmon_list, ptr noundef %33) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add.exit_crit_edge

if.end43.list_add.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node, ptr %prev1.i.i, align 4
  %35 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.qcom_sysmon, ptr %call7.i.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sysmon_list, ptr %prev3.i.i, align 8
  store volatile ptr %node, ptr @sysmon_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end43.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sysmon_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end40, %do.end30, %do.end18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %do.end18 ], [ %27, %do.end40 ], [ %call7.i.i, %list_add.exit ], [ %24, %do.end30 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_shutdown_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown_comp = getelementptr inbounds %struct.qcom_sysmon, ptr %data, i32 0, i32 14
  tail call void @complete(ptr noundef %shutdown_comp) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_prepare(ptr noundef %subdev) #0 align 64 {
entry:
  %event = alloca %struct.sysmon_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #13
  %0 = getelementptr inbounds %struct.sysmon_event, ptr %event, i32 0, i32 1
  %name = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %event, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %state_lock = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #13
  %state = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %call = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @sysmon_notifiers, i32 noundef 0, ptr noundef nonnull %event) #13
  call void @mutex_unlock(ptr noundef %state_lock) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_start(ptr noundef %subdev) #0 align 64 {
entry:
  %event = alloca %struct.sysmon_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #13
  %0 = getelementptr inbounds %struct.sysmon_event, ptr %event, i32 0, i32 1
  %name = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %event, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 4
  %state_lock = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #13
  %state = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 4
  %call = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @sysmon_notifiers, i32 noundef 0, ptr noundef nonnull %event) #13
  call void @mutex_unlock(ptr noundef %state_lock) #13
  call void @mutex_lock_nested(ptr noundef nonnull @sysmon_lock, i32 noundef 0) #13
  %.pn35 = load ptr, ptr @sysmon_list, align 4
  %cmp.not36 = icmp eq ptr %.pn35, @sysmon_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ssctl_version = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 7
  %ept = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn37 = phi ptr [ %.pn35, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %target.0 = getelementptr i8, ptr %.pn37, i32 -124
  %cmp5 = icmp eq ptr %target.0, %subdev
  br i1 %cmp5, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %state_lock6 = getelementptr i8, ptr %.pn37, i32 -92
  call void @mutex_lock_nested(ptr noundef %state_lock6, i32 noundef 0) #13
  %name7 = getelementptr i8, ptr %.pn37, i32 8
  %6 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name7, align 4
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %event, align 4
  %state9 = getelementptr i8, ptr %.pn37, i32 -96
  %9 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state9, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %12 = ptrtoint ptr %ssctl_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssctl_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp11 = icmp eq i32 %13, 2
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @ssctl_send_event(ptr noundef %subdev, ptr noundef nonnull %event)
  br label %if.end15

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ept, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else.if.end15_crit_edge, label %if.then13

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sysmon_send_event(ptr noundef %subdev, ptr noundef nonnull %event)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else.if.end15_crit_edge, %if.then12
  call void @mutex_unlock(ptr noundef %state_lock6) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, @sysmon_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @sysmon_lock) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysmon_stop(ptr noundef %subdev, i1 noundef zeroext %crashed) #0 align 64 {
entry:
  %event = alloca %struct.sysmon_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #13
  %0 = getelementptr inbounds %struct.sysmon_event, ptr %event, i32 0, i32 1
  %name = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %event, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %0, align 4
  %shutdown_acked = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 17
  %5 = ptrtoint ptr %shutdown_acked to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %shutdown_acked, align 1
  %state_lock = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #13
  %state = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  %call = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @sysmon_notifiers, i32 noundef 0, ptr noundef nonnull %event) #13
  call void @mutex_unlock(ptr noundef %state_lock) #13
  br i1 %crashed, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssctl_version = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 7
  %7 = ptrtoint ptr %ssctl_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ssctl_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call fastcc zeroext i1 @ssctl_request_shutdown(ptr noundef %subdev)
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %ept = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 11
  %9 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ept, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.then8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %if.else
  %lock.i = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %comp.i = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 12
  %11 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %comp.i, align 4
  %ssr_ack.i = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 16
  %12 = ptrtoint ptr %ssr_ack.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ssr_ack.i, align 4
  %13 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ept, align 4
  %call1.i = call i32 @rpmsg_send(ptr noundef %14, ptr noundef nonnull @.str.57, i32 noundef 13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then8.out_unlock.sink.split.i_crit_edge, label %if.end.i

if.then8.out_unlock.sink.split.i_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split.i

if.end.i:                                         ; preds = %if.then8
  %call4.i = call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i.out_unlock.sink.split.i_crit_edge, label %if.end10.i

if.end.i.out_unlock.sink.split.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split.i

if.end10.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %ssr_ack.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ssr_ack.i, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.end10.i.out_unlock.sink.split.i_crit_edge, label %if.end10.i.sysmon_request_shutdown.exit_crit_edge

if.end10.i.sysmon_request_shutdown.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sysmon_request_shutdown.exit

if.end10.i.out_unlock.sink.split.i_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split.i

out_unlock.sink.split.i:                          ; preds = %if.end10.i.out_unlock.sink.split.i_crit_edge, %if.end.i.out_unlock.sink.split.i_crit_edge, %if.then8.out_unlock.sink.split.i_crit_edge
  %.str.63.sink.i = phi ptr [ @.str.58, %if.then8.out_unlock.sink.split.i_crit_edge ], [ @.str.35, %if.end.i.out_unlock.sink.split.i_crit_edge ], [ @.str.63, %if.end10.i.out_unlock.sink.split.i_crit_edge ]
  %dev17.i = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 10
  %17 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull %.str.63.sink.i) #17
  br label %sysmon_request_shutdown.exit

sysmon_request_shutdown.exit:                     ; preds = %out_unlock.sink.split.i, %if.end10.i.sysmon_request_shutdown.exit_crit_edge
  %acked.0.off0.i = phi i1 [ true, %if.end10.i.sysmon_request_shutdown.exit_crit_edge ], [ false, %out_unlock.sink.split.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sysmon_request_shutdown.exit, %if.then3
  %call4.sink = phi i1 [ %call4, %if.then3 ], [ %acked.0.off0.i, %sysmon_request_shutdown.exit ]
  %frombool6 = zext i1 %call4.sink to i8
  %19 = ptrtoint ptr %shutdown_acked to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool6, ptr %shutdown_acked, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysmon_unprepare(ptr noundef %subdev) #0 align 64 {
entry:
  %event = alloca %struct.sysmon_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #13
  %0 = getelementptr inbounds %struct.sysmon_event, ptr %event, i32 0, i32 1
  %name = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %event, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %0, align 4
  %state_lock = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #13
  %state = getelementptr inbounds %struct.qcom_sysmon, ptr %subdev, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %state, align 4
  %call = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @sysmon_notifiers, i32 noundef 0, ptr noundef nonnull %event) #13
  call void @mutex_unlock(ptr noundef %state_lock) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_add_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_notify(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -148
  %state = getelementptr i8, ptr %nb, i32 -120
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %name = getelementptr i8, ptr %nb, i32 -16
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysmon_notify.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysmon_notify, %if.then6)) #13
          to label %cleanup [label %if.then6], !srcloc !180

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %nb, i32 12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name7 = getelementptr i8, ptr %nb, i32 -16
  %8 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sysmon_notify.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.66, ptr noundef %9) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %ssctl_version = getelementptr i8, ptr %nb, i32 -8
  %10 = ptrtoint ptr %ssctl_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssctl_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp9 = icmp eq i32 %11, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ssctl_send_event(ptr noundef %add.ptr, ptr noundef %data)
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %ept = getelementptr i8, ptr %nb, i32 16
  %12 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ept, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sysmon_send_event(ptr noundef %add.ptr, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else.cleanup_crit_edge, %if.then10, %if.then6, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_remove_sysmon_subdev(ptr noundef %sysmon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sysmon, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysmon_lock, i32 noundef 0) #13
  %node = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sysmon_lock) #13
  %nb = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 9
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @sysmon_notifiers, ptr noundef %nb) #13
  %rproc = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 1
  %8 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rproc, align 4
  tail call void @rproc_remove_subdev(ptr noundef %9, ptr noundef nonnull %sysmon) #13
  %qmi = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 18
  tail call void @qmi_handle_release(ptr noundef %qmi) #13
  tail call void @kfree(ptr noundef nonnull %sysmon) #13
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_remove_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qcom_sysmon_shutdown_acked(ptr noundef readonly %sysmon) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sysmon, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shutdown_acked = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 17
  %0 = ptrtoint ptr %shutdown_acked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shutdown_acked, align 1, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1 = icmp ne i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @sysmon_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sysmon_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @sysmon_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ssctl_new_server(ptr noundef %qmi, ptr nocapture noundef %svc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi, i32 -432
  %version = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %instance = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 2
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %instance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %name = getelementptr i8, ptr %qmi, i32 -300
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(6) @.str.17) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %instance4 = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 2
  %7 = ptrtoint ptr %instance4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %instance4, align 4
  %ssctl_instance = getelementptr i8, ptr %qmi, i32 -288
  %9 = ptrtoint ptr %ssctl_instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ssctl_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp5.not = icmp eq i32 %8, %10
  br i1 %cmp5.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ssctl_version = getelementptr i8, ptr %qmi, i32 -292
  %11 = ptrtoint ptr %ssctl_version to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %ssctl_version, align 4
  %ssctl = getelementptr i8, ptr %qmi, i32 368
  %12 = ptrtoint ptr %ssctl to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 42, ptr %ssctl, align 4
  %node = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 3
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node, align 4
  %sq_node = getelementptr i8, ptr %qmi, i32 372
  %15 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sq_node, align 4
  %port = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %sq_port = getelementptr i8, ptr %qmi, i32 376
  %18 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sq_port, align 4
  %priv = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 5
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ssctl_del_server(ptr nocapture noundef readnone %qmi, ptr nocapture noundef readonly %svc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ssctl_version = getelementptr inbounds %struct.qcom_sysmon, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ssctl_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ssctl_version, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysmon_ind_cb(ptr noundef %qmi, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ind_comp = getelementptr i8, ptr %qmi, i32 -208
  tail call void @complete(ptr noundef %ind_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssctl_send_event(ptr noundef %sysmon, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.ssctl_subsys_event_resp, align 4
  %req = alloca %struct.ssctl_subsys_event_req, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #13
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #13
  %0 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %1 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %resp, align 4
  %qmi = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 18
  %call = call i32 @qmi_txn_init(ptr noundef %qmi, ptr noundef nonnull %txn, ptr noundef nonnull @ssctl_subsys_event_resp_ei, ptr noundef nonnull %resp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %req, i32 0, i32 28)
  %subsys_name = getelementptr inbounds %struct.ssctl_subsys_event_req, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event, align 4
  %call2 = call i32 @strlcpy(ptr noundef %subsys_name, ptr noundef %6, i32 noundef 15) #13
  %call5 = call i32 @strlen(ptr noundef %subsys_name) #18
  %conv = trunc i32 %call5 to i8
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %req, align 4
  %ssr_event = getelementptr inbounds %struct.sysmon_event, ptr %event, i32 0, i32 1
  %8 = ptrtoint ptr %ssr_event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssr_event, align 4
  %event6 = getelementptr inbounds %struct.ssctl_subsys_event_req, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %event6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %event6, align 4
  %evt_driven_valid = getelementptr inbounds %struct.ssctl_subsys_event_req, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %evt_driven_valid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %evt_driven_valid, align 4
  %evt_driven = getelementptr inbounds %struct.ssctl_subsys_event_req, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %evt_driven to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %evt_driven, align 4
  %ssctl = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 19
  %call8 = call i32 @qmi_send_request(ptr noundef %qmi, ptr noundef %ssctl, ptr noundef nonnull %txn, i32 noundef 35, i32 noundef 40, ptr noundef nonnull @ssctl_subsys_event_req_ei, ptr noundef nonnull %req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev15 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.21) #17
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.else

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %dev24 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %15 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24) #17
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %17 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %do.body32, label %do.end29

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %19 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.27) #17
  br label %cleanup

do.body32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssctl_send_event.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssctl_send_event, %if.then37)) #13
          to label %cleanup [label %if.then37], !srcloc !180

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %dev38 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %21 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssctl_send_event.__UNIQUE_ID_ddebug235, ptr noundef %22, ptr noundef nonnull @.str.30) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body32, %do.end29, %do.end23, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysmon_send_event(ptr noundef %sysmon, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  %req = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %req) #13
  %0 = call ptr @memset(ptr %req, i32 255, i32 50)
  %1 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %event, align 4
  %ssr_event = getelementptr inbounds %struct.sysmon_event, ptr %event, i32 0, i32 1
  %3 = ptrtoint ptr %ssr_event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ssr_event, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @sysmon_state_string, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %req, i32 noundef 50, ptr noundef nonnull @.str.31, ptr noundef %2, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %call)
  %cmp = icmp ugt i32 %call, 49
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %comp = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 12
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %comp, align 4
  %ssr_ack = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 16
  %8 = ptrtoint ptr %ssr_ack to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ssr_ack, align 4
  %ept = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 11
  %9 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ept, align 4
  %call2 = call i32 @rpmsg_send(ptr noundef %10, ptr noundef nonnull %req, i32 noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.out_unlock.sink.split_crit_edge, label %if.end5

if.end.out_unlock.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split

if.end5:                                          ; preds = %if.end
  %call8 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end5.out_unlock.sink.split_crit_edge, label %if.end14

if.end5.out_unlock.sink.split_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split

if.end14:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %ssr_ack to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ssr_ack, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %if.end14.out_unlock.sink.split_crit_edge, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end14.out_unlock.sink.split_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split

out_unlock.sink.split:                            ; preds = %if.end14.out_unlock.sink.split_crit_edge, %if.end5.out_unlock.sink.split_crit_edge, %if.end.out_unlock.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.32, %if.end.out_unlock.sink.split_crit_edge ], [ @.str.35, %if.end5.out_unlock.sink.split_crit_edge ], [ @.str.38, %if.end14.out_unlock.sink.split_crit_edge ]
  %dev21 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %13 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull %.str.38.sink) #17
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %if.end14.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %req) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ssctl_request_shutdown(ptr noundef %sysmon) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.ssctl_shutdown_resp, align 2
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %resp, align 2, !annotation !181
  %1 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !181
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #13
  %3 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %ind_comp = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 13
  %4 = ptrtoint ptr %ind_comp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ind_comp, align 4
  %shutdown_comp = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 14
  %5 = ptrtoint ptr %shutdown_comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %shutdown_comp, align 4
  %qmi = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 18
  %call = call i32 @qmi_txn_init(ptr noundef %qmi, ptr noundef nonnull %txn, ptr noundef nonnull @ssctl_shutdown_resp_ei, ptr noundef nonnull %resp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssctl = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 19
  %call2 = call i32 @qmi_send_request(ptr noundef %qmi, ptr noundef %ssctl, ptr noundef nonnull %txn, i32 noundef 33, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev8 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.46) #17
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.else

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.49) #17
  br label %if.end35

if.else:                                          ; preds = %if.end9
  %12 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %resp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %do.body24, label %do.end21

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %dev22 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.52) #17
  br label %if.end35

do.body24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssctl_request_shutdown.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssctl_request_shutdown, %if.then29)) #13
          to label %if.end35 [label %if.then29], !srcloc !180

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %16 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssctl_request_shutdown.__UNIQUE_ID_ddebug234, ptr noundef %17, ptr noundef nonnull @.str.54) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %do.body24, %do.end21, %do.end15
  %acked.0.off0 = phi i1 [ false, %do.end15 ], [ false, %do.end21 ], [ true, %if.then29 ], [ true, %do.body24 ]
  %shutdown_irq = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 6
  %18 = ptrtoint ptr %shutdown_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shutdown_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp36 = icmp sgt i32 %19, 0
  br i1 %cmp36, label %if.then37, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %call.i = call i32 @wait_for_completion_timeout(ptr noundef %shutdown_comp, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then37
  %call1.i = call zeroext i1 @try_wait_for_completion(ptr noundef %ind_comp) #13
  br i1 %call1.i, label %if.end.i.cleanup_crit_edge, label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.qcom_sysmon, ptr %sysmon, i32 0, i32 10
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.55) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end7 ], [ %acked.0.off0, %if.end35.cleanup_crit_edge ], [ false, %do.end.i ], [ true, %if.then37.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_probe(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rproc_get_by_child(ptr noundef %rpdev) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.71) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sysmon_lock, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @sysmon_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @sysmon_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rproc2 = getelementptr i8, ptr %.pn, i32 -100
  %1 = ptrtoint ptr %rproc2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rproc2, align 4
  %cmp3 = icmp eq ptr %2, %call
  br i1 %cmp3, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @sysmon_lock) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.74) #17
  br label %cleanup

found:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %sysmon.0.le = getelementptr i8, ptr %.pn, i32 -124
  tail call void @mutex_unlock(ptr noundef nonnull @sysmon_lock) #13
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %3 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ept, align 8
  %priv = getelementptr inbounds %struct.rpmsg_endpoint, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sysmon.0.le, ptr %priv, align 4
  %6 = load ptr, ptr %ept, align 8
  %ept15 = getelementptr i8, ptr %.pn, i32 40
  %7 = ptrtoint ptr %ept15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ept15, align 4
  br label %cleanup

cleanup:                                          ; preds = %found, %for.end, %do.end
  %retval.0 = phi i32 [ 0, %found ], [ -22, %for.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sysmon_remove(ptr nocapture noundef readonly %rpdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 8
  %priv = getelementptr inbounds %struct.rpmsg_endpoint, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %ept1 = getelementptr inbounds %struct.qcom_sysmon, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ept1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ept1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysmon_callback(ptr nocapture noundef readnone %rpdev, ptr nocapture noundef readonly %data, i32 noundef %count, ptr noundef %priv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp = icmp sgt i32 %count, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %data, ptr noundef nonnull dereferenceable(8) @.str.76, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ssr_ack4 = getelementptr inbounds %struct.qcom_sysmon, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %ssr_ack4 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ssr_ack4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %comp = getelementptr inbounds %struct.qcom_sysmon, ptr %priv, i32 0, i32 12
  tail call void @complete(ptr noundef %comp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_get_by_child(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @qcom_add_sysmon_subdev.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 634, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @qcom_add_sysmon_subdev.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 635, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 638, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 641, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qcom_add_sysmon_subdev._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @qcom_add_sysmon_subdev._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 650, i32 7}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 652, i32 4}
!20 = !{ptr @qcom_add_sysmon_subdev._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qcom_add_sysmon_subdev._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 661, i32 3}
!24 = !{ptr @qcom_add_sysmon_subdev._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qcom_add_sysmon_subdev._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_qcom_add_sysmon_subdev, !27, !"__ksymtab_qcom_add_sysmon_subdev", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 684, i32 1}
!28 = !{ptr @__ksymtab_qcom_remove_sysmon_subdev, !29, !"__ksymtab_qcom_remove_sysmon_subdev", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 707, i32 1}
!30 = !{ptr @__ksymtab_qcom_sysmon_shutdown_acked, !31, !"__ksymtab_qcom_sysmon_shutdown_acked", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 723, i32 1}
!32 = !{ptr @__initcall__kmod_qcom_sysmon__237_793_sysmon_driver_init6, !33, !"__initcall__kmod_qcom_sysmon__237_793_sysmon_driver_init6", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 793, i32 1}
!34 = !{ptr @__exitcall_sysmon_driver_exit, !33, !"__exitcall_sysmon_driver_exit", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_description238, !36, !"__UNIQUE_ID_description238", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 795, i32 1}
!37 = !{ptr @__UNIQUE_ID_file239, !38, !"__UNIQUE_ID_file239", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 796, i32 1}
!39 = !{ptr @__UNIQUE_ID_license240, !38, !"__UNIQUE_ID_license240", i1 false, i1 false}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ssctl_ops, !44, !"ssctl_ops", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 463, i32 29}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 429, i32 28}
!47 = !{ptr @qmi_indication_handler, !48, !"qmi_indication_handler", i1 false, i1 false}
!48 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 297, i32 37}
!49 = !{ptr @ssctl_shutdown_ind_ei, !50, !"ssctl_shutdown_ind_ei", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 285, i32 29}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 385, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ssctl_send_event._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ssctl_send_event._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 400, i32 3}
!58 = !{ptr @ssctl_send_event._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ssctl_send_event._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 407, i32 3}
!62 = !{ptr @ssctl_send_event._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ssctl_send_event._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 409, i32 3}
!66 = !{ptr @ssctl_send_event._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ssctl_send_event._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 411, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ssctl_send_event.__UNIQUE_ID_ddebug235, !69, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!72 = !{ptr @ssctl_subsys_event_resp_ei, !73, !"ssctl_subsys_event_resp_ei", i1 false, i1 false}
!73 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 271, i32 29}
!74 = !{ptr @ssctl_subsys_event_req_ei, !75, !"ssctl_subsys_event_req_ei", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 213, i32 29}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 87, i32 35}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 98, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sysmon_send_event._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @sysmon_send_event._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 105, i32 3}
!85 = !{ptr @sysmon_send_event._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sysmon_send_event._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 110, i32 3}
!89 = !{ptr @sysmon_send_event._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sysmon_send_event._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 61, i32 37}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 62, i32 37}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 63, i32 38}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 64, i32 37}
!99 = !{ptr @sysmon_state_string, !100, !"sysmon_state_string", i1 false, i1 false}
!100 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 60, i32 27}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 341, i32 3}
!103 = !{ptr @ssctl_request_shutdown._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ssctl_request_shutdown._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 348, i32 3}
!107 = !{ptr @ssctl_request_shutdown._entry.45, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ssctl_request_shutdown._entry_ptr.47, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 355, i32 3}
!111 = !{ptr @ssctl_request_shutdown._entry.48, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ssctl_request_shutdown._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 357, i32 3}
!115 = !{ptr @ssctl_request_shutdown._entry.51, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ssctl_request_shutdown._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 359, i32 3}
!119 = !{ptr @ssctl_request_shutdown.__UNIQUE_ID_ddebug234, !118, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!120 = !{ptr @ssctl_shutdown_resp_ei, !121, !"ssctl_shutdown_resp_ei", i1 false, i1 false}
!121 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 192, i32 29}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 320, i32 2}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ssctl_request_shutdown_wait._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @ssctl_request_shutdown_wait._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 124, i32 14}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 134, i32 3}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @sysmon_request_shutdown._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @sysmon_request_shutdown._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @sysmon_request_shutdown._entry.60, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 141, i32 3}
!136 = !{ptr @sysmon_request_shutdown._entry_ptr.61, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 146, i32 3}
!139 = !{ptr @sysmon_request_shutdown._entry.62, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sysmon_request_shutdown._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 584, i32 3}
!143 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sysmon_notify.__UNIQUE_ID_ddebug236, !142, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 19, i32 8}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @sysmon_notifiers, !146, !"sysmon_notifiers", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 72, i32 8}
!151 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @sysmon_lock, !150, !"sysmon_lock", i1 false, i1 false}
!153 = !{ptr @sysmon_list, !154, !"sysmon_list", i1 false, i1 false}
!154 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 73, i32 8}
!155 = !{ptr @sysmon_driver, !156, !"sysmon_driver", i1 false, i1 false}
!156 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 783, i32 28}
!157 = !{ptr @sysmon_match, !158, !"sysmon_match", i1 false, i1 false}
!158 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 778, i32 37}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 741, i32 3}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @sysmon_probe._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @sysmon_probe._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 752, i32 2}
!166 = !{ptr @sysmon_probe._entry.73, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @sysmon_probe._entry_ptr.75, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/remoteproc/qcom_sysmon.c", i32 161, i32 24}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i8 0, i8 2}
!180 = !{i64 2148197961, i64 2148197966, i64 2148197979, i64 2148198023, i64 2148198057, i64 2148198078}
!181 = !{!"auto-init"}
