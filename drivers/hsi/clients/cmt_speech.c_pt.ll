; ModuleID = '/llk/IR_all_yes/drivers/hsi/clients/cmt_speech.c_pt.bc'
source_filename = "../drivers/hsi/clients/cmt_speech.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hsi_client_driver = type { %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cs_char = type { i32, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.char_queue = type { %struct.list_head, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cs_hsi_iface = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], i32, i32, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.pm_qos_request, %struct.spinlock }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.hsi_msg = type { %struct.list_head, ptr, %struct.sg_table, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.cs_buffer_config = type { i32, i32, i32, i32, [4 x i32] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.cs_mmap_config_block = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], i32, i32, [2 x i32], %struct.cs_timestamp }
%struct.cs_timestamp = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%union.anon.14 = type { i32 }

@__initcall__kmod_cmt_speech__253_1435_cs_char_init6 = internal global ptr @cs_char_init, section ".initcall6.init", align 4
@cs_hsi_driver = internal global { %struct.hsi_client_driver, [52 x i8] } { %struct.hsi_client_driver { %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @cs_hsi_client_probe, ptr null, ptr @cs_hsi_client_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [52 x i8] zeroinitializer }, align 32
@cs_char_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016CMT speech driver removed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_char_exit\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hsi/clients/cmt_speech.c\00", [63 x i8] zeroinitializer }, align 32
@cs_char_exit._entry_ptr = internal global ptr @cs_char_exit._entry, section ".printk_index", align 4
@__exitcall_cs_char_exit = internal global ptr @cs_char_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias254 = internal constant [32 x i8] c"cmt_speech.alias=hsi:cmt-speech\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [56 x i8] c"cmt_speech.author=Kai Vehmanen <kai.vehmanen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [60 x i8] c"cmt_speech.author=Peter Ujfalusi <peter.ujfalusi@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [41 x i8] c"cmt_speech.description=CMT speech driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [47 x i8] c"cmt_speech.file=drivers/hsi/clients/cmt_speech\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [26 x i8] c"cmt_speech.license=GPL v2\00", section ".modinfo", align 1
@cs_char_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016CMT speech driver added\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_char_init\00", [19 x i8] zeroinitializer }, align 32
@cs_char_init._entry_ptr = internal global ptr @cs_char_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmt-speech\00", [21 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmt_speech\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs_hsi_client_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hsi_client_probe\0A\00", [46 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs_char_data = internal global { %struct.cs_char, [44 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cs_char_data.wait\00", [45 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cs_char_data.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"speech-control\00", [17 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 1386, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not get cmd channel (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe._entry_ptr = internal global ptr @cs_hsi_client_probe._entry, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"speech-data\00", [20 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 1394, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not get data channel (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe._entry_ptr.19 = internal global ptr @cs_hsi_client_probe._entry.17, section ".printk_index", align 4
@cs_char_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.6, ptr @cs_char_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 1400, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to register: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cs_hsi_client_probe._entry_ptr.22 = internal global ptr @cs_hsi_client_probe._entry.20, section ".printk_index", align 4
@cs_char_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @cs_char_read, ptr @cs_char_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs_char_poll, ptr @cs_char_ioctl, ptr null, ptr @cs_char_mmap, i32 0, ptr @cs_char_open, ptr null, ptr @cs_char_release, ptr null, ptr @cs_char_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 538, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Write still pending on control channel.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cs_hsi_write_on_control\00", [40 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_control._entry_ptr = internal global ptr @cs_hsi_write_on_control._entry, section ".printk_index", align 4
@cs_hsi_write_on_control.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sending control message %08X\0A\00", [34 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_control._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 554, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"async_write failed with %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_control._entry_ptr.28 = internal global ptr @cs_hsi_write_on_control._entry.26, section ".printk_index", align 4
@cs_hsi_write_on_control._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 566, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Restarting control reads\0A\00", [38 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_control._entry_ptr.31 = internal global ptr @cs_hsi_write_on_control._entry.29, section ".printk_index", align 4
@cs_cmd_destructor.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs_cmd_destructor\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"control cmd destructor\0A\00", [40 x i8] zeroinitializer }, align 32
@cs_cmd_destructor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 225, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cmd flushed while driver active\0A\00", [63 x i8] zeroinitializer }, align 32
@cs_cmd_destructor._entry_ptr = internal global ptr @cs_cmd_destructor._entry, section ".printk_index", align 4
@cs_hsi_write_on_control_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 522, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unexpected status in control write callback %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cs_hsi_write_on_control_complete\00", [63 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_control_complete._entry_ptr = internal global ptr @cs_hsi_write_on_control_complete._entry, section ".printk_index", align 4
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"control write\00", [18 x i8] zeroinitializer }, align 32
@__cs_hsi_error_pre._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 371, ptr @.str.14, ptr @.str.15 }, align 1
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HSI %s error, msg %d, state %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__cs_hsi_error_pre\00", [45 x i8] zeroinitializer }, align 32
@__cs_hsi_error_pre._entry_ptr = internal global ptr @__cs_hsi_error_pre._entry, section ".printk_index", align 4
@cs_hsi_read_on_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 487, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Control read already pending (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs_hsi_read_on_control\00", [41 x i8] zeroinitializer }, align 32
@cs_hsi_read_on_control._entry_ptr = internal global ptr @cs_hsi_read_on_control._entry, section ".printk_index", align 4
@cs_hsi_read_on_control._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 493, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Control read error (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@cs_hsi_read_on_control._entry_ptr.44 = internal global ptr @cs_hsi_read_on_control._entry.42, section ".printk_index", align 4
@cs_hsi_read_on_control.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.41, ptr @.str.2, ptr @.str.45, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Issuing RX on control\0A\00", [41 x i8] zeroinitializer }, align 32
@cs_hsi_peek_on_control_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 464, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Control peek RX error detected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cs_hsi_peek_on_control_complete\00", [32 x i8] zeroinitializer }, align 32
@cs_hsi_peek_on_control_complete._entry_ptr = internal global ptr @cs_hsi_peek_on_control_complete._entry, section ".printk_index", align 4
@cs_hsi_peek_on_control_complete.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Peek on control complete, reading\0A\00", [61 x i8] zeroinitializer }, align 32
@cs_hsi_read_on_control_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 433, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Control RX error detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cs_hsi_read_on_control_complete\00", [32 x i8] zeroinitializer }, align 32
@cs_hsi_read_on_control_complete._entry_ptr = internal global ptr @cs_hsi_read_on_control_complete._entry, section ".printk_index", align 4
@cs_hsi_read_on_control_complete.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Read on control: %08X\0A\00", [41 x i8] zeroinitializer }, align 32
@cs_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 145, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't allocate new entry for the queue.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs_notify\00", [22 x i8] zeroinitializer }, align 32
@cs_notify._entry_ptr = internal global ptr @cs_notify._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"control read\00", [19 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 699, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Not configured, aborting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs_hsi_write_on_data\00", [43 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_data._entry_ptr = internal global ptr @cs_hsi_write_on_data._entry, section ".printk_index", align 4
@cs_hsi_write_on_data._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 704, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HSI error, aborting\0A\00", [43 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_data._entry_ptr.59 = internal global ptr @cs_hsi_write_on_data._entry.57, section ".printk_index", align 4
@cs_hsi_write_on_data._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 709, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Write pending on data channel.\0A\00", [32 x i8] zeroinitializer }, align 32
@cs_hsi_write_on_data._entry_ptr.62 = internal global ptr @cs_hsi_write_on_data._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data write\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cs_hsi_set_wakeline.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs_hsi_set_wakeline\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting wake line to %d (%p)\0A\00", [34 x i8] zeroinitializer }, align 32
@cs_hsi_set_wakeline.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.2, ptr @.str.69, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wake line set to %d (%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@cs_hsi_data_sync.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cs_hsi_data_sync\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hsi_data_sync break, idle\0A\00", [37 x i8] zeroinitializer }, align 32
@cs_hsi_data_sync.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.70, ptr @.str.2, ptr @.str.72, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hsi_data_sync timeout after %d ms\0A\00", [61 x i8] zeroinitializer }, align 32
@cs_hsi_data_sync.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hsi_data_sync done with res %d\0A\00", [32 x i8] zeroinitializer }, align 32
@check_buf_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 823, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"No space for the requested buffer configuration\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_buf_params\00", [47 x i8] zeroinitializer }, align 32
@check_buf_params._entry_ptr = internal global ptr @check_buf_params._entry, section ".printk_index", align 4
@cs_hsi_data_enable.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs_hsi_data_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"setting slot size to %u, buf size %u, align %u\0A\00", [48 x i8] zeroinitializer }, align 32
@cs_hsi_data_enable.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"setting data start at %u, cfg block %u, align %u\0A\00", [46 x i8] zeroinitializer }, align 32
@cs_hsi_data_enable.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.76, ptr @.str.2, ptr @.str.79, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DL buf #%u at %u\0A\00", [46 x i8] zeroinitializer }, align 32
@cs_hsi_data_enable.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.76, ptr @.str.2, ptr @.str.80, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UL buf #%u at %u\0A\00", [46 x i8] zeroinitializer }, align 32
@cs_hsi_data_disable.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs_hsi_data_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"closing data channel with slot size 0\0A\00", [57 x i8] zeroinitializer }, align 32
@cs_hsi_read_on_data.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs_hsi_read_on_data\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Data read already pending (%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@cs_hsi_peek_on_data_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 611, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Data received in invalid state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs_hsi_peek_on_data_complete\00", [35 x i8] zeroinitializer }, align 32
@cs_hsi_peek_on_data_complete._entry_ptr = internal global ptr @cs_hsi_peek_on_data_complete._entry, section ".printk_index", align 4
@cs_notify_data.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cs_notify_data\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"data notification queue overrun (%u entries)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data read\00", [22 x i8] zeroinitializer }, align 32
@cs_char_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs_char_vma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.90 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@cs_char_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1297, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to initialize HSI\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_char_open\00", [19 x i8] zeroinitializer }, align 32
@cs_char_open._entry_ptr = internal global ptr @cs_char_open._entry, section ".printk_index", align 4
@cs_hsi_start.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_hsi_start\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs_hsi_start\0A\00", [18 x i8] zeroinitializer }, align 32
@cs_hsi_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hsi_if->lock\00", [18 x i8] zeroinitializer }, align 32
@cs_hsi_start.__key.96 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hsi_if->datawait\00", [46 x i8] zeroinitializer }, align 32
@cs_hsi_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 1006, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to alloc HSI messages\0A\00", [34 x i8] zeroinitializer }, align 32
@cs_hsi_start._entry_ptr = internal global ptr @cs_hsi_start._entry, section ".printk_index", align 4
@cs_hsi_start._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.93, ptr @.str.2, i32 1011, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to alloc HSI messages for data\0A\00", [57 x i8] zeroinitializer }, align 32
@cs_hsi_start._entry_ptr.101 = internal global ptr @cs_hsi_start._entry.99, section ".printk_index", align 4
@cs_hsi_start._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.93, ptr @.str.2, i32 1017, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not open, HSI port already claimed\0A\00", [54 x i8] zeroinitializer }, align 32
@cs_hsi_start._entry_ptr.104 = internal global ptr @cs_hsi_start._entry.102, section ".printk_index", align 4
@cs_hsi_start._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.93, ptr @.str.2, i32 1023, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not get HSI master client\0A\00", [63 x i8] zeroinitializer }, align 32
@cs_hsi_start._entry_ptr.107 = internal global ptr @cs_hsi_start._entry.105, section ".printk_index", align 4
@cs_hsi_start._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.93, ptr @.str.2, i32 1029, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HSI port not initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@cs_hsi_start._entry_ptr.110 = internal global ptr @cs_hsi_start._entry.108, section ".printk_index", align 4
@cs_hsi_start.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.93, ptr @.str.2, ptr @.str.111, i8 1, i8 3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs_hsi_start...done\0A\00", [43 x i8] zeroinitializer }, align 32
@cs_hsi_start.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.93, ptr @.str.2, ptr @.str.112, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs_hsi_start...done/error\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@cs_hsi_data_destructor.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.115, ptr @.str.2, ptr @.str.116, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs_hsi_data_destructor\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Freeing data %s message\0A\00", [39 x i8] zeroinitializer }, align 32
@cs_hsi_data_destructor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 304, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Data %s flush while device active\0A\00", [61 x i8] zeroinitializer }, align 32
@cs_hsi_data_destructor._entry_ptr = internal global ptr @cs_hsi_data_destructor._entry, section ".printk_index", align 4
@cs_hsi_stop.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs_hsi_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs_hsi_stop\0A\00", [19 x i8] zeroinitializer }, align 32
@cs_hsi_client_remove.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs_hsi_client_remove\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hsi_client_remove\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 32, i64 1074021143, i64 1075856159, i64 2147762965, i64 2147762974]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"cs_hsi_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1421, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1440, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1432, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1423, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1373, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"cs_char_data\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 121, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1374, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1375, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1383, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1386, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1391, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1394, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"cs_char_miscdev\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1362, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1400, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"cs_char_fops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1350, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 537, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 549, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 553, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 566, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 222, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 225, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 520, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 403, i32 30 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 370, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 486, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 492, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 498, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 464, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 471, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 433, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 438, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 144, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 394, i32 30 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 699, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 704, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 709, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 420, i32 30 }
@___asan_gen_.344 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 174, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 772, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 784, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 840, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 864, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 874, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 822, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 889, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 894, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 901, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 908, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 918, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 658, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 611, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 188, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 412, i32 30 }
@___asan_gen_.421 = private unnamed_addr constant [15 x i8] c"cs_char_vm_ops\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1099, i32 42 }
@___asan_gen_.425 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1160, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1297, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 990, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 996, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1003, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1006, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1011, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1016, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1023, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1028, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1038, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1054, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 297, i32 51 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 297, i32 58 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 299, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 303, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1061, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.518 = private constant [36 x i8] c"../drivers/hsi/clients/cmt_speech.c\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1409, i32 2 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__cs_hsi_error_pre._entry, ptr @__cs_hsi_error_pre._entry_ptr, ptr @__exitcall_cs_char_exit, ptr @__initcall__kmod_cmt_speech__253_1435_cs_char_init6, ptr @check_buf_params._entry, ptr @check_buf_params._entry_ptr, ptr @cs_char_exit, ptr @cs_char_exit._entry, ptr @cs_char_exit._entry_ptr, ptr @cs_char_init._entry, ptr @cs_char_init._entry_ptr, ptr @cs_char_open._entry, ptr @cs_char_open._entry_ptr, ptr @cs_cmd_destructor._entry, ptr @cs_cmd_destructor._entry_ptr, ptr @cs_hsi_client_probe._entry, ptr @cs_hsi_client_probe._entry.17, ptr @cs_hsi_client_probe._entry.20, ptr @cs_hsi_client_probe._entry_ptr, ptr @cs_hsi_client_probe._entry_ptr.19, ptr @cs_hsi_client_probe._entry_ptr.22, ptr @cs_hsi_data_destructor._entry, ptr @cs_hsi_data_destructor._entry_ptr, ptr @cs_hsi_peek_on_control_complete._entry, ptr @cs_hsi_peek_on_control_complete._entry_ptr, ptr @cs_hsi_peek_on_data_complete._entry, ptr @cs_hsi_peek_on_data_complete._entry_ptr, ptr @cs_hsi_read_on_control._entry, ptr @cs_hsi_read_on_control._entry.42, ptr @cs_hsi_read_on_control._entry_ptr, ptr @cs_hsi_read_on_control._entry_ptr.44, ptr @cs_hsi_read_on_control_complete._entry, ptr @cs_hsi_read_on_control_complete._entry_ptr, ptr @cs_hsi_start._entry, ptr @cs_hsi_start._entry.102, ptr @cs_hsi_start._entry.105, ptr @cs_hsi_start._entry.108, ptr @cs_hsi_start._entry.99, ptr @cs_hsi_start._entry_ptr, ptr @cs_hsi_start._entry_ptr.101, ptr @cs_hsi_start._entry_ptr.104, ptr @cs_hsi_start._entry_ptr.107, ptr @cs_hsi_start._entry_ptr.110, ptr @cs_hsi_write_on_control._entry, ptr @cs_hsi_write_on_control._entry.26, ptr @cs_hsi_write_on_control._entry.29, ptr @cs_hsi_write_on_control._entry_ptr, ptr @cs_hsi_write_on_control._entry_ptr.28, ptr @cs_hsi_write_on_control._entry_ptr.31, ptr @cs_hsi_write_on_control_complete._entry, ptr @cs_hsi_write_on_control_complete._entry_ptr, ptr @cs_hsi_write_on_data._entry, ptr @cs_hsi_write_on_data._entry.57, ptr @cs_hsi_write_on_data._entry.60, ptr @cs_hsi_write_on_data._entry_ptr, ptr @cs_hsi_write_on_data._entry_ptr.59, ptr @cs_hsi_write_on_data._entry_ptr.62, ptr @cs_notify._entry, ptr @cs_notify._entry_ptr, ptr @cs_hsi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cs_hsi_client_probe.__key, ptr @cs_char_data, ptr @.str.9, ptr @cs_hsi_client_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @cs_char_miscdev, ptr @.str.21, ptr @cs_char_fops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @cs_char_vm_ops, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @cs_hsi_start.__key, ptr @.str.95, ptr @cs_hsi_start.__key.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_client_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_data to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_client_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_client_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_client_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_client_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_control._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_control._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_cmd_destructor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_control_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_read_on_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_read_on_control._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_peek_on_control_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_read_on_control_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_data._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_write_on_data._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_buf_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_peek_on_data_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_char_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start.__key.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_start._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_hsi_data_destructor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  %call1 = tail call i32 @hsi_register_client_driver(ptr noundef nonnull @cs_hsi_driver) #10
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs_char_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef nonnull @cs_hsi_driver) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_register_client_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_hsi_client_probe(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_client_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_client_probe, %if.then)) #10
          to label %do.body4 [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_client_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  tail call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 10), ptr noundef nonnull @.str.9, ptr noundef nonnull @cs_hsi_client_probe.__key) #10
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8), ptr noundef nonnull @.str.11, ptr noundef nonnull @cs_hsi_client_probe.__key.10, i16 noundef signext 3) #10
  store i32 0, ptr @cs_char_data, align 4
  store ptr %dev, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 2), align 4
  store volatile ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 3), ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 3), ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 3, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4), ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4), ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4, i32 1), align 4
  %call11 = tail call i32 @hsi_get_channel_id_by_name(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  store i32 %call11, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end16

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call11) #13
  br label %cleanup

if.end16:                                         ; preds = %do.body4
  %call17 = tail call i32 @hsi_get_channel_id_by_name(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  store i32 %call17, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call17) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call i32 @misc_register(ptr noundef nonnull @cs_char_miscdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %do.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call24) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end23.cleanup_crit_edge, %if.then19, %if.then12
  %retval.0 = phi i32 [ %call11, %if.then12 ], [ %call17, %if.then19 ], [ %call24, %do.end29 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_hsi_client_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_client_remove.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_client_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_client_remove.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.121) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @misc_deregister(ptr noundef nonnull @cs_char_miscdev) #10
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 2), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  %tobool3.not = icmp eq ptr %0, null
  br i1 %tobool3.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cs_hsi_stop(ptr noundef nonnull %0)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_get_channel_id_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %for.cond.preheader

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

for.cond.preheader:                               ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %lock = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 8
  %chardev_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 3
  %dataind_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 4
  %dataind_pending = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 5
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait31 = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 10
  %6 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %for.cond.preheader
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = call i32 @llvm.read_register.i32(metadata !277) #10
  %and.i53 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i53 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %4, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %4, ptr %5, align 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %17 = ptrtoint ptr %chardev_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %chardev_queue, align 4
  %cmp.i.not = icmp eq ptr %18, %chardev_queue
  br i1 %cmp.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %for.cond
  %msg.i = getelementptr inbounds %struct.char_queue, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.cs_pop_entry.exit_crit_edge

if.then6.cs_pop_entry.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_pop_entry.exit

if.end.i.i.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %cs_pop_entry.exit

cs_pop_entry.exit:                                ; preds = %if.end.i.i.i, %if.then6.cs_pop_entry.exit_crit_edge
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %18) #10
  br label %if.end16

if.else:                                          ; preds = %for.cond
  %29 = ptrtoint ptr %dataind_queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %dataind_queue, align 4
  %cmp.i54.not = icmp eq ptr %30, %dataind_queue
  br i1 %cmp.i54.not, label %if.end16.thread, label %if.then11

if.end16.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end20

if.then11:                                        ; preds = %if.else
  %msg.i56 = getelementptr inbounds %struct.char_queue, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg.i56, align 4
  %call.i.i.i57 = call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #10
  br i1 %call.i.i.i57, label %if.end.i.i.i60, label %if.then11.cs_pop_entry.exit62_crit_edge

if.then11.cs_pop_entry.exit62_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_pop_entry.exit62

if.end.i.i.i60:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i58, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i59, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %cs_pop_entry.exit62

cs_pop_entry.exit62:                              ; preds = %if.end.i.i.i60, %if.then11.cs_pop_entry.exit62_crit_edge
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i61 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i61, align 4
  call void @kfree(ptr noundef %30) #10
  %41 = ptrtoint ptr %dataind_pending to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dataind_pending, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %dataind_pending, align 4
  br label %if.end16

if.end16:                                         ; preds = %cs_pop_entry.exit62, %cs_pop_entry.exit
  %data.0 = phi i32 [ %32, %cs_pop_entry.exit62 ], [ %20, %cs_pop_entry.exit ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.0)
  %tobool18.not = icmp eq i32 %data.0, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %for.end

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end16.thread
  %43 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f_flags, align 4
  %and = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.else23, label %if.end20.cleanup.thread_crit_edge

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.else23:                                        ; preds = %if.end20
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stack.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.else23.cleanup.thread_crit_edge, !prof !288

if.else23.cleanup.thread_crit_edge:               ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %if.else23
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %48, align 4
  %and1.i.i.i.i.i = and i32 %53, 1
  %tobool27.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool27.not, label %cleanup, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %signal_pending.exit.cleanup.thread_crit_edge, %if.else23.cleanup.thread_crit_edge, %if.end20.cleanup.thread_crit_edge
  %retval1.1.ph = phi i32 [ -512, %signal_pending.exit.cleanup.thread_crit_edge ], [ -11, %if.end20.cleanup.thread_crit_edge ], [ -512, %if.else23.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  br label %cleanup39

cleanup:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %wait31, ptr noundef nonnull %wait, i32 noundef 1) #10
  call void @schedule() #10
  call void @finish_wait(ptr noundef %wait31, ptr noundef nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  br label %for.cond

for.end:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1168) #10
  %54 = call i32 @llvm.read_register.i32(metadata !277) #10
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !289
  %and.i = and i32 %56, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  %57 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i32 %data.0, i32 -1226833921) #10, !srcloc !292
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #10, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool36.not = icmp eq i32 %57, 0
  %spec.store.select = select i1 %tobool36.not, i32 4, i32 %57
  br label %cleanup39

cleanup39:                                        ; preds = %for.end, %cleanup.thread, %entry.cleanup39_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup39_crit_edge ], [ %spec.store.select, %for.end ], [ %retval1.1.ph, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1187) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !277) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !289
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf, i32 -1226833921) #10, !srcloc !293
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  %count. = select i1 %tobool.not, i32 %count, i32 -14
  %hi = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hi, align 4
  tail call fastcc void @local_bh_disable() #10
  %and.i15 = and i32 %asmresult2, 251658240
  %8 = zext i32 %and.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i15, label %if.end.cs_hsi_command.exit.thread_crit_edge [
    i32 16777216, label %sw.bb.i
    i32 0, label %sw.bb1.i
  ]

if.end.cs_hsi_command.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_command.exit.thread

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @cs_hsi_write_on_control(ptr noundef %7, i32 noundef %asmresult2) #10
  br label %cs_hsi_command.exit

sw.bb1.i:                                         ; preds = %if.end
  %and2.i = and i32 %asmresult2, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 805306368
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.i.cs_hsi_command.exit.thread_crit_edge

sw.bb1.i.cs_hsi_command.exit.thread_crit_edge:    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_command.exit.thread

if.then.i:                                        ; preds = %sw.bb1.i
  %and3.i = and i32 %asmresult2, 16777215
  %lock.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %iface_state.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %iface_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iface_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.error.thread.i.i_crit_edge

if.then.i.error.thread.i.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.thread.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %data_state.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %data_state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_state.i.i, align 4
  %and.i.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %if.then27.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %and9.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end17.i.i, label %if.end7.i.i.error.thread.i.i_crit_edge

if.end7.i.i.error.thread.i.i_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.thread.i.i

if.end17.i.i:                                     ; preds = %if.end7.i.i
  %or.i.i = or i32 %12, 2
  %13 = ptrtoint ptr %data_state.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i, ptr %data_state.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  %tx_slot.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 10
  %14 = ptrtoint ptr %tx_slot.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and3.i, ptr %tx_slot.i.i, align 4
  %mmap_base.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %mmap_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmap_base.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.cs_hsi_iface, ptr %7, i32 0, i32 16, i32 %and3.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, %16
  %19 = inttoptr i32 %add.i.i to ptr
  %data_tx_msg.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 21
  %20 = ptrtoint ptr %data_tx_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_tx_msg.i.i, align 4
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgt.i.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 11
  %24 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size.i.i, align 4
  tail call void @sg_init_one(ptr noundef %23, ptr noundef %19, i32 noundef %25) #10
  %complete.i.i = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cs_hsi_write_on_data_complete, ptr %complete.i.i, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 4
  %ttype.i.i.i = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 9
  %29 = ptrtoint ptr %ttype.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i.i = load i8, ptr %ttype.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %ttype.i.i.i, align 4
  %call.i.i.i = tail call i32 @hsi_async(ptr noundef %28, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool22.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool22.not.i.i, label %cs_hsi_command.exit.thread19, label %if.then23.i.i

cs_hsi_command.exit.thread19:                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_enable() #10
  br label %cleanup

if.then23.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %status.i.i.i.i = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 6
  %32 = ptrtoint ptr %status.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i.i.i.i, align 4
  %34 = ptrtoint ptr %data_state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_state.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.63, i32 noundef %33, i32 noundef %35) #13
  %36 = ptrtoint ptr %data_state.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_state.i.i, align 4
  %or.i.i.i.i = and i32 %37, -11
  %and.i.i.i.i = or i32 %or.i.i.i.i, 8
  store i32 %and.i.i.i.i, ptr %data_state.i.i, align 4
  br label %cleanup.sink.split.i.i

error.thread.i.i:                                 ; preds = %if.end7.i.i.error.thread.i.i_crit_edge, %if.then.i.error.thread.i.i_crit_edge
  %.str.61.sink.i.i = phi ptr [ @.str.55, %if.then.i.error.thread.i.i_crit_edge ], [ @.str.61, %if.end7.i.i.error.thread.i.i_crit_edge ]
  %ret.0.ph.i.i = phi i32 [ -22, %if.then.i.error.thread.i.i_crit_edge ], [ -16, %if.end7.i.i.error.thread.i.i_crit_edge ]
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull %.str.61.sink.i.i) #13
  br label %cleanup.sink.split.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.58) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  %data_tx_msg28.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %7, i32 0, i32 21
  %42 = ptrtoint ptr %data_tx_msg28.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data_tx_msg28.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  %status.i.i59.i.i = getelementptr inbounds %struct.hsi_msg, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %status.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status.i.i59.i.i, align 4
  %48 = ptrtoint ptr %data_state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_state.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.63, i32 noundef %47, i32 noundef %49) #13
  %50 = ptrtoint ptr %data_state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_state.i.i, align 4
  %or.i.i60.i.i = and i32 %51, -11
  %and.i.i61.i.i = or i32 %or.i.i60.i.i, 8
  store i32 %and.i.i61.i.i, ptr %data_state.i.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then27.i.i, %error.thread.i.i, %if.then23.i.i
  %retval.0.ph.i.i = phi i32 [ %ret.0.ph.i.i, %error.thread.i.i ], [ -5, %if.then27.i.i ], [ %call.i.i.i, %if.then23.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  br label %cs_hsi_command.exit

cs_hsi_command.exit.thread:                       ; preds = %sw.bb1.i.cs_hsi_command.exit.thread_crit_edge, %if.end.cs_hsi_command.exit.thread_crit_edge
  tail call fastcc void @local_bh_enable() #10
  br label %52

cs_hsi_command.exit:                              ; preds = %cleanup.sink.split.i.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call.i, %sw.bb.i ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  tail call fastcc void @local_bh_enable() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp7 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp7, label %cs_hsi_command.exit._crit_edge, label %cs_hsi_command.exit.cleanup_crit_edge

cs_hsi_command.exit.cleanup_crit_edge:            ; preds = %cs_hsi_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cs_hsi_command.exit._crit_edge:                   ; preds = %cs_hsi_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %52

52:                                               ; preds = %cs_hsi_command.exit._crit_edge, %cs_hsi_command.exit.thread
  %ret.0.i18 = phi i32 [ -22, %cs_hsi_command.exit.thread ], [ %ret.0.i, %cs_hsi_command.exit._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %52, %cs_hsi_command.exit.cleanup_crit_edge, %cs_hsi_command.exit.thread19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i18, %52 ], [ %count., %cs_hsi_command.exit.cleanup_crit_edge ], [ %count., %cs_hsi_command.exit.thread19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_poll(ptr noundef %file, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
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
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %file, ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 10), ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %chardev_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chardev_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chardev_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %chardev_queue
  br i1 %cmp.i.not, label %if.else, label %poll_wait.exit.if.end4_crit_edge

poll_wait.exit.if.end4_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.else:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dataind_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dataind_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dataind_queue, align 4
  %cmp.i10.not = icmp eq ptr %7, %dataind_queue
  %spec.select = select i1 %cmp.i10.not, i32 0, i32 65
  br label %if.end4

if.end4:                                          ; preds = %if.else, %poll_wait.exit.if.end4_crit_edge
  %ret.0 = phi i32 [ 65, %poll_wait.exit.if.end4_crit_edge ], [ %spec.select, %if.else ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %state = alloca i32, align 4
  %state3 = alloca i32, align 4
  %ifver = alloca i32, align 4
  %buf_cfg = alloca %struct.cs_buffer_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2147204331, label %sw.bb
    i32 1074021143, label %sw.bb2
    i32 -2147204322, label %sw.bb13
    i32 1075856159, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %hi = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hi, align 4
  %iface_state.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %iface_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iface_state.i, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %state, align 4
  %8 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit.thread_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #14, !srcloc !294
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %state, i32 noundef 4) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %state, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb.copy_to_user.exit.thread_crit_edge
  %10 = phi i32 [ -14, %sw.bb.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state3) #10
  %11 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %state3, align 4, !annotation !295
  %12 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #10
  %call.i.i36 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i36, label %sw.bb2.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb2.if.then11.i.i_crit_edge:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb2
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 4, i32 -1226833920) #14, !srcloc !296
  %asmresult.i.i38 = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i38)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i38, 0
  br i1 %cmp.i6.i, label %if.end.i.i40, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !288

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i40:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %state3, i32 noundef 4) #10
  %14 = call i32 @llvm.read_register.i32(metadata !277) #10
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !289
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %state3, ptr noundef %12, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #10, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i40.if.then11.i.i_crit_edge, !prof !288

if.end.i.i40.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i40.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb2.if.then11.i.i_crit_edge
  %res.0.i.i82 = phi i32 [ %call1.i.i.i, %if.end.i.i40.if.then11.i.i_crit_edge ], [ 4, %sw.bb2.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i82
  %add.ptr.i.i = getelementptr i8, ptr %state3, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i82)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i40
  %18 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp ugt i32 %19, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %hi10 = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %hi10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hi10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11 = icmp ne i32 %19, 0
  call fastcc void @cs_hsi_set_wakeline(ptr noundef %21, i1 noundef zeroext %tobool11)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.then11.i.i
  %r.1 = phi i32 [ 0, %if.end9 ], [ -22, %if.end7.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state3) #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifver) #10
  %22 = ptrtoint ptr %ifver to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %ifver, align 4
  %23 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #10
  %call.i.i44 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i44, label %sw.bb13.copy_to_user.exit53.thread_crit_edge, label %if.end.i.i48

sw.bb13.copy_to_user.exit53.thread_crit_edge:     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit53.thread

if.end.i.i48:                                     ; preds = %sw.bb13
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 4, i32 -1226833920) #14, !srcloc !294
  %asmresult.i.i46 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i46)
  %cmp.i1.i47 = icmp eq i32 %asmresult.i.i46, 0
  br i1 %cmp.i1.i47, label %copy_to_user.exit53, label %if.end.i.i48.copy_to_user.exit53.thread_crit_edge

if.end.i.i48.copy_to_user.exit53.thread_crit_edge: ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit53.thread

copy_to_user.exit53:                              ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i49 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ifver, i32 noundef 4) #10
  %call.i1.i.i50 = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %ifver, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i50)
  %tobool15.not = icmp eq i32 %call.i1.i.i50, 0
  %spec.select92 = select i1 %tobool15.not, i32 0, i32 -14
  br label %copy_to_user.exit53.thread

copy_to_user.exit53.thread:                       ; preds = %copy_to_user.exit53, %if.end.i.i48.copy_to_user.exit53.thread_crit_edge, %sw.bb13.copy_to_user.exit53.thread_crit_edge
  %25 = phi i32 [ -14, %sw.bb13.copy_to_user.exit53.thread_crit_edge ], [ -14, %if.end.i.i48.copy_to_user.exit53.thread_crit_edge ], [ %spec.select92, %copy_to_user.exit53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifver) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf_cfg) #10
  %26 = inttoptr i32 %arg to ptr
  %27 = call ptr @memset(ptr %buf_cfg, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #10
  %call.i.i58 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i58, label %sw.bb19.if.then11.i.i75_crit_edge, label %land.lhs.true.i.i62

sw.bb19.if.then11.i.i75_crit_edge:                ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i75

land.lhs.true.i.i62:                              ; preds = %sw.bb19
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 32, i32 -1226833920) #14, !srcloc !296
  %asmresult.i.i60 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i60)
  %cmp.i6.i61 = icmp eq i32 %asmresult.i.i60, 0
  br i1 %cmp.i6.i61, label %if.end.i.i72, label %land.lhs.true.i.i62.if.then11.i.i75_crit_edge, !prof !288

land.lhs.true.i.i62.if.then11.i.i75_crit_edge:    ; preds = %land.lhs.true.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i75

if.end.i.i72:                                     ; preds = %land.lhs.true.i.i62
  %call.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf_cfg, i32 noundef 32) #10
  %29 = call i32 @llvm.read_register.i32(metadata !277) #10
  %and.i.i.i.i.i.i64 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i64 to ptr
  %cpu_domain.i.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i65) #6, !srcloc !289
  %and.i.i.i.i66 = and i32 %31, -13
  %or.i.i.i.i67 = or i32 %and.i.i.i.i66, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i67) #10, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  %call1.i.i.i68 = call i32 @arm_copy_from_user(ptr noundef nonnull %buf_cfg, ptr noundef %26, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i68)
  %tobool4.not.i.i71 = icmp eq i32 %call1.i.i.i68, 0
  br i1 %tobool4.not.i.i71, label %if.else, label %if.end.i.i72.if.then11.i.i75_crit_edge, !prof !288

if.end.i.i72.if.then11.i.i75_crit_edge:           ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i75

if.then11.i.i75:                                  ; preds = %if.end.i.i72.if.then11.i.i75_crit_edge, %land.lhs.true.i.i62.if.then11.i.i75_crit_edge, %sw.bb19.if.then11.i.i75_crit_edge
  %res.0.i.i7089 = phi i32 [ %call1.i.i.i68, %if.end.i.i72.if.then11.i.i75_crit_edge ], [ 32, %sw.bb19.if.then11.i.i75_crit_edge ], [ 32, %land.lhs.true.i.i62.if.then11.i.i75_crit_edge ]
  %sub.i.i73 = sub i32 32, %res.0.i.i7089
  %add.ptr.i.i74 = getelementptr i8, ptr %buf_cfg, i32 %sub.i.i73
  %32 = call ptr @memset(ptr %add.ptr.i.i74, i32 0, i32 %res.0.i.i7089)
  br label %if.end25

if.else:                                          ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  %hi23 = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %hi23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hi23, align 4
  %call24 = call fastcc i32 @cs_hsi_buf_config(ptr noundef %34, ptr noundef nonnull %buf_cfg)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then11.i.i75
  %r.3 = phi i32 [ %call24, %if.else ], [ -14, %if.then11.i.i75 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf_cfg) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %copy_to_user.exit53.thread, %cleanup, %copy_to_user.exit.thread, %entry.sw.epilog_crit_edge
  %r.4 = phi i32 [ %r.3, %if.end25 ], [ %25, %copy_to_user.exit53.thread ], [ %r.1, %cleanup ], [ %10, %copy_to_user.exit.thread ], [ -25, %entry.sw.epilog_crit_edge ]
  ret i32 %r.4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cs_char_mmap(ptr nocapture noundef readonly %file, ptr nocapture noundef %vma) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp uge i32 %1, %3
  %sub.i = sub i32 %1, %3
  %shr.i.mask = and i32 %sub.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shr.i.mask)
  %cmp1.not = icmp eq i32 %shr.i.mask, 4096
  %or.cond = select i1 %cmp, i1 %cmp1.not, i1 false
  br i1 %or.cond, label %if.end3, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %or = or i32 %5, 67387392
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %6 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cs_char_vm_ops, ptr %vm_ops, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %9 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %vm_private_data, align 4
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_open(ptr nocapture noundef readnone %unused, ptr nocapture noundef writeonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  %0 = load i32, ptr @cs_char_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, ptr @cs_char_data, align 4
  store i32 0, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.out2_crit_edge, label %if.end3

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  %call4 = tail call fastcc i32 @cs_hsi_start(ptr noundef %1, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.91) #13
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #10
  br label %out2

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %call, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 6), align 4
  store i32 4096, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 7), align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cs_char_data, ptr %private_data, align 4
  br label %cleanup

out2:                                             ; preds = %do.end, %if.end.out2_crit_edge
  %ret.0 = phi i32 [ %call4, %do.end ], [ -12, %if.end.out2_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  store i32 0, ptr @cs_char_data, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %if.then ], [ %ret.0, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_release(ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hi = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hi, align 4
  tail call fastcc void @cs_hsi_stop(ptr noundef %3)
  %lock = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %4 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hi, align 4
  %mmap_base = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmap_base, align 4
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #10
  %chardev_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %chardev_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %chardev_queue, align 4
  %cmp.i.not.i = icmp eq ptr %8, %chardev_queue
  br i1 %cmp.i.not.i, label %entry.cs_free_char_queue.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cs_free_char_queue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_free_char_queue.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cursor.017.i = phi ptr [ %next.019.i, %list_del.exit.i.for.body.i_crit_edge ], [ %8, %entry.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %cursor.017.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %next.019.i = load ptr, ptr %cursor.017.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.017.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.017.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %cursor.017.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cursor.017.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %cursor.017.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %cursor.017.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.017.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %cursor.017.i) #10
  %cmp.i13.not.i = icmp eq ptr %next.019.i, %chardev_queue
  br i1 %cmp.i13.not.i, label %list_del.exit.i.cs_free_char_queue.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.cs_free_char_queue.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_free_char_queue.exit

cs_free_char_queue.exit:                          ; preds = %list_del.exit.i.cs_free_char_queue.exit_crit_edge, %entry.cs_free_char_queue.exit_crit_edge
  %dataind_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %dataind_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %dataind_queue, align 4
  %cmp.i.not.i10 = icmp eq ptr %19, %dataind_queue
  br i1 %cmp.i.not.i10, label %cs_free_char_queue.exit.cs_free_char_queue.exit21_crit_edge, label %cs_free_char_queue.exit.for.body.i14_crit_edge

cs_free_char_queue.exit.for.body.i14_crit_edge:   ; preds = %cs_free_char_queue.exit
  br label %for.body.i14

cs_free_char_queue.exit.cs_free_char_queue.exit21_crit_edge: ; preds = %cs_free_char_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_free_char_queue.exit21

for.body.i14:                                     ; preds = %list_del.exit.i20.for.body.i14_crit_edge, %cs_free_char_queue.exit.for.body.i14_crit_edge
  %cursor.017.i11 = phi ptr [ %next.019.i12, %list_del.exit.i20.for.body.i14_crit_edge ], [ %19, %cs_free_char_queue.exit.for.body.i14_crit_edge ]
  %20 = ptrtoint ptr %cursor.017.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %next.019.i12 = load ptr, ptr %cursor.017.i11, align 4
  %call.i.i.i13 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.017.i11) #10
  br i1 %call.i.i.i13, label %if.end.i.i.i17, label %for.body.i14.list_del.exit.i20_crit_edge

for.body.i14.list_del.exit.i20_crit_edge:         ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i20

if.end.i.i.i17:                                   ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %cursor.017.i11, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i15, align 4
  %23 = ptrtoint ptr %cursor.017.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cursor.017.i11, align 4
  %prev1.i.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i16, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i20

list_del.exit.i20:                                ; preds = %if.end.i.i.i17, %for.body.i14.list_del.exit.i20_crit_edge
  %27 = ptrtoint ptr %cursor.017.i11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %cursor.017.i11, align 4
  %prev.i.i18 = getelementptr inbounds %struct.list_head, ptr %cursor.017.i11, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i18, align 4
  tail call void @kfree(ptr noundef %cursor.017.i11) #10
  %cmp.i13.not.i19 = icmp eq ptr %next.019.i12, %dataind_queue
  br i1 %cmp.i13.not.i19, label %list_del.exit.i20.cs_free_char_queue.exit21_crit_edge, label %list_del.exit.i20.for.body.i14_crit_edge

list_del.exit.i20.for.body.i14_crit_edge:         ; preds = %list_del.exit.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i14

list_del.exit.i20.cs_free_char_queue.exit21_crit_edge: ; preds = %list_del.exit.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_free_char_queue.exit21

cs_free_char_queue.exit21:                        ; preds = %list_del.exit.i20.cs_free_char_queue.exit21_crit_edge, %cs_free_char_queue.exit.cs_free_char_queue.exit21_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.cs_char, ptr %1, i32 0, i32 9
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %async_queue) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %. = select i1 %cmp, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_hsi_write_on_control(ptr noundef %hi, i32 noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 4
  %0 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_state, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %or = or i32 %1, 2
  %4 = ptrtoint ptr %control_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %control_state, align 4
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 19
  %5 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !297

do.body3.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/cmt_speech.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #10, !srcloc !298
  unreachable

do.end8.i:                                        ; preds = %if.end7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.cs_claim_cmd.exit_crit_edge

do.end8.i.cs_claim_cmd.exit_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %cs_claim_cmd.exit

cs_claim_cmd.exit:                                ; preds = %if.end.i.i.i, %do.end8.i.cs_claim_cmd.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 5
  %15 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cs_cmd_destructor, ptr %destructor.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %cs_set_cmd.exit, label %do.body2.i.i.i, !prof !288

do.body2.i.i.i:                                   ; preds = %cs_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

cs_set_cmd.exit:                                  ; preds = %cs_claim_cmd.exit
  %and.i.i.i = and i32 %19, -4
  %20 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %20) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %22
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %message, ptr %add.ptr.i.i, align 4
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %nents, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 4
  %25 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cs_hsi_write_on_control_complete, ptr %complete, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_write_on_control.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_write_on_control, %if.then15)) #10
          to label %do.end20 [label %if.then15], !srcloc !287

if.then15:                                        ; preds = %cs_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_write_on_control.__UNIQUE_ID_ddebug235, ptr noundef %27, ptr noundef nonnull @.str.25, i32 noundef %message) #10
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %cs_set_cmd.exit
  %28 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hi, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 9
  %30 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %29, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %do.end20.if.end30_crit_edge, label %do.end27

do.end20.if.end30_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end27:                                         ; preds = %do.end20
  %31 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.27, i32 noundef %call.i) #13
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %33 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hi, align 4
  %status.i.i = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 6
  %35 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i.i, align 4
  %37 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %control_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %36, i32 noundef %38) #13
  %context.i.i = getelementptr inbounds %struct.hsi_msg, ptr %6, i32 0, i32 3
  %39 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context.i.i, align 4
  %cmdqueue.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %40, i32 0, i32 19
  %prev.i.i.i63 = getelementptr inbounds %struct.cs_hsi_iface, ptr %40, i32 0, i32 19, i32 1
  %41 = ptrtoint ptr %prev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i63, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %42, ptr noundef %cmdqueue.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end27.cs_hsi_control_write_error.exit_crit_edge

do.end27.cs_hsi_control_write_error.exit_crit_edge: ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_control_write_error.exit

if.end.i.i.i.i:                                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %prev.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %6, ptr %prev.i.i.i63, align 4
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %cmdqueue.i.i, ptr %6, align 4
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %6, ptr %42, align 4
  br label %cs_hsi_control_write_error.exit

cs_hsi_control_write_error.exit:                  ; preds = %if.end.i.i.i.i, %do.end27.cs_hsi_control_write_error.exit_crit_edge
  %47 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %control_state, align 4
  %or.i.i = and i32 %48, -11
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %control_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %if.end30

if.end30:                                         ; preds = %cs_hsi_control_write_error.exit, %do.end20.if.end30_crit_edge
  %49 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %control_state, align 4
  %and32 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.end37, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.30) #13
  tail call fastcc void @cs_hsi_read_on_control(ptr noundef %hi)
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end30.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -16, %do.end ], [ 0, %do.end37 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_write_on_control_complete(ptr noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %3, label %do.end [
    i32 0, label %if.then
    i32 4, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control_state, align 4
  %and = and i32 %6, -3
  store i32 %and, ptr %control_state, align 4
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %8, i32 0, i32 19
  %prev.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %8, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %10, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.cs_release_cmd.exit_crit_edge

if.then.cs_release_cmd.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_release_cmd.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg, ptr %10, align 4
  br label %cs_release_cmd.exit

cs_release_cmd.exit:                              ; preds = %if.end.i.i.i, %if.then.cs_release_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %if.end7

if.then4:                                         ; preds = %entry
  %control_state.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 4
  %lock.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %19 = ptrtoint ptr %control_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control_state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %18, i32 noundef %20) #13
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  %cmdqueue.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %22, i32 0, i32 19
  %prev.i.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %22, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %24, ptr noundef %cmdqueue.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then4.cs_hsi_control_write_error.exit_crit_edge

if.then4.cs_hsi_control_write_error.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_control_write_error.exit

if.end.i.i.i.i:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cmdqueue.i.i, ptr %msg, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg, ptr %24, align 4
  br label %cs_hsi_control_write_error.exit

cs_hsi_control_write_error.exit:                  ; preds = %if.end.i.i.i.i, %if.then4.cs_hsi_control_write_error.exit_crit_edge
  %29 = ptrtoint ptr %control_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %control_state.i, align 4
  %or.i.i = and i32 %30, -11
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %control_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.35, i32 noundef %3) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %cs_hsi_control_write_error.exit, %cs_release_cmd.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_hsi_read_on_control(ptr noundef %hi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 4
  %0 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %1) #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and4 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %1) #13
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end
  %or = or i32 %1, 1
  %6 = ptrtoint ptr %control_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %control_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_read_on_control.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_read_on_control, %if.then20)) #10
          to label %do.end25 [label %if.then20], !srcloc !287

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_read_on_control.__UNIQUE_ID_ddebug234, ptr noundef %8, ptr noundef nonnull @.str.45) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %if.end14
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 19
  %9 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !297

do.body3.i:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/cmt_speech.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #10, !srcloc !298
  unreachable

do.end8.i:                                        ; preds = %do.end25
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.cs_claim_cmd.exit_crit_edge

do.end8.i.cs_claim_cmd.exit_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %cs_claim_cmd.exit

cs_claim_cmd.exit:                                ; preds = %if.end.i.i.i, %do.end8.i.cs_claim_cmd.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 5
  %19 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cs_cmd_destructor, ptr %destructor.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nents, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 4
  %21 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cs_hsi_peek_on_control_complete, ptr %complete, align 4
  %22 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hi, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 9
  %24 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %23, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %cs_claim_cmd.exit.cleanup_crit_edge, label %if.then31

cs_claim_cmd.exit.cleanup_crit_edge:              ; preds = %cs_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %cs_claim_cmd.exit
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %25 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hi, align 4
  %status.i.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 6
  %27 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i.i, align 4
  %29 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %control_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.54, i32 noundef %28, i32 noundef %30) #13
  %context.i.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 3
  %31 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context.i.i, align 4
  %cmdqueue.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %32, i32 0, i32 19
  %prev.i.i.i51 = getelementptr inbounds %struct.cs_hsi_iface, ptr %32, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %prev.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i51, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %34, ptr noundef %cmdqueue.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then31.cs_hsi_control_read_error.exit_crit_edge

if.then31.cs_hsi_control_read_error.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_control_read_error.exit

if.end.i.i.i.i:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %10, ptr %prev.i.i.i51, align 4
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cmdqueue.i.i, ptr %10, align 4
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %10, ptr %34, align 4
  br label %cs_hsi_control_read_error.exit

cs_hsi_control_read_error.exit:                   ; preds = %if.end.i.i.i.i, %if.then31.cs_hsi_control_read_error.exit_crit_edge
  %39 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %control_state, align 4
  %or.i.i = and i32 %40, -14
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %control_state, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cs_hsi_control_read_error.exit, %do.end9, %do.end
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cs_claim_cmd.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_cmd_destructor(ptr noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_cmd_destructor.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_cmd_destructor, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_cmd_destructor.__UNIQUE_ID_ddebug230, ptr noundef %2, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %iface_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iface_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.end.if.end8_crit_edge, label %do.end6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.34) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %do.end.if.end8_crit_edge
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %7 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp9 = icmp sgt i8 %bf.load, -1
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_state, align 4
  br i1 %cmp9, label %if.end8.if.end23.sink.split_crit_edge, label %land.lhs.true

if.end8.if.end23.sink.split_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.sink.split

land.lhs.true:                                    ; preds = %if.end8
  %and17 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.end23.sink.split_crit_edge

land.lhs.true.if.end23.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.sink.split

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23.sink.split:                              ; preds = %land.lhs.true.if.end23.sink.split_crit_edge, %if.end8.if.end23.sink.split_crit_edge
  %.sink = phi i32 [ -6, %if.end8.if.end23.sink.split_crit_edge ], [ -3, %land.lhs.true.if.end23.sink.split_crit_edge ]
  %and21 = and i32 %9, %.sink
  %10 = ptrtoint ptr %control_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and21, ptr %control_state, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.if.end23_crit_edge
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %12, i32 0, i32 19
  %prev.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %12, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %14, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end23.cs_release_cmd.exit_crit_edge

if.end23.cs_release_cmd.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_release_cmd.exit

if.end.i.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg, ptr %14, align 4
  br label %cs_release_cmd.exit

cs_release_cmd.exit:                              ; preds = %if.end.i.i.i, %if.end23.cs_release_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_async(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_peek_on_control_complete(ptr noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46) #13
  %control_state.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 4
  %lock.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = ptrtoint ptr %control_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %11) #13
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  %cmdqueue.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %13, i32 0, i32 19
  %prev.i.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %13, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %15, ptr noundef %cmdqueue.i.i) #10
  br i1 %call.i.i.i.i, label %do.end.cleanup.sink.split.sink.split_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %entry
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %control_state, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end13, label %if.end.if.end19_crit_edge, !prof !297

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 469, i32 noundef 9, ptr noundef null) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end13, %if.end.if.end19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_peek_on_control_complete.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_peek_on_control_complete, %if.then35)) #10
          to label %do.end40 [label %if.then35], !srcloc !287

if.then35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_peek_on_control_complete.__UNIQUE_ID_ddebug233, ptr noundef %19, ptr noundef nonnull @.str.48) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %if.end19
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %nents, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 4
  %21 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cs_hsi_read_on_control_complete, ptr %complete, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %24 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %23, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %do.end40.cleanup_crit_edge, label %if.then44

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %do.end40
  %lock.i.i60 = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i60) #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %29 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %control_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.54, i32 noundef %28, i32 noundef %30) #13
  %31 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context, align 4
  %cmdqueue.i.i63 = getelementptr inbounds %struct.cs_hsi_iface, ptr %32, i32 0, i32 19
  %prev.i.i.i64 = getelementptr inbounds %struct.cs_hsi_iface, ptr %32, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %prev.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i64, align 4
  %call.i.i.i.i65 = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %34, ptr noundef %cmdqueue.i.i63) #10
  br i1 %call.i.i.i.i65, label %if.then44.cleanup.sink.split.sink.split_crit_edge, label %if.then44.cleanup.sink.split_crit_edge

if.then44.cleanup.sink.split_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then44.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then44.cleanup.sink.split.sink.split_crit_edge, %do.end.cleanup.sink.split.sink.split_crit_edge
  %prev.i.i.i64.sink = phi ptr [ %prev.i.i.i, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %prev.i.i.i64, %if.then44.cleanup.sink.split.sink.split_crit_edge ]
  %cmdqueue.i.i63.sink = phi ptr [ %cmdqueue.i.i, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %cmdqueue.i.i63, %if.then44.cleanup.sink.split.sink.split_crit_edge ]
  %.sink73 = phi ptr [ %15, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %34, %if.then44.cleanup.sink.split.sink.split_crit_edge ]
  %control_state.sink72.ph = phi ptr [ %control_state.i, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %control_state, %if.then44.cleanup.sink.split.sink.split_crit_edge ]
  %lock.i.i60.sink.ph = phi ptr [ %lock.i.i, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %lock.i.i60, %if.then44.cleanup.sink.split.sink.split_crit_edge ]
  %35 = ptrtoint ptr %prev.i.i.i64.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg, ptr %prev.i.i.i64.sink, align 4
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cmdqueue.i.i63.sink, ptr %msg, align 4
  %prev3.i.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %.sink73, ptr %prev3.i.i.i.i66, align 4
  %38 = ptrtoint ptr %.sink73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg, ptr %.sink73, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then44.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %control_state.sink72 = phi ptr [ %control_state.i, %do.end.cleanup.sink.split_crit_edge ], [ %control_state, %if.then44.cleanup.sink.split_crit_edge ], [ %control_state.sink72.ph, %cleanup.sink.split.sink.split ]
  %lock.i.i60.sink = phi ptr [ %lock.i.i, %do.end.cleanup.sink.split_crit_edge ], [ %lock.i.i60, %if.then44.cleanup.sink.split_crit_edge ], [ %lock.i.i60.sink.ph, %cleanup.sink.split.sink.split ]
  %39 = ptrtoint ptr %control_state.sink72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %control_state.sink72, align 4
  %or.i.i68 = and i32 %40, -14
  %and.i.i69 = or i32 %or.i.i68, 8
  store i32 %and.i.i69, ptr %control_state.sink72, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i60.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end40.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_read_on_control_complete(ptr noundef %msg) #3 align 64 {
entry:
  %tspec = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %cs_get_cmd.exit, label %do.body2.i.i.i, !prof !288

do.body2.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

cs_get_cmd.exit:                                  ; preds = %entry
  %and.i.i.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %4) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %6
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %10, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %control_state, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %control_state, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %cs_get_cmd.exit
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.49) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %21 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.54, i32 noundef %20, i32 noundef %22) #13
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  %cmdqueue.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %24, i32 0, i32 19
  %prev.i.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %24, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %26, ptr noundef %cmdqueue.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end.cs_hsi_control_read_error.exit_crit_edge

do.end.cs_hsi_control_read_error.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_control_read_error.exit

if.end.i.i.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cmdqueue.i.i, ptr %msg, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg, ptr %26, align 4
  br label %cs_hsi_control_read_error.exit

cs_hsi_control_read_error.exit:                   ; preds = %if.end.i.i.i.i, %do.end.cs_hsi_control_read_error.exit_crit_edge
  %31 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %control_state, align 4
  %or.i.i = and i32 %32, -14
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %control_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %out

do.body2:                                         ; preds = %cs_get_cmd.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_read_on_control_complete.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_read_on_control_complete, %if.then6)) #10
          to label %do.end11 [label %if.then6], !srcloc !287

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_read_on_control_complete.__UNIQUE_ID_ddebug232, ptr noundef %34, ptr noundef nonnull @.str.51, i32 noundef %8) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body2
  %35 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context, align 4
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %36, i32 0, i32 19
  %prev.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %36, i32 0, i32 19, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %38, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end11.cs_release_cmd.exit_crit_edge

do.end11.cs_release_cmd.exit_crit_edge:           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_release_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg, ptr %38, align 4
  br label %cs_release_cmd.exit

cs_release_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end11.cs_release_cmd.exit_crit_edge
  %flags = getelementptr inbounds %struct.cs_hsi_iface, ptr %10, i32 0, i32 18
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and12 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %cs_release_cmd.exit.if.end17_crit_edge, label %if.then14

cs_release_cmd.exit.if.end17_crit_edge:           ; preds = %cs_release_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %cs_release_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tspec) #10
  %45 = call ptr @memset(ptr %tspec, i32 255, i32 16)
  %mmap_cfg = getelementptr inbounds %struct.cs_hsi_iface, ptr %10, i32 0, i32 6
  %46 = ptrtoint ptr %mmap_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmap_cfg, align 4
  %tstamp_rx_ctrl = getelementptr inbounds %struct.cs_mmap_config_block, ptr %47, i32 0, i32 10
  call void @ktime_get_ts64(ptr noundef nonnull %tspec) #10
  %48 = ptrtoint ptr %tspec to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tspec, align 8
  %conv = trunc i64 %49 to i32
  %50 = ptrtoint ptr %tstamp_rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv, ptr %tstamp_rx_ctrl, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tspec, i32 0, i32 1
  %51 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tv_nsec, align 8
  %tv_nsec16 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %47, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %tv_nsec16 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tv_nsec16, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tspec) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %cs_release_cmd.exit.if.end17_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  call fastcc void @cs_notify(i32 noundef %8, ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 3)) #10
  br label %out

out:                                              ; preds = %if.end17, %cs_hsi_control_read_error.exit
  call fastcc void @cs_hsi_read_on_control(ptr noundef %10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_notify(i32 noundef %message, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  %0 = load i32, ptr @cs_char_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 12) #15
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.52) #13
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  br label %out

if.end4:                                          ; preds = %if.end
  %msg = getelementptr inbounds %struct.char_queue, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %message, ptr %msg, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %5, ptr noundef %head) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add_tail.exit_crit_edge

if.end4.list_add_tail.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %prev.i, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 10), i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @kill_fasync(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 9), i32 noundef 29, i32 noundef 1) #10
  br label %out

out:                                              ; preds = %list_add_tail.exit, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_write_on_data_complete(ptr nocapture noundef readonly %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_state, align 4
  %and = and i32 %5, -3
  store i32 %and, ptr %data_state, align 4
  %head.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %7, %head.i
  br i1 %cmp.i.i.not, label %if.then.if.end6_crit_edge, label %if.then3, !prof !288

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %datawait = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %datawait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data_state.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 5
  %lock.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = ptrtoint ptr %data_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.63, i32 noundef %11, i32 noundef %13) #13
  %14 = ptrtoint ptr %data_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_state.i, align 4
  %or.i.i = and i32 %15, -11
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %data_state.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3, %if.then.if.end6_crit_edge
  %lock.i.i.sink = phi ptr [ %lock.i.i, %if.else ], [ %lock, %if.then3 ], [ %lock, %if.then.if.end6_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.sink) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_hsi_set_wakeline(ptr noundef %hi, i1 noundef zeroext %new_state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %wakeline_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 3
  %0 = ptrtoint ptr %wakeline_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wakeline_state, align 4
  %conv = zext i1 %new_state to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %do.body24.critedge, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %wakeline_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %wakeline_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_set_wakeline.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_set_wakeline, %if.then9)) #10
          to label %if.then16 [label %if.then9], !srcloc !287

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_set_wakeline.__UNIQUE_ID_ddebug237, ptr noundef %4, ptr noundef nonnull @.str.68, i32 noundef %conv, ptr noundef %4) #10
  br label %if.then16

if.then16:                                        ; preds = %if.then9, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %master = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 1
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  br i1 %new_state, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 @ssip_slave_start_tx(ptr noundef %6) #10
  br label %do.body24

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @ssip_slave_stop_tx(ptr noundef %6) #10
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.else, %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_set_wakeline.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_set_wakeline, %if.then36)) #10
          to label %do.end44 [label %if.then36], !srcloc !287

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_set_wakeline.__UNIQUE_ID_ddebug238, ptr noundef %8, ptr noundef nonnull @.str.69, i32 noundef %conv, ptr noundef %8) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then36, %do.body24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_hsi_buf_config(ptr noundef %hi, ptr nocapture noundef readonly %buf_cfg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 2
  %0 = ptrtoint ptr %iface_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iface_state, align 4
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %iface_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %iface_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %call = tail call fastcc i32 @cs_hsi_data_sync(ptr noundef %hi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 5
  %3 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_state, align 4
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %if.end5.if.end21_crit_edge, label %do.end, !prof !288

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 944, i32 noundef 9, ptr noundef null) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end5.if.end21_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %6 = ptrtoint ptr %buf_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_cfg, align 4
  %tx_bufs.i = getelementptr inbounds %struct.cs_buffer_config, ptr %buf_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp ugt i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp4.i = icmp ugt i32 %9, 16
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %if.end21.error_crit_edge, label %if.else.i

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else.i:                                        ; preds = %if.end21
  %buf_size.i = getelementptr inbounds %struct.cs_buffer_config, ptr %buf_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_size.i, align 4
  %add.i = add i32 %11, 127
  %and.i = and i32 %add.i, -128
  %add1.i = add nuw nsw i32 %9, %7
  %mul.i = mul i32 %and.i, %add1.i
  %add5.i = add i32 %mul.i, 256
  %mmap_size.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 8
  %12 = ptrtoint ptr %mmap_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmap_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %13)
  %cmp6.not.i = icmp ult i32 %add5.i, %13
  br i1 %cmp6.not.i, label %if.end32, label %do.end.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.74) #13
  br label %error

if.end32:                                         ; preds = %if.else.i
  %16 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size.i, align 4
  %buf_size33 = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 11
  %18 = ptrtoint ptr %buf_size33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf_size33, align 4
  %mmap_cfg = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 6
  %19 = ptrtoint ptr %mmap_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmap_cfg, align 4
  %buf_size35 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %buf_size35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %buf_size35, align 4
  %flags = getelementptr inbounds %struct.cs_buffer_config, ptr %buf_cfg, i32 0, i32 3
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %flags36 = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 18
  %24 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flags36, align 4
  %rx_slot = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 9
  %25 = ptrtoint ptr %rx_slot to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rx_slot, align 4
  %tx_slot = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 10
  %26 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx_slot, align 4
  %slot_size = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 17
  %27 = ptrtoint ptr %slot_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %slot_size, align 4
  %28 = load i32, ptr %buf_size33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool38.not = icmp eq i32 %28, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cs_hsi_data_enable(ptr noundef %hi, ptr noundef %buf_cfg)
  br label %if.end40

if.else:                                          ; preds = %if.end32
  br i1 %cmp, label %do.body.i, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.body.i:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_disable.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_buf_config, %if.then3.i)) #10
          to label %do.end.i93 [label %if.then3.i], !srcloc !287

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_disable.__UNIQUE_ID_ddebug246, ptr noundef %30, ptr noundef nonnull @.str.82) #10
  br label %do.end.i93

do.end.i93:                                       ; preds = %if.then3.i, %do.body.i
  %31 = ptrtoint ptr %iface_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %iface_state, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end.i93, %if.else.if.end40_crit_edge, %if.then39
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %32 = ptrtoint ptr %iface_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iface_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %33)
  %cmp43.not = icmp eq i32 %1, %33
  br i1 %cmp43.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp46 = icmp eq i32 %33, 2
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 23
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 20000) #10
  tail call fastcc void @local_bh_disable()
  tail call fastcc void @cs_hsi_read_on_data(ptr noundef %hi)
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.else48:                                        ; preds = %if.then44
  br i1 %cmp, label %if.then50, label %if.else48.cleanup_crit_edge

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req51 = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 23
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req51) #10
  br label %cleanup

error:                                            ; preds = %do.end.i, %if.end21.error_crit_edge
  %r.0.i.ph = phi i32 [ -22, %if.end21.error_crit_edge ], [ -105, %do.end.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then50, %if.else48.cleanup_crit_edge, %if.then47, %if.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0.i.ph, %error ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.then50 ], [ 0, %if.else48.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssip_slave_start_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssip_slave_stop_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_hsi_data_sync(ptr noundef %hi) unnamed_addr #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 5
  %0 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_state, align 4
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %datawait = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 22
  %7 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_sync.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_sync, %if.then5)) #10
          to label %out [label %if.then5], !srcloc !287

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_sync.__UNIQUE_ID_ddebug239, ptr noundef %9, ptr noundef nonnull @.str.71) #10
  br label %out

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %for.cond.preheader
  %r.0 = phi i32 [ %r.1, %cleanup.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %10 = call ptr @memset(ptr %7, i32 255, i32 16)
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait, align 4
  %12 = call i32 @llvm.read_register.i32(metadata !277) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %3, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %6, align 4
  %20 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_state, align 4
  %22 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %.not97 = icmp eq i32 %22, 0
  br i1 %.not97, label %for.cond.cleanup.thread_crit_edge, label %if.end15

for.cond.cleanup.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end15:                                         ; preds = %for.cond
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end15.cleanup.thread_crit_edge, !prof !288

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %if.end15
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool19.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool19.not, label %if.end21, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end21:                                         ; preds = %signal_pending.exit
  call void @prepare_to_wait(ptr noundef %datawait, ptr noundef nonnull %wait, i32 noundef 1) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %call24 = call i32 @schedule_timeout(i32 noundef 50) #10
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  call void @finish_wait(ptr noundef %datawait, ptr noundef nonnull %wait) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool27.not = icmp eq i32 %call24, 0
  br i1 %tobool27.not, label %do.body29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_sync.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_sync, %if.then41)) #10
          to label %cleanup [label %if.then41], !srcloc !287

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_sync.__UNIQUE_ID_ddebug240, ptr noundef %33, ptr noundef nonnull @.str.72, i32 noundef 500) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then41, %signal_pending.exit.cleanup.thread_crit_edge, %if.end15.cleanup.thread_crit_edge, %for.cond.cleanup.thread_crit_edge
  %r.1.ph = phi i32 [ -5, %if.then41 ], [ -512, %if.end15.cleanup.thread_crit_edge ], [ %r.0, %for.cond.cleanup.thread_crit_edge ], [ -512, %signal_pending.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  br label %out

cleanup:                                          ; preds = %do.body29, %if.end21.cleanup_crit_edge
  %r.1 = phi i32 [ %r.0, %if.end21.cleanup_crit_edge ], [ -5, %do.body29 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  br i1 %tobool27.not, label %cleanup.out_crit_edge, label %cleanup.for.cond_crit_edge

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %cleanup.thread, %if.then5, %do.body
  %r.2 = phi i32 [ 0, %if.then5 ], [ 0, %do.body ], [ %r.1.ph, %cleanup.thread ], [ %r.1, %cleanup.out_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_sync.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_sync, %if.then62)) #10
          to label %cleanup68 [label %if.then62], !srcloc !287

if.then62:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_sync.__UNIQUE_ID_ddebug241, ptr noundef %35, ptr noundef nonnull @.str.73, i32 noundef %r.2) #10
  br label %cleanup68

cleanup68:                                        ; preds = %if.then62, %out
  ret i32 %r.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_hsi_data_enable(ptr nocapture noundef %hi, ptr nocapture noundef readonly %buf_cfg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 11
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !297

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/cmt_speech.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 884, 0\0A.popsection", ""() #10, !srcloc !300
  unreachable

do.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %buf_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_cfg, align 4
  %tx_bufs = getelementptr inbounds %struct.cs_buffer_config, ptr %buf_cfg, i32 0, i32 1
  %4 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bufs, align 4
  %rx_bufs1.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 12
  %6 = ptrtoint ptr %rx_bufs1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %rx_bufs1.i, align 4
  %tx_bufs2.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 13
  %7 = ptrtoint ptr %tx_bufs2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %tx_bufs2.i, align 4
  %mmap_cfg.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 6
  %8 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmap_cfg.i, align 4
  %rx_bufs3.i = getelementptr inbounds %struct.cs_mmap_config_block, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rx_bufs3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %rx_bufs3.i, align 4
  %11 = load ptr, ptr %mmap_cfg.i, align 4
  %tx_bufs5.i = getelementptr inbounds %struct.cs_mmap_config_block, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %tx_bufs5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %tx_bufs5.i, align 4
  %flags.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 18
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %3, 8
  %rx_ptr_boundary.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 14
  %15 = ptrtoint ptr %rx_ptr_boundary.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.i, ptr %rx_ptr_boundary.i, align 4
  %16 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmap_cfg.i, align 4
  %rx_ptr_boundary8.i = getelementptr inbounds %struct.cs_mmap_config_block, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %rx_ptr_boundary8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl.i, ptr %rx_ptr_boundary8.i, align 4
  br label %set_buffer_sizes.exit

if.else.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %rx_bufs1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_bufs1.i, align 4
  %rx_ptr_boundary10.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 14
  %21 = ptrtoint ptr %rx_ptr_boundary10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rx_ptr_boundary10.i, align 4
  br label %set_buffer_sizes.exit

set_buffer_sizes.exit:                            ; preds = %if.else.i, %if.then.i
  %22 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_size, align 4
  %add = add i32 %23, 127
  %and = and i32 %add, -128
  %slot_size = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 17
  %24 = ptrtoint ptr %slot_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %slot_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_enable, %if.then17)) #10
          to label %do.end22 [label %if.then17], !srcloc !287

if.then17:                                        ; preds = %set_buffer_sizes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hi, align 4
  %27 = ptrtoint ptr %slot_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slot_size, align 4
  %29 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_enable.__UNIQUE_ID_ddebug242, ptr noundef %26, ptr noundef nonnull @.str.77, i32 noundef %28, i32 noundef %30, i32 noundef 128) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %set_buffer_sizes.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_enable, %if.then35)) #10
          to label %do.end40 [label %if.then35], !srcloc !287

if.then35:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_enable.__UNIQUE_ID_ddebug243, ptr noundef %32, ptr noundef nonnull @.str.78, i32 noundef 256, i32 noundef 172, i32 noundef 128) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.end22
  %33 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmap_cfg.i, align 4
  %rx_bufs41164 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %rx_bufs41164 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_bufs41164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp42165.not = icmp eq i32 %36, 0
  br i1 %cmp42165.not, label %do.end40.for.cond70.preheader_crit_edge, label %do.end40.for.body_crit_edge

do.end40.for.body_crit_edge:                      ; preds = %do.end40
  br label %for.body

do.end40.for.cond70.preheader_crit_edge:          ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.inc.for.cond70.preheader_crit_edge, %do.end40.for.cond70.preheader_crit_edge
  %37 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmap_cfg.i, align 4
  %tx_bufs72168 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %tx_bufs72168 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_bufs72168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp73169.not = icmp eq i32 %40, 0
  br i1 %cmp73169.not, label %for.cond70.preheader.for.end109_crit_edge, label %for.cond70.preheader.for.body74_crit_edge

for.cond70.preheader.for.body74_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body74

for.cond70.preheader.for.end109_crit_edge:        ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end109

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end40.for.body_crit_edge
  %i.0166 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end40.for.body_crit_edge ]
  %41 = ptrtoint ptr %slot_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slot_size, align 4
  %mul = mul i32 %42, %i.0166
  %add44 = add i32 %mul, 256
  %arrayidx = getelementptr %struct.cs_hsi_iface, ptr %hi, i32 0, i32 15, i32 %i.0166
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add44, ptr %arrayidx, align 4
  %44 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmap_cfg.i, align 4
  %arrayidx49 = getelementptr %struct.cs_mmap_config_block, ptr %45, i32 0, i32 5, i32 %i.0166
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add44, ptr %arrayidx49, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_enable, %if.then62)) #10
          to label %for.inc [label %if.then62], !srcloc !287

if.then62:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hi, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_enable.__UNIQUE_ID_ddebug244, ptr noundef %48, ptr noundef nonnull @.str.79, i32 noundef %i.0166, i32 noundef %50) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %for.body
  %inc = add nuw i32 %i.0166, 1
  %51 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmap_cfg.i, align 4
  %rx_bufs41 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %rx_bufs41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_bufs41, align 4
  %cmp42 = icmp ult i32 %inc, %54
  br i1 %cmp42, label %for.inc.for.body_crit_edge, label %for.inc.for.cond70.preheader_crit_edge

for.inc.for.cond70.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond70.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body74:                                       ; preds = %for.inc107.for.body74_crit_edge, %for.cond70.preheader.for.body74_crit_edge
  %55 = phi ptr [ %69, %for.inc107.for.body74_crit_edge ], [ %38, %for.cond70.preheader.for.body74_crit_edge ]
  %i.1170 = phi i32 [ %inc108, %for.inc107.for.body74_crit_edge ], [ 0, %for.cond70.preheader.for.body74_crit_edge ]
  %rx_bufs76 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %rx_bufs76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_bufs76, align 4
  %add77 = add i32 %57, %i.1170
  %58 = ptrtoint ptr %slot_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slot_size, align 4
  %mul79 = mul i32 %add77, %59
  %add80 = add i32 %mul79, 256
  %arrayidx81 = getelementptr %struct.cs_hsi_iface, ptr %hi, i32 0, i32 16, i32 %i.1170
  %60 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add80, ptr %arrayidx81, align 4
  %61 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmap_cfg.i, align 4
  %arrayidx86 = getelementptr %struct.cs_mmap_config_block, ptr %62, i32 0, i32 6, i32 %i.1170
  %63 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add80, ptr %arrayidx86, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_enable, %if.then99)) #10
          to label %for.inc107 [label %if.then99], !srcloc !287

if.then99:                                        ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hi, align 4
  %arrayidx103 = getelementptr %struct.cs_hsi_iface, ptr %hi, i32 0, i32 15, i32 %i.1170
  %66 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_enable.__UNIQUE_ID_ddebug245, ptr noundef %65, ptr noundef nonnull @.str.80, i32 noundef %i.1170, i32 noundef %67) #10
  br label %for.inc107

for.inc107:                                       ; preds = %if.then99, %for.body74
  %inc108 = add nuw i32 %i.1170, 1
  %68 = ptrtoint ptr %mmap_cfg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmap_cfg.i, align 4
  %tx_bufs72 = getelementptr inbounds %struct.cs_mmap_config_block, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %tx_bufs72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_bufs72, align 4
  %cmp73 = icmp ult i32 %inc108, %71
  br i1 %cmp73, label %for.inc107.for.body74_crit_edge, label %for.inc107.for.end109_crit_edge

for.inc107.for.end109_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end109

for.inc107.for.body74_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.end109:                                       ; preds = %for.inc107.for.end109_crit_edge, %for.cond70.preheader.for.end109_crit_edge
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 2
  %72 = ptrtoint ptr %iface_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %iface_state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_hsi_read_on_data(ptr noundef %hi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 5
  %0 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_state, align 4
  %and = and i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_read_on_data.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_read_on_data, %if.then4)) #10
          to label %cleanup.sink.split [label %if.then4], !srcloc !287

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hi, align 4
  %4 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_read_on_data.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %5) #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %entry
  %or = or i32 %1, 4
  %6 = ptrtoint ptr %data_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %data_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %data_rx_msg = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 20
  %7 = ptrtoint ptr %data_rx_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_rx_msg, align 4
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sgt, align 4
  %mmap_base = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 7
  %11 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmap_base, align 4
  %13 = inttoptr i32 %12 to ptr
  tail call void @sg_init_one(ptr noundef %10, ptr noundef %13, i32 noundef 0) #10
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %nents, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cs_hsi_peek_on_data_complete, ptr %complete, align 4
  %16 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hi, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 9
  %18 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %17, ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end7.cleanup_crit_edge, label %if.then14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %19 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hi, align 4
  %status.i.i = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 6
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i.i, align 4
  %23 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.89, i32 noundef %22, i32 noundef %24) #13
  %25 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_state, align 4
  %or.i.i = and i32 %26, -14
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %data_state, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %if.then4, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_peek_on_data_complete(ptr noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end, !prof !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cs_hsi_data_read_error(ptr noundef %1, ptr noundef %msg)
  br label %cleanup

if.end:                                           ; preds = %entry
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %iface_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iface_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.not = icmp eq i32 %5, 2
  br i1 %cmp2.not, label %if.end10, label %do.end, !prof !288

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.85) #13
  tail call fastcc void @cs_hsi_data_read_error(ptr noundef %1, ptr noundef %msg)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_state, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.end29, label %if.end10.if.end35_crit_edge, !prof !297

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end29:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 617, i32 noundef 9, ptr noundef null) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.end10.if.end35_crit_edge
  %10 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_state, align 4
  %and43 = and i32 %11, -6
  %or = or i32 %and43, 1
  store i32 %or, ptr %data_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %mmap_base = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmap_base, align 4
  %rx_slot = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %rx_slot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_slot, align 4
  %rx_bufs = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %rx_bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_bufs, align 4
  %rem = urem i32 %15, %17
  %arrayidx = getelementptr %struct.cs_hsi_iface, ptr %1, i32 0, i32 15, i32 %rem
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %21 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgt, align 4
  %buf_size = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_size, align 4
  tail call void @sg_init_one(ptr noundef %22, ptr noundef %20, i32 noundef %24) #10
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nents, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 4
  %26 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cs_hsi_read_on_data_complete, ptr %complete, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %29 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %28, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end35.cleanup_crit_edge, label %if.then49

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %34 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.89, i32 noundef %33, i32 noundef %35) #13
  %36 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_state, align 4
  %or.i.i = and i32 %37, -14
  %and.i.i = or i32 %or.i.i, 8
  store i32 %and.i.i, ptr %data_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end35.cleanup_crit_edge, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_hsi_data_read_error(ptr noundef %hi, ptr nocapture noundef readonly %msg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %0 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hi, align 4
  %status.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status.i, align 4
  %4 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.89, i32 noundef %3, i32 noundef %5) #13
  %6 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_state, align 4
  %or.i = and i32 %7, -14
  %and.i = or i32 %or.i, 8
  store i32 %and.i, ptr %data_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_read_on_data_complete(ptr nocapture noundef readonly %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end, !prof !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cs_hsi_data_read_error(ptr noundef %1, ptr noundef %msg)
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %if.end.if.end23_crit_edge, !prof !297

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 584, i32 noundef 9, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end.if.end23_crit_edge
  %6 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_state, align 4
  %and31 = and i32 %7, -2
  store i32 %and31, ptr %data_state, align 4
  %rx_slot = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %rx_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_slot, align 4
  %or = or i32 %9, 536870912
  %inc = add i32 %9, 1
  %rx_ptr_boundary = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %rx_ptr_boundary to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ptr_boundary, align 4
  %rem = urem i32 %inc, %11
  store i32 %rem, ptr %rx_slot, align 4
  %mmap_cfg = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %mmap_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmap_cfg, align 4
  %rx_ptr = getelementptr inbounds %struct.cs_mmap_config_block, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %rx_ptr, align 4
  %head.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %16, %head.i
  br i1 %cmp.i.i.not, label %if.end23.if.end44_crit_edge, label %if.then42, !prof !288

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %datawait = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %datawait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end23.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %rx_bufs = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %rx_bufs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_bufs, align 4
  tail call fastcc void @cs_notify_data(i32 noundef %or, i32 noundef %18)
  tail call fastcc void @cs_hsi_read_on_data(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_notify_data(i32 noundef %message, i32 noundef %maxlength) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cs_notify(i32 noundef %message, ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4))
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  %0 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 5), align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %maxlength)
  %cmp8 = icmp sgt i32 %inc, %maxlength
  br i1 %cmp8, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %cs_pop_entry.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4), align 4
  %cmp.i.not = icmp eq ptr %1, getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4)
  br i1 %cmp.i.not, label %land.rhs.while.end_crit_edge, label %do.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body:                                          ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_notify_data.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_notify_data, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_notify_data.__UNIQUE_ID_ddebug229, ptr noundef %2, ptr noundef nonnull @.str.88, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %4 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 4), align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.cs_pop_entry.exit_crit_edge

do.end.cs_pop_entry.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_pop_entry.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %cs_pop_entry.exit

cs_pop_entry.exit:                                ; preds = %if.end.i.i.i, %do.end.cs_pop_entry.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %4) #10
  %13 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 5), align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 5), align 4
  %cmp = icmp sgt i32 %dec, %maxlength
  br i1 %cmp, label %cs_pop_entry.exit.land.rhs_crit_edge, label %cs_pop_entry.exit.while.end_crit_edge

cs_pop_entry.exit.while.end_crit_edge:            ; preds = %cs_pop_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cs_pop_entry.exit.land.rhs_crit_edge:             ; preds = %cs_pop_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.end:                                        ; preds = %cs_pop_entry.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 8)) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs_char_vma_fault(ptr nocapture noundef %vmf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %mmap_base = getelementptr inbounds %struct.cs_char, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmap_base, align 4
  %sub = add i32 %6, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %7 = getelementptr %struct.page, ptr %4, i32 %shr, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !288

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %13, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !297

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.90) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !301
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cs_char_vma_fault, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !287

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %11, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page2 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %15 = ptrtoint ptr %page2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %page2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_hsi_start(ptr noundef %cl, i32 noundef %mmap_base) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 332) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_start.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_start, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_start.__UNIQUE_ID_ddebug247, ptr noundef %cl, ptr noundef nonnull @.str.94) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.do.body99_crit_edge, label %do.body7

do.end.do.body99_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

do.body7:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.95, ptr noundef nonnull @cs_hsi_start.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cl, ptr %call7.i.i, align 8
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %iface_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iface_state, align 8
  %3 = inttoptr i32 %mmap_base to ptr
  %mmap_cfg = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %mmap_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mmap_cfg, align 8
  %mmap_base12 = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %mmap_base12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mmap_base, ptr %mmap_base12, align 4
  %mmap_size13 = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %mmap_size13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %mmap_size13, align 8
  %7 = call ptr @memset(ptr %3, i32 0, i32 172)
  %datawait = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %datawait, ptr noundef nonnull @.str.97, ptr noundef nonnull @cs_hsi_start.__key.96) #10
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cmdqueue.i, ptr %cmdqueue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmdqueue.i, ptr %prev.i.i, align 8
  %call.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body7.out.i_crit_edge, label %if.end.i

do.body7.out.i_crit_edge:                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %do.body7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 4) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i7, null
  br i1 %tobool2.not.i, label %if.end.i.if.then3.i_crit_edge, label %if.end4.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.3.i.if.then3.i_crit_edge, %if.end.2.i.if.then3.i_crit_edge, %if.end.1.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %call.lcssa23.i = phi ptr [ %call.i, %if.end.i.if.then3.i_crit_edge ], [ %call.1.i, %if.end.1.i.if.then3.i_crit_edge ], [ %call.2.i, %if.end.2.i.if.then3.i_crit_edge ], [ %call.3.i, %if.end.3.i.if.then3.i_crit_edge ]
  tail call void @hsi_free_msg(ptr noundef nonnull %call.lcssa23.i) #10
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt.i, align 4
  tail call void @sg_init_one(ptr noundef %12, ptr noundef nonnull %call7.i.i7, i32 noundef 4) #10
  %13 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 11), align 4
  %channel.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %channel.i, align 4
  %context.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %context.i, align 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %17, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_add_tail.exit.i_crit_edge

if.end4.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %prev.i.i, align 8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmdqueue.i, ptr %call.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end4.i.list_add_tail.exit.i_crit_edge
  %call.1.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #10
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %list_add_tail.exit.i.out.i_crit_edge, label %if.end.1.i

list_add_tail.exit.i.out.i_crit_edge:             ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.1.i:                                       ; preds = %list_add_tail.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 4) #15
  %tobool2.not.1.i = icmp eq ptr %call7.i.1.i, null
  br i1 %tobool2.not.1.i, label %if.end.1.i.if.then3.i_crit_edge, label %if.end4.1.i

if.end.1.i.if.then3.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end4.1.i:                                      ; preds = %if.end.1.i
  %sgt.1.i = getelementptr inbounds %struct.hsi_msg, ptr %call.1.i, i32 0, i32 2
  %23 = ptrtoint ptr %sgt.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sgt.1.i, align 4
  tail call void @sg_init_one(ptr noundef %24, ptr noundef nonnull %call7.i.1.i, i32 noundef 4) #10
  %25 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 11), align 4
  %channel.1.i = getelementptr inbounds %struct.hsi_msg, ptr %call.1.i, i32 0, i32 8
  %26 = ptrtoint ptr %channel.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %channel.1.i, align 4
  %context.1.i = getelementptr inbounds %struct.hsi_msg, ptr %call.1.i, i32 0, i32 3
  %27 = ptrtoint ptr %context.1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %context.1.i, align 4
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.1.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.1.i, ptr noundef %29, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.1.i, label %if.end.i.i.1.i, label %if.end4.1.i.list_add_tail.exit.1.i_crit_edge

if.end4.1.i.list_add_tail.exit.1.i_crit_edge:     ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.1.i

if.end.i.i.1.i:                                   ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.1.i, ptr %prev.i.i, align 8
  %31 = ptrtoint ptr %call.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cmdqueue.i, ptr %call.1.i, align 4
  %prev3.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %call.1.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.1.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call.1.i, ptr %29, align 4
  br label %list_add_tail.exit.1.i

list_add_tail.exit.1.i:                           ; preds = %if.end.i.i.1.i, %if.end4.1.i.list_add_tail.exit.1.i_crit_edge
  %call.2.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #10
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %list_add_tail.exit.1.i.out.i_crit_edge, label %if.end.2.i

list_add_tail.exit.1.i.out.i_crit_edge:           ; preds = %list_add_tail.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.2.i:                                       ; preds = %list_add_tail.exit.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 4) #15
  %tobool2.not.2.i = icmp eq ptr %call7.i.2.i, null
  br i1 %tobool2.not.2.i, label %if.end.2.i.if.then3.i_crit_edge, label %if.end4.2.i

if.end.2.i.if.then3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end4.2.i:                                      ; preds = %if.end.2.i
  %sgt.2.i = getelementptr inbounds %struct.hsi_msg, ptr %call.2.i, i32 0, i32 2
  %35 = ptrtoint ptr %sgt.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sgt.2.i, align 4
  tail call void @sg_init_one(ptr noundef %36, ptr noundef nonnull %call7.i.2.i, i32 noundef 4) #10
  %37 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 11), align 4
  %channel.2.i = getelementptr inbounds %struct.hsi_msg, ptr %call.2.i, i32 0, i32 8
  %38 = ptrtoint ptr %channel.2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %channel.2.i, align 4
  %context.2.i = getelementptr inbounds %struct.hsi_msg, ptr %call.2.i, i32 0, i32 3
  %39 = ptrtoint ptr %context.2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %context.2.i, align 4
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.2.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.2.i, ptr noundef %41, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.2.i, label %if.end.i.i.2.i, label %if.end4.2.i.list_add_tail.exit.2.i_crit_edge

if.end4.2.i.list_add_tail.exit.2.i_crit_edge:     ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.2.i

if.end.i.i.2.i:                                   ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.2.i, ptr %prev.i.i, align 8
  %43 = ptrtoint ptr %call.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cmdqueue.i, ptr %call.2.i, align 4
  %prev3.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %call.2.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.2.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call.2.i, ptr %41, align 4
  br label %list_add_tail.exit.2.i

list_add_tail.exit.2.i:                           ; preds = %if.end.i.i.2.i, %if.end4.2.i.list_add_tail.exit.2.i_crit_edge
  %call.3.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #10
  %tobool.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool.not.3.i, label %list_add_tail.exit.2.i.out.i_crit_edge, label %if.end.3.i

list_add_tail.exit.2.i.out.i_crit_edge:           ; preds = %list_add_tail.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.3.i:                                       ; preds = %list_add_tail.exit.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.3.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 4) #15
  %tobool2.not.3.i = icmp eq ptr %call7.i.3.i, null
  br i1 %tobool2.not.3.i, label %if.end.3.i.if.then3.i_crit_edge, label %if.end4.3.i

if.end.3.i.if.then3.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end4.3.i:                                      ; preds = %if.end.3.i
  %sgt.3.i = getelementptr inbounds %struct.hsi_msg, ptr %call.3.i, i32 0, i32 2
  %47 = ptrtoint ptr %sgt.3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sgt.3.i, align 4
  tail call void @sg_init_one(ptr noundef %48, ptr noundef nonnull %call7.i.3.i, i32 noundef 4) #10
  %49 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 11), align 4
  %channel.3.i = getelementptr inbounds %struct.hsi_msg, ptr %call.3.i, i32 0, i32 8
  %50 = ptrtoint ptr %channel.3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %channel.3.i, align 4
  %context.3.i = getelementptr inbounds %struct.hsi_msg, ptr %call.3.i, i32 0, i32 3
  %51 = ptrtoint ptr %context.3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %context.3.i, align 4
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.3.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.3.i, ptr noundef %53, ptr noundef %cmdqueue.i) #10
  br i1 %call.i.i.3.i, label %if.end.i.i.3.i, label %if.end4.3.i.if.end24_crit_edge

if.end4.3.i.if.end24_crit_edge:                   ; preds = %if.end4.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i.i.3.i:                                   ; preds = %if.end4.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.3.i, ptr %prev.i.i, align 8
  %55 = ptrtoint ptr %call.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cmdqueue.i, ptr %call.3.i, align 4
  %prev3.i.i.3.i = getelementptr inbounds %struct.list_head, ptr %call.3.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.3.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call.3.i, ptr %53, align 4
  br label %if.end24

out.i:                                            ; preds = %list_add_tail.exit.2.i.out.i_crit_edge, %list_add_tail.exit.1.i.out.i_crit_edge, %list_add_tail.exit.i.out.i_crit_edge, %if.then3.i, %do.body7.out.i_crit_edge
  %58 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmdqueue.i, align 4
  %cmp.not21.i.i = icmp eq ptr %59, %cmdqueue.i
  br i1 %cmp.not21.i.i, label %out.i.do.end22_crit_edge, label %out.i.for.body.i.i_crit_edge

out.i.for.body.i.i_crit_edge:                     ; preds = %out.i
  br label %for.body.i.i

out.i.do.end22_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

for.body.i.i:                                     ; preds = %sg_virt.exit.i.i.for.body.i.i_crit_edge, %out.i.for.body.i.i_crit_edge
  %msg.022.i.i = phi ptr [ %tmp.0.i.i, %sg_virt.exit.i.i.for.body.i.i_crit_edge ], [ %59, %out.i.for.body.i.i_crit_edge ]
  %60 = ptrtoint ptr %msg.022.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp.0.i.i = load ptr, ptr %msg.022.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.022.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i.i.i, align 4
  %63 = ptrtoint ptr %msg.022.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %msg.022.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %67 = ptrtoint ptr %msg.022.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.022.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %destructor.i.i, align 4
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sgt.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %and.i.i.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !288

do.body2.i.i.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

sg_virt.exit.i.i:                                 ; preds = %list_del.exit.i.i
  %and.i.i.i.i = and i32 %73, -4
  %74 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %74) #10
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %76
  tail call void @kfree(ptr noundef %add.ptr.i.i.i) #10
  tail call void @hsi_free_msg(ptr noundef %msg.022.i.i) #10
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %cmdqueue.i
  br i1 %cmp.not.i.i, label %sg_virt.exit.i.i.do.end22_crit_edge, label %sg_virt.exit.i.i.for.body.i.i_crit_edge

sg_virt.exit.i.i.for.body.i.i_crit_edge:          ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

sg_virt.exit.i.i.do.end22_crit_edge:              ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

do.end22:                                         ; preds = %sg_virt.exit.i.i.do.end22_crit_edge, %out.i.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.98) #13
  br label %leave1

if.end24:                                         ; preds = %if.end.i.i.3.i, %if.end4.3.i.if.end24_crit_edge
  %call.i9 = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #10
  %tobool.not.i10 = icmp eq ptr %call.i9, null
  br i1 %tobool.not.i10, label %if.end24.do.end30_crit_edge, label %if.end.i14

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.end.i14:                                       ; preds = %if.end24
  %77 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 12), align 4
  %channel.i11 = getelementptr inbounds %struct.hsi_msg, ptr %call.i9, i32 0, i32 8
  %78 = ptrtoint ptr %channel.i11 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %channel.i11, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i9, i32 0, i32 5
  %79 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @cs_hsi_data_destructor, ptr %destructor.i, align 4
  %context.i12 = getelementptr inbounds %struct.hsi_msg, ptr %call.i9, i32 0, i32 3
  %80 = ptrtoint ptr %context.i12 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i, ptr %context.i12, align 4
  %call1.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #10
  %tobool2.not.i13 = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i13, label %if.then3.i15, label %if.end32

if.then3.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsi_free_msg(ptr noundef nonnull %call.i9) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then3.i15, %if.end24.do.end30_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.100) #13
  br label %leave2

if.end32:                                         ; preds = %if.end.i14
  %81 = load i32, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 12), align 4
  %channel5.i = getelementptr inbounds %struct.hsi_msg, ptr %call1.i, i32 0, i32 8
  %82 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %channel5.i, align 4
  %destructor6.i = getelementptr inbounds %struct.hsi_msg, ptr %call1.i, i32 0, i32 5
  %83 = ptrtoint ptr %destructor6.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @cs_hsi_data_destructor, ptr %destructor6.i, align 4
  %context7.i = getelementptr inbounds %struct.hsi_msg, ptr %call1.i, i32 0, i32 3
  %84 = ptrtoint ptr %context7.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i, ptr %context7.i, align 4
  %data_rx_msg.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 20
  %85 = ptrtoint ptr %data_rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i9, ptr %data_rx_msg.i, align 4
  %data_tx_msg.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 21
  %86 = ptrtoint ptr %data_tx_msg.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call1.i, ptr %data_tx_msg.i, align 8
  %call33 = tail call i32 @hsi_claim_port(ptr noundef %cl, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.103) #13
  br label %leave3

if.end40:                                         ; preds = %if.end32
  %call41 = tail call ptr @ssip_slave_get_master(ptr noundef %cl) #10
  %master = getelementptr inbounds %struct.cs_hsi_iface, ptr %call7.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call41, ptr %master, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %call41 to i32
  br label %leave4

if.end51:                                         ; preds = %if.end40
  %call53 = tail call i32 @ssip_slave_running(ptr noundef %call41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.leave4_crit_edge, label %if.end60

if.end51.leave4_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave4

if.end60:                                         ; preds = %if.end51
  %89 = ptrtoint ptr %iface_state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %iface_state, align 8
  tail call fastcc void @local_bh_disable()
  tail call fastcc void @cs_hsi_read_on_control(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @local_bh_enable()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_start.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_start, %if.then74)) #10
          to label %do.end98 [label %if.then74], !srcloc !287

if.then74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_start.__UNIQUE_ID_ddebug248, ptr noundef %cl, ptr noundef nonnull @.str.111) #10
  br label %do.end98

do.end98:                                         ; preds = %if.then74, %if.end60
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 2), align 4
  br label %cleanup

leave4:                                           ; preds = %if.end51.leave4_crit_edge, %if.then44
  %.str.109.sink = phi ptr [ @.str.106, %if.then44 ], [ @.str.109, %if.end51.leave4_crit_edge ]
  %err.0 = phi i32 [ %88, %if.then44 ], [ -19, %if.end51.leave4_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull %.str.109.sink) #13
  tail call void @hsi_release_port(ptr noundef %cl) #10
  br label %leave3

leave3:                                           ; preds = %leave4, %do.end38
  %err.1 = phi i32 [ %call33, %do.end38 ], [ %err.0, %leave4 ]
  %90 = ptrtoint ptr %data_rx_msg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data_rx_msg.i, align 4
  %status.i.i = getelementptr inbounds %struct.hsi_msg, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status.i.i, align 4
  %94 = and i32 %93, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %.not.i.i = icmp eq i32 %94, 0
  br i1 %.not.i.i, label %leave3.cs_hsi_free_data_msg.exit.i_crit_edge, label %do.end.i.i, !prof !288

leave3.cs_hsi_free_data_msg.exit.i_crit_edge:     ; preds = %leave3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_free_data_msg.exit.i

do.end.i.i:                                       ; preds = %leave3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %cs_hsi_free_data_msg.exit.i

cs_hsi_free_data_msg.exit.i:                      ; preds = %do.end.i.i, %leave3.cs_hsi_free_data_msg.exit.i_crit_edge
  tail call void @hsi_free_msg(ptr noundef %91) #10
  %95 = ptrtoint ptr %data_tx_msg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data_tx_msg.i, align 8
  %status.i2.i = getelementptr inbounds %struct.hsi_msg, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %status.i2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %status.i2.i, align 4
  %99 = and i32 %98, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %.not.i3.i = icmp eq i32 %99, 0
  br i1 %.not.i3.i, label %cs_hsi_free_data_msg.exit.i.cs_hsi_free_data.exit_crit_edge, label %do.end.i4.i, !prof !288

cs_hsi_free_data_msg.exit.i.cs_hsi_free_data.exit_crit_edge: ; preds = %cs_hsi_free_data_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_free_data.exit

do.end.i4.i:                                      ; preds = %cs_hsi_free_data_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %cs_hsi_free_data.exit

cs_hsi_free_data.exit:                            ; preds = %do.end.i4.i, %cs_hsi_free_data_msg.exit.i.cs_hsi_free_data.exit_crit_edge
  tail call void @hsi_free_msg(ptr noundef %96) #10
  br label %leave2

leave2:                                           ; preds = %cs_hsi_free_data.exit, %do.end30
  %err.2 = phi i32 [ -12, %do.end30 ], [ %err.1, %cs_hsi_free_data.exit ]
  %100 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cmdqueue.i, align 4
  %cmp.not21.i = icmp eq ptr %101, %cmdqueue.i
  br i1 %cmp.not21.i, label %leave2.leave1_crit_edge, label %leave2.for.body.i_crit_edge

leave2.for.body.i_crit_edge:                      ; preds = %leave2
  br label %for.body.i

leave2.leave1_crit_edge:                          ; preds = %leave2
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave1

for.body.i:                                       ; preds = %sg_virt.exit.i.for.body.i_crit_edge, %leave2.for.body.i_crit_edge
  %msg.022.i = phi ptr [ %tmp.0.i, %sg_virt.exit.i.for.body.i_crit_edge ], [ %101, %leave2.for.body.i_crit_edge ]
  %102 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %tmp.0.i = load ptr, ptr %msg.022.i, align 4
  %call.i.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.022.i) #10
  br i1 %call.i.i.i21, label %if.end.i.i.i23, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i23:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i.i22, align 4
  %105 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %msg.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i23, %for.body.i.list_del.exit.i_crit_edge
  %109 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.022.i, align 4
  %prev.i.i24 = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i24 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i24, align 4
  %destructor.i25 = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 5
  %111 = ptrtoint ptr %destructor.i25 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %destructor.i25, align 4
  %sgt.i26 = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 2
  %112 = ptrtoint ptr %sgt.i26 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sgt.i26, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %and.i.i.i.i27 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i27)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i27, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !288

do.body2.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

sg_virt.exit.i:                                   ; preds = %list_del.exit.i
  %and.i.i.i = and i32 %115, -4
  %116 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %116) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 1
  %117 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %118
  tail call void @kfree(ptr noundef %add.ptr.i.i) #10
  tail call void @hsi_free_msg(ptr noundef %msg.022.i) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %cmdqueue.i
  br i1 %cmp.not.i, label %sg_virt.exit.i.leave1_crit_edge, label %sg_virt.exit.i.for.body.i_crit_edge

sg_virt.exit.i.for.body.i_crit_edge:              ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sg_virt.exit.i.leave1_crit_edge:                  ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave1

leave1:                                           ; preds = %sg_virt.exit.i.leave1_crit_edge, %leave2.leave1_crit_edge, %do.end22
  %err.3 = phi i32 [ -12, %do.end22 ], [ %err.2, %leave2.leave1_crit_edge ], [ %err.2, %sg_virt.exit.i.leave1_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %do.body99

do.body99:                                        ; preds = %leave1, %do.end.do.body99_crit_edge
  %err.4 = phi i32 [ %err.3, %leave1 ], [ -12, %do.end.do.body99_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_start.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_start, %if.then111)) #10
          to label %cleanup [label %if.then111], !srcloc !287

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_start.__UNIQUE_ID_ddebug249, ptr noundef %cl, ptr noundef nonnull @.str.112) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %do.body99, %do.end98
  %retval.0 = phi i32 [ 0, %do.end98 ], [ %err.4, %if.then111 ], [ %err.4, %do.body99 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_claim_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ssip_slave_get_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssip_slave_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_release_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsi_alloc_msg(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_free_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_hsi_data_destructor(ptr nocapture noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %2 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  %cond = select i1 %cmp, ptr @.str.113, ptr @.str.114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_data_destructor.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_data_destructor, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_data_destructor.__UNIQUE_ID_ddebug231, ptr noundef %3, ptr noundef nonnull @.str.116, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %iface_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iface_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %do.end.if.end9_crit_edge, label %do.end7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr getelementptr inbounds (%struct.cs_char, ptr @cs_char_data, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.117, ptr noundef nonnull %cond) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %do.end.if.end9_crit_edge
  %7 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load11 = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load11)
  %cmp14 = icmp sgt i8 %bf.load11, -1
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_state, align 4
  %. = select i1 %cmp14, i32 -6, i32 -3
  %and17 = and i32 %9, %.
  store i32 %and17, ptr %data_state, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  %head.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 22, i32 1
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %12, %head.i
  br i1 %cmp.i.i.not, label %if.end9.if.end29_crit_edge, label %if.then27, !prof !288

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %datawait = getelementptr inbounds %struct.cs_hsi_iface, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %datawait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end9.if.end29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_hsi_stop(ptr noundef %hi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_hsi_stop.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_hsi_stop, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_hsi_stop.__UNIQUE_ID_ddebug250, ptr noundef %1, ptr noundef nonnull @.str.119) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @cs_hsi_set_wakeline(ptr noundef %hi, i1 noundef zeroext false)
  %iface_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 2
  %2 = ptrtoint ptr %iface_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iface_state, align 4
  %3 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hi, align 4
  tail call void @hsi_release_port(ptr noundef %4) #10
  %control_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 4
  %5 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control_state, align 4
  %and.i = and i32 %6, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %do.end.if.end28_crit_edge, label %do.end22, !prof !288

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1074, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.end.if.end28_crit_edge
  %data_state = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 5
  %7 = ptrtoint ptr %data_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_state, align 4
  %and.i90 = and i32 %8, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91.not = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91.not, label %if.end28.if.end62_crit_edge, label %do.end56, !prof !288

if.end28.if.end62_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.end56:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1075, i32 noundef 9, ptr noundef null) #10
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %if.end28.if.end62_crit_edge
  %pm_qos_req = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 23
  %call70 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %pm_qos_req) #10
  br i1 %call70, label %if.then71, label %if.end62.if.end73_crit_edge

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then71:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end62.if.end73_crit_edge
  %lock = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 24
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %data_rx_msg.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 20
  %9 = ptrtoint ptr %data_rx_msg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_rx_msg.i, align 4
  %status.i.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i.i, align 4
  %13 = and i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not.i.i = icmp eq i32 %13, 0
  br i1 %.not.i.i, label %if.end73.cs_hsi_free_data_msg.exit.i_crit_edge, label %do.end.i.i, !prof !288

if.end73.cs_hsi_free_data_msg.exit.i_crit_edge:   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_free_data_msg.exit.i

do.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %cs_hsi_free_data_msg.exit.i

cs_hsi_free_data_msg.exit.i:                      ; preds = %do.end.i.i, %if.end73.cs_hsi_free_data_msg.exit.i_crit_edge
  tail call void @hsi_free_msg(ptr noundef %10) #10
  %data_tx_msg.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 21
  %14 = ptrtoint ptr %data_tx_msg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_tx_msg.i, align 4
  %status.i2.i = getelementptr inbounds %struct.hsi_msg, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %status.i2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status.i2.i, align 4
  %18 = and i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %.not.i3.i = icmp eq i32 %18, 0
  br i1 %.not.i3.i, label %cs_hsi_free_data_msg.exit.i.cs_hsi_free_data.exit_crit_edge, label %do.end.i4.i, !prof !288

cs_hsi_free_data_msg.exit.i.cs_hsi_free_data.exit_crit_edge: ; preds = %cs_hsi_free_data_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_hsi_free_data.exit

do.end.i4.i:                                      ; preds = %cs_hsi_free_data_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %cs_hsi_free_data.exit

cs_hsi_free_data.exit:                            ; preds = %do.end.i4.i, %cs_hsi_free_data_msg.exit.i.cs_hsi_free_data.exit_crit_edge
  tail call void @hsi_free_msg(ptr noundef %15) #10
  %cmdqueue.i = getelementptr inbounds %struct.cs_hsi_iface, ptr %hi, i32 0, i32 19
  %19 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmdqueue.i, align 4
  %cmp.not21.i = icmp eq ptr %20, %cmdqueue.i
  br i1 %cmp.not21.i, label %cs_hsi_free_data.exit.cs_free_cmds.exit_crit_edge, label %cs_hsi_free_data.exit.for.body.i_crit_edge

cs_hsi_free_data.exit.for.body.i_crit_edge:       ; preds = %cs_hsi_free_data.exit
  br label %for.body.i

cs_hsi_free_data.exit.cs_free_cmds.exit_crit_edge: ; preds = %cs_hsi_free_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_free_cmds.exit

for.body.i:                                       ; preds = %sg_virt.exit.i.for.body.i_crit_edge, %cs_hsi_free_data.exit.for.body.i_crit_edge
  %msg.022.i = phi ptr [ %tmp.0.i, %sg_virt.exit.i.for.body.i_crit_edge ], [ %20, %cs_hsi_free_data.exit.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.0.i = load ptr, ptr %msg.022.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.022.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.022.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 5
  %30 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %destructor.i, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 2
  %31 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgt.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !288

do.body2.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

sg_virt.exit.i:                                   ; preds = %list_del.exit.i
  %and.i.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %35) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %37
  tail call void @kfree(ptr noundef %add.ptr.i.i) #10
  tail call void @hsi_free_msg(ptr noundef %msg.022.i) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %cmdqueue.i
  br i1 %cmp.not.i, label %sg_virt.exit.i.cs_free_cmds.exit_crit_edge, label %sg_virt.exit.i.for.body.i_crit_edge

sg_virt.exit.i.for.body.i_crit_edge:              ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sg_virt.exit.i.cs_free_cmds.exit_crit_edge:       ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cs_free_cmds.exit

cs_free_cmds.exit:                                ; preds = %sg_virt.exit.i.cs_free_cmds.exit_crit_edge, %cs_hsi_free_data.exit.cs_free_cmds.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call void @kfree(ptr noundef %hi) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_latency_qos_request_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !154, !156, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !214, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276}
!llvm.named.register.sp = !{!277}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !{ptr @__initcall__kmod_cmt_speech__253_1435_cs_char_init6, !1, !"__initcall__kmod_cmt_speech__253_1435_cs_char_init6", i1 false, i1 false}
!1 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1435, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1440, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cs_char_exit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cs_char_exit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__exitcall_cs_char_exit, !9, !"__exitcall_cs_char_exit", i1 false, i1 false}
!9 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1442, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias254, !11, !"__UNIQUE_ID_alias254", i1 false, i1 false}
!11 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1444, i32 1}
!12 = !{ptr @__UNIQUE_ID_author255, !13, !"__UNIQUE_ID_author255", i1 false, i1 false}
!13 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1445, i32 1}
!14 = !{ptr @__UNIQUE_ID_author256, !15, !"__UNIQUE_ID_author256", i1 false, i1 false}
!15 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1446, i32 1}
!16 = !{ptr @__UNIQUE_ID_description257, !17, !"__UNIQUE_ID_description257", i1 false, i1 false}
!17 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1447, i32 1}
!18 = !{ptr @__UNIQUE_ID_file258, !19, !"__UNIQUE_ID_file258", i1 false, i1 false}
!19 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1448, i32 1}
!20 = !{ptr @__UNIQUE_ID_license259, !19, !"__UNIQUE_ID_license259", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1432, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cs_char_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @cs_char_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1423, i32 11}
!28 = !{ptr @cs_hsi_driver, !29, !"cs_hsi_driver", i1 false, i1 false}
!29 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1421, i32 33}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1373, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cs_hsi_client_probe.__UNIQUE_ID_ddebug251, !31, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!35 = !{ptr @cs_hsi_client_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1374, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cs_hsi_client_probe.__key.10, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1375, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1383, i32 3}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1386, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cs_hsi_client_probe._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @cs_hsi_client_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1391, i32 3}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1394, i32 3}
!53 = !{ptr @cs_hsi_client_probe._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cs_hsi_client_probe._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1400, i32 3}
!57 = !{ptr @cs_hsi_client_probe._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cs_hsi_client_probe._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cs_char_data, !60, !"cs_char_data", i1 false, i1 false}
!60 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 121, i32 23}
!61 = !{ptr @cs_char_miscdev, !62, !"cs_char_miscdev", i1 false, i1 false}
!62 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1362, i32 26}
!63 = !{ptr @cs_char_fops, !64, !"cs_char_fops", i1 false, i1 false}
!64 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1350, i32 37}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 537, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cs_hsi_write_on_control._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cs_hsi_write_on_control._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 549, i32 2}
!72 = !{ptr @cs_hsi_write_on_control.__UNIQUE_ID_ddebug235, !71, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 553, i32 3}
!75 = !{ptr @cs_hsi_write_on_control._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cs_hsi_write_on_control._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 566, i32 3}
!79 = !{ptr @cs_hsi_write_on_control._entry.29, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cs_hsi_write_on_control._entry_ptr.31, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 222, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cs_cmd_destructor.__UNIQUE_ID_ddebug230, !82, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 225, i32 3}
!87 = !{ptr @cs_cmd_destructor._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cs_cmd_destructor._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 520, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cs_hsi_write_on_control_complete._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @cs_hsi_write_on_control_complete._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 403, i32 30}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 370, i32 2}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__cs_hsi_error_pre._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @__cs_hsi_error_pre._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 486, i32 3}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cs_hsi_read_on_control._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @cs_hsi_read_on_control._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 492, i32 3}
!108 = !{ptr @cs_hsi_read_on_control._entry.42, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @cs_hsi_read_on_control._entry_ptr.44, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 498, i32 2}
!112 = !{ptr @cs_hsi_read_on_control.__UNIQUE_ID_ddebug234, !111, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 464, i32 3}
!115 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cs_hsi_peek_on_control_complete._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cs_hsi_peek_on_control_complete._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 471, i32 2}
!120 = !{ptr @cs_hsi_peek_on_control_complete.__UNIQUE_ID_ddebug233, !119, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 433, i32 3}
!123 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cs_hsi_read_on_control_complete._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @cs_hsi_read_on_control_complete._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 438, i32 2}
!128 = !{ptr @cs_hsi_read_on_control_complete.__UNIQUE_ID_ddebug232, !127, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 144, i32 3}
!131 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cs_notify._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @cs_notify._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 394, i32 30}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 699, i32 3}
!138 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cs_hsi_write_on_data._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @cs_hsi_write_on_data._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 704, i32 3}
!143 = !{ptr @cs_hsi_write_on_data._entry.57, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cs_hsi_write_on_data._entry_ptr.59, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 709, i32 3}
!147 = !{ptr @cs_hsi_write_on_data._entry.60, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cs_hsi_write_on_data._entry_ptr.62, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 420, i32 30}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!153 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 772, i32 3}
!160 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @cs_hsi_set_wakeline.__UNIQUE_ID_ddebug237, !159, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 784, i32 2}
!164 = !{ptr @cs_hsi_set_wakeline.__UNIQUE_ID_ddebug238, !163, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 840, i32 3}
!167 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @cs_hsi_data_sync.__UNIQUE_ID_ddebug239, !166, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 864, i32 4}
!171 = !{ptr @cs_hsi_data_sync.__UNIQUE_ID_ddebug240, !170, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 874, i32 2}
!174 = !{ptr @cs_hsi_data_sync.__UNIQUE_ID_ddebug241, !173, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 822, i32 3}
!177 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @check_buf_params._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @check_buf_params._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 889, i32 2}
!182 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug242, !181, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 894, i32 2}
!186 = !{ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug243, !185, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 901, i32 3}
!189 = !{ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug244, !188, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 908, i32 3}
!192 = !{ptr @cs_hsi_data_enable.__UNIQUE_ID_ddebug245, !191, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 918, i32 3}
!195 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @cs_hsi_data_disable.__UNIQUE_ID_ddebug246, !194, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 658, i32 3}
!199 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @cs_hsi_read_on_data.__UNIQUE_ID_ddebug236, !198, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 611, i32 3}
!203 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @cs_hsi_peek_on_data_complete._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @cs_hsi_peek_on_data_complete._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 188, i32 3}
!208 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @cs_notify_data.__UNIQUE_ID_ddebug229, !207, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 412, i32 30}
!212 = !{ptr @cs_char_vm_ops, !213, !"cs_char_vm_ops", i1 false, i1 false}
!213 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1099, i32 42}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1297, i32 3}
!218 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @cs_char_open._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @cs_char_open._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 990, i32 2}
!223 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @cs_hsi_start.__UNIQUE_ID_ddebug247, !222, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!225 = !{ptr @cs_hsi_start.__key, !226, !"__key", i1 false, i1 false}
!226 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 996, i32 2}
!227 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @cs_hsi_start.__key.96, !229, !"__key", i1 false, i1 false}
!229 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1003, i32 2}
!230 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1006, i32 3}
!233 = !{ptr @cs_hsi_start._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @cs_hsi_start._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1011, i32 3}
!237 = !{ptr @cs_hsi_start._entry.99, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @cs_hsi_start._entry_ptr.101, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1016, i32 3}
!241 = !{ptr @cs_hsi_start._entry.102, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @cs_hsi_start._entry_ptr.104, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.106, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1023, i32 3}
!245 = !{ptr @cs_hsi_start._entry.105, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @cs_hsi_start._entry_ptr.107, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.109, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1028, i32 3}
!249 = !{ptr @cs_hsi_start._entry.108, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @cs_hsi_start._entry_ptr.110, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1038, i32 2}
!253 = !{ptr @cs_hsi_start.__UNIQUE_ID_ddebug248, !252, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!254 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1054, i32 2}
!256 = !{ptr @cs_hsi_start.__UNIQUE_ID_ddebug249, !255, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 297, i32 51}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 297, i32 58}
!261 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 299, i32 2}
!263 = !{ptr @.str.116, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @cs_hsi_data_destructor.__UNIQUE_ID_ddebug231, !262, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 303, i32 3}
!267 = !{ptr @cs_hsi_data_destructor._entry, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @cs_hsi_data_destructor._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1061, i32 2}
!271 = !{ptr @.str.119, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @cs_hsi_stop.__UNIQUE_ID_ddebug250, !270, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!273 = !{ptr @.str.120, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hsi/clients/cmt_speech.c", i32 1409, i32 2}
!275 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @cs_hsi_client_remove.__UNIQUE_ID_ddebug252, !274, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!277 = !{!"sp"}
!278 = !{i32 1, !"wchar_size", i32 2}
!279 = !{i32 1, !"min_enum_size", i32 4}
!280 = !{i32 8, !"branch-target-enforcement", i32 0}
!281 = !{i32 8, !"sign-return-address", i32 0}
!282 = !{i32 8, !"sign-return-address-all", i32 0}
!283 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!284 = !{i32 7, !"uwtable", i32 1}
!285 = !{i32 7, !"frame-pointer", i32 2}
!286 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!287 = !{i64 2148987226, i64 2148987231, i64 2148987244, i64 2148987288, i64 2148987322, i64 2148987343}
!288 = !{!"branch_weights", i32 2000, i32 1}
!289 = !{i64 5709183}
!290 = !{i64 5709380}
!291 = !{i64 2153194613}
!292 = !{i64 2154033231, i64 2154033511, i64 2154033845, i64 2154034179}
!293 = !{i64 2154044779, i64 2154045059, i64 2154045393, i64 2154045727}
!294 = !{i64 2153214309, i64 2153214334}
!295 = !{!"auto-init"}
!296 = !{i64 2153213628, i64 2153213653}
!297 = !{!"branch_weights", i32 1, i32 2000}
!298 = !{i64 2153921037, i64 2153921534, i64 2153921074, i64 2153921130, i64 2153921164, i64 2153921188, i64 2153921229, i64 2153921250, i64 2153921278, i64 2153921312}
!299 = !{i64 2153881762, i64 2153882254, i64 2153881799, i64 2153881855, i64 2153881889, i64 2153881913, i64 2153881954, i64 2153881975, i64 2153882003, i64 2153882037}
!300 = !{i64 2153986582, i64 2153987079, i64 2153986619, i64 2153986675, i64 2153986709, i64 2153986733, i64 2153986774, i64 2153986795, i64 2153986823, i64 2153986857}
!301 = !{i64 2153582888, i64 2153583372, i64 2153582925, i64 2153582981, i64 2153583015, i64 2153583039, i64 2153583080, i64 2153583101, i64 2153583129, i64 2153583163}
!302 = !{i64 2148373849, i64 2148373875, i64 2148373904, i64 2148373938, i64 2148373969, i64 2148373992}
