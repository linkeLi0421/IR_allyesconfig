; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_s5k83a.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_s5k83a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m5602_sensor = type { [32 x i8], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, ptr, i8, i32, ptr, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.anon.101 = type { ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@force_sensor = external dso_local local_unnamed_addr global i32, align 4
@s5k83a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gspca_m5602: Forcing a %s sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5k83a_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/gspca/m5602/m5602_s5k83a.c\00", [51 x i8] zeroinitializer }, align 32
@s5k83a_probe._entry_ptr = internal global ptr @s5k83a_probe._entry, section ".printk_index", align 4
@s5k83a = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"S5K83A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 90, i8 2, ptr @s5k83a_probe, ptr @s5k83a_init, ptr @s5k83a_init_controls, ptr @s5k83a_start, ptr @s5k83a_stop, ptr @s5k83a_disconnect }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@s5k83a_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Probing for a s5k83a sensor\0A\00", [61 x i8] zeroinitializer }, align 32
@s5k83a_probe._entry_ptr.5 = internal global ptr @s5k83a_probe._entry.3, section ".printk_index", align 4
@preinit_s5k83a = internal constant { [33 x [4 x i8]], [60 x i8] } { [33 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0D\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\08\00", [4 x i8] c"\00t?\00", [4 x i8] c"\00r?\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00u\FF\00", [4 x i8] c"\00s\FF\00", [4 x i8] c"\00q\00\00", [4 x i8] c"\00\15\B0\00", [4 x i8] c"\00\14\80\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\09\00", [4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\F0\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\1C\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00i \00"], [60 x i8] zeroinitializer }, align 32
@s5k83a_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_m5602: Detected a s5k83a sensor\0A\00", [55 x i8] zeroinitializer }, align 32
@s5k83a_probe._entry_ptr.8 = internal global ptr @s5k83a_probe._entry.6, section ".printk_index", align 4
@s5k83a_modes = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@init_s5k83a = internal constant { [49 x [4 x i8]], [60 x i8] } { [49 x [4 x i8]] [[4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\08\00", [4 x i8] c"\00t?\00", [4 x i8] c"\00r?\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00u\FF\00", [4 x i8] c"\00s\FF\00", [4 x i8] c"\00q\00\00", [4 x i8] c"\00\15\B0\00", [4 x i8] c"\00\14\80\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\09\00", [4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\F0\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\08\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00i \00", [4 x i8] c"\01\EC\04\00", [4 x i8] c"\01\AF\01\00", [4 x i8] c"\01\EC\00\00", [4 x i8] c"\01{\FF\00", [4 x i8] c"\01\EC\05\00", [4 x i8] c"\01\01P\00", [4 x i8] c"\01\12 \00", [4 x i8] c"\01\17@\00", [4 x i8] c"\01\1C\00\00", [4 x i8] c"\01\02p\00", [4 x i8] c"\01\03\0B\00", [4 x i8] c"\01\04\F0\00", [4 x i8] c"\01\05\0B\00", [4 x i8] c"\01\06q\00", [4 x i8] c"\01\07\E8\00", [4 x i8] c"\01\08\02\00", [4 x i8] c"\01\09\88\00", [4 x i8] c"\01\14\00\00", [4 x i8] c"\01\15 \00", [4 x i8] c"\01\19\00\00", [4 x i8] c"\01\1A\98\00", [4 x i8] c"\01\0F\02\00", [4 x i8] c"\01\10\E5\00", [4 x i8] c"\01\00\06\00"], [60 x i8] zeroinitializer }, align 32
@s5k83a_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: Invalid stream command, exiting init\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5k83a_init\00", [20 x i8] zeroinitializer }, align 32
@s5k83a_init._entry_ptr = internal global ptr @s5k83a_init._entry, section ".printk_index", align 4
@dump_sensor = external dso_local local_unnamed_addr global i8, align 1
@s5k83a_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m5602_s5k83a:266:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@s5k83a_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s5k83a_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5k83a_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_m5602: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k83a_init_controls\00", [43 x i8] zeroinitializer }, align 32
@s5k83a_init_controls._entry_ptr = internal global ptr @s5k83a_init_controls._entry, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rotation thread\00", [16 x i8] zeroinitializer }, align 32
@start_s5k83a = internal constant { [24 x [4 x i8]], [32 x i8] } { [24 x [4 x i8]] [[4 x i8] c"\00\15\06\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\09\00", [4 x i8] c"\00\02\81\00", [4 x i8] c"\00\04\82\00", [4 x i8] c"\00\0A\01\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\01\00", [4 x i8] c"\00\06\E4\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\0A\02\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07\02\00", [4 x i8] c"\00\07\7F\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00"], [32 x i8] zeroinitializer }, align 32
@rotation_thread_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016gspca_m5602: Camera was flipped\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rotation_thread_function\00", [39 x i8] zeroinitializer }, align 32
@rotation_thread_function._entry_ptr = internal global ptr @rotation_thread_function._entry, section ".printk_index", align 4
@s5k83a_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016gspca_m5602: Dumping the s5k83a register state for page 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5k83a_dump_registers\00", [42 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr = internal global ptr @s5k83a_dump_registers._entry, section ".printk_index", align 4
@s5k83a_dump_registers._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_m5602: register 0x%x contains 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr.22 = internal global ptr @s5k83a_dump_registers._entry.20, section ".printk_index", align 4
@s5k83a_dump_registers._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gspca_m5602: s5k83a register state dump complete\0A\00", [44 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr.25 = internal global ptr @s5k83a_dump_registers._entry.23, section ".printk_index", align 4
@s5k83a_dump_registers._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016gspca_m5602: Probing for which registers that are read/write for page 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr.28 = internal global ptr @s5k83a_dump_registers._entry.26, section ".printk_index", align 4
@s5k83a_dump_registers._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is writeable\0A\00", [53 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr.31 = internal global ptr @s5k83a_dump_registers._entry.29, section ".printk_index", align 4
@s5k83a_dump_registers._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is read only\0A\00", [53 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr.34 = internal global ptr @s5k83a_dump_registers._entry.32, section ".printk_index", align 4
@s5k83a_dump_registers._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: Read/write register probing complete\0A\00", [43 x i8] zeroinitializer }, align 32
@s5k83a_dump_registers._entry_ptr.37 = internal global ptr @s5k83a_dump_registers._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963793, i64 9963795, i64 9963796]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 178, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"s5k83a\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_s5k83a.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 49, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 186, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"preinit_s5k83a\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 40, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 211, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"s5k83a_modes\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 26, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"init_s5k83a\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 80, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 250, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 266, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"s5k83a_ctrl_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 22, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 284, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 342, i32 24 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"start_s5k83a\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 137, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 307, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 542, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 547, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 550, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 554, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 564, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 567, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 574, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @rotation_thread_function._entry, ptr @rotation_thread_function._entry_ptr, ptr @s5k83a_dump_registers._entry, ptr @s5k83a_dump_registers._entry.20, ptr @s5k83a_dump_registers._entry.23, ptr @s5k83a_dump_registers._entry.26, ptr @s5k83a_dump_registers._entry.29, ptr @s5k83a_dump_registers._entry.32, ptr @s5k83a_dump_registers._entry.35, ptr @s5k83a_dump_registers._entry_ptr, ptr @s5k83a_dump_registers._entry_ptr.22, ptr @s5k83a_dump_registers._entry_ptr.25, ptr @s5k83a_dump_registers._entry_ptr.28, ptr @s5k83a_dump_registers._entry_ptr.31, ptr @s5k83a_dump_registers._entry_ptr.34, ptr @s5k83a_dump_registers._entry_ptr.37, ptr @s5k83a_init._entry, ptr @s5k83a_init._entry_ptr, ptr @s5k83a_init_controls._entry, ptr @s5k83a_init_controls._entry_ptr, ptr @s5k83a_probe._entry, ptr @s5k83a_probe._entry.3, ptr @s5k83a_probe._entry.6, ptr @s5k83a_probe._entry_ptr, ptr @s5k83a_probe._entry_ptr.5, ptr @s5k83a_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @s5k83a, ptr @.str.4, ptr @preinit_s5k83a, ptr @.str.7, ptr @s5k83a_modes, ptr @init_s5k83a, ptr @.str.9, ptr @.str.10, ptr @s5k83a_init_controls._key, ptr @.str.11, ptr @s5k83a_ctrl_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @start_s5k83a, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preinit_s5k83a to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_s5k83a to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_s5k83a to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotation_thread_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a_dump_registers._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k83a_probe(ptr noundef %sd) #0 align 64 {
entry:
  %prod_id = alloca i8, align 1
  %ver_id = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prod_id) #5
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %prod_id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver_id) #5
  %1 = ptrtoint ptr %ver_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ver_id, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_sensor to i32))
  %2 = load i32, ptr @force_sensor, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %do.body3
    i32 2, label %do.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @s5k83a) #8
  br label %sensor_found

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %do.end8, label %do.body3.do.end13_crit_edge

do.body3.do.end13_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #8
  br label %do.end13

do.end13:                                         ; preds = %do.end8, %do.body3.do.end13_crit_edge
  %5 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %do.end13
  %i.075 = phi i32 [ 0, %do.end13 ], [ %inc, %if.end32.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %arrayidx = getelementptr [33 x [4 x i8]], ptr @preinit_s5k83a, i32 0, i32 %i.075
  %arrayidx16 = getelementptr [33 x [4 x i8]], ptr @preinit_s5k83a, i32 0, i32 %i.075, i32 2
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx16, align 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %data, align 1
  %arrayidx18 = getelementptr [33 x [4 x i8]], ptr @preinit_s5k83a, i32 0, i32 %i.075, i32 3
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %5, align 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp21 = icmp eq i8 %13, 1
  %arrayidx25 = getelementptr [33 x [4 x i8]], ptr @preinit_s5k83a, i32 0, i32 %i.075, i32 1
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %15, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  br label %if.end32

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %15, i8 noundef zeroext %7) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then23
  %err.1 = phi i32 [ %call27, %if.then23 ], [ %call31, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  %inc = add nuw nsw i32 %i.075, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.075)
  %cmp14 = icmp ult i32 %i.075, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool15.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp14, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end32.for.body_crit_edge, label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end32
  %call33 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %prod_id, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %for.end
  %call37 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 1, ptr noundef nonnull %ver_id, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %16 = ptrtoint ptr %prod_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prod_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp42 = icmp eq i8 %17, -1
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %lor.lhs.false

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end40
  %18 = ptrtoint ptr %ver_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ver_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp45 = icmp eq i8 %19, -1
  br i1 %cmp45, label %lor.lhs.false.cleanup_crit_edge, label %do.end51

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end51:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %sensor_found

sensor_found:                                     ; preds = %do.end51, %do.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %20 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @s5k83a_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %21 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %nmodes, align 4
  %rotation_thread = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %22 = ptrtoint ptr %rotation_thread to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rotation_thread, align 4
  br label %cleanup

cleanup:                                          ; preds = %sensor_found, %lor.lhs.false.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sensor_found ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %if.end36.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver_id) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prod_id) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_bridge(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k83a_init(ptr noundef %sd) #0 align 64 {
entry:
  %page.i = alloca i8, align 1
  %old_page.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %old_val.i = alloca i8, align 1
  %ctrl_val.i = alloca i8, align 1
  %test_val.i = alloca i8, align 1
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx19 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data, align 2
  %arrayidx = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %2, label %cleanup [
    i8 0, label %sw.bb
    i8 1, label %sw.bb6
    i8 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %call = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %5, i8 noundef zeroext %7) #5
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data, align 2
  %arrayidx11 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %call12 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %12, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  br label %for.inc

sw.bb13:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %data, align 2
  %arrayidx18 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr [49 x [4 x i8]], ptr @init_s5k83a, i32 0, i32 %i.045, i32 1
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %call23 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %20, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  br label %cleanup26

for.inc:                                          ; preds = %sw.bb13, %sw.bb6, %sw.bb
  %err.2.ph = phi i32 [ %call, %sw.bb ], [ %call12, %sw.bb6 ], [ %call23, %sw.bb13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  %inc = add nuw nsw i32 %i.045, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %i.045)
  %cmp = icmp ult i32 %i.045, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %tobool.not = icmp eq i32 %err.2.ph, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dump_sensor to i32))
  %21 = load i8, ptr @dump_sensor, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %for.end.cleanup26_crit_edge, label %if.then

for.end.cleanup26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_page.i) #5
  %22 = ptrtoint ptr %old_page.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %old_page.i, align 1, !annotation !90
  %call.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %old_page.i, i8 noundef zeroext 1) #5
  %23 = ptrtoint ptr %page.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %page.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc17.i.for.body.i_crit_edge, %if.then
  %call2.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %page.i, i8 noundef zeroext 1) #5
  %24 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %page.i, align 1
  %conv3.i = zext i8 %25 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv3.i) #8
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body.i
  %address.095.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body8.i.for.body8.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %val.i, align 1
  %conv9.i = trunc i32 %address.095.i to i8
  %call10.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv9.i, ptr noundef nonnull %val.i, i8 noundef zeroext 1) #5
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val.i, align 1
  %conv15.i = zext i8 %28 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %address.095.i, i32 noundef %conv15.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  %inc.i = add nuw nsw i32 %address.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

for.inc17.i:                                      ; preds = %for.body8.i
  %29 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %page.i, align 1
  %inc18.i = add i8 %30, 1
  store i8 %inc18.i, ptr %page.i, align 1
  %cmp.i = icmp ult i8 %inc18.i, 16
  br i1 %cmp.i, label %for.inc17.i.for.body.i_crit_edge, label %do.end22.i

for.inc17.i.for.body.i_crit_edge:                 ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end22.i:                                       ; preds = %for.inc17.i
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  %31 = ptrtoint ptr %page.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %page.i, align 1
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc66.i.for.body29.i_crit_edge, %do.end22.i
  %call30.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %page.i, i8 noundef zeroext 1) #5
  %32 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %page.i, align 1
  %conv35.i = zext i8 %33 to i32
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv35.i) #8
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %for.body29.i
  %address.196.i = phi i32 [ 0, %for.body29.i ], [ %inc64.i, %for.body40.i.for.body40.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_val.i) #5
  %34 = ptrtoint ptr %old_val.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %old_val.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_val.i) #5
  %35 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %ctrl_val.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %test_val.i) #5
  %36 = ptrtoint ptr %test_val.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %test_val.i, align 1
  %conv41.i = trunc i32 %address.196.i to i8
  %call42.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %old_val.i, i8 noundef zeroext 1) #5
  %call44.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %test_val.i, i8 noundef zeroext 1) #5
  %call46.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %ctrl_val.i, i8 noundef zeroext 1) #5
  %37 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ctrl_val.i, align 1
  %39 = ptrtoint ptr %test_val.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %test_val.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp49.i = icmp eq i8 %38, %40
  %.str.30..str.33.i = select i1 %cmp49.i, ptr @.str.30, ptr @.str.33
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30..str.33.i, i32 noundef %address.196.i) #8
  %call62.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %old_val.i, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_val.i) #5
  %inc64.i = add nuw nsw i32 %address.196.i, 1
  %exitcond98.not.i = icmp eq i32 %inc64.i, 256
  br i1 %exitcond98.not.i, label %for.inc66.i, label %for.body40.i.for.body40.i_crit_edge

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40.i

for.inc66.i:                                      ; preds = %for.body40.i
  %41 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %page.i, align 1
  %inc67.i = add i8 %42, 1
  store i8 %inc67.i, ptr %page.i, align 1
  %cmp27.i = icmp ult i8 %inc67.i, 16
  br i1 %cmp27.i, label %for.inc66.i.for.body29.i_crit_edge, label %s5k83a_dump_registers.exit

for.inc66.i.for.body29.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.i

s5k83a_dump_registers.exit:                       ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #7
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  %call74.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %old_page.i, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_page.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page.i) #5
  br label %cleanup26

cleanup26:                                        ; preds = %s5k83a_dump_registers.exit, %for.end.cleanup26_crit_edge, %cleanup
  %retval.2 = phi i32 [ -22, %cleanup ], [ %err.2.ph, %s5k83a_dump_registers.exit ], [ %err.2.ph, %for.end.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k83a_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @s5k83a_init_controls._key, ptr noundef nonnull @.str.11) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k83a_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 126) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k83a_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 60, i64 noundef 1, i64 noundef 0) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k83a_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 113) #5
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k83a_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %1, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k83a_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %vflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k83a_start(ptr noundef %sd) #0 align 64 {
entry:
  %data.i = alloca [1 x i8], align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rotation_thread_function, ptr noundef %sd, i32 noundef -1, ptr noundef nonnull @.str.14) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #5
  %rotation_thread = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %rotation_thread to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %rotation_thread, align 4
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rotation_thread52 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %call to i32
  %3 = ptrtoint ptr %rotation_thread52 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rotation_thread52, align 4
  br label %cleanup

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %if.end
  %i.054 = phi i32 [ 0, %if.end ], [ %inc, %if.end25.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %arrayidx = getelementptr [24 x [4 x i8]], ptr @start_s5k83a, i32 0, i32 %i.054
  %arrayidx10 = getelementptr [24 x [4 x i8]], ptr @start_s5k83a, i32 0, i32 %i.054, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %data, align 1
  %arrayidx12 = getelementptr [24 x [4 x i8]], ptr @start_s5k83a, i32 0, i32 %i.054, i32 3
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %1, align 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp15 = icmp eq i8 %11, 1
  %arrayidx19 = getelementptr [24 x [4 x i8]], ptr @start_s5k83a, i32 0, i32 %i.054, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %13, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  br label %if.end25

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %13, i8 noundef zeroext %5) #5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17
  %err.1 = phi i32 [ %call20, %if.then17 ], [ %call24, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  %inc = add nuw nsw i32 %i.054, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.054)
  %cmp = icmp ult i32 %i.054, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end25.for.body_crit_edge, label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp26 = icmp slt i32 %err.1, 0
  br i1 %cmp26, label %for.end.cleanup_crit_edge, label %if.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %data.i, align 1, !annotation !90
  %call.i = call i32 @m5602_read_bridge(ptr noundef %sd, i8 noundef zeroext 118, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i51 = icmp slt i32 %call.i, 0
  br i1 %cmp.i51, label %if.end29.s5k83a_set_led_indication.exit_crit_edge, label %if.end.i

if.end29.s5k83a_set_led_indication.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5k83a_set_led_indication.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.i, align 1
  %storemerge.i = or i8 %16, 16
  store i8 %storemerge.i, ptr %data.i, align 1
  %call10.i = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 118, i8 noundef zeroext %storemerge.i) #5
  br label %s5k83a_set_led_indication.exit

s5k83a_set_led_indication.exit:                   ; preds = %if.end.i, %if.end29.s5k83a_set_led_indication.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end.i ], [ %call.i, %if.end29.s5k83a_set_led_indication.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %s5k83a_set_led_indication.exit, %for.end.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %retval.0.i, %s5k83a_set_led_indication.exit ], [ %err.1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotation_thread_function(ptr noundef %data) #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !90
  br label %__here

__here:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !79) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@rotation_thread_function, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %6, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !91
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %data, i32 0, i32 25
  %call61201 = call i32 @schedule_timeout(i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61201)
  %tobool62.not202 = icmp eq i32 %call61201, 0
  br i1 %tobool62.not202, label %while.body.lr.ph, label %__here.if.end182_crit_edge

__here.if.end182_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

while.body.lr.ph:                                 ; preds = %__here
  %8 = getelementptr inbounds %struct.sd, ptr %data, i32 0, i32 8
  %vflip79 = getelementptr inbounds %struct.sd, ptr %data, i32 0, i32 8, i32 1
  br label %while.body

while.body:                                       ; preds = %__here145.while.body_crit_edge, %while.body.lr.ph
  %previous_rotation.0203 = phi i8 [ 0, %while.body.lr.ph ], [ %previous_rotation.1, %__here145.while.body_crit_edge ]
  %call65 = call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end68:                                         ; preds = %while.body
  %call.i = call i32 @m5602_read_bridge(ptr noundef %data, i8 noundef zeroext 118, ptr noundef nonnull %reg) #5
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg, align 1
  %11 = lshr i8 %10, 6
  %.lobit.i = and i8 %11, 1
  %12 = xor i8 %.lobit.i, 1
  store i8 %12, ptr %reg, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %previous_rotation.0203, i8 %12)
  %cmp.not = icmp eq i8 %previous_rotation.0203, %12
  br i1 %cmp.not, label %if.end68.if.end91_crit_edge, label %if.then72

if.end68.if.end91_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %17 = ptrtoint ptr %vflip79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vflip79, align 4
  %val80 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val80, align 4
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool81.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool83.not = icmp eq i32 %20, 0
  %lnot.ext85 = zext i1 %tobool83.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool86.not = icmp eq i32 %16, 0
  %lnot.ext88 = zext i1 %tobool86.not to i32
  %hflip.0 = select i1 %tobool81.not, i32 %16, i32 %lnot.ext88
  %vflip.0 = select i1 %tobool81.not, i32 %20, i32 %lnot.ext85
  %call90 = call fastcc i32 @s5k83a_set_flip_real(ptr noundef %data, i32 noundef %vflip.0, i32 noundef %hflip.0)
  br label %if.end91

if.end91:                                         ; preds = %if.then72, %if.end68.if.end91_crit_edge
  %previous_rotation.1 = phi i8 [ %12, %if.then72 ], [ %previous_rotation.0203, %if.end68.if.end91_crit_edge ]
  call void @mutex_unlock(ptr noundef %usb_lock) #5
  br label %__here145

__here145:                                        ; preds = %if.end91
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change149 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change149 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@rotation_thread_function, %__here145) to i32), ptr %task_state_change149, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %26, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !92
  %call61 = call i32 @schedule_timeout(i32 noundef 10) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %__here145.while.body_crit_edge, label %__here145.while.end_crit_edge

__here145.while.end_crit_edge:                    ; preds = %__here145
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

__here145.while.body_crit_edge:                   ; preds = %__here145
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %__here145.while.end_crit_edge, %while.body.while.end_crit_edge
  %previous_rotation.0.lcssa = phi i8 [ %previous_rotation.1, %__here145.while.end_crit_edge ], [ %previous_rotation.0203, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %previous_rotation.0.lcssa)
  %tobool175.not = icmp eq i8 %previous_rotation.0.lcssa, 0
  br i1 %tobool175.not, label %while.end.if.end182_crit_edge, label %if.then176

while.end.if.end182_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

if.then176:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = getelementptr inbounds %struct.sd, ptr %data, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %val178 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %val178 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val178, align 4
  %vflip179 = getelementptr inbounds %struct.sd, ptr %data, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %vflip179 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vflip179, align 4
  %val180 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %val180 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val180, align 4
  %call181 = call fastcc i32 @s5k83a_set_flip_real(ptr noundef %data, i32 noundef %36, i32 noundef %32)
  br label %if.end182

if.end182:                                        ; preds = %if.then176, %while.end.if.end182_crit_edge, %__here.if.end182_crit_edge
  %rotation_thread = getelementptr inbounds %struct.sd, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %rotation_thread to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rotation_thread, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k83a_stop(ptr noundef %sd) #0 align 64 {
entry:
  %data.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation_thread = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %rotation_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rotation_thread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i, align 1, !annotation !90
  %call.i = call i32 @m5602_read_bridge(ptr noundef %sd, i8 noundef zeroext 118, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.s5k83a_set_led_indication.exit_crit_edge, label %if.end.i

if.end.s5k83a_set_led_indication.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5k83a_set_led_indication.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i, align 1
  %5 = and i8 %4, -17
  store i8 %5, ptr %data.i, align 1
  %call10.i = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 118, i8 noundef zeroext %5) #5
  br label %s5k83a_set_led_indication.exit

s5k83a_set_led_indication.exit:                   ; preds = %if.end.i, %if.end.s5k83a_set_led_indication.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end.i ], [ %call.i, %if.end.s5k83a_set_led_indication.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5k83a_disconnect(ptr noundef %sd) #0 align 64 {
entry:
  %data.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation_thread.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %rotation_thread.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rotation_thread.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i.i, align 1, !annotation !90
  %call.i.i = call i32 @m5602_read_bridge(ptr noundef %sd, i8 noundef zeroext 118, ptr noundef nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.s5k83a_stop.exit_crit_edge, label %if.end.i.i

if.end.i.s5k83a_stop.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5k83a_stop.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i.i, align 1
  %5 = and i8 %4, -17
  store i8 %5, ptr %data.i.i, align 1
  %call10.i.i = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 118, i8 noundef zeroext %5) #5
  br label %s5k83a_stop.exit

s5k83a_stop.exit:                                 ; preds = %if.end.i.i, %if.end.i.s5k83a_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sensor, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k83a_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %reg.i = alloca i8, align 1
  %data.i21 = alloca [2 x i8], align 1
  %data.i18 = alloca [2 x i8], align 1
  %data.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %streaming = getelementptr i8, ptr %1, i32 238
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963793, label %sw.bb1
    i32 9963795, label %sw.bb4
    i32 9963796, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %conv.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %data.i, align 1
  %call.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 10, ptr noundef nonnull %data.i, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i18) #5
  %12 = getelementptr inbounds [2 x i8], ptr %data.i18, i32 0, i32 1
  %13 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %data.i18, align 1
  %conv.i19 = trunc i32 %11 to i8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i19, ptr %12, align 1
  %call.i20 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 24, ptr noundef nonnull %data.i18, i8 noundef zeroext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i18) #5
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i21) #5
  %17 = getelementptr inbounds [2 x i8], ptr %data.i21, i32 0, i32 1
  %18 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %data.i21, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %17, align 1
  %call.i22 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 20, ptr noundef nonnull %data.i21, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i = icmp slt i32 %call.i22, 0
  br i1 %cmp.i, label %sw.bb4.s5k83a_set_gain.exit_crit_edge, label %if.end.i

sw.bb4.s5k83a_set_gain.exit_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5k83a_set_gain.exit

if.end.i:                                         ; preds = %sw.bb4
  %20 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %data.i21, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %17, align 1
  %call5.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 13, ptr noundef nonnull %data.i21, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.s5k83a_set_gain.exit_crit_edge, label %if.end8.i

if.end.i.s5k83a_set_gain.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5k83a_set_gain.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = lshr i32 %16, 3
  %conv.i23 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i23, ptr %data.i21, align 1
  %24 = lshr i32 %16, 1
  %conv11.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv11.i, ptr %17, align 1
  %call14.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 27, ptr noundef nonnull %data.i21, i8 noundef zeroext 2) #5
  br label %s5k83a_set_gain.exit

s5k83a_set_gain.exit:                             ; preds = %if.end8.i, %if.end.i.s5k83a_set_gain.exit_crit_edge, %sw.bb4.s5k83a_set_gain.exit_crit_edge
  %retval.0.i = phi i32 [ %call14.i, %if.end8.i ], [ %call.i22, %sw.bb4.s5k83a_set_gain.exit_crit_edge ], [ %call5.i, %if.end.i.s5k83a_set_gain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i21) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #5
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %reg.i, align 1, !annotation !90
  %27 = getelementptr i8, ptr %1, i32 1072
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  %vflip2.i = getelementptr i8, ptr %1, i32 1076
  %32 = ptrtoint ptr %vflip2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vflip2.i, align 4
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val3.i, align 4
  %call.i.i = call i32 @m5602_read_bridge(ptr noundef %add.ptr, i8 noundef zeroext 118, ptr noundef nonnull %reg.i) #5
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg.i, align 1
  %38 = lshr i8 %37, 6
  %.lobit.i.i = and i8 %38, 1
  %39 = xor i8 %.lobit.i.i, 1
  store i8 %39, ptr %reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i24 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i24, label %sw.bb7.s5k83a_set_hvflip.exit_crit_edge, label %if.end.i25

sw.bb7.s5k83a_set_hvflip.exit_crit_edge:          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5k83a_set_hvflip.exit

if.end.i25:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not.i = icmp eq i32 %31, 0
  %lnot.ext.i = zext i1 %tobool5.not.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not.i = icmp eq i32 %35, 0
  %lnot.ext8.i = zext i1 %tobool6.not.i to i32
  %hflip.0.i = select i1 %tobool.not.i, i32 %31, i32 %lnot.ext.i
  %vflip.0.i = select i1 %tobool.not.i, i32 %35, i32 %lnot.ext8.i
  %call10.i = call fastcc i32 @s5k83a_set_flip_real(ptr noundef %add.ptr, i32 noundef %vflip.0.i, i32 noundef %hflip.0.i) #5
  br label %s5k83a_set_hvflip.exit

s5k83a_set_hvflip.exit:                           ; preds = %if.end.i25, %sw.bb7.s5k83a_set_hvflip.exit_crit_edge
  %retval.0.i26 = phi i32 [ %call10.i, %if.end.i25 ], [ %call.i.i, %sw.bb7.s5k83a_set_hvflip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #5
  br label %cleanup

cleanup:                                          ; preds = %s5k83a_set_hvflip.exit, %s5k83a_set_gain.exit, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i26, %s5k83a_set_hvflip.exit ], [ %retval.0.i, %s5k83a_set_gain.exit ], [ %call.i20, %sw.bb1 ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5k83a_set_flip_real(ptr noundef %gspca_dev, i32 noundef %vflip, i32 noundef %hflip) unnamed_addr #0 align 64 {
entry:
  %data = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %data, align 1
  %call = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext -20, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vflip)
  %tobool.not = icmp eq i32 %vflip, 0
  %. = select i1 %tobool.not, i8 16, i8 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool7.not = icmp eq i32 %hflip, 0
  %or11 = or i8 %., -128
  %cond16 = select i1 %tobool7.not, i8 %., i8 %or11
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cond16, ptr %data, align 1
  %call20 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 1, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %conv27 = select i1 %tobool.not, i8 10, i8 11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv27, ptr %data, align 1
  %call30 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 5, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end24.cleanup_crit_edge, label %if.end34

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %conv37 = select i1 %tobool7.not, i8 11, i8 10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv37, ptr %data, align 1
  %call40 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 3, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end34 ], [ %call, %entry.cleanup_crit_edge ], [ %call20, %if.end.cleanup_crit_edge ], [ %call30, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_read_bridge(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 178, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5k83a_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5k83a_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 186, i32 2}
!8 = !{ptr @s5k83a_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @s5k83a_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 211, i32 3}
!12 = !{ptr @s5k83a_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @s5k83a_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 250, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @s5k83a_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @s5k83a_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @s5k83a_init_controls._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 266, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 284, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s5k83a_init_controls._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5k83a_init_controls._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 342, i32 24}
!29 = !{ptr @s5k83a, !30, !"s5k83a", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.h", i32 49, i32 34}
!31 = !{ptr @preinit_s5k83a, !32, !"preinit_s5k83a", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 40, i32 28}
!33 = !{ptr @s5k83a_modes, !34, !"s5k83a_modes", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 26, i32 31}
!35 = !{ptr @init_s5k83a, !36, !"init_s5k83a", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 80, i32 28}
!37 = !{ptr @s5k83a_ctrl_ops, !38, !"s5k83a_ctrl_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 22, i32 35}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 299, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 307, i32 4}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rotation_thread_function._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rotation_thread_function._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 321, i32 3}
!48 = !{ptr @start_s5k83a, !49, !"start_s5k83a", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 137, i32 28}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 542, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @s5k83a_dump_registers._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @s5k83a_dump_registers._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 547, i32 4}
!57 = !{ptr @s5k83a_dump_registers._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @s5k83a_dump_registers._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 550, i32 2}
!61 = !{ptr @s5k83a_dump_registers._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @s5k83a_dump_registers._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 554, i32 3}
!65 = !{ptr @s5k83a_dump_registers._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @s5k83a_dump_registers._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 564, i32 5}
!69 = !{ptr @s5k83a_dump_registers._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @s5k83a_dump_registers._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 567, i32 5}
!73 = !{ptr @s5k83a_dump_registers._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @s5k83a_dump_registers._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.c", i32 574, i32 2}
!77 = !{ptr @s5k83a_dump_registers._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @s5k83a_dump_registers._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{!"auto-init"}
!91 = !{i64 2156570439}
!92 = !{i64 2156576901}
