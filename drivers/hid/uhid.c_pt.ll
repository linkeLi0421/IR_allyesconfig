; ModuleID = '/llk/IR_all_yes/drivers/hid/uhid.c_pt.bc'
source_filename = "../drivers/hid/uhid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uhid_hid_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_uhid_hid_driver\09\09\09\09"
module asm "\09.long\09__crc_uhid_hid_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uhid_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22uhid_hid_driver\22\09\09\09\09\09"
module asm "__kstrtabns_uhid_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uhid_event = type <{ i32, %union.anon.72 }>
%union.anon.72 = type { %struct.uhid_start_req, [4368 x i8] }
%struct.uhid_start_req = type { i64 }
%struct.uhid_device = type { %struct.mutex, i8, ptr, i32, ptr, %struct.uhid_event, %struct.wait_queue_head, %struct.spinlock, i8, i8, [32 x ptr], %struct.mutex, %struct.wait_queue_head, i8, i32, i32, %struct.uhid_event, %struct.work_struct }
%struct.uhid_get_report_req = type <{ i32, i8, i8 }>
%struct.uhid_get_report_reply_req = type { i32, i16, i16, [4096 x i8] }
%struct.uhid_set_report_req = type { i32, i8, i8, i16, [4096 x i8] }
%struct.uhid_set_report_reply_req = type <{ i32, i16 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.uhid_input2_req = type { i16, [4096 x i8] }

@uhid_hid_driver = dso_local global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @uhid_hid_start, ptr @uhid_hid_stop, ptr @uhid_hid_open, ptr @uhid_hid_close, ptr null, ptr @uhid_hid_parse, ptr null, ptr null, ptr @uhid_hid_raw_request, ptr @uhid_hid_output_report, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_uhid_hid_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_uhid_hid_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_uhid_hid_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uhid_hid_driver to i32), ptr @__kstrtab_uhid_hid_driver, ptr @__kstrtabns_uhid_hid_driver }, section "___ksymtab_gpl+uhid_hid_driver", align 4
@__initcall__kmod_uhid__255_815_uhid_misc_init6 = internal global ptr @uhid_misc_init, section ".initcall6.init", align 4
@uhid_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 239, ptr @.str.5, ptr @uhid_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uhid_misc_exit = internal global ptr @uhid_misc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file256 = internal constant [27 x i8] c"uhid.file=drivers/hid/uhid\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [17 x i8] c"uhid.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [51 x i8] c"uhid.author=David Herrmann <dh.herrmann@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [65 x i8] c"uhid.description=User-space I/O driver support for HID subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_alias260 = internal constant [29 x i8] c"uhid.alias=char-major-10-239\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [24 x i8] c"uhid.alias=devname:uhid\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uhid_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Output queue is full\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uhid_queue\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/hid/uhid.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uhid_queue._entry_ptr = internal global ptr @uhid_queue._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uhid\00", [27 x i8] zeroinitializer }, align 32
@uhid_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @uhid_char_read, ptr @uhid_char_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uhid_char_poll, ptr null, ptr null, ptr null, i32 0, ptr @uhid_char_open, ptr null, ptr @uhid_char_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@uhid_char_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uhid_char_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013UHID_CREATE from different security context by process %d (%s), this is not allowed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uhid_char_write\00", [16 x i8] zeroinitializer }, align 32
@uhid_char_write._entry_ptr = internal global ptr @uhid_char_write._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@uhid_char_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&uhid->devlock\00", [17 x i8] zeroinitializer }, align 32
@uhid_char_open.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&uhid->report_lock\00", [45 x i8] zeroinitializer }, align 32
@uhid_char_open.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&uhid->qlock\00", [19 x i8] zeroinitializer }, align 32
@uhid_char_open.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&uhid->waitq\00", [19 x i8] zeroinitializer }, align 32
@uhid_char_open.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&uhid->report_wait\00", [45 x i8] zeroinitializer }, align 32
@uhid_char_open.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&uhid->worker)\00", [63 x i8] zeroinitializer }, align 32
@uhid_device_add_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 75, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot register HID device: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uhid_device_add_worker\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uhid_device_add_worker._entry_ptr = internal global ptr @uhid_device_add_worker._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.25 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 8, i64 10, i64 11, i64 12, i64 14]
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"uhid_hid_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 390, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"uhid_misc\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 810, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 103, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 813, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"uhid_fops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 800, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 230, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 214, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 174, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 751, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 644, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 645, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 646, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 647, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 648, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 650, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [22 x i8] c"../drivers/hid/uhid.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 75, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_uhid_misc_exit, ptr @__initcall__kmod_uhid__255_815_uhid_misc_init6, ptr @__ksymtab_uhid_hid_driver, ptr @uhid_char_write._entry, ptr @uhid_char_write._entry_ptr, ptr @uhid_device_add_worker._entry, ptr @uhid_device_add_worker._entry_ptr, ptr @uhid_misc_exit, ptr @uhid_queue._entry, ptr @uhid_queue._entry_ptr, ptr @uhid_hid_driver, ptr @uhid_misc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @uhid_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @uhid_char_open.__key, ptr @.str.11, ptr @uhid_char_open.__key.12, ptr @.str.13, ptr @uhid_char_open.__key.14, ptr @.str.15, ptr @uhid_char_open.__key.16, ptr @.str.17, ptr @uhid_char_open.__key.18, ptr @.str.19, ptr @uhid_char_open.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_hid_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_open.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_open.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_open.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_open.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_char_open.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhid_device_add_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_hid_start(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4380) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %call7.i.i, align 8
  %report_enum = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 15
  %arrayidx = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %u = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %u, align 4
  %or = or i64 %7, 1
  store i64 %or, ptr %u, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %arrayidx5 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end3.if.end12_crit_edge, label %if.then8

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %u9 = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %u9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %u9, align 4
  %or11 = or i64 %11, 2
  store i64 %or11, ptr %u9, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end3.if.end12_crit_edge
  %12 = ptrtoint ptr %report_enum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_enum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %if.end12.do.body22_crit_edge, label %if.then17

if.end12.do.body22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %u18 = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %u18 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %u18, align 4
  %or20 = or i64 %15, 4
  store i64 %or20, ptr %u18, align 4
  br label %do.body22

do.body22:                                        ; preds = %if.then17, %if.end12.do.body22_crit_edge
  %qlock = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 7
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #10
  %head.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %head.i, align 4
  %add.i = add i8 %17, 1
  %rem.i = and i8 %add.i, 31
  %tail.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tail.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %rem.i, i8 %19)
  %cmp.not.i = icmp eq i8 %rem.i, %19
  br i1 %cmp.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr %struct.uhid_device, ptr %1, i32 0, i32 10, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %rem.i, ptr %head.i, align 4
  %waitq.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %uhid_queue.exit

do.end.i:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %hid.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hid.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %uhid_queue.exit

uhid_queue.exit:                                  ; preds = %do.end.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call24) #10
  br label %cleanup

cleanup:                                          ; preds = %uhid_queue.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %uhid_queue.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uhid_hid_stop(ptr nocapture noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %claimed, align 4
  %call = tail call fastcc i32 @uhid_queue_event(ptr noundef %1, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_hid_open(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %call = tail call fastcc i32 @uhid_queue_event(ptr noundef %1, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uhid_hid_close(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %call = tail call fastcc i32 @uhid_queue_event(ptr noundef %1, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_hid_parse(ptr noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %rd_data = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_data, align 4
  %rd_size = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rd_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_size, align 4
  %call = tail call i32 @hid_parse_report(ptr noundef %hid, ptr noundef %3, i32 noundef %5) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_hid_raw_request(ptr nocapture noundef readonly %hid, i8 noundef zeroext %reportnum, ptr nocapture noundef %buf, i32 noundef %len, i8 noundef zeroext %rtype, i32 noundef %reqtype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %rtype)
  %0 = icmp ult i8 %rtype, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.offset = sub i8 2, %rtype
  %1 = zext i32 %reqtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reqtype, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %sw.bb3
    i32 9, label %sw.bb4
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %switch.lookup
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 8
  %running.i = getelementptr inbounds %struct.uhid_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %running.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sw.bb3.cleanup_crit_edge, label %if.end.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4380) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %call7.i.i.i, align 8
  %u.i = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i.i, i32 0, i32 1
  %rnum5.i = getelementptr inbounds %struct.uhid_get_report_req, ptr %u.i, i32 0, i32 1
  %8 = ptrtoint ptr %rnum5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %reportnum, ptr %rnum5.i, align 8
  %rtype7.i = getelementptr inbounds %struct.uhid_get_report_req, ptr %u.i, i32 0, i32 2
  %9 = ptrtoint ptr %rtype7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.offset, ptr %rtype7.i, align 1
  %report_lock.i = getelementptr inbounds %struct.uhid_device, ptr %3, i32 0, i32 11
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %report_lock.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end4.i
  %call13.i = tail call fastcc i32 @__uhid_report_queue_and_wait(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef %u.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.unlock.i_crit_edge

if.end11.i.unlock.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end16.i:                                       ; preds = %if.end11.i
  %u17.i = getelementptr inbounds %struct.uhid_device, ptr %3, i32 0, i32 16, i32 1
  %err.i = getelementptr inbounds %struct.uhid_get_report_reply_req, ptr %u17.i, i32 0, i32 1
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %err.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool18.not.i = icmp eq i16 %11, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.end16.i.unlock.i_crit_edge

if.end16.i.unlock.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %size.i = getelementptr inbounds %struct.uhid_get_report_reply_req, ptr %u17.i, i32 0, i32 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %size.i, align 1
  %conv.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 %len) #10
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 4096) #10
  %data.i = getelementptr inbounds %struct.uhid_device, ptr %3, i32 0, i32 16, i32 1, i32 1
  %16 = call ptr @memcpy(ptr %buf, ptr %data.i, i32 %15)
  br label %unlock.i

unlock.i:                                         ; preds = %if.else.i, %if.end16.i.unlock.i_crit_edge, %if.end11.i.unlock.i_crit_edge
  %ret.0.i = phi i32 [ %call13.i, %if.end11.i.unlock.i_crit_edge ], [ %15, %if.else.i ], [ -5, %if.end16.i.unlock.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %report_lock.i) #10
  br label %cleanup

sw.bb4:                                           ; preds = %switch.lookup
  %driver_data.i12 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %17 = ptrtoint ptr %driver_data.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i12, align 8
  %running.i13 = getelementptr inbounds %struct.uhid_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %running.i13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %running.i13, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i14 = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp.i = icmp ugt i32 %len, 4096
  %or.cond.i = or i1 %cmp.i, %tobool.not.i14
  br i1 %or.cond.i, label %sw.bb4.cleanup_crit_edge, label %if.end.i17

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i17:                                       ; preds = %sw.bb4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 4380) #13
  %tobool2.not.i16 = icmp eq ptr %call7.i.i.i15, null
  br i1 %tobool2.not.i16, label %if.end.i17.cleanup_crit_edge, label %if.end4.i25

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i25:                                      ; preds = %if.end.i17
  %22 = ptrtoint ptr %call7.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 13, ptr %call7.i.i.i15, align 8
  %u.i18 = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i.i15, i32 0, i32 1
  %rnum5.i19 = getelementptr inbounds %struct.uhid_set_report_req, ptr %u.i18, i32 0, i32 1
  %23 = ptrtoint ptr %rnum5.i19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %reportnum, ptr %rnum5.i19, align 8
  %rtype7.i20 = getelementptr inbounds %struct.uhid_set_report_req, ptr %u.i18, i32 0, i32 2
  %24 = ptrtoint ptr %rtype7.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %switch.offset, ptr %rtype7.i20, align 1
  %conv.i21 = trunc i32 %len to i16
  %size.i22 = getelementptr inbounds %struct.uhid_set_report_req, ptr %u.i18, i32 0, i32 3
  %25 = ptrtoint ptr %size.i22 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i21, ptr %size.i22, align 2
  %data.i23 = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i.i15, i32 0, i32 1, i32 1
  %26 = call ptr @memcpy(ptr %data.i23, ptr %buf, i32 %len)
  %report_lock.i24 = getelementptr inbounds %struct.uhid_device, ptr %18, i32 0, i32 11
  %call10.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %report_lock.i24, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end4.i25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i15) #10
  br label %cleanup

if.end13.i:                                       ; preds = %if.end4.i25
  %call15.i = tail call fastcc i32 @__uhid_report_queue_and_wait(ptr noundef %18, ptr noundef nonnull %call7.i.i.i15, ptr noundef %u.i18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.unlock.i28_crit_edge

if.end13.i.unlock.i28_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i28

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %u19.i = getelementptr inbounds %struct.uhid_device, ptr %18, i32 0, i32 16, i32 1
  %err.i26 = getelementptr inbounds %struct.uhid_set_report_reply_req, ptr %u19.i, i32 0, i32 1
  %27 = ptrtoint ptr %err.i26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %err.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool20.not.i = icmp eq i16 %28, 0
  %count..i = select i1 %tobool20.not.i, i32 %len, i32 -5
  br label %unlock.i28

unlock.i28:                                       ; preds = %if.end18.i, %if.end13.i.unlock.i28_crit_edge
  %ret.0.i27 = phi i32 [ %call15.i, %if.end13.i.unlock.i28_crit_edge ], [ %count..i, %if.end18.i ]
  tail call void @mutex_unlock(ptr noundef %report_lock.i24) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock.i28, %if.then12.i, %if.end.i17.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %unlock.i, %if.then10.i, %if.end.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %switch.lookup.cleanup_crit_edge ], [ %call8.i, %if.then10.i ], [ %ret.0.i, %unlock.i ], [ -5, %sw.bb3.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call10.i, %if.then12.i ], [ %ret.0.i27, %unlock.i28 ], [ -5, %sw.bb4.cleanup_crit_edge ], [ -12, %if.end.i17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_hid_output_report(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 8
  %2 = add i32 %count, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %2)
  %3 = icmp ult i32 %2, -4096
  br i1 %3, label %entry.uhid_hid_output_raw.exit_crit_edge, label %if.end.i

entry.uhid_hid_output_raw.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_hid_output_raw.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4380) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.uhid_hid_output_raw.exit_crit_edge, label %if.end6.i

if.end.i.uhid_hid_output_raw.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_hid_output_raw.exit

if.end6.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %call7.i.i.i, align 8
  %conv7.i = trunc i32 %count to i16
  %u.i = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i.i, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4088
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv7.i, ptr %size.i, align 4
  %rtype9.i = getelementptr inbounds %struct.uhid_event, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4090
  %7 = ptrtoint ptr %rtype9.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %rtype9.i, align 2
  %8 = call ptr @memcpy(ptr %u.i, ptr %buf, i32 %count)
  %qlock.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 7
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #10
  %head.i.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %head.i.i, align 4
  %add.i.i = add i8 %10, 1
  %rem.i.i = and i8 %add.i.i, 31
  %tail.i.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tail.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %rem.i.i, i8 %12)
  %cmp.not.i.i = icmp eq i8 %rem.i.i, %12
  br i1 %cmp.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i8 %10 to i32
  %arrayidx.i.i = getelementptr %struct.uhid_device, ptr %1, i32 0, i32 10, i32 %conv.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %rem.i.i, ptr %head.i.i, align 4
  %waitq.i.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %waitq.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %uhid_queue.exit.i

do.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %hid.i.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %hid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hid.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %uhid_queue.exit.i

uhid_queue.exit.i:                                ; preds = %do.end.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call15.i) #10
  br label %uhid_hid_output_raw.exit

uhid_hid_output_raw.exit:                         ; preds = %uhid_queue.exit.i, %if.end.i.uhid_hid_output_raw.exit_crit_edge, %entry.uhid_hid_output_raw.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %uhid_queue.exit.i ], [ -22, %entry.uhid_hid_output_raw.exit_crit_edge ], [ -12, %if.end.i.uhid_hid_output_raw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_misc_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @uhid_misc) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uhid_misc_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @misc_deregister(ptr noundef nonnull @uhid_misc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_queue_event(ptr noundef %uhid, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4380) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %event, ptr %call7.i.i, align 8
  %qlock = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #10
  %head.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 8
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %head.i, align 4
  %add.i = add i8 %3, 1
  %rem.i = and i8 %add.i, 31
  %tail.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 9
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tail.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %rem.i, i8 %5)
  %cmp.not.i = icmp eq i8 %rem.i, %5
  br i1 %cmp.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr %struct.uhid_device, ptr %uhid, i32 0, i32 10, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %rem.i, ptr %head.i, align 4
  %waitq.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %uhid_queue.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hid.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 4
  %8 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hid.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %uhid_queue.exit

uhid_queue.exit:                                  ; preds = %do.end.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %uhid_queue.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %uhid_queue.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uhid_report_queue_and_wait(ptr noundef %uhid, ptr noundef %ev, ptr nocapture noundef writeonly %report_id) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #10
  %report_id5 = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 14
  %0 = ptrtoint ptr %report_id5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %report_id5, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %report_id5, align 4
  %2 = ptrtoint ptr %report_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %report_id, align 4
  %3 = ptrtoint ptr %ev to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %ev, align 1
  %add = add i32 %4, 1
  %report_type = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 15
  %5 = ptrtoint ptr %report_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %report_type, align 4
  %report_running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 13
  %6 = ptrtoint ptr %report_running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %report_running, align 4
  %head.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 8
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %head.i, align 4
  %add.i = add i8 %8, 1
  %rem.i = and i8 %add.i, 31
  %tail.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 9
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tail.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %rem.i, i8 %10)
  %cmp.not.i = icmp eq i8 %rem.i, %10
  br i1 %cmp.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.uhid_device, ptr %uhid, i32 0, i32 10, i32 %conv.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ev, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %rem.i, ptr %head.i, align 4
  %waitq.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %uhid_queue.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hid.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 4
  %13 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hid.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str) #14
  tail call void @kfree(ptr noundef %ev) #10
  br label %uhid_queue.exit

uhid_queue.exit:                                  ; preds = %do.end.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 198) #10
  %15 = ptrtoint ptr %report_running to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %report_running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %uhid_queue.exit.do.end79_crit_edge, label %do.end16

uhid_queue.exit.do.end79_crit_edge:               ; preds = %uhid_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end16:                                         ; preds = %uhid_queue.exit
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %17 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %do.end16.do.end79_crit_edge, label %if.then32

do.end16.do.end79_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

if.then32:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %report_wait = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 12
  %call34159 = call i32 @prepare_to_wait_event(ptr noundef %report_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %20 = ptrtoint ptr %report_running to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %report_running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool37.not160 = icmp eq i8 %21, 0
  br i1 %tobool37.not160, label %if.then32.if.end74.thread142_crit_edge, label %if.then32.lor.end48_crit_edge

if.then32.lor.end48_crit_edge:                    ; preds = %if.then32
  br label %lor.end48

if.then32.if.end74.thread142_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.thread142

lor.end48.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool54.not125 = icmp eq i32 %call71, 0
  %spec.select = select i1 %tobool54.not125, i32 1, i32 %call71
  br label %if.end74.thread142

lor.end48:                                        ; preds = %cleanup.lor.end48_crit_edge, %if.then32.lor.end48_crit_edge
  %call34162 = phi i32 [ %call34, %cleanup.lor.end48_crit_edge ], [ %call34159, %if.then32.lor.end48_crit_edge ]
  %__ret33.0161 = phi i32 [ %call71, %cleanup.lor.end48_crit_edge ], [ 500, %if.then32.lor.end48_crit_edge ]
  %22 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.0161)
  %tobool54.not.le = icmp eq i32 %__ret33.0161, 0
  br i1 %tobool44.not, label %if.end74.thread142.loopexit, label %24

if.end74.thread142.loopexit:                      ; preds = %lor.end48
  call void @__sanitizer_cov_trace_pc() #12
  %spec.store.select99.le = select i1 %tobool54.not.le, i32 1, i32 %__ret33.0161
  br label %if.end74.thread142

if.end74.thread142:                               ; preds = %if.end74.thread142.loopexit, %lor.end48.thread, %if.then32.if.end74.thread142_crit_edge
  %spec.store.select99127 = phi i32 [ %spec.store.select99.le, %if.end74.thread142.loopexit ], [ 500, %if.then32.if.end74.thread142_crit_edge ], [ %spec.select, %lor.end48.thread ]
  call void @finish_wait(ptr noundef %report_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end79

24:                                               ; preds = %lor.end48
  br i1 %tobool54.not.le, label %if.end74, label %if.end67

if.end67:                                         ; preds = %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34162)
  %tobool68.not = icmp eq i32 %call34162, 0
  br i1 %tobool68.not, label %cleanup, label %if.end74.thread139

if.end74.thread139:                               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end79

cleanup:                                          ; preds = %if.end67
  %call71 = call i32 @schedule_timeout(i32 noundef %__ret33.0161) #10
  %call34 = call i32 @prepare_to_wait_event(ptr noundef %report_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %25 = ptrtoint ptr %report_running to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %report_running, align 4, !range !81
  %tobool37.not = icmp eq i8 %26, 0
  br i1 %tobool37.not, label %lor.end48.thread, label %cleanup.lor.end48_crit_edge

cleanup.lor.end48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end48

if.end74:                                         ; preds = %24
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %report_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end95

do.end79:                                         ; preds = %if.end74.thread139, %if.end74.thread142, %do.end16.do.end79_crit_edge, %uhid_queue.exit.do.end79_crit_edge
  %__ret.1138 = phi i32 [ %call34162, %if.end74.thread139 ], [ %spec.store.select99127, %if.end74.thread142 ], [ 500, %do.end16.do.end79_crit_edge ], [ 500, %uhid_queue.exit.do.end79_crit_edge ]
  %running81 = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %27 = ptrtoint ptr %running81 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %running81, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool82.not = icmp eq i8 %28, 0
  br i1 %tobool82.not, label %do.end79.if.end95_crit_edge, label %lor.lhs.false85

do.end79.if.end95_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

lor.lhs.false85:                                  ; preds = %do.end79
  %29 = ptrtoint ptr %report_running to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %report_running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool87.not = icmp eq i8 %30, 0
  br i1 %tobool87.not, label %if.else, label %lor.lhs.false85.if.end95_crit_edge

lor.lhs.false85.if.end95_crit_edge:               ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.else:                                          ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1138)
  %cmp90 = icmp slt i32 %__ret.1138, 0
  %. = select i1 %cmp90, i32 -512, i32 0
  br label %if.end95

if.end95:                                         ; preds = %if.else, %lor.lhs.false85.if.end95_crit_edge, %do.end79.if.end95_crit_edge, %if.end74
  %ret.0 = phi i32 [ -5, %lor.lhs.false85.if.end95_crit_edge ], [ -5, %do.end79.if.end95_crit_edge ], [ -5, %if.end74 ], [ %., %if.else ]
  %31 = ptrtoint ptr %report_running to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %report_running, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_char_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  br i1 %cmp, label %entry.cleanup89_crit_edge, label %try_again.preheader

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

try_again.preheader:                              ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %head = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 8
  %tail = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 9
  %waitq = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 6
  br label %try_again

try_again:                                        ; preds = %if.then46, %try_again.preheader
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %try_again
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head, align 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp3 = icmp eq i8 %5, %7
  br i1 %cmp3, label %if.then1.cleanup89_crit_edge, label %if.then1.if.end35_crit_edge

if.then1.if.end35_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then1.cleanup89_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

if.else:                                          ; preds = %try_again
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 691) #10
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %head, align 4
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp14.not = icmp eq i8 %9, %11
  br i1 %cmp14.not, label %if.then16, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then16:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call143 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %head, align 4
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp22.not144 = icmp eq i8 %14, %16
  br i1 %cmp22.not144, label %if.then16.if.end25_crit_edge, label %if.then16.if.end30.thread135_crit_edge

if.then16.if.end30.thread135_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.thread135

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  br label %if.end25

if.end25:                                         ; preds = %cleanup.if.end25_crit_edge, %if.then16.if.end25_crit_edge
  %call145 = phi i32 [ %call, %cleanup.if.end25_crit_edge ], [ %call143, %if.then16.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool26.not = icmp eq i32 %call145, 0
  br i1 %tobool26.not, label %cleanup, label %if.end30

cleanup:                                          ; preds = %if.end25
  call void @schedule() #10
  %call = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %head, align 4
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tail, align 1
  %cmp22.not = icmp eq i8 %18, %20
  br i1 %cmp22.not, label %cleanup.if.end25_crit_edge, label %cleanup.if.end30.thread135_crit_edge

cleanup.if.end30.thread135_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.thread135

cleanup.if.end25_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end30.thread135:                               ; preds = %cleanup.if.end30.thread135_crit_edge, %if.then16.if.end30.thread135_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end35

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup89

if.end35:                                         ; preds = %if.end30.thread135, %if.else.if.end35_crit_edge, %if.then1.if.end35_crit_edge
  %call36 = call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup89_crit_edge

if.end35.cleanup89_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup89

if.end39:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %head, align 4
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tail, align 1
  %cmp44 = icmp eq i8 %22, %24
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %1) #10
  br label %try_again

if.else48:                                        ; preds = %if.end39
  %25 = call i32 @llvm.umin.i32(i32 %count, i32 4380)
  %idxprom = zext i8 %24 to i32
  %arrayidx = getelementptr %struct.uhid_device, ptr %1, i32 0, i32 10, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  call void @__check_object_size(ptr noundef %27, i32 noundef %25, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.else48.copy_to_user.exit_crit_edge, label %if.end.i.i

if.else48.copy_to_user.exit_crit_edge:            ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.else48
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %25, i32 -1226833920) #15, !srcloc !82
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %27, i32 noundef %25) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %27, i32 noundef %25) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.else48.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %25, %if.else48.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %25, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool54.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool54.not, label %if.else56, label %copy_to_user.exit.if.end82_crit_edge

copy_to_user.exit.if.end82_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.else56:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tail, align 1
  %idxprom59 = zext i8 %30 to i32
  %arrayidx60 = getelementptr %struct.uhid_device, ptr %1, i32 0, i32 10, i32 %idxprom59
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx60, align 4
  call void @kfree(ptr noundef %32) #10
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tail, align 1
  %idxprom63 = zext i8 %34 to i32
  %arrayidx64 = getelementptr %struct.uhid_device, ptr %1, i32 0, i32 10, i32 %idxprom63
  %35 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx64, align 4
  %qlock = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 7
  %call71 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #10
  %36 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tail, align 1
  %38 = add i8 %37, 1
  %39 = and i8 %38, 31
  store i8 %39, ptr %tail, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call71) #10
  br label %if.end82

if.end82:                                         ; preds = %if.else56, %copy_to_user.exit.if.end82_crit_edge
  %tobool54.not140 = phi i32 [ %25, %if.else56 ], [ -14, %copy_to_user.exit.if.end82_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #10
  br label %cleanup89

cleanup89:                                        ; preds = %if.end82, %if.end35.cleanup89_crit_edge, %if.end30, %if.then1.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.0 = phi i32 [ %tobool54.not140, %if.end82 ], [ -22, %entry.cleanup89_crit_edge ], [ %call145, %if.end30 ], [ %call36, %if.end35.cleanup89_crit_edge ], [ -11, %if.then1.cleanup89_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_char_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %input_buf = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 5
  %2 = call ptr @memset(ptr %input_buf, i32 0, i32 4380)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 4380)
  tail call void @__check_object_size(ptr noundef %input_buf, i32 noundef %3, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end2.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end2.if.then11.i.i.i_crit_edge:                ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end2
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %3, i32 -1226833920) #15, !srcloc !83
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !84

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %input_buf, i32 noundef %3) #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !85
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %input_buf, ptr noundef %buffer, i32 noundef %3) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !84

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end2.if.then11.i.i.i_crit_edge
  %res.0.i.i.i96 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %3, %if.end2.if.then11.i.i.i_crit_edge ], [ %3, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %3, %res.0.i.i.i96
  %add.ptr.i.i.i = getelementptr i8, ptr %input_buf, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i96)
  br label %unlock.thread

if.end8:                                          ; preds = %if.end.i.i.i
  %9 = ptrtoint ptr %input_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input_buf, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %10, label %if.end8.unlock.thread_crit_edge [
    i32 0, label %sw.bb
    i32 11, label %sw.bb41
    i32 1, label %sw.bb44
    i32 8, label %sw.bb46
    i32 12, label %sw.bb49
    i32 10, label %sw.bb52
    i32 14, label %sw.bb55
  ]

if.end8.unlock.thread_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.thread

sw.bb:                                            ; preds = %if.end8
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %12 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_cred, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred, align 16
  %cmp12.not = icmp eq ptr %13, %19
  br i1 %cmp12.not, label %if.end38, label %land.end

land.end:                                         ; preds = %sw.bb
  %.b93 = load i1, ptr @uhid_char_write.__already_done, align 1
  br i1 %.b93, label %land.end.unlock.thread_crit_edge, label %if.then19, !prof !84

land.end.unlock.thread_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.thread

if.then19:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @uhid_char_write.__already_done, align 1
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %17, i32 noundef 1, ptr noundef null) #10
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call.i, ptr noundef %comm) #14
  br label %unlock.thread

if.end38:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call fastcc i32 @uhid_dev_create(ptr noundef %1, ptr noundef %input_buf)
  br label %unlock

sw.bb41:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call fastcc i32 @uhid_dev_create2(ptr noundef %1, ptr noundef %input_buf)
  br label %unlock

sw.bb44:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call fastcc i32 @uhid_dev_destroy(ptr noundef %1)
  br label %unlock

sw.bb46:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call fastcc i32 @uhid_dev_input(ptr noundef %1, ptr noundef %input_buf)
  br label %unlock

sw.bb49:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc i32 @uhid_dev_input2(ptr noundef %1, ptr noundef %input_buf)
  br label %unlock

sw.bb52:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call fastcc i32 @uhid_dev_get_report_reply(ptr noundef %1, ptr noundef %input_buf)
  br label %unlock

sw.bb55:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call fastcc i32 @uhid_dev_set_report_reply(ptr noundef %1, ptr noundef %input_buf)
  br label %unlock

unlock.thread:                                    ; preds = %if.then19, %land.end.unlock.thread_crit_edge, %if.end8.unlock.thread_crit_edge, %if.then11.i.i.i
  %ret.0.ph = phi i32 [ -95, %if.end8.unlock.thread_crit_edge ], [ -13, %land.end.unlock.thread_crit_edge ], [ -13, %if.then19 ], [ -14, %if.then11.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %1) #10
  br label %cleanup

unlock:                                           ; preds = %sw.bb55, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb44, %sw.bb41, %if.end38
  %ret.0 = phi i32 [ %call57, %sw.bb55 ], [ %call54, %sw.bb52 ], [ %call51, %sw.bb49 ], [ %call48, %sw.bb46 ], [ %call45, %sw.bb44 ], [ %call43, %sw.bb41 ], [ %call40, %if.end38 ]
  tail call void @mutex_unlock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool59.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool59.not, i32 %count, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %unlock, %unlock.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %ret.0.ph, %unlock.thread ], [ %spec.select, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_char_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %head = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  %spec.select = select i1 %cmp.not, i32 260, i32 325
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_char_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9296, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mutex_init(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @uhid_char_open.__key) #10
  %report_lock = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %report_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @uhid_char_open.__key.12) #10
  %qlock = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.15, ptr noundef nonnull @uhid_char_open.__key.14, i16 noundef signext 3) #10
  %waitq = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.17, ptr noundef nonnull @uhid_char_open.__key.16) #10
  %report_wait = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %report_wait, ptr noundef nonnull @.str.19, ptr noundef nonnull @uhid_char_open.__key.18) #10
  %running = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %running, align 4
  %worker = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %worker, i32 noundef 0) #10
  %1 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @uhid_char_open.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry18 = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry18, ptr %entry18, align 8
  %prev.i = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 17, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.uhid_device, ptr %call1.i.i.i, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @uhid_device_add_worker, ptr %func, align 16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i.i, ptr %private_data, align 4
  %call22 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uhid_char_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hid.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.body.preheader_crit_edge, label %do.body2.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %running.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 0, ptr %running.i, align 4
  %report_wait.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %report_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %worker.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 17
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %worker.i) #10
  %5 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hid.i, align 4
  tail call void @hid_destroy_device(ptr noundef %6) #10
  %7 = ptrtoint ptr %hid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %hid.i, align 4
  %rd_data.i = getelementptr inbounds %struct.uhid_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd_data.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body2.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.uhid_device, ptr %1, i32 0, i32 10, i32 %i.05
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %11) #10
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_create(ptr noundef %uhid, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  %orig.sroa.0 = alloca { [128 x i8], [64 x i8], [64 x i8] }, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %orig.sroa.0)
  %u = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %orig.sroa.0, ptr %u, i32 256)
  %orig.sroa.7.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 248
  %1 = ptrtoint ptr %orig.sroa.7.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %orig.sroa.7.0.copyload = load ptr, ptr %orig.sroa.7.0.u.sroa_idx, align 1
  %orig.sroa.8.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 252
  %2 = ptrtoint ptr %orig.sroa.8.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %orig.sroa.8.0.copyload = load i16, ptr %orig.sroa.8.0.u.sroa_idx, align 1
  %orig.sroa.12.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 254
  %3 = ptrtoint ptr %orig.sroa.12.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %orig.sroa.12.0.copyload = load i16, ptr %orig.sroa.12.0.u.sroa_idx, align 1
  %orig.sroa.13.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 256
  %4 = ptrtoint ptr %orig.sroa.13.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %orig.sroa.13.0.copyload = load i32, ptr %orig.sroa.13.0.u.sroa_idx, align 1
  %orig.sroa.14.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 260
  %5 = ptrtoint ptr %orig.sroa.14.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %orig.sroa.14.0.copyload = load i32, ptr %orig.sroa.14.0.u.sroa_idx, align 1
  %orig.sroa.15.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 264
  %6 = ptrtoint ptr %orig.sroa.15.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %orig.sroa.15.0.copyload = load i32, ptr %orig.sroa.15.0.u.sroa_idx, align 1
  %orig.sroa.16.0.u.sroa_idx = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 268
  %7 = ptrtoint ptr %orig.sroa.16.0.u.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %orig.sroa.16.0.copyload = load i32, ptr %orig.sroa.16.0.u.sroa_idx, align 1
  %conv = zext i16 %orig.sroa.8.0.copyload to i32
  %8 = add i16 %orig.sroa.8.0.copyload, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %8)
  %9 = icmp ult i16 %8, -4096
  br i1 %9, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %orig.sroa.16.0.u.sroa_idx, i32 noundef %conv, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %orig.sroa.7.0.copyload, i32 %conv, i32 -1226833920) #15, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !84

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %orig.sroa.16.0.u.sroa_idx, i32 noundef %conv) #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !85
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %orig.sroa.16.0.u.sroa_idx, ptr noundef %orig.sroa.7.0.copyload, i32 noundef %conv) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.then11.i.i, !prof !84

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %conv, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %orig.sroa.16.0.u.sroa_idx, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call ptr @memcpy(ptr %u, ptr %orig.sroa.0, i32 128)
  %phys = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 120
  %orig.sroa.0.128.arraydecay18.sroa_idx = getelementptr inbounds i8, ptr %orig.sroa.0, i32 128
  %16 = call ptr @memcpy(ptr %phys, ptr %orig.sroa.0.128.arraydecay18.sroa_idx, i32 64)
  %uniq = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 184
  %orig.sroa.0.192.arraydecay22.sroa_idx = getelementptr inbounds i8, ptr %orig.sroa.0, i32 192
  %17 = call ptr @memcpy(ptr %uniq, ptr %orig.sroa.0.192.arraydecay22.sroa_idx, i32 64)
  %18 = ptrtoint ptr %orig.sroa.7.0.u.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %orig.sroa.8.0.copyload, ptr %orig.sroa.7.0.u.sroa_idx, align 1
  %bus27 = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 250
  %19 = ptrtoint ptr %bus27 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %orig.sroa.12.0.copyload, ptr %bus27, align 1
  %20 = ptrtoint ptr %orig.sroa.8.0.u.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %orig.sroa.13.0.copyload, ptr %orig.sroa.8.0.u.sroa_idx, align 1
  %21 = ptrtoint ptr %orig.sroa.13.0.u.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %orig.sroa.14.0.copyload, ptr %orig.sroa.13.0.u.sroa_idx, align 1
  %22 = ptrtoint ptr %orig.sroa.14.0.u.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %orig.sroa.15.0.copyload, ptr %orig.sroa.14.0.u.sroa_idx, align 1
  %23 = ptrtoint ptr %orig.sroa.15.0.u.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %orig.sroa.16.0.copyload, ptr %orig.sroa.15.0.u.sroa_idx, align 1
  %call36 = tail call fastcc i32 @uhid_dev_create2(ptr noundef %uhid, ptr noundef %ev)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %orig.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_create2(ptr noundef %uhid, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hid1 = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 4
  %0 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1
  %rd_size2 = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 248
  %2 = ptrtoint ptr %rd_size2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %rd_size2, align 1
  %conv = zext i16 %3 to i32
  %4 = add i16 %3, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %4)
  %5 = icmp ult i16 %4, -4096
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rd_data9 = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 268
  %call = tail call ptr @kmemdup(ptr noundef %rd_data9, i32 noundef %conv, i32 noundef 3264) #10
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %rd_size13 = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 3
  %6 = ptrtoint ptr %rd_size13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rd_size13, align 4
  %rd_data14 = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 2
  %7 = ptrtoint ptr %rd_data14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %rd_data14, align 4
  %call15 = tail call ptr @hid_allocate_device() #10
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call15 to i32
  %9 = ptrtoint ptr %rd_data14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd_data14, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %rd_data14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rd_data14, align 4
  %12 = ptrtoint ptr %rd_size13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rd_size13, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 39
  %call24 = tail call ptr @strncpy(ptr noundef %name, ptr noundef %u, i32 noundef 127)
  %phys = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 40
  %phys27 = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 120
  %call29 = tail call ptr @strncpy(ptr noundef %phys, ptr noundef %phys27, i32 noundef 63)
  %uniq = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 41
  %uniq32 = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 184
  %call34 = tail call ptr @strncpy(ptr noundef %uniq, ptr noundef %uniq32, i32 noundef 63)
  %ll_driver = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 20
  %13 = ptrtoint ptr %ll_driver to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @uhid_hid_driver, ptr %ll_driver, align 4
  %bus = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 250
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %bus, align 1
  %bus36 = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 8
  %16 = ptrtoint ptr %bus36 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %bus36, align 8
  %vendor = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 252
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %vendor, align 1
  %vendor38 = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 10
  %19 = ptrtoint ptr %vendor38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vendor38, align 4
  %product = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 256
  %20 = ptrtoint ptr %product to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %product, align 1
  %product40 = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 11
  %22 = ptrtoint ptr %product40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %product40, align 8
  %version = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 260
  %23 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %version, align 1
  %version42 = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 12
  %25 = ptrtoint ptr %version42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %version42, align 4
  %country = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 264
  %26 = ptrtoint ptr %country to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %country, align 1
  %country44 = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 14
  %28 = ptrtoint ptr %country44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %country44, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 42
  %29 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %uhid, ptr %driver_data, align 8
  %30 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @uhid_misc, i32 0, i32 5), align 4
  %parent = getelementptr inbounds %struct.hid_device, ptr %call15, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %parent, align 8
  %32 = ptrtoint ptr %hid1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call15, ptr %hid1, align 4
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %33 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %running, align 4
  %worker = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %worker) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then17, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then17 ], [ 0, %if.end19 ], [ -114, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_destroy(ptr noundef %uhid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hid = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 4
  %0 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %2 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 0, ptr %running, align 4
  %report_wait = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %report_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %worker = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 17
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %worker) #10
  %3 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hid, align 4
  tail call void @hid_destroy_device(ptr noundef %4) #10
  %5 = ptrtoint ptr %hid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hid, align 4
  %rd_data = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 2
  %6 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd_data, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %return

return:                                           ; preds = %do.body2, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_input(ptr noundef %uhid, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hid = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 4
  %2 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid, align 4
  %u = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1
  %size = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1, i32 1, i32 4088
  %4 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %size, align 1
  %6 = tail call i16 @llvm.umin.i16(i16 %5, i16 4096)
  %cond = zext i16 %6 to i32
  %call = tail call i32 @hid_input_report(ptr noundef %3, i32 noundef 0, ptr noundef %u, i32 noundef %cond, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_input2(ptr noundef %uhid, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hid = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 4
  %2 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid, align 4
  %u = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1
  %data = getelementptr inbounds %struct.uhid_input2_req, ptr %u, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %u, align 1
  %6 = tail call i16 @llvm.umin.i16(i16 %5, i16 4096)
  %cond = zext i16 %6 to i32
  %call = tail call i32 @hid_input_report(ptr noundef %3, i32 noundef 0, ptr noundef %data, i32 noundef %cond, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_get_report_reply(ptr noundef %uhid, ptr nocapture noundef readonly %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %u, align 1
  %qlock.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #10
  %report_type.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 15
  %4 = ptrtoint ptr %report_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report_type.i, align 4
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ev, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.not.i = icmp eq i32 %5, %7
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.uhid_report_wake_up.exit_crit_edge

if.end.uhid_report_wake_up.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_report_wake_up.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %report_id.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 14
  %8 = ptrtoint ptr %report_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp7.not.i = icmp eq i32 %9, %3
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.uhid_report_wake_up.exit_crit_edge

lor.lhs.false.i.uhid_report_wake_up.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_report_wake_up.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %report_running.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 13
  %10 = ptrtoint ptr %report_running.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %report_running.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i.uhid_report_wake_up.exit_crit_edge, label %if.end10.i

if.end.i.uhid_report_wake_up.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_report_wake_up.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %report_buf.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 16
  %12 = call ptr @memcpy(ptr %report_buf.i, ptr %ev, i32 4380)
  %13 = ptrtoint ptr %report_running.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %report_running.i, align 4
  %report_wait.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %report_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %uhid_report_wake_up.exit

uhid_report_wake_up.exit:                         ; preds = %if.end10.i, %if.end.i.uhid_report_wake_up.exit_crit_edge, %lor.lhs.false.i.uhid_report_wake_up.exit_crit_edge, %if.end.uhid_report_wake_up.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #10
  br label %return

return:                                           ; preds = %uhid_report_wake_up.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %uhid_report_wake_up.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uhid_dev_set_report_reply(ptr noundef %uhid, ptr nocapture noundef readonly %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 1
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %running, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.uhid_event, ptr %ev, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %u, align 1
  %qlock.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #10
  %report_type.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 15
  %4 = ptrtoint ptr %report_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report_type.i, align 4
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ev, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.not.i = icmp eq i32 %5, %7
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.uhid_report_wake_up.exit_crit_edge

if.end.uhid_report_wake_up.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_report_wake_up.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %report_id.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 14
  %8 = ptrtoint ptr %report_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp7.not.i = icmp eq i32 %9, %3
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.uhid_report_wake_up.exit_crit_edge

lor.lhs.false.i.uhid_report_wake_up.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_report_wake_up.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %report_running.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 13
  %10 = ptrtoint ptr %report_running.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %report_running.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i.uhid_report_wake_up.exit_crit_edge, label %if.end10.i

if.end.i.uhid_report_wake_up.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uhid_report_wake_up.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %report_buf.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 16
  %12 = call ptr @memcpy(ptr %report_buf.i, ptr %ev, i32 4380)
  %13 = ptrtoint ptr %report_running.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %report_running.i, align 4
  %report_wait.i = getelementptr inbounds %struct.uhid_device, ptr %uhid, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %report_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %uhid_report_wake_up.exit

uhid_report_wake_up.exit:                         ; preds = %if.end10.i, %if.end.i.uhid_report_wake_up.exit_crit_edge, %lor.lhs.false.i.uhid_report_wake_up.exit_crit_edge, %if.end.uhid_report_wake_up.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #10
  br label %return

return:                                           ; preds = %uhid_report_wake_up.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %uhid_report_wake_up.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uhid_device_add_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hid = getelementptr i8, ptr %work, i32 -9148
  %0 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid, align 4
  %call = tail call i32 @hid_add_device(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call) #14
  %running = getelementptr i8, ptr %work, i32 -9160
  %4 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 0, ptr %running, align 4
  %report_wait = getelementptr i8, ptr %work, i32 -4444
  tail call void @__wake_up(ptr noundef %report_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @uhid_hid_driver, !1, !"uhid_hid_driver", i1 false, i1 false}
!1 = !{!"../drivers/hid/uhid.c", i32 390, i32 22}
!2 = !{ptr @__ksymtab_uhid_hid_driver, !3, !"__ksymtab_uhid_hid_driver", i1 false, i1 false}
!3 = !{!"../drivers/hid/uhid.c", i32 399, i32 1}
!4 = !{ptr @__initcall__kmod_uhid__255_815_uhid_misc_init6, !5, !"__initcall__kmod_uhid__255_815_uhid_misc_init6", i1 false, i1 false}
!5 = !{!"../drivers/hid/uhid.c", i32 815, i32 1}
!6 = !{ptr @__exitcall_uhid_misc_exit, !5, !"__exitcall_uhid_misc_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/hid/uhid.c", i32 817, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author258, !11, !"__UNIQUE_ID_author258", i1 false, i1 false}
!11 = !{!"../drivers/hid/uhid.c", i32 818, i32 1}
!12 = !{ptr @__UNIQUE_ID_description259, !13, !"__UNIQUE_ID_description259", i1 false, i1 false}
!13 = !{!"../drivers/hid/uhid.c", i32 819, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias260, !15, !"__UNIQUE_ID_alias260", i1 false, i1 false}
!15 = !{!"../drivers/hid/uhid.c", i32 820, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias261, !17, !"__UNIQUE_ID_alias261", i1 false, i1 false}
!17 = !{!"../drivers/hid/uhid.c", i32 821, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/uhid.c", i32 103, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @uhid_queue._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @uhid_queue._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hid/uhid.c", i32 813, i32 11}
!28 = !{ptr @uhid_misc, !29, !"uhid_misc", i1 false, i1 false}
!29 = !{!"../drivers/hid/uhid.c", i32 810, i32 26}
!30 = !{ptr @uhid_fops, !31, !"uhid_fops", i1 false, i1 false}
!31 = !{!"../drivers/hid/uhid.c", i32 800, i32 37}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/hid/uhid.c", i32 750, i32 23}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/hid/uhid.c", i32 751, i32 4}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @uhid_char_write._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @uhid_char_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @uhid_char_open.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/hid/uhid.c", i32 644, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @uhid_char_open.__key.12, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/hid/uhid.c", i32 645, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @uhid_char_open.__key.14, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/hid/uhid.c", i32 646, i32 2}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @uhid_char_open.__key.16, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/hid/uhid.c", i32 647, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @uhid_char_open.__key.18, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/hid/uhid.c", i32 648, i32 2}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @uhid_char_open.__key.20, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/hid/uhid.c", i32 650, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/uhid.c", i32 75, i32 3}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @uhid_device_add_worker._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @uhid_device_add_worker._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{i64 2152281586, i64 2152281611}
!83 = !{i64 2152280905, i64 2152280930}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 4776460}
!86 = !{i64 4776657}
!87 = !{i64 2152261890}
