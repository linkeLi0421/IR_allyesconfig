; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/cpia1.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/cpia1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sd = type { %struct.gspca_dev, %struct.cam_params, %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, i8, i8 }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.103, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.103 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cam_params = type { %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, i8, i8 }
%struct.anon.108 = type { i8, i8, i8, i8 }
%struct.anon.109 = type { i16, i16, i16 }
%struct.anon.110 = type { i8, i8, i16 }
%struct.anon.111 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.112 = type { i8, i8, i8 }
%struct.anon.113 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.114 = type { i8, i8, i8, i8 }
%struct.anon.115 = type { i8, i8 }
%struct.anon.116 = type { i8, i8, i8, i8 }
%struct.anon.117 = type { i8, i8, i8, i8 }
%struct.anon.118 = type { i8, i8, i8, i8 }
%struct.anon.119 = type { i8, i8 }
%struct.anon.120 = type { i8, i8, i8 }
%struct.anon.121 = type { i8, i8 }
%struct.anon.122 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.123 = type { i8, i8, i8 }
%struct.anon.124 = type { i8, i8, i8, i8, i8 }
%struct.anon.125 = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
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

@__UNIQUE_ID_author303 = internal constant [55 x i8] c"gspca_cpia1.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [36 x i8] c"gspca_cpia1.description=Vision CPiA\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_cpia1.file=drivers/media/usb/gspca/gspca_cpia1\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_cpia1.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_cpia1__307_1897_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_cpia1\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpia1\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1363, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2067, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @sd_dq_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: cpia CPiA camera detected (vid/pid 0x%04X:0x%04X)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/cpia1.c\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1095323715, i32 1, i32 160, i32 65536, i32 8, i32 3, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 1095323715, i32 1, i32 172, i32 65536, i32 8, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1095323715, i32 1, i32 320, i32 262144, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1095323715, i32 1, i32 352, i32 262144, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: only firmware version 1 is supported (got: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@flicker_jumps = internal constant { [2 x [2 x [4 x i8]]], [16 x i8] } { [2 x [2 x [4 x i8]]] [[2 x [4 x i8]] [[4 x i8] c"L&\13\09", [4 x i8] c"\\.\17\0B"], [2 x [4 x i8]] [[4 x i8] c"@ \10\08", [4 x i8] c"L&\13\09"]], [16 x i8] zeroinitializer }, align 32
@goto_low_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: unexpected state after lo power cmd: %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"goto_low_power\00", [17 x i8] zeroinitializer }, align 32
@goto_low_power._entry_ptr = internal global ptr @goto_low_power._entry, section ".printk_index", align 4
@goto_low_power._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: camera now in LOW power state\0A\00", [59 x i8] zeroinitializer }, align 32
@goto_low_power._entry_ptr.12 = internal global ptr @goto_low_power._entry.10, section ".printk_index", align 4
@cpia_usb_transferCmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Unexpected first byte of command: %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpia_usb_transferCmd\00", [43 x i8] zeroinitializer }, align 32
@cpia_usb_transferCmd._entry_ptr = internal global ptr @cpia_usb_transferCmd._entry, section ".printk_index", align 4
@cpia_usb_transferCmd._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_cpia1: usb_control_msg %02x, error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cpia_usb_transferCmd._entry_ptr.17 = internal global ptr @cpia_usb_transferCmd._entry.15, section ".printk_index", align 4
@printstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: status: %02x %02x %02x %02x %02x %02x %02x %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"printstatus\00", [20 x i8] zeroinitializer }, align 32
@printstatus._entry_ptr = internal global ptr @printstatus._entry, section ".printk_index", align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: CPIA Version:             %d.%02d (%d.%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: CPIA PnP-ID:              %04x:%04x:%04x\00", [49 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.24 = internal global ptr @sd_init._entry.22, section ".printk_index", align 4
@sd_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 1678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: VP-Version:               %d.%d %04x\00", [53 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.27 = internal global ptr @sd_init._entry.25, section ".printk_index", align 4
@sd_init_controls.comp_target_menu = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Quality\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Framerate\00", [22 x i8] zeroinitializer }, align 32
@sd_init_controls.comp_target = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @sd_ctrl_ops, ptr null, i32 9965568, ptr @.str.30, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @sd_init_controls.comp_target_menu, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Compression Target\00", [45 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpia1:1826:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_cpia1: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: unexpected systemstate: %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 1520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: fatal_error: %04x, vp_status: %04x\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.38 = internal global ptr @sd_start._entry.36, section ".printk_index", align 4
@goto_high_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: unexpected state after hi power cmd: %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goto_high_power\00", [16 x i8] zeroinitializer }, align 32
@goto_high_power._entry_ptr = internal global ptr @goto_high_power._entry, section ".printk_index", align 4
@goto_high_power._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: camera now in HIGH power state\0A\00", [58 x i8] zeroinitializer }, align 32
@goto_high_power._entry_ptr.43 = internal global ptr @goto_high_power._entry.41, section ".printk_index", align 4
@monitor_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gspca_cpia1: ReadVPRegs(30,4,9,8) - failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"monitor_exposure\00", [47 x i8] zeroinitializer }, align 32
@monitor_exposure._entry_ptr = internal global ptr @monitor_exposure._entry, section ".printk_index", align 4
@monitor_exposure._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: Automatically decreasing sensor_fps\0A\00", [53 x i8] zeroinitializer }, align 32
@monitor_exposure._entry_ptr.48 = internal global ptr @monitor_exposure._entry.46, section ".printk_index", align 4
@monitor_exposure._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.4, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: Automatically increasing sensor_fps\0A\00", [53 x i8] zeroinitializer }, align 32
@monitor_exposure._entry_ptr.51 = internal global ptr @monitor_exposure._entry.49, section ".printk_index", align 4
@monitor_exposure._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@monitor_exposure._entry_ptr.53 = internal global ptr @monitor_exposure._entry.52, section ".printk_index", align 4
@monitor_exposure._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.4, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@monitor_exposure._entry_ptr.55 = internal global ptr @monitor_exposure._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [11 x i64] [i64 9, i64 16, i64 49153, i64 49154, i64 49155, i64 49185, i64 49187, i64 49313, i64 49328, i64 49329, i64 49330]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 16, i64 49153, i64 49154, i64 49155, i64 49187, i64 49313, i64 49328, i64 49329, i64 49330]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 192]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963800, i64 9963813, i64 9963814, i64 9965568]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1885, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1897, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1886, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1870, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1855, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1432, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 365, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1444, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"flicker_jumps\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 227, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 721, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 728, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 413, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 427, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 699, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1667, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1672, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1675, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"comp_target_menu\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1810, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1811, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1812, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"comp_target\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1815, i32 39 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1802, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1819, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1826, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1848, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1470, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1518, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 751, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 757, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1155, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1300, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1329, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1347, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private constant [35 x i8] c"../drivers/media/usb/gspca/cpia1.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1364, i32 4 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_cpia1__307_1897_sd_driver_init6, ptr @cpia_usb_transferCmd._entry, ptr @cpia_usb_transferCmd._entry.15, ptr @cpia_usb_transferCmd._entry_ptr, ptr @cpia_usb_transferCmd._entry_ptr.17, ptr @goto_high_power._entry, ptr @goto_high_power._entry.41, ptr @goto_high_power._entry_ptr, ptr @goto_high_power._entry_ptr.43, ptr @goto_low_power._entry, ptr @goto_low_power._entry.10, ptr @goto_low_power._entry_ptr, ptr @goto_low_power._entry_ptr.12, ptr @monitor_exposure._entry, ptr @monitor_exposure._entry.46, ptr @monitor_exposure._entry.49, ptr @monitor_exposure._entry.52, ptr @monitor_exposure._entry.54, ptr @monitor_exposure._entry_ptr, ptr @monitor_exposure._entry_ptr.48, ptr @monitor_exposure._entry_ptr.51, ptr @monitor_exposure._entry_ptr.53, ptr @monitor_exposure._entry_ptr.55, ptr @printstatus._entry, ptr @printstatus._entry_ptr, ptr @sd_config._entry, ptr @sd_config._entry.5, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.22, ptr @sd_init._entry.25, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.24, ptr @sd_init._entry_ptr.27, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.36, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.38, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mode, ptr @.str.6, ptr @flicker_jumps, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @sd_init_controls.comp_target_menu, ptr @.str.28, ptr @.str.29, ptr @sd_init_controls.comp_target, ptr @sd_ctrl_ops, ptr @.str.30, ptr @sd_init_controls._key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flicker_jumps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goto_low_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goto_low_power._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia_usb_transferCmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia_usb_transferCmd._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls.comp_target_menu to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls.comp_target to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goto_high_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goto_high_power._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_exposure._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_exposure._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_exposure._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_exposure._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2720, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mainsFreq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %mainsFreq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mainsFreq, align 8
  %colourParams.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %colourParams.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 50, ptr %colourParams.i, align 2
  %contrast.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %contrast.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %contrast.i, align 1
  %saturation.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4, i32 2
  %3 = ptrtoint ptr %saturation.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 50, ptr %saturation.i, align 2
  %exposure.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %exposure.i, align 1
  %expMode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 1
  %5 = ptrtoint ptr %expMode.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %expMode.i, align 1
  %compMode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 2
  %6 = ptrtoint ptr %compMode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %compMode.i, align 1
  %centreWeight.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 3
  %7 = ptrtoint ptr %centreWeight.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %centreWeight.i, align 1
  %gain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %8 = ptrtoint ptr %gain.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %gain.i, align 1
  %fineExp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 5
  %9 = ptrtoint ptr %fineExp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fineExp.i, align 1
  %coarseExpLo.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %10 = ptrtoint ptr %coarseExpLo.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -71, ptr %coarseExpLo.i, align 1
  %coarseExpHi.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %11 = ptrtoint ptr %coarseExpHi.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %coarseExpHi.i, align 1
  %redComp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %12 = ptrtoint ptr %redComp.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -36, ptr %redComp.i, align 1
  %green1Comp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %13 = ptrtoint ptr %green1Comp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -42, ptr %green1Comp.i, align 1
  %green2Comp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %14 = ptrtoint ptr %green2Comp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -42, ptr %green2Comp.i, align 1
  %blueComp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %15 = ptrtoint ptr %blueComp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -26, ptr %blueComp.i, align 1
  %colourBalance.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %colourBalance.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %colourBalance.i, align 1
  %redGain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 1
  %17 = ptrtoint ptr %redGain.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %redGain.i, align 1
  %greenGain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 2
  %18 = ptrtoint ptr %greenGain.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %greenGain.i, align 1
  %blueGain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 3
  %19 = ptrtoint ptr %blueGain.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 92, ptr %blueGain.i, align 1
  %apcor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %apcor.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 24, ptr %apcor.i, align 1
  %gain2.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 1
  %21 = ptrtoint ptr %gain2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 22, ptr %gain2.i, align 1
  %gain4.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 2
  %22 = ptrtoint ptr %gain4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 36, ptr %gain4.i, align 1
  %gain8.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 3
  %23 = ptrtoint ptr %gain8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 52, ptr %gain8.i, align 1
  %vlOffset.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %vlOffset.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 20, ptr %vlOffset.i, align 1
  %gain223.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 1
  %25 = ptrtoint ptr %gain223.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 24, ptr %gain223.i, align 1
  %gain425.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 2
  %26 = ptrtoint ptr %gain425.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 26, ptr %gain425.i, align 1
  %gain827.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 3
  %27 = ptrtoint ptr %gain827.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 26, ptr %gain827.i, align 1
  %compressionParams.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %compressionParams.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %compressionParams.i, align 2
  %threshMax.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 1
  %29 = ptrtoint ptr %threshMax.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 11, ptr %threshMax.i, align 1
  %smallStep.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 2
  %30 = ptrtoint ptr %smallStep.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %smallStep.i, align 2
  %largeStep.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 3
  %31 = ptrtoint ptr %largeStep.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %largeStep.i, align 1
  %decimationHysteresis.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 4
  %32 = ptrtoint ptr %decimationHysteresis.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %decimationHysteresis.i, align 2
  %frDiffStepThresh.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 5
  %33 = ptrtoint ptr %frDiffStepThresh.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %frDiffStepThresh.i, align 1
  %qDiffStepThresh.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 6
  %34 = ptrtoint ptr %qDiffStepThresh.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %qDiffStepThresh.i, align 2
  %decimationThreshMod.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 7
  %35 = ptrtoint ptr %decimationThreshMod.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %decimationThreshMod.i, align 1
  %sensorFps.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %sensorFps.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %sensorFps.i, align 1
  %baserate.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7, i32 1
  %37 = ptrtoint ptr %baserate.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %baserate.i, align 1
  %flickerControl.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %flickerMode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %38 = ptrtoint ptr %flickerMode.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %flickerMode.i, align 1
  %39 = ptrtoint ptr %flickerControl.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %flickerControl.i, align 1
  %coarseJump.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %40 = ptrtoint ptr %coarseJump.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 46, ptr %coarseJump.i, align 1
  %allowableOverExposure.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 3
  %41 = ptrtoint ptr %allowableOverExposure.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -115, ptr %allowableOverExposure.i, align 1
  %yuvThreshold.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 13
  %42 = ptrtoint ptr %yuvThreshold.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %yuvThreshold.i, align 2
  %uvThreshold.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 13, i32 1
  %43 = ptrtoint ptr %uvThreshold.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 6, ptr %uvThreshold.i, align 1
  %subSample.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15, i32 1
  %44 = ptrtoint ptr %subSample.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %subSample.i, align 1
  %yuvOrder.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15, i32 2
  %45 = ptrtoint ptr %yuvOrder.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %yuvOrder.i, align 2
  %compression.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 11
  %46 = ptrtoint ptr %compression.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %compression.i, align 1
  %decimation.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 11, i32 1
  %47 = ptrtoint ptr %decimation.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %decimation.i, align 1
  %compressionTarget.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 12
  %48 = ptrtoint ptr %compressionTarget.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %compressionTarget.i, align 1
  %targetFR.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 12, i32 1
  %49 = ptrtoint ptr %targetFR.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 15, ptr %targetFR.i, align 1
  %targetQ.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 12, i32 2
  %50 = ptrtoint ptr %targetQ.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %targetQ.i, align 1
  %qx3.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16
  %51 = call ptr @memset(ptr %qx3.i, i32 0, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %52 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp = icmp sgt i32 %52, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %53 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %idVendor, align 2
  %conv = zext i16 %54 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %55 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %idProduct, align 4
  %conv2 = zext i16 %56 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cam5 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %57 = ptrtoint ptr %cam5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mode, ptr %cam5, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %nmodes, align 4
  %call6 = tail call fastcc i32 @goto_low_power(ptr noundef %gspca_dev)
  %params = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %59 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %params, align 8
  tail call fastcc void @get_version_information(ptr noundef %gspca_dev)
  %60 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp12.not = icmp eq i8 %61, 1
  br i1 %cmp12.not, label %if.end27, label %do.end17

do.end17:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %61 to i32
  %name20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name20, i32 noundef %conv11) #10
  br label %cleanup

if.end27:                                         ; preds = %do.end4
  %firmwareRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %firmwareRevision to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %firmwareRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp31 = icmp ult i8 %63, 3
  br i1 %cmp31, label %land.lhs.true, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end27
  %64 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %exposure.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp35 = icmp ugt i8 %65, 2
  br i1 %cmp35, label %if.then37, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 2, ptr %exposure.i, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %land.lhs.true.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %pnpID = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %pnpID to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %pnpID, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2067, i16 %68)
  %cmp44 = icmp eq i16 %68, 2067
  br i1 %cmp44, label %land.rhs, label %if.end41.land.end_crit_edge

if.end41.land.end_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %product = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %69 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %70)
  %cmp49 = icmp eq i16 %70, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end41.land.end_crit_edge
  %71 = phi i1 [ false, %if.end41.land.end_crit_edge ], [ %cmp49, %land.rhs ]
  %conv51 = zext i1 %71 to i8
  %72 = ptrtoint ptr %qx3.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv51, ptr %qx3.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %land.end, %do.end17
  %retval.0 = phi i32 [ -19, %do.end17 ], [ 0, %land.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %cmd.i18.i = alloca [8 x i8], align 1
  %cmd.i.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sd_start(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %qx3 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16
  %0 = ptrtoint ptr %qx3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %bottomlight.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16, i32 2
  %2 = ptrtoint ptr %bottomlight.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bottomlight.i, align 1
  %toplight.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16, i32 1
  %4 = ptrtoint ptr %toplight.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %toplight.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %cmd.i.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 34, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -112, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -113, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 80, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %12, align 1
  %call.i.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #7
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5.i = icmp eq i8 %5, 0
  %shl7.i = select i1 %cmp5.i, i8 8, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  %or.i = select i1 %cmp.i, i8 -30, i8 -32
  %or8.i = or i8 %shl7.i, %or.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i18.i) #7
  %21 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 1
  %22 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 2
  %23 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 3
  %24 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 4
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 5
  %26 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 6
  %27 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 7
  %28 = ptrtoint ptr %cmd.i18.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %cmd.i18.i, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 36, ptr %21, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %23, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or8.i, ptr %24, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %25, align 1
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %26, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %27, align 1
  %call.i19.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i18.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i18.i) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end.i, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @sd_stopN(ptr noundef %gspca_dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp sgt i32 %36, 0
  br i1 %cmp, label %do.body21, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body21:                                        ; preds = %if.end4
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %params, align 8
  %conv = zext i8 %38 to i32
  %firmwareRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %firmwareRevision to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %firmwareRevision, align 1
  %conv10 = zext i8 %40 to i32
  %vcVersion = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %vcVersion to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vcVersion, align 2
  %conv13 = zext i8 %42 to i32
  %vcRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %vcRevision to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vcRevision, align 1
  %conv16 = zext i8 %44 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp22 = icmp sgt i32 %.pr, 0
  br i1 %cmp22, label %do.body44, label %do.body21.cleanup_crit_edge

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body44:                                        ; preds = %do.body21
  %pnpID = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %pnpID to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pnpID, align 4
  %conv33 = zext i16 %46 to i32
  %product = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %product, align 2
  %conv36 = zext i16 %48 to i32
  %deviceRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 2
  %49 = ptrtoint ptr %deviceRevision to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %deviceRevision, align 4
  %conv39 = zext i16 %50 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %conv33, i32 noundef %conv36, i32 noundef %conv39) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr87 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr87)
  %cmp45 = icmp sgt i32 %.pr87, 0
  br i1 %cmp45, label %do.end50, label %do.body44.cleanup_crit_edge

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %vpVersion = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %vpVersion to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %vpVersion, align 2
  %conv57 = zext i8 %52 to i32
  %vpRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2, i32 1
  %53 = ptrtoint ptr %vpRevision to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vpRevision, align 1
  %conv60 = zext i8 %54 to i32
  %cameraHeadID = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2, i32 2
  %55 = ptrtoint ptr %cameraHeadID to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cameraHeadID, align 2
  %conv63 = zext i16 %56 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %conv57, i32 noundef %conv60, i32 noundef %conv63) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.body44.cleanup_crit_edge, %do.body21.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 7, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.31) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 50) #7
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 96, i64 noundef 8, i64 noundef 48) #7
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 50) #7
  %call5 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 1) #7
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %freq, align 4
  %qx3 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16
  %2 = ptrtoint ptr %qx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963813, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963814, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_init_controls.comp_target, ptr noundef null) #7
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %cmd.i.i319 = alloca [8 x i8], align 1
  %cmd.i.i = alloca [8 x i8], align 1
  %cmd.i312 = alloca [8 x i8], align 1
  %cmd.i306 = alloca [8 x i8], align 1
  %cmd.i300 = alloca [8 x i8], align 1
  %cmd.i286 = alloca [8 x i8], align 1
  %cmd.i280 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @goto_low_power(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.not = icmp eq i8 %1, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  %conv = zext i8 %1 to i32
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %conv) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 2
  %conv.i = zext i8 %4 to i32
  %grabState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 1
  %5 = ptrtoint ptr %grabState.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %grabState.i, align 1
  %conv3.i = zext i8 %6 to i32
  %streamState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 2
  %7 = ptrtoint ptr %streamState.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %streamState.i, align 2
  %conv5.i = zext i8 %8 to i32
  %fatalError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 3
  %9 = ptrtoint ptr %fatalError.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fatalError.i, align 1
  %conv7.i = zext i8 %10 to i32
  %cmdError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 4
  %11 = ptrtoint ptr %cmdError.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmdError.i, align 2
  %conv9.i = zext i8 %12 to i32
  %debugFlags.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 5
  %13 = ptrtoint ptr %debugFlags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %debugFlags.i, align 1
  %conv11.i = zext i8 %14 to i32
  %vpStatus.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 6
  %15 = ptrtoint ptr %vpStatus.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vpStatus.i, align 2
  %conv13.i = zext i8 %16 to i32
  %errorCode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 7
  %17 = ptrtoint ptr %errorCode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %errorCode.i, align 1
  %conv15.i = zext i8 %18 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call9 = tail call fastcc i32 @goto_high_power(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %19 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %20 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 64, ptr %cmd.i, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -50, ptr %19, align 1
  %23 = call ptr @memset(ptr %20, i32 0, i32 6)
  %call.i279 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool.not.i = icmp eq i32 %call.i279, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @goto_low_power(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.end16.if.end21_crit_edge, %entry.if.end21_crit_edge
  %params22 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %24 = ptrtoint ptr %params22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %params22, align 8
  tail call fastcc void @get_version_information(ptr noundef %gspca_dev)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i280) #7
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i280, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i8], ptr %cmd.i280, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i8], ptr %cmd.i280, i32 0, i32 3
  %28 = ptrtoint ptr %cmd.i280 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %cmd.i280, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 10, ptr %25, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %26, align 1
  %31 = call ptr @memset(ptr %27, i32 0, i32 5)
  %call.i281 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i280) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool.not.i282 = icmp eq i32 %call.i281, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i280) #7
  br i1 %tobool.not.i282, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = tail call fastcc i32 @goto_high_power(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i286) #7
  %32 = getelementptr inbounds [8 x i8], ptr %cmd.i286, i32 0, i32 1
  %33 = getelementptr inbounds [8 x i8], ptr %cmd.i286, i32 0, i32 2
  %34 = getelementptr inbounds [8 x i8], ptr %cmd.i286, i32 0, i32 6
  %35 = getelementptr inbounds [8 x i8], ptr %cmd.i286, i32 0, i32 7
  %36 = ptrtoint ptr %cmd.i286 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -64, ptr %cmd.i286, align 1
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %32, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 0, ptr %33, align 1
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 8, ptr %34, align 1
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %35, align 1
  %call.i287 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i286) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool.not.i288 = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i288, label %if.end35, label %do_command.exit299

do_command.exit299:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i286) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %usb_buf61.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %41 = ptrtoint ptr %usb_buf61.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf61.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %status.i290 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %status.i290 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %status.i290, align 2
  %arrayidx65.i = getelementptr i8, ptr %42, i32 1
  %46 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx65.i, align 1
  %grabState.i291 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 1
  %48 = ptrtoint ptr %grabState.i291 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %grabState.i291, align 1
  %arrayidx69.i = getelementptr i8, ptr %42, i32 2
  %49 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx69.i, align 1
  %streamState.i292 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 2
  %51 = ptrtoint ptr %streamState.i292 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %streamState.i292, align 2
  %arrayidx73.i = getelementptr i8, ptr %42, i32 3
  %52 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx73.i, align 1
  %fatalError.i293 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 3
  %54 = ptrtoint ptr %fatalError.i293 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %fatalError.i293, align 1
  %arrayidx77.i = getelementptr i8, ptr %42, i32 4
  %55 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx77.i, align 1
  %cmdError.i294 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 4
  %57 = ptrtoint ptr %cmdError.i294 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %cmdError.i294, align 2
  %arrayidx81.i = getelementptr i8, ptr %42, i32 5
  %58 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx81.i, align 1
  %debugFlags.i295 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 5
  %60 = ptrtoint ptr %debugFlags.i295 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %debugFlags.i295, align 1
  %arrayidx85.i = getelementptr i8, ptr %42, i32 6
  %61 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx85.i, align 1
  %vpStatus.i296 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 6
  %63 = ptrtoint ptr %vpStatus.i296 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %vpStatus.i296, align 2
  %arrayidx89.i = getelementptr i8, ptr %42, i32 7
  %64 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx89.i, align 1
  %errorCode.i297 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 7
  %66 = ptrtoint ptr %errorCode.i297 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %errorCode.i297, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i286) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool38.not = icmp eq i8 %53, 0
  br i1 %tobool38.not, label %if.end55, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %name45 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv50 = zext i8 %53 to i32
  %67 = ptrtoint ptr %vpStatus.i296 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vpStatus.i296, align 2
  %conv53 = zext i8 %68 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name45, i32 noundef %conv50, i32 noundef %conv53) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i300) #7
  %69 = getelementptr inbounds [8 x i8], ptr %cmd.i300, i32 0, i32 1
  %70 = getelementptr inbounds [8 x i8], ptr %cmd.i300, i32 0, i32 2
  %71 = getelementptr inbounds [8 x i8], ptr %cmd.i300, i32 0, i32 6
  %72 = getelementptr inbounds [8 x i8], ptr %cmd.i300, i32 0, i32 7
  %73 = ptrtoint ptr %cmd.i300 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -64, ptr %cmd.i300, align 1
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -95, ptr %69, align 1
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 0, ptr %70, align 1
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 8, ptr %71, align 1
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %72, align 1
  %call.i301 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool.not.i302 = icmp eq i32 %call.i301, 0
  br i1 %tobool.not.i302, label %if.end59, label %do_command.exit305

do_command.exit305:                               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i300) #7
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %78 = ptrtoint ptr %usb_buf61.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf61.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %vpVersion.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %82 = ptrtoint ptr %vpVersion.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %vpVersion.i, align 2
  %arrayidx98.i = getelementptr i8, ptr %79, i32 1
  %83 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx98.i, align 1
  %vpRevision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2, i32 1
  %85 = ptrtoint ptr %vpRevision.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %vpRevision.i, align 1
  %arrayidx102.i = getelementptr i8, ptr %79, i32 2
  %86 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx102.i, align 1
  %conv103.i = zext i8 %87 to i16
  %arrayidx105.i = getelementptr i8, ptr %79, i32 3
  %88 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx105.i, align 1
  %conv106.i = zext i8 %89 to i16
  %shl107.i = shl nuw i16 %conv106.i, 8
  %or108.i = or i16 %shl107.i, %conv103.i
  %cameraHeadID.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2, i32 2
  %90 = ptrtoint ptr %cameraHeadID.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %or108.i, ptr %cameraHeadID.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i300) #7
  %streamStartLine = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 19
  %91 = ptrtoint ptr %streamStartLine to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 120, ptr %streamStartLine, align 1
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %92 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %94 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %95 to i32
  %priv61 = getelementptr %struct.v4l2_pix_format, ptr %93, i32 %idxprom, i32 7
  %96 = ptrtoint ptr %priv61 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %priv61, align 4
  %and = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  %98 = trunc i32 %and to i8
  %99 = shl nuw nsw i8 %98, 1
  %spec.select335 = select i1 %tobool62.not, i8 0, i8 6
  %100 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %99, ptr %100, align 2
  %102 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %spec.select335, ptr %102, align 2
  %and74 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end59.if.end98_crit_edge, label %if.then76

if.end59.if.end98_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then76:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %100, align 2
  %106 = lshr i8 %105, 1
  store i8 %106, ptr %100, align 2
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %102, align 2
  %109 = lshr i8 %108, 1
  store i8 %109, ptr %102, align 2
  %110 = ptrtoint ptr %streamStartLine to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 60, ptr %streamStartLine, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then76, %if.end59.if.end98_crit_edge
  %.sink334 = phi i8 [ 0, %if.then76 ], [ 1, %if.end59.if.end98_crit_edge ]
  %111 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %.sink334, ptr %111, align 2
  %113 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %100, align 2
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %115 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pixfmt, align 8
  %shr = lshr i32 %116, 3
  %117 = trunc i32 %shr to i8
  %conv103 = add i8 %114, %117
  %colEnd = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 1
  %118 = ptrtoint ptr %colEnd to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv103, ptr %colEnd, align 1
  %119 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %102, align 2
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %121 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %height, align 4
  %shr111 = lshr i32 %122, 2
  %123 = trunc i32 %shr111 to i8
  %conv113 = add i8 %120, %123
  %rowEnd = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 3
  %124 = ptrtoint ptr %rowEnd to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv113, ptr %rowEnd, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i306) #7
  %125 = getelementptr inbounds [8 x i8], ptr %cmd.i306, i32 0, i32 1
  %126 = getelementptr inbounds [8 x i8], ptr %cmd.i306, i32 0, i32 2
  %127 = getelementptr inbounds [8 x i8], ptr %cmd.i306, i32 0, i32 3
  %128 = ptrtoint ptr %cmd.i306 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 64, ptr %cmd.i306, align 1
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -61, ptr %125, align 1
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %126, align 1
  %131 = call ptr @memset(ptr %127, i32 0, i32 5)
  %call.i307 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i306) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool.not.i308 = icmp eq i32 %call.i307, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i306) #7
  br i1 %tobool.not.i308, label %if.end119, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end119:                                        ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i312) #7
  %132 = getelementptr inbounds [8 x i8], ptr %cmd.i312, i32 0, i32 1
  %133 = getelementptr inbounds [8 x i8], ptr %cmd.i312, i32 0, i32 2
  %134 = ptrtoint ptr %cmd.i312 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 64, ptr %cmd.i312, align 1
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -54, ptr %132, align 1
  %136 = call ptr @memset(ptr %133, i32 0, i32 6)
  %call.i313 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i312) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %tobool.not.i314 = icmp eq i32 %call.i313, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i312) #7
  br i1 %tobool.not.i314, label %if.end123, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end123:                                        ; preds = %if.end119
  %call124 = tail call fastcc i32 @command_setcompressiontarget(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end127:                                        ; preds = %if.end123
  %call128 = tail call fastcc i32 @command_setcolourparams(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end131:                                        ; preds = %if.end127
  %call132 = tail call fastcc i32 @command_setformat(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end131.cleanup_crit_edge

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %if.end131
  %call136 = tail call fastcc i32 @command_setyuvtresh(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end139:                                        ; preds = %if.end135
  %ecpTiming.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 18
  %137 = ptrtoint ptr %ecpTiming.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ecpTiming.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %139 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 1
  %140 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 2
  %141 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 3
  %142 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 64, ptr %cmd.i.i, align 1
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 38, ptr %139, align 1
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %138, ptr %140, align 1
  %145 = call ptr @memset(ptr %141, i32 0, i32 5)
  %call.i.i318 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i318)
  %tobool141.not = icmp eq i32 %call.i.i318, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end143:                                        ; preds = %if.end139
  %call144 = tail call fastcc i32 @command_setcompressionparams(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end147:                                        ; preds = %if.end143
  %call148 = tail call fastcc i32 @command_setexposure(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end151:                                        ; preds = %if.end147
  %call152 = tail call fastcc i32 @command_setcolourbalance(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end155:                                        ; preds = %if.end151
  %call156 = tail call fastcc i32 @command_setsensorfps(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end159:                                        ; preds = %if.end155
  %call160 = tail call fastcc i32 @command_setapcor(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end163:                                        ; preds = %if.end159
  %call164 = tail call fastcc i32 @command_setflickerctrl(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end163.cleanup_crit_edge

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end167:                                        ; preds = %if.end163
  %call168 = tail call fastcc i32 @command_setvloffset(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end171:                                        ; preds = %if.end167
  %146 = ptrtoint ptr %streamStartLine to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %streamStartLine, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i319) #7
  %148 = getelementptr inbounds [8 x i8], ptr %cmd.i.i319, i32 0, i32 1
  %149 = getelementptr inbounds [8 x i8], ptr %cmd.i.i319, i32 0, i32 2
  %150 = getelementptr inbounds [8 x i8], ptr %cmd.i.i319, i32 0, i32 3
  %151 = getelementptr inbounds [8 x i8], ptr %cmd.i.i319, i32 0, i32 4
  %152 = ptrtoint ptr %cmd.i.i319 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 64, ptr %cmd.i.i319, align 1
  %153 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -60, ptr %148, align 1
  %154 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %149, align 1
  %155 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %147, ptr %150, align 1
  %156 = ptrtoint ptr %151 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 0, ptr %151, align 1
  %call.i.i320 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i319) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i319) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i320)
  %tobool173.not = icmp eq i32 %call.i.i320, 0
  br i1 %tobool173.not, label %if.end175, label %if.end171.cleanup_crit_edge

if.end171.cleanup_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end175:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  %first_frame = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %157 = ptrtoint ptr %first_frame to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 6, ptr %first_frame, align 1
  %exposure_status = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %158 = ptrtoint ptr %exposure_status to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 2, ptr %exposure_status, align 8
  %exposure_count = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %159 = ptrtoint ptr %exposure_count to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %exposure_count, align 4
  %cam_exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cam_exposure, i32 noundef 4) #7
  %160 = ptrtoint ptr %cam_exposure to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile i32 0, ptr %cam_exposure, align 4
  %fps = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %call.i.i278 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fps, i32 noundef 4) #7
  %161 = ptrtoint ptr %fps to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile i32 0, ptr %fps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %if.end171.cleanup_crit_edge, %if.end167.cleanup_crit_edge, %if.end163.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.end119.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %do_command.exit305, %do.end42, %do_command.exit299, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end42 ], [ 0, %if.end175 ], [ %call9, %if.end.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call.i287, %do_command.exit299 ], [ %call.i301, %do_command.exit305 ], [ %call124, %if.end123.cleanup_crit_edge ], [ %call128, %if.end127.cleanup_crit_edge ], [ %call132, %if.end131.cleanup_crit_edge ], [ %call136, %if.end135.cleanup_crit_edge ], [ %call.i.i318, %if.end139.cleanup_crit_edge ], [ %call144, %if.end143.cleanup_crit_edge ], [ %call148, %if.end147.cleanup_crit_edge ], [ %call152, %if.end151.cleanup_crit_edge ], [ %call156, %if.end155.cleanup_crit_edge ], [ %call160, %if.end159.cleanup_crit_edge ], [ %call164, %if.end163.cleanup_crit_edge ], [ %call168, %if.end167.cleanup_crit_edge ], [ %call.i.i320, %if.end171.cleanup_crit_edge ], [ -19, %do.end.cleanup_crit_edge ], [ -19, %do.end.i ], [ %call.i279, %if.end12.cleanup_crit_edge ], [ %call.i281, %if.end21.cleanup_crit_edge ], [ %call.i307, %if.end98.cleanup_crit_edge ], [ %call.i313, %if.end119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %len)
  %cmp = icmp sgt i32 %len, 63
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %1)
  %cmp1 = icmp eq i8 %1, 25
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %3)
  %cmp6 = icmp eq i8 %3, 104
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %data, i32 16
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %format = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %format, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12 = icmp eq i8 %5, %7
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14:                                  ; preds = %land.lhs.true8
  %arrayidx15 = getelementptr i8, ptr %data, i32 17
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  %subSample = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15, i32 1
  %10 = ptrtoint ptr %subSample to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %subSample, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp20 = icmp eq i8 %9, %11
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true14
  %arrayidx23 = getelementptr i8, ptr %data, i32 18
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 1
  %yuvOrder = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15, i32 2
  %14 = ptrtoint ptr %yuvOrder to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %yuvOrder, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp28 = icmp eq i8 %13, %15
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true30:                                  ; preds = %land.lhs.true22
  %arrayidx31 = getelementptr i8, ptr %data, i32 24
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx31, align 1
  %roi = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17
  %18 = ptrtoint ptr %roi to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %roi, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp35 = icmp eq i8 %17, %19
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true30
  %arrayidx38 = getelementptr i8, ptr %data, i32 25
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38, align 1
  %colEnd = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 1
  %22 = ptrtoint ptr %colEnd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %colEnd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp43 = icmp eq i8 %21, %23
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true45:                                  ; preds = %land.lhs.true37
  %arrayidx46 = getelementptr i8, ptr %data, i32 26
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx46, align 1
  %rowStart = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 2
  %26 = ptrtoint ptr %rowStart to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rowStart, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp51 = icmp eq i8 %25, %27
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true53:                                  ; preds = %land.lhs.true45
  %arrayidx54 = getelementptr i8, ptr %data, i32 27
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx54, align 1
  %rowEnd = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 3
  %30 = ptrtoint ptr %rowEnd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rowEnd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp59 = icmp eq i8 %29, %31
  br i1 %cmp59, label %if.then, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true53
  %cam_exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %arrayidx61 = getelementptr i8, ptr %data, i32 39
  %32 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %33 to i32
  %mul = shl nuw nsw i32 %conv62, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cam_exposure, i32 noundef 4) #7
  %34 = ptrtoint ptr %cam_exposure to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %mul, ptr %cam_exposure, align 4
  %fps = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %arrayidx63 = getelementptr i8, ptr %data, i32 41
  %35 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %36 to i32
  %call.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fps, i32 noundef 4) #7
  %37 = ptrtoint ptr %fps to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %conv64, ptr %fps, align 4
  %image65 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 13
  %38 = ptrtoint ptr %image65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %image65, align 4
  %cmp66.not = icmp eq ptr %39, null
  br i1 %cmp66.not, label %if.then.cleanup_crit_edge, label %land.lhs.true68

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true68:                                  ; preds = %if.then
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %40 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %image_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp69 = icmp ugt i32 %41, 4
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true68.cleanup_crit_edge

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %sub = add i32 %41, -4
  %arrayidx73 = getelementptr i8, ptr %39, i32 %sub
  %42 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp75 = icmp eq i8 %43, -1
  br i1 %cmp75, label %land.lhs.true77, label %land.lhs.true71.cleanup_crit_edge

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %sub79 = add i32 %41, -3
  %arrayidx80 = getelementptr i8, ptr %39, i32 %sub79
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp82 = icmp eq i8 %45, -1
  br i1 %cmp82, label %land.lhs.true84, label %land.lhs.true77.cleanup_crit_edge

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true84:                                  ; preds = %land.lhs.true77
  %sub86 = add i32 %41, -2
  %arrayidx87 = getelementptr i8, ptr %39, i32 %sub86
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp89 = icmp eq i8 %47, -1
  br i1 %cmp89, label %land.lhs.true91, label %land.lhs.true84.cleanup_crit_edge

land.lhs.true84.cleanup_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true91:                                  ; preds = %land.lhs.true84
  %sub93 = add i32 %41, -1
  %arrayidx94 = getelementptr i8, ptr %39, i32 %sub93
  %48 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp96 = icmp eq i8 %49, -1
  br i1 %cmp96, label %if.then98, label %land.lhs.true91.cleanup_crit_edge

land.lhs.true91.cleanup_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then98:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %land.lhs.true91.cleanup_crit_edge, %land.lhs.true84.cleanup_crit_edge, %land.lhs.true77.cleanup_crit_edge, %land.lhs.true71.cleanup_crit_edge, %land.lhs.true68.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 1, %if.then98 ], [ 1, %land.lhs.true91.cleanup_crit_edge ], [ 1, %land.lhs.true84.cleanup_crit_edge ], [ 1, %land.lhs.true77.cleanup_crit_edge ], [ 1, %land.lhs.true71.cleanup_crit_edge ], [ 1, %land.lhs.true68.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 2, %land.lhs.true53.cleanup_crit_edge ], [ 2, %land.lhs.true45.cleanup_crit_edge ], [ 2, %land.lhs.true37.cleanup_crit_edge ], [ 2, %land.lhs.true30.cleanup_crit_edge ], [ 2, %land.lhs.true22.cleanup_crit_edge ], [ 2, %land.lhs.true14.cleanup_crit_edge ], [ 2, %land.lhs.true8.cleanup_crit_edge ], [ 2, %land.lhs.true3.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ], [ 2, %entry.cleanup_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink, ptr noundef %data, i32 noundef %len) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  %cmd.i1.i = alloca [8 x i8], align 1
  %cmd.i.i11 = alloca [8 x i8], align 1
  %cmd.i.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %0 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %cmd.i.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -57, ptr %0, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 6)
  %call.i.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i11) #7
  %5 = getelementptr inbounds [8 x i8], ptr %cmd.i.i11, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i.i11, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i.i11, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i.i11, i32 0, i32 7
  %9 = ptrtoint ptr %cmd.i.i11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -64, ptr %cmd.i.i11, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -79, ptr %5, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %6, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %7, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %8, align 1
  %call.i.i12 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i.i = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do_command.exit.i

do_command.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i11) #7
  br label %save_camera_state.exit

if.end.i:                                         ; preds = %entry
  %usb_buf125.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %usb_buf125.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf125.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %redGain.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 1
  %18 = ptrtoint ptr %redGain.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %redGain.i.i, align 1
  %arrayidx129.i.i = getelementptr i8, ptr %15, i32 1
  %19 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx129.i.i, align 1
  %greenGain.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 2
  %21 = ptrtoint ptr %greenGain.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %greenGain.i.i, align 1
  %arrayidx133.i.i = getelementptr i8, ptr %15, i32 2
  %22 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx133.i.i, align 1
  %blueGain.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 3
  %24 = ptrtoint ptr %blueGain.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %blueGain.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i1.i) #7
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i1.i, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i8], ptr %cmd.i1.i, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i8], ptr %cmd.i1.i, i32 0, i32 6
  %28 = getelementptr inbounds [8 x i8], ptr %cmd.i1.i, i32 0, i32 7
  %29 = ptrtoint ptr %cmd.i1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -64, ptr %cmd.i1.i, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -78, ptr %25, align 1
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %26, align 1
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %27, align 1
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %28, align 1
  %call.i2.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.end.i4.i, label %if.end.i.do_command.exit6.i_crit_edge

if.end.i.do_command.exit6.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_command.exit6.i

if.end.i4.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %usb_buf125.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf125.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %gain.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %38 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %gain.i.i, align 1
  %arrayidx141.i.i = getelementptr i8, ptr %35, i32 1
  %39 = ptrtoint ptr %arrayidx141.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx141.i.i, align 1
  %fineExp.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 5
  %41 = ptrtoint ptr %fineExp.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %fineExp.i.i, align 1
  %arrayidx145.i.i = getelementptr i8, ptr %35, i32 2
  %42 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx145.i.i, align 1
  %coarseExpLo.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %44 = ptrtoint ptr %coarseExpLo.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %coarseExpLo.i.i, align 1
  %arrayidx149.i.i = getelementptr i8, ptr %35, i32 3
  %45 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx149.i.i, align 1
  %coarseExpHi.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %47 = ptrtoint ptr %coarseExpHi.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %coarseExpHi.i.i, align 1
  %arrayidx153.i.i = getelementptr i8, ptr %35, i32 4
  %48 = ptrtoint ptr %arrayidx153.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx153.i.i, align 1
  %redComp.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %50 = ptrtoint ptr %redComp.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %redComp.i.i, align 1
  %arrayidx157.i.i = getelementptr i8, ptr %35, i32 5
  %51 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx157.i.i, align 1
  %green1Comp.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %53 = ptrtoint ptr %green1Comp.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %green1Comp.i.i, align 1
  %arrayidx161.i.i = getelementptr i8, ptr %35, i32 6
  %54 = ptrtoint ptr %arrayidx161.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx161.i.i, align 1
  %green2Comp.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %56 = ptrtoint ptr %green2Comp.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %green2Comp.i.i, align 1
  %arrayidx165.i.i = getelementptr i8, ptr %35, i32 7
  %57 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx165.i.i, align 1
  %blueComp.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %59 = ptrtoint ptr %blueComp.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %blueComp.i.i, align 1
  br label %do_command.exit6.i

do_command.exit6.i:                               ; preds = %if.end.i4.i, %if.end.i.do_command.exit6.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i1.i) #7
  br label %save_camera_state.exit

save_camera_state.exit:                           ; preds = %do_command.exit6.i, %do_command.exit.i
  %call2 = tail call fastcc i32 @goto_low_power(ptr noundef %gspca_dev)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %60 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %61 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %62 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %63 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %64 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -64, ptr %cmd.i, align 1
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %60, align 1
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 0, ptr %61, align 1
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 8, ptr %62, align 1
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %63, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i14, label %save_camera_state.exit.do_command.exit_crit_edge

save_camera_state.exit.do_command.exit_crit_edge: ; preds = %save_camera_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_command.exit

if.end.i14:                                       ; preds = %save_camera_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf61.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %69 = ptrtoint ptr %usb_buf61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf61.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %status.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %status.i, align 2
  %arrayidx65.i = getelementptr i8, ptr %70, i32 1
  %74 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx65.i, align 1
  %grabState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 1
  %76 = ptrtoint ptr %grabState.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %grabState.i, align 1
  %arrayidx69.i = getelementptr i8, ptr %70, i32 2
  %77 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx69.i, align 1
  %streamState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 2
  %79 = ptrtoint ptr %streamState.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %streamState.i, align 2
  %arrayidx73.i = getelementptr i8, ptr %70, i32 3
  %80 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx73.i, align 1
  %fatalError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 3
  %82 = ptrtoint ptr %fatalError.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %fatalError.i, align 1
  %arrayidx77.i = getelementptr i8, ptr %70, i32 4
  %83 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx77.i, align 1
  %cmdError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 4
  %85 = ptrtoint ptr %cmdError.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %cmdError.i, align 2
  %arrayidx81.i = getelementptr i8, ptr %70, i32 5
  %86 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx81.i, align 1
  %debugFlags.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 5
  %88 = ptrtoint ptr %debugFlags.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %debugFlags.i, align 1
  %arrayidx85.i = getelementptr i8, ptr %70, i32 6
  %89 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx85.i, align 1
  %vpStatus.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 6
  %91 = ptrtoint ptr %vpStatus.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %vpStatus.i, align 2
  %arrayidx89.i = getelementptr i8, ptr %70, i32 7
  %92 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx89.i, align 1
  %errorCode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 7
  %94 = ptrtoint ptr %errorCode.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %errorCode.i, align 1
  br label %do_command.exit

do_command.exit:                                  ; preds = %if.end.i14, %save_camera_state.exit.do_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  %button = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16, i32 3
  %95 = ptrtoint ptr %button to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %button, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not = icmp eq i8 %96, 0
  br i1 %tobool.not, label %do_command.exit.if.end_crit_edge, label %if.then

do_command.exit.if.end_crit_edge:                 ; preds = %do_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %do_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %97 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %98, i32 noundef 1, i32 noundef 212, i32 noundef 0) #7
  %99 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %100, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %do_command.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_dq_callback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %cmd.i33 = alloca [8 x i8], align 1
  %cmd.i.i669.i = alloca [8 x i8], align 1
  %cmd.i.i.i = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  %cmd.i.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %first_frame = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %0 = ptrtoint ptr %first_frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %first_frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %dec = add i8 %1, -1
  %2 = ptrtoint ptr %first_frame to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dec, ptr %first_frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp = icmp eq i8 %dec, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %compression.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 11
  %3 = ptrtoint ptr %compression.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %compression.i, align 1
  %decimation.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 11, i32 1
  %5 = ptrtoint ptr %decimation.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %decimation.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 1
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 2
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 3
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %cmd.i.i, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -54, ptr %7, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %4, ptr %8, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %6, ptr %9, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %10, align 1
  %call.i.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %params.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %16 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i = icmp eq i8 %17, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.restart_flicker.exit_crit_edge

if.end5.restart_flicker.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart_flicker.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %firmwareRevision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %firmwareRevision.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %firmwareRevision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp5.i = icmp eq i8 %19, 2
  br i1 %cmp5.i, label %if.end.i, label %land.lhs.true.i.restart_flicker.exit_crit_edge

land.lhs.true.i.restart_flicker.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart_flicker.exit

if.end.i:                                         ; preds = %land.lhs.true.i
  %cam_exposure7.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cam_exposure7.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %cam_exposure7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %cam_exposure7.i, align 4
  %flickerControl.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %flickerMode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %22 = ptrtoint ptr %flickerMode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flickerMode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp10.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.i = icmp eq i32 %21, 0
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.end.i.restart_flicker.exit_crit_edge, label %if.end15.i

if.end.i.restart_flicker.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart_flicker.exit

if.end15.i:                                       ; preds = %if.end.i
  %coarseExpLo.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %24 = ptrtoint ptr %coarseExpLo.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %coarseExpLo.i, align 1
  %conv17.i = zext i8 %25 to i32
  %coarseExpHi.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %26 = ptrtoint ptr %coarseExpHi.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %coarseExpHi.i, align 1
  %conv20.i = zext i8 %27 to i32
  %mul.i = shl nuw nsw i32 %conv20.i, 8
  %add.i = or i32 %mul.i, %conv17.i
  %coarseJump.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %28 = ptrtoint ptr %flickerControl.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flickerControl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %land.lhs.true26.i, label %if.end15.i.land.lhs.true43.i_crit_edge

if.end15.i.land.lhs.true43.i_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true43.i

land.lhs.true26.i:                                ; preds = %if.end15.i
  %30 = ptrtoint ptr %coarseJump.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %coarseJump.i, align 1
  %conv23.i = zext i8 %31 to i32
  %rem.i = srem i32 %21, %conv23.i
  %sub.i = add nsw i32 %conv23.i, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %sub.i)
  %cmp31.not.i = icmp sgt i32 %rem.i, %sub.i
  br i1 %cmp31.not.i, label %land.lhs.true26.i.restart_flicker.exit_crit_edge, label %if.then33.i

land.lhs.true26.i.restart_flicker.exit_crit_edge: ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart_flicker.exit

if.then33.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %flickerControl.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %flickerControl.i, align 1
  br label %land.lhs.true43.i

land.lhs.true43.i:                                ; preds = %if.then33.i, %if.end15.i.land.lhs.true43.i_crit_edge
  %33 = ptrtoint ptr %coarseJump.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %coarseJump.i, align 1
  %conv47.i = zext i8 %34 to i32
  %add48.i = add nuw nsw i32 %conv47.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add48.i)
  %cmp49.i = icmp ugt i32 %add.i, %add48.i
  br i1 %cmp49.i, label %if.then51.i, label %land.lhs.true43.i.restart_flicker.exit_crit_edge

land.lhs.true43.i.restart_flicker.exit_crit_edge: ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart_flicker.exit

if.then51.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call52.i = tail call fastcc i32 @set_flicker(ptr noundef %gspca_dev, i32 noundef 1, i32 noundef 1) #7
  br label %restart_flicker.exit

restart_flicker.exit:                             ; preds = %if.then51.i, %land.lhs.true43.i.restart_flicker.exit_crit_edge, %land.lhs.true26.i.restart_flicker.exit_crit_edge, %if.end.i.restart_flicker.exit_crit_edge, %land.lhs.true.i.restart_flicker.exit_crit_edge, %if.end5.restart_flicker.exit_crit_edge
  %expMode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 1
  %35 = ptrtoint ptr %expMode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %expMode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp7 = icmp eq i8 %36, 2
  br i1 %cmp7, label %if.then9, label %restart_flicker.exit.if.end10_crit_edge

restart_flicker.exit.if.end10_crit_edge:          ; preds = %restart_flicker.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %restart_flicker.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %37 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %38 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %39 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %40 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %41 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %42 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %43 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %44 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -64, ptr %cmd.i, align 1
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -66, ptr %37, align 1
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 30, ptr %38, align 1
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %39, align 1
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 9, ptr %40, align 1
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %41, align 1
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %42, align 1
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %43, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %if.end.i27, label %do.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call.i) #10
  br label %monitor_exposure.exit

if.end.i27:                                       ; preds = %if.then9
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %52 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %arrayidx11.i = getelementptr i8, ptr %53, i32 1
  %56 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx11.i, align 1
  %colourParams.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %colourParams.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %colourParams.i, align 2
  %conv.i = zext i8 %59 to i32
  %60 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 121) #7
  %61 = add nuw nsw i32 %60, 134
  %62 = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 6) #7
  %63 = add nsw i32 %62, -6
  %div692693695.i = lshr i32 %63, 1
  %exposure.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %coarseExpHi.i23 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %64 = ptrtoint ptr %coarseExpHi.i23 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %coarseExpHi.i23, align 1
  %conv28.i = zext i8 %65 to i32
  %mul.i24 = shl nuw nsw i32 %conv28.i, 8
  %coarseExpLo.i25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %66 = ptrtoint ptr %coarseExpLo.i25 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %coarseExpLo.i25, align 1
  %conv31.i = zext i8 %67 to i32
  %add32.i = or i32 %mul.i24, %conv31.i
  %flickerControl.i26 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %68 = ptrtoint ptr %flickerControl.i26 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flickerControl.i26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool34.not.i = icmp eq i8 %69, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else117.i

if.then35.i:                                      ; preds = %if.end.i27
  %70 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp38.i = icmp eq i8 %71, 1
  br i1 %cmp38.i, label %land.end.i, label %if.then35.i.land.end.thread.i_crit_edge

if.then35.i.land.end.thread.i_crit_edge:          ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread.i

land.end.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  %firmwareRevision.i28 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %firmwareRevision.i28 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %firmwareRevision.i28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp43.i = icmp eq i8 %73, 2
  %spec.select.i = select i1 %cmp43.i, i32 239, i32 160
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.end.i, %if.then35.i.land.end.thread.i_crit_edge
  %74 = phi i32 [ 160, %if.then35.i.land.end.thread.i_crit_edge ], [ %spec.select.i, %land.end.i ]
  %add46.i = xor i8 %57, -128
  %conv48.i = zext i8 %add46.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv48.i)
  %cmp49.not.i = icmp ule i32 %74, %conv48.i
  %.pre.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %.pre.i)
  %cmp52.i = icmp ugt i32 %63, %.pre.i
  %or.cond697.i = select i1 %cmp49.not.i, i1 %cmp52.i, i1 false
  br i1 %or.cond697.i, label %if.then54.i, label %if.else79.i

if.then54.i:                                      ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div692693695.i, i32 %.pre.i)
  %cmp56.i = icmp ugt i32 %div692693695.i, %.pre.i
  %exposure_status.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %75 = ptrtoint ptr %exposure_status.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %exposure_status.i, align 8
  br i1 %cmp56.i, label %if.then58.i, label %if.else66.i

if.then58.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %76)
  %cmp60.i = icmp eq i8 %76, 4
  br i1 %cmp60.i, label %if.then62.i, label %if.else.i

if.then62.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %77 = ptrtoint ptr %exposure_count.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %exposure_count.i, align 4
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %exposure_count.i, align 4
  br label %if.end192.i

if.else.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %exposure_status.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 4, ptr %exposure_status.i, align 8
  %exposure_count64.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %80 = ptrtoint ptr %exposure_count64.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %exposure_count64.i, align 4
  br label %if.end192.i

if.else66.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp69.i = icmp eq i8 %76, 3
  br i1 %cmp69.i, label %if.then71.i, label %if.else74.i

if.then71.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count72.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %81 = ptrtoint ptr %exposure_count72.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %exposure_count72.i, align 4
  %inc73.i = add i32 %82, 1
  store i32 %inc73.i, ptr %exposure_count72.i, align 4
  br label %if.end192.i

if.else74.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %exposure_status.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %exposure_status.i, align 8
  %exposure_count76.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %84 = ptrtoint ptr %exposure_count76.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %exposure_count76.i, align 4
  br label %if.end192.i

if.else79.i:                                      ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %add32.i)
  %cmp80.i = icmp ult i32 %add32.i, 141
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %.pre.i)
  %cmp83.i = icmp ult i32 %61, %.pre.i
  %or.cond.i29 = select i1 %cmp80.i, i1 true, i1 %cmp83.i
  br i1 %or.cond.i29, label %if.then85.i, label %if.else113.i

if.then85.i:                                      ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %add32.i)
  %cmp86.i = icmp ult i32 %add32.i, 71
  %exposure_status89.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %85 = ptrtoint ptr %exposure_status89.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %exposure_status89.i, align 8
  br i1 %cmp86.i, label %if.then88.i, label %if.else100.i

if.then88.i:                                      ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp91.i = icmp eq i8 %86, 0
  br i1 %cmp91.i, label %if.then93.i, label %if.else96.i

if.then93.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count94.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %87 = ptrtoint ptr %exposure_count94.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %exposure_count94.i, align 4
  %inc95.i = add i32 %88, 1
  store i32 %inc95.i, ptr %exposure_count94.i, align 4
  br label %if.end192.i

if.else96.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %exposure_status89.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %exposure_status89.i, align 8
  %exposure_count98.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %90 = ptrtoint ptr %exposure_count98.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %exposure_count98.i, align 4
  br label %if.end192.i

if.else100.i:                                     ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp103.i = icmp eq i8 %86, 1
  br i1 %cmp103.i, label %if.then105.i, label %if.else108.i

if.then105.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count106.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %91 = ptrtoint ptr %exposure_count106.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %exposure_count106.i, align 4
  %inc107.i = add i32 %92, 1
  store i32 %inc107.i, ptr %exposure_count106.i, align 4
  br label %if.end192.i

if.else108.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %exposure_status89.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %exposure_status89.i, align 8
  %exposure_count110.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %94 = ptrtoint ptr %exposure_count110.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %exposure_count110.i, align 4
  br label %if.end192.i

if.else113.i:                                     ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_status114.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %95 = ptrtoint ptr %exposure_status114.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 2, ptr %exposure_status114.i, align 8
  br label %if.end192.i

if.else117.i:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %add32.i)
  %cmp118.i = icmp ugt i32 %add32.i, 301
  %conv121.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv121.i)
  %cmp122.i = icmp ugt i32 %63, %conv121.i
  %or.cond698.i = select i1 %cmp118.i, i1 %cmp122.i, i1 false
  br i1 %or.cond698.i, label %if.then124.i, label %if.else153.i

if.then124.i:                                     ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div692693695.i, i32 %conv121.i)
  %cmp126.i = icmp ugt i32 %div692693695.i, %conv121.i
  %exposure_status129.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %96 = ptrtoint ptr %exposure_status129.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %exposure_status129.i, align 8
  br i1 %cmp126.i, label %if.then128.i, label %if.else140.i

if.then128.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %97)
  %cmp131.i = icmp eq i8 %97, 4
  br i1 %cmp131.i, label %if.then133.i, label %if.else136.i

if.then133.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count134.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %98 = ptrtoint ptr %exposure_count134.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %exposure_count134.i, align 4
  %inc135.i = add i32 %99, 1
  store i32 %inc135.i, ptr %exposure_count134.i, align 4
  br label %if.end192.i

if.else136.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %exposure_status129.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 4, ptr %exposure_status129.i, align 8
  %exposure_count138.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %101 = ptrtoint ptr %exposure_count138.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %exposure_count138.i, align 4
  br label %if.end192.i

if.else140.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %97)
  %cmp143.i = icmp eq i8 %97, 3
  br i1 %cmp143.i, label %if.then145.i, label %if.else148.i

if.then145.i:                                     ; preds = %if.else140.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count146.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %102 = ptrtoint ptr %exposure_count146.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %exposure_count146.i, align 4
  %inc147.i = add i32 %103, 1
  store i32 %inc147.i, ptr %exposure_count146.i, align 4
  br label %if.end192.i

if.else148.i:                                     ; preds = %if.else140.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %exposure_status129.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %exposure_status129.i, align 8
  %exposure_count150.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %105 = ptrtoint ptr %exposure_count150.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %exposure_count150.i, align 4
  br label %if.end192.i

if.else153.i:                                     ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %add32.i)
  %cmp154.i = icmp ult i32 %add32.i, 141
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv121.i)
  %cmp158.i = icmp ult i32 %61, %conv121.i
  %or.cond662.i = select i1 %cmp154.i, i1 true, i1 %cmp158.i
  br i1 %or.cond662.i, label %if.then160.i, label %if.else188.i

if.then160.i:                                     ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %add32.i)
  %cmp161.i = icmp ult i32 %add32.i, 71
  %exposure_status164.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %106 = ptrtoint ptr %exposure_status164.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %exposure_status164.i, align 8
  br i1 %cmp161.i, label %if.then163.i, label %if.else175.i

if.then163.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp166.i = icmp eq i8 %107, 0
  br i1 %cmp166.i, label %if.then168.i, label %if.else171.i

if.then168.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count169.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %108 = ptrtoint ptr %exposure_count169.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %exposure_count169.i, align 4
  %inc170.i = add i32 %109, 1
  store i32 %inc170.i, ptr %exposure_count169.i, align 4
  br label %if.end192.i

if.else171.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %exposure_status164.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %exposure_status164.i, align 8
  %exposure_count173.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %111 = ptrtoint ptr %exposure_count173.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %exposure_count173.i, align 4
  br label %if.end192.i

if.else175.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp178.i = icmp eq i8 %107, 1
  br i1 %cmp178.i, label %if.then180.i, label %if.else183.i

if.then180.i:                                     ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_count181.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %112 = ptrtoint ptr %exposure_count181.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %exposure_count181.i, align 4
  %inc182.i = add i32 %113, 1
  store i32 %inc182.i, ptr %exposure_count181.i, align 4
  br label %if.end192.i

if.else183.i:                                     ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %exposure_status164.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %exposure_status164.i, align 8
  %exposure_count185.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %115 = ptrtoint ptr %exposure_count185.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %exposure_count185.i, align 4
  br label %if.end192.i

if.else188.i:                                     ; preds = %if.else153.i
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_status189.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %116 = ptrtoint ptr %exposure_status189.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 2, ptr %exposure_status189.i, align 8
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else188.i, %if.else183.i, %if.then180.i, %if.else171.i, %if.then168.i, %if.else148.i, %if.then145.i, %if.else136.i, %if.then133.i, %if.else113.i, %if.else108.i, %if.then105.i, %if.else96.i, %if.then93.i, %if.else74.i, %if.then71.i, %if.else.i, %if.then62.i
  %fps.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %call.i.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fps.i, i32 noundef 4) #7
  %117 = ptrtoint ptr %fps.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %fps.i, align 4
  %119 = add i32 %118, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -30, i32 %119)
  %120 = icmp ult i32 %119, -30
  %framerate.0.i = select i1 %120, i32 1, i32 %118
  %121 = ptrtoint ptr %flickerControl.i26 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %flickerControl.i26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool204.not.i = icmp eq i8 %122, 0
  %exposure_status206.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %123 = ptrtoint ptr %exposure_status206.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %exposure_status206.i, align 8
  %.off.i = add i8 %124, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %tobool204.not.i, label %if.then205.i, label %if.else387.i

if.then205.i:                                     ; preds = %if.end192.i
  br i1 %switch.i, label %land.lhs.true215.i, label %if.else277.i

land.lhs.true215.i:                               ; preds = %if.then205.i
  %exposure_count216.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %125 = ptrtoint ptr %exposure_count216.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %exposure_count216.i, align 4
  %mul217.i = mul nuw nsw i32 %framerate.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %mul217.i)
  %cmp218.not.i = icmp slt i32 %126, %mul217.i
  br i1 %cmp218.not.i, label %land.lhs.true215.i.monitor_exposure.exit_crit_edge, label %land.lhs.true220.i

land.lhs.true215.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

land.lhs.true220.i:                               ; preds = %land.lhs.true215.i
  %sensorFps.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %127 = ptrtoint ptr %sensorFps.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %sensorFps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %128)
  %cmp223.i = icmp ult i8 %128, 2
  br i1 %cmp223.i, label %if.then225.i, label %land.lhs.true220.i.monitor_exposure.exit_crit_edge

land.lhs.true220.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

if.then225.i:                                     ; preds = %land.lhs.true220.i
  %inc229.i = add nuw nsw i8 %128, 1
  %129 = ptrtoint ptr %sensorFps.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %inc229.i, ptr %sensorFps.i, align 1
  %mainsFreq.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %130 = ptrtoint ptr %mainsFreq.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mainsFreq.i, align 8
  %idxprom.i = zext i8 %131 to i32
  %baserate.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7, i32 1
  %132 = ptrtoint ptr %baserate.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %baserate.i, align 1
  %idxprom233.i = zext i8 %133 to i32
  %idxprom238.i = zext i8 %inc229.i to i32
  %arrayidx239.i = getelementptr [2 x [2 x [4 x i8]]], ptr @flicker_jumps, i32 0, i32 %idxprom.i, i32 %idxprom233.i, i32 %idxprom238.i
  %134 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx239.i, align 1
  %coarseJump.i31 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %136 = ptrtoint ptr %coarseJump.i31 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %coarseJump.i31, align 1
  %conv245.i = zext i8 %135 to i32
  %sub246.i = add nsw i32 %conv245.i, -1
  %div247661.i = lshr i32 %add32.i, 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then225.i
  %new_exposure.0.i = phi i32 [ %sub246.i, %if.then225.i ], [ %add254.i, %while.cond.i.while.cond.i_crit_edge ]
  %cmp248.i = icmp slt i32 %new_exposure.0.i, %div247661.i
  %add254.i = add i32 %new_exposure.0.i, %conv245.i
  br i1 %cmp248.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %conv255.i = trunc i32 %new_exposure.0.i to i8
  %137 = ptrtoint ptr %coarseExpLo.i25 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv255.i, ptr %coarseExpLo.i25, align 1
  %138 = lshr i32 %new_exposure.0.i, 8
  %conv259.i = trunc i32 %138 to i8
  %139 = ptrtoint ptr %coarseExpHi.i23 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv259.i, ptr %coarseExpHi.i23, align 1
  %140 = ptrtoint ptr %exposure_status206.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %exposure_status206.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %141 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp265.i = icmp sgt i32 %141, 1
  br i1 %cmp265.i, label %while.end.i.if.then504.sink.split.i_crit_edge, label %while.end.i.if.then504.i_crit_edge

while.end.i.if.then504.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then504.i

while.end.i.if.then504.sink.split.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then504.sink.split.i

if.else277.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %124)
  %switch664.i = icmp ult i8 %124, 2
  br i1 %switch664.i, label %land.lhs.true287.i, label %if.else277.i.monitor_exposure.exit_crit_edge

if.else277.i.monitor_exposure.exit_crit_edge:     ; preds = %if.else277.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

land.lhs.true287.i:                               ; preds = %if.else277.i
  %exposure_count288.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %142 = ptrtoint ptr %exposure_count288.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %exposure_count288.i, align 4
  %mul289.i = mul nuw nsw i32 %framerate.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %mul289.i)
  %cmp290.not.i = icmp slt i32 %143, %mul289.i
  br i1 %cmp290.not.i, label %land.lhs.true287.i.monitor_exposure.exit_crit_edge, label %land.lhs.true292.i

land.lhs.true287.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

land.lhs.true292.i:                               ; preds = %land.lhs.true287.i
  %sensorFps294.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %144 = ptrtoint ptr %sensorFps294.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %sensorFps294.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp297.not.i = icmp eq i8 %145, 0
  br i1 %cmp297.not.i, label %land.lhs.true292.i.monitor_exposure.exit_crit_edge, label %if.then299.i

land.lhs.true292.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true292.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

if.then299.i:                                     ; preds = %land.lhs.true292.i
  %146 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp304.i = icmp eq i8 %147, 1
  br i1 %cmp304.i, label %land.rhs306.i, label %if.then299.i.land.end313.i_crit_edge

if.then299.i.land.end313.i_crit_edge:             ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end313.i

land.rhs306.i:                                    ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #9
  %firmwareRevision309.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %148 = ptrtoint ptr %firmwareRevision309.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %firmwareRevision309.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %149)
  %cmp311.i = icmp eq i8 %149, 2
  %phi.sel.i = select i1 %cmp311.i, i32 255, i32 302
  br label %land.end313.i

land.end313.i:                                    ; preds = %land.rhs306.i, %if.then299.i.land.end313.i_crit_edge
  %150 = phi i32 [ 302, %if.then299.i.land.end313.i_crit_edge ], [ %phi.sel.i, %land.rhs306.i ]
  %dec.i = add i8 %145, -1
  %151 = ptrtoint ptr %sensorFps294.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %dec.i, ptr %sensorFps294.i, align 1
  %mainsFreq318.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %152 = ptrtoint ptr %mainsFreq318.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %mainsFreq318.i, align 8
  %idxprom319.i = zext i8 %153 to i32
  %baserate323.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7, i32 1
  %154 = ptrtoint ptr %baserate323.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %baserate323.i, align 1
  %idxprom324.i = zext i8 %155 to i32
  %idxprom329.i = zext i8 %dec.i to i32
  %arrayidx330.i = getelementptr [2 x [2 x [4 x i8]]], ptr @flicker_jumps, i32 0, i32 %idxprom319.i, i32 %idxprom324.i, i32 %idxprom329.i
  %156 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx330.i, align 1
  %coarseJump333.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %158 = ptrtoint ptr %coarseJump333.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %coarseJump333.i, align 1
  %conv337.i = zext i8 %157 to i32
  %sub338.i = add nsw i32 %conv337.i, -1
  %mul340.i = shl nuw nsw i32 %add32.i, 1
  br label %while.cond339.i

while.cond339.i:                                  ; preds = %while.cond339.i.while.cond339.i_crit_edge, %land.end313.i
  %new_exposure.1.i = phi i32 [ %sub338.i, %land.end313.i ], [ %add348.i, %while.cond339.i.while.cond339.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_exposure.1.i, i32 %mul340.i)
  %cmp341.i = icmp slt i32 %new_exposure.1.i, %mul340.i
  %add348.i = add i32 %new_exposure.1.i, %conv337.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add348.i, i32 %150)
  %cmp349.i = icmp slt i32 %add348.i, %150
  %or.cond694.i = select i1 %cmp341.i, i1 %cmp349.i, i1 false
  br i1 %or.cond694.i, label %while.cond339.i.while.cond339.i_crit_edge, label %while.end358.i

while.cond339.i.while.cond339.i_crit_edge:        ; preds = %while.cond339.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond339.i

while.end358.i:                                   ; preds = %while.cond339.i
  %conv360.i = trunc i32 %new_exposure.1.i to i8
  %159 = ptrtoint ptr %coarseExpLo.i25 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv360.i, ptr %coarseExpLo.i25, align 1
  %160 = lshr i32 %new_exposure.1.i, 8
  %conv365.i = trunc i32 %160 to i8
  %161 = ptrtoint ptr %coarseExpHi.i23 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv365.i, ptr %coarseExpHi.i23, align 1
  %162 = ptrtoint ptr %exposure_status206.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 2, ptr %exposure_status206.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %163 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp371.i = icmp sgt i32 %163, 1
  br i1 %cmp371.i, label %while.end358.i.if.then504.sink.split.i_crit_edge, label %while.end358.i.if.then504.i_crit_edge

while.end358.i.if.then504.i_crit_edge:            ; preds = %while.end358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then504.i

while.end358.i.if.then504.sink.split.i_crit_edge: ; preds = %while.end358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then504.sink.split.i

if.else387.i:                                     ; preds = %if.end192.i
  br i1 %switch.i, label %land.lhs.true397.i, label %if.else441.i

land.lhs.true397.i:                               ; preds = %if.else387.i
  %exposure_count398.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %164 = ptrtoint ptr %exposure_count398.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %exposure_count398.i, align 4
  %mul399.i = mul nuw nsw i32 %framerate.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %mul399.i)
  %cmp400.not.i = icmp slt i32 %165, %mul399.i
  br i1 %cmp400.not.i, label %land.lhs.true397.i.monitor_exposure.exit_crit_edge, label %land.lhs.true402.i

land.lhs.true397.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

land.lhs.true402.i:                               ; preds = %land.lhs.true397.i
  %sensorFps404.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %166 = ptrtoint ptr %sensorFps404.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %sensorFps404.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %167)
  %cmp407.i = icmp ult i8 %167, 2
  br i1 %cmp407.i, label %if.then409.i, label %land.lhs.true402.i.monitor_exposure.exit_crit_edge

land.lhs.true402.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

if.then409.i:                                     ; preds = %land.lhs.true402.i
  %inc413.i = add nuw nsw i8 %167, 1
  %168 = ptrtoint ptr %sensorFps404.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %inc413.i, ptr %sensorFps404.i, align 1
  %gain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %169 = ptrtoint ptr %gain.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %gain.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp417.not.i = icmp eq i8 %170, 0
  br i1 %cmp417.not.i, label %if.then409.i.if.end424.i_crit_edge, label %if.then419.i

if.then409.i.if.end424.i_crit_edge:               ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end424.i

if.then419.i:                                     ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec423.i = add i8 %170, -1
  %171 = ptrtoint ptr %gain.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %dec423.i, ptr %gain.i, align 1
  br label %if.end424.i

if.end424.i:                                      ; preds = %if.then419.i, %if.then409.i.if.end424.i_crit_edge
  %setexp.0.i = phi i32 [ 1, %if.then419.i ], [ 0, %if.then409.i.if.end424.i_crit_edge ]
  %172 = ptrtoint ptr %exposure_status206.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %exposure_status206.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %173 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %173)
  %cmp427.i = icmp sgt i32 %173, 1
  br i1 %cmp427.i, label %if.end424.i.if.end502.sink.split.i_crit_edge, label %if.end424.i.if.end502.i_crit_edge

if.end424.i.if.end502.i_crit_edge:                ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end502.i

if.end424.i.if.end502.sink.split.i_crit_edge:     ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end502.sink.split.i

if.else441.i:                                     ; preds = %if.else387.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %124)
  %switch667.i = icmp ult i8 %124, 2
  br i1 %switch667.i, label %land.lhs.true451.i, label %if.else441.i.monitor_exposure.exit_crit_edge

if.else441.i.monitor_exposure.exit_crit_edge:     ; preds = %if.else441.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

land.lhs.true451.i:                               ; preds = %if.else441.i
  %exposure_count452.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %174 = ptrtoint ptr %exposure_count452.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %exposure_count452.i, align 4
  %mul453.i = mul nuw nsw i32 %framerate.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %mul453.i)
  %cmp454.not.i = icmp slt i32 %175, %mul453.i
  br i1 %cmp454.not.i, label %land.lhs.true451.i.monitor_exposure.exit_crit_edge, label %land.lhs.true456.i

land.lhs.true451.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true451.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

land.lhs.true456.i:                               ; preds = %land.lhs.true451.i
  %sensorFps458.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %176 = ptrtoint ptr %sensorFps458.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %sensorFps458.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %cmp461.not.i = icmp eq i8 %177, 0
  br i1 %cmp461.not.i, label %land.lhs.true456.i.monitor_exposure.exit_crit_edge, label %if.then463.i

land.lhs.true456.i.monitor_exposure.exit_crit_edge: ; preds = %land.lhs.true456.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

if.then463.i:                                     ; preds = %land.lhs.true456.i
  %dec467.i = add i8 %177, -1
  %178 = ptrtoint ptr %sensorFps458.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %dec467.i, ptr %sensorFps458.i, align 1
  %gain470.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %179 = ptrtoint ptr %gain470.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %gain470.i, align 1
  %conv471.i = zext i8 %180 to i32
  %181 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %exposure.i, align 1
  %conv474.i = zext i8 %182 to i32
  %sub475.i = add nsw i32 %conv474.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub475.i, i32 %conv471.i)
  %cmp476.i = icmp sgt i32 %sub475.i, %conv471.i
  br i1 %cmp476.i, label %if.then478.i, label %if.then463.i.if.end483.i_crit_edge

if.then463.i.if.end483.i_crit_edge:               ; preds = %if.then463.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end483.i

if.then478.i:                                     ; preds = %if.then463.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc482.i = add i8 %180, 1
  %183 = ptrtoint ptr %gain470.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %inc482.i, ptr %gain470.i, align 1
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.then478.i, %if.then463.i.if.end483.i_crit_edge
  %setexp.1.i = phi i32 [ 1, %if.then478.i ], [ 0, %if.then463.i.if.end483.i_crit_edge ]
  %184 = ptrtoint ptr %exposure_status206.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 2, ptr %exposure_status206.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %185 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp486.i = icmp sgt i32 %185, 1
  br i1 %cmp486.i, label %if.end483.i.if.end502.sink.split.i_crit_edge, label %if.end483.i.if.end502.i_crit_edge

if.end483.i.if.end502.i_crit_edge:                ; preds = %if.end483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end502.i

if.end483.i.if.end502.sink.split.i_crit_edge:     ; preds = %if.end483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end502.sink.split.i

if.end502.sink.split.i:                           ; preds = %if.end483.i.if.end502.sink.split.i_crit_edge, %if.end424.i.if.end502.sink.split.i_crit_edge
  %.str.47.sink.i = phi ptr [ @.str.47, %if.end424.i.if.end502.sink.split.i_crit_edge ], [ @.str.50, %if.end483.i.if.end502.sink.split.i_crit_edge ]
  %setexp.2.ph.i = phi i32 [ %setexp.0.i, %if.end424.i.if.end502.sink.split.i_crit_edge ], [ %setexp.1.i, %if.end483.i.if.end502.sink.split.i_crit_edge ]
  %name435.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call437.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.47.sink.i, ptr noundef %name435.i) #10
  br label %if.end502.i

if.end502.i:                                      ; preds = %if.end502.sink.split.i, %if.end483.i.if.end502.i_crit_edge, %if.end424.i.if.end502.i_crit_edge
  %setexp.2.i = phi i32 [ %setexp.0.i, %if.end424.i.if.end502.i_crit_edge ], [ %setexp.1.i, %if.end483.i.if.end502.i_crit_edge ], [ %setexp.2.ph.i, %if.end502.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setexp.2.i)
  %tobool503.not.i = icmp eq i32 %setexp.2.i, 0
  br i1 %tobool503.not.i, label %if.end502.i.if.end510.i_crit_edge, label %if.end502.i.if.then504.i_crit_edge

if.end502.i.if.then504.i_crit_edge:               ; preds = %if.end502.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then504.i

if.end502.i.if.end510.i_crit_edge:                ; preds = %if.end502.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end510.i

if.then504.sink.split.i:                          ; preds = %while.end358.i.if.then504.sink.split.i_crit_edge, %while.end.i.if.then504.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %while.end.i.if.then504.sink.split.i_crit_edge ], [ @.str.50, %while.end358.i.if.then504.sink.split.i_crit_edge ]
  %name379.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call381.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink.i, ptr noundef %name379.i) #10
  br label %if.then504.i

if.then504.i:                                     ; preds = %if.then504.sink.split.i, %if.end502.i.if.then504.i_crit_edge, %while.end358.i.if.then504.i_crit_edge, %while.end.i.if.then504.i_crit_edge
  %186 = xor i1 %tobool204.not.i, true
  %call505.i = tail call fastcc i32 @command_setexposure(ptr noundef %gspca_dev) #7
  br label %if.end510.i

if.end510.i:                                      ; preds = %if.then504.i, %if.end502.i.if.end510.i_crit_edge
  %tobool511.not678.ph.i = phi i1 [ true, %if.end502.i.if.end510.i_crit_edge ], [ %186, %if.then504.i ]
  %sensorFps.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %187 = ptrtoint ptr %sensorFps.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %sensorFps.i.i, align 1
  %baserate.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7, i32 1
  %189 = ptrtoint ptr %baserate.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %baserate.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i.i) #7
  %191 = getelementptr inbounds [8 x i8], ptr %cmd.i.i.i, i32 0, i32 1
  %192 = getelementptr inbounds [8 x i8], ptr %cmd.i.i.i, i32 0, i32 2
  %193 = getelementptr inbounds [8 x i8], ptr %cmd.i.i.i, i32 0, i32 3
  %194 = getelementptr inbounds [8 x i8], ptr %cmd.i.i.i, i32 0, i32 4
  %195 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 64, ptr %cmd.i.i.i, align 1
  %196 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -89, ptr %191, align 1
  %197 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %188, ptr %192, align 1
  %198 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %190, ptr %193, align 1
  %199 = ptrtoint ptr %194 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 0, ptr %194, align 1
  %call.i.i668.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i.i) #7
  br i1 %tobool511.not678.ph.i, label %if.end510.i.monitor_exposure.exit_crit_edge, label %if.then512.i

if.end510.i.monitor_exposure.exit_crit_edge:      ; preds = %if.end510.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %monitor_exposure.exit

if.then512.i:                                     ; preds = %if.end510.i
  call void @__sanitizer_cov_trace_pc() #9
  %flickerMode.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %200 = ptrtoint ptr %flickerMode.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %flickerMode.i.i, align 1
  %coarseJump.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %202 = ptrtoint ptr %coarseJump.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %coarseJump.i.i, align 1
  %allowableOverExposure.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 3
  %204 = ptrtoint ptr %allowableOverExposure.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %allowableOverExposure.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i669.i) #7
  %206 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 1
  %207 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 2
  %208 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 3
  %209 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 4
  %210 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 5
  %211 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 6
  %212 = getelementptr inbounds [8 x i8], ptr %cmd.i.i669.i, i32 0, i32 7
  %213 = ptrtoint ptr %cmd.i.i669.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 64, ptr %cmd.i.i669.i, align 1
  %214 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -86, ptr %206, align 1
  %215 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %201, ptr %207, align 1
  %216 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %203, ptr %208, align 1
  %217 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %205, ptr %209, align 1
  %218 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %210, align 1
  %219 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %211, align 1
  %220 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %212, align 1
  %call.i.i670.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i669.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i669.i) #7
  br label %monitor_exposure.exit

monitor_exposure.exit:                            ; preds = %if.then512.i, %if.end510.i.monitor_exposure.exit_crit_edge, %land.lhs.true456.i.monitor_exposure.exit_crit_edge, %land.lhs.true451.i.monitor_exposure.exit_crit_edge, %if.else441.i.monitor_exposure.exit_crit_edge, %land.lhs.true402.i.monitor_exposure.exit_crit_edge, %land.lhs.true397.i.monitor_exposure.exit_crit_edge, %land.lhs.true292.i.monitor_exposure.exit_crit_edge, %land.lhs.true287.i.monitor_exposure.exit_crit_edge, %if.else277.i.monitor_exposure.exit_crit_edge, %land.lhs.true220.i.monitor_exposure.exit_crit_edge, %land.lhs.true215.i.monitor_exposure.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br label %if.end10

if.end10:                                         ; preds = %monitor_exposure.exit, %restart_flicker.exit.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i33) #7
  %221 = getelementptr inbounds [8 x i8], ptr %cmd.i33, i32 0, i32 1
  %222 = getelementptr inbounds [8 x i8], ptr %cmd.i33, i32 0, i32 2
  %223 = getelementptr inbounds [8 x i8], ptr %cmd.i33, i32 0, i32 6
  %224 = getelementptr inbounds [8 x i8], ptr %cmd.i33, i32 0, i32 7
  %225 = ptrtoint ptr %cmd.i33 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 -64, ptr %cmd.i33, align 1
  %226 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 -78, ptr %221, align 1
  %227 = ptrtoint ptr %222 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 4)
  store i32 0, ptr %222, align 1
  %228 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 8, ptr %223, align 1
  %229 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %224, align 1
  %call.i34 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i36, label %if.end10.do_command.exit_crit_edge

if.end10.do_command.exit_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_command.exit

if.end.i36:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf137.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %230 = ptrtoint ptr %usb_buf137.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %usb_buf137.i, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 1
  %gain.i37 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %234 = ptrtoint ptr %gain.i37 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %gain.i37, align 1
  %arrayidx141.i = getelementptr i8, ptr %231, i32 1
  %235 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx141.i, align 1
  %fineExp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 5
  %237 = ptrtoint ptr %fineExp.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %fineExp.i, align 1
  %arrayidx145.i = getelementptr i8, ptr %231, i32 2
  %238 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx145.i, align 1
  %coarseExpLo.i38 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %240 = ptrtoint ptr %coarseExpLo.i38 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %coarseExpLo.i38, align 1
  %arrayidx149.i = getelementptr i8, ptr %231, i32 3
  %241 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx149.i, align 1
  %coarseExpHi.i39 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %243 = ptrtoint ptr %coarseExpHi.i39 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %coarseExpHi.i39, align 1
  %arrayidx153.i = getelementptr i8, ptr %231, i32 4
  %244 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx153.i, align 1
  %redComp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %246 = ptrtoint ptr %redComp.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %redComp.i, align 1
  %arrayidx157.i = getelementptr i8, ptr %231, i32 5
  %247 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx157.i, align 1
  %green1Comp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %249 = ptrtoint ptr %green1Comp.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %green1Comp.i, align 1
  %arrayidx161.i = getelementptr i8, ptr %231, i32 6
  %250 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx161.i, align 1
  %green2Comp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %252 = ptrtoint ptr %green2Comp.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %green2Comp.i, align 1
  %arrayidx165.i = getelementptr i8, ptr %231, i32 7
  %253 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx165.i, align 1
  %blueComp.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %255 = ptrtoint ptr %blueComp.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %blueComp.i, align 1
  br label %do_command.exit

do_command.exit:                                  ; preds = %if.end.i36, %if.end10.do_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i33) #7
  %call12 = tail call fastcc i32 @do_command(ptr noundef %gspca_dev, i16 noundef zeroext -16349, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goto_low_power(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i49 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %0 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %cmd.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %0, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 6)
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i49) #7
  %5 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 7
  %9 = ptrtoint ptr %cmd.i49 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -64, ptr %cmd.i49, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %5, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %6, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %7, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %8, align 1
  %call.i50 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end4, label %do_command.exit54

do_command.exit54:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i49) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %usb_buf61.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %usb_buf61.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf61.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %status.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %status.i, align 2
  %arrayidx65.i = getelementptr i8, ptr %15, i32 1
  %19 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx65.i, align 1
  %grabState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 1
  %21 = ptrtoint ptr %grabState.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %grabState.i, align 1
  %arrayidx69.i = getelementptr i8, ptr %15, i32 2
  %22 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx69.i, align 1
  %streamState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 2
  %24 = ptrtoint ptr %streamState.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %streamState.i, align 2
  %arrayidx73.i = getelementptr i8, ptr %15, i32 3
  %25 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx73.i, align 1
  %fatalError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 3
  %27 = ptrtoint ptr %fatalError.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %fatalError.i, align 1
  %arrayidx77.i = getelementptr i8, ptr %15, i32 4
  %28 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx77.i, align 1
  %cmdError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 4
  %30 = ptrtoint ptr %cmdError.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %cmdError.i, align 2
  %arrayidx81.i = getelementptr i8, ptr %15, i32 5
  %31 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx81.i, align 1
  %debugFlags.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 5
  %33 = ptrtoint ptr %debugFlags.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %debugFlags.i, align 1
  %arrayidx85.i = getelementptr i8, ptr %15, i32 6
  %34 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx85.i, align 1
  %vpStatus.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 6
  %36 = ptrtoint ptr %vpStatus.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %vpStatus.i, align 2
  %arrayidx89.i = getelementptr i8, ptr %15, i32 7
  %37 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx89.i, align 1
  %errorCode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 7
  %39 = ptrtoint ptr %errorCode.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %errorCode.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i49) #7
  %40 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %do.end [
    i8 2, label %do.body22
    i8 4, label %if.end4.cleanup_crit_edge
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %17 to i32
  %params = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %conv) #10
  tail call fastcc void @printstatus(ptr noundef %gspca_dev, ptr noundef %params)
  br label %cleanup

do.body22:                                        ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp23 = icmp sgt i32 %41, 1
  br i1 %cmp23, label %do.end28, label %do.body22.cleanup_crit_edge

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %name31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.body22.cleanup_crit_edge, %do.end, %if.end4.cleanup_crit_edge, %do_command.exit54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i50, %do_command.exit54 ], [ -5, %if.end4.cleanup_crit_edge ], [ -5, %do.end ], [ 0, %do.end28 ], [ 0, %do.body22.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_version_information(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i1 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %0 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -64, ptr %cmd.i, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %3, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do_command.exit

do_command.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %params.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %13 = ptrtoint ptr %params.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %params.i, align 8
  %arrayidx18.i = getelementptr i8, ptr %10, i32 1
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18.i, align 1
  %firmwareRevision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %firmwareRevision.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %firmwareRevision.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %10, i32 2
  %17 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22.i, align 1
  %vcVersion.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %vcVersion.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %vcVersion.i, align 2
  %arrayidx26.i = getelementptr i8, ptr %10, i32 3
  %20 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26.i, align 1
  %vcRevision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %vcRevision.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %vcRevision.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i1) #7
  %23 = getelementptr inbounds [8 x i8], ptr %cmd.i1, i32 0, i32 1
  %24 = getelementptr inbounds [8 x i8], ptr %cmd.i1, i32 0, i32 2
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i1, i32 0, i32 6
  %26 = getelementptr inbounds [8 x i8], ptr %cmd.i1, i32 0, i32 7
  %27 = ptrtoint ptr %cmd.i1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -64, ptr %cmd.i1, align 1
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %23, align 1
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %24, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %25, align 1
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %26, align 1
  %call.i2 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %if.end.do_command.exit6_crit_edge

if.end.do_command.exit6_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_command.exit6

if.end.i4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv32.i = zext i8 %35 to i16
  %arrayidx34.i = getelementptr i8, ptr %33, i32 1
  %36 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %37 to i16
  %shl.i = shl nuw i16 %conv35.i, 8
  %or.i = or i16 %shl.i, %conv32.i
  %pnpID.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %pnpID.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or.i, ptr %pnpID.i, align 4
  %arrayidx39.i = getelementptr i8, ptr %33, i32 2
  %39 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %40 to i16
  %arrayidx42.i = getelementptr i8, ptr %33, i32 3
  %41 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %42 to i16
  %shl44.i = shl nuw i16 %conv43.i, 8
  %or45.i = or i16 %shl44.i, %conv40.i
  %product.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %43 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or45.i, ptr %product.i, align 2
  %arrayidx50.i = getelementptr i8, ptr %33, i32 4
  %44 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %45 to i16
  %arrayidx53.i = getelementptr i8, ptr %33, i32 5
  %46 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %47 to i16
  %shl55.i = shl nuw i16 %conv54.i, 8
  %or56.i = or i16 %shl55.i, %conv51.i
  %deviceRevision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 2
  %48 = ptrtoint ptr %deviceRevision.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or56.i, ptr %deviceRevision.i, align 4
  br label %do_command.exit6

do_command.exit6:                                 ; preds = %if.end.i4, %if.end.do_command.exit6_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i1) #7
  br label %cleanup

cleanup:                                          ; preds = %do_command.exit6, %do_command.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_command(ptr noundef %gspca_dev, i16 noundef zeroext %command, i8 noundef zeroext %a, i8 noundef zeroext %b, i8 noundef zeroext %c, i8 noundef zeroext %d) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  %cmd = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 7
  %7 = zext i16 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %command, label %sw.default [
    i16 -16383, label %entry.sw.epilog_crit_edge
    i16 -16382, label %entry.sw.epilog_crit_edge306
    i16 -16381, label %entry.sw.epilog_crit_edge307
    i16 -16223, label %entry.sw.epilog_crit_edge308
    i16 -16208, label %entry.sw.epilog_crit_edge309
    i16 -16207, label %entry.sw.epilog_crit_edge310
    i16 -16206, label %entry.sw.epilog_crit_edge311
    i16 -16349, label %entry.sw.bb1_crit_edge
    i16 -16351, label %entry.sw.bb1_crit_edge312
  ]

entry.sw.bb1_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge311:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge310:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge309:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge308:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge307:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge306:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge312
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge306, %entry.sw.epilog_crit_edge307, %entry.sw.epilog_crit_edge308, %entry.sw.epilog_crit_edge309, %entry.sw.epilog_crit_edge310, %entry.sw.epilog_crit_edge311
  %datasize.0 = phi i8 [ 0, %sw.default ], [ 4, %sw.bb1 ], [ 8, %entry.sw.epilog_crit_edge ], [ 8, %entry.sw.epilog_crit_edge306 ], [ 8, %entry.sw.epilog_crit_edge307 ], [ 8, %entry.sw.epilog_crit_edge308 ], [ 8, %entry.sw.epilog_crit_edge309 ], [ 8, %entry.sw.epilog_crit_edge310 ], [ 8, %entry.sw.epilog_crit_edge311 ]
  %8 = lshr i16 %command, 8
  %conv3 = trunc i16 %8 to i8
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %cmd, align 1
  %conv5 = trunc i16 %command to i8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %a, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %b, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %c, ptr %3, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %d, ptr %4, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %datasize.0, ptr %5, align 1
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %6, align 1
  %call = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %17 = zext i16 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %command, label %if.end.cleanup_crit_edge [
    i16 -16383, label %sw.bb15
    i16 -16382, label %sw.bb29
    i16 -16381, label %sw.bb60
    i16 -16223, label %sw.bb92
    i16 -16208, label %sw.bb112
    i16 -16207, label %sw.bb124
    i16 -16206, label %sw.bb136
    i16 -16349, label %sw.bb168
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %params = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %22 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %params, align 8
  %arrayidx18 = getelementptr i8, ptr %19, i32 1
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx18, align 1
  %firmwareRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %firmwareRevision to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %firmwareRevision, align 1
  %arrayidx22 = getelementptr i8, ptr %19, i32 2
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22, align 1
  %vcVersion = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %vcVersion to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %vcVersion, align 2
  %arrayidx26 = getelementptr i8, ptr %19, i32 3
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx26, align 1
  %vcRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %vcRevision to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %vcRevision, align 1
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %32 = ptrtoint ptr %usb_buf30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf30, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv32 = zext i8 %35 to i16
  %arrayidx34 = getelementptr i8, ptr %33, i32 1
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %37 to i16
  %shl = shl nuw i16 %conv35, 8
  %or = or i16 %shl, %conv32
  %pnpID = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %pnpID to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or, ptr %pnpID, align 4
  %arrayidx39 = getelementptr i8, ptr %33, i32 2
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %40 to i16
  %arrayidx42 = getelementptr i8, ptr %33, i32 3
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %42 to i16
  %shl44 = shl nuw i16 %conv43, 8
  %or45 = or i16 %shl44, %conv40
  %product = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %43 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or45, ptr %product, align 2
  %arrayidx50 = getelementptr i8, ptr %33, i32 4
  %44 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %45 to i16
  %arrayidx53 = getelementptr i8, ptr %33, i32 5
  %46 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %47 to i16
  %shl55 = shl nuw i16 %conv54, 8
  %or56 = or i16 %shl55, %conv51
  %deviceRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 2
  %48 = ptrtoint ptr %deviceRevision to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or56, ptr %deviceRevision, align 4
  br label %cleanup

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf61 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %49 = ptrtoint ptr %usb_buf61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb_buf61, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %status = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %status, align 2
  %arrayidx65 = getelementptr i8, ptr %50, i32 1
  %54 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx65, align 1
  %grabState = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 1
  %56 = ptrtoint ptr %grabState to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %grabState, align 1
  %arrayidx69 = getelementptr i8, ptr %50, i32 2
  %57 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx69, align 1
  %streamState = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 2
  %59 = ptrtoint ptr %streamState to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %streamState, align 2
  %arrayidx73 = getelementptr i8, ptr %50, i32 3
  %60 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx73, align 1
  %fatalError = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 3
  %62 = ptrtoint ptr %fatalError to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %fatalError, align 1
  %arrayidx77 = getelementptr i8, ptr %50, i32 4
  %63 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx77, align 1
  %cmdError = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 4
  %65 = ptrtoint ptr %cmdError to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %cmdError, align 2
  %arrayidx81 = getelementptr i8, ptr %50, i32 5
  %66 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx81, align 1
  %debugFlags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 5
  %68 = ptrtoint ptr %debugFlags to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %debugFlags, align 1
  %arrayidx85 = getelementptr i8, ptr %50, i32 6
  %69 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx85, align 1
  %vpStatus = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 6
  %71 = ptrtoint ptr %vpStatus to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %vpStatus, align 2
  %arrayidx89 = getelementptr i8, ptr %50, i32 7
  %72 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx89, align 1
  %errorCode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 7
  %74 = ptrtoint ptr %errorCode to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %errorCode, align 1
  br label %cleanup

sw.bb92:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf93 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %75 = ptrtoint ptr %usb_buf93 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf93, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %vpVersion = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %vpVersion to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %vpVersion, align 2
  %arrayidx98 = getelementptr i8, ptr %76, i32 1
  %80 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx98, align 1
  %vpRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2, i32 1
  %82 = ptrtoint ptr %vpRevision to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %vpRevision, align 1
  %arrayidx102 = getelementptr i8, ptr %76, i32 2
  %83 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %84 to i16
  %arrayidx105 = getelementptr i8, ptr %76, i32 3
  %85 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %86 to i16
  %shl107 = shl nuw i16 %conv106, 8
  %or108 = or i16 %shl107, %conv103
  %cameraHeadID = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2, i32 2
  %87 = ptrtoint ptr %cameraHeadID to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %or108, ptr %cameraHeadID, align 2
  br label %cleanup

sw.bb112:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf113 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %88 = ptrtoint ptr %usb_buf113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_buf113, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  %colourParams = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %colourParams to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %colourParams, align 2
  %arrayidx117 = getelementptr i8, ptr %89, i32 1
  %93 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx117, align 1
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4, i32 1
  %95 = ptrtoint ptr %contrast to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %contrast, align 1
  %arrayidx121 = getelementptr i8, ptr %89, i32 2
  %96 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx121, align 1
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4, i32 2
  %98 = ptrtoint ptr %saturation to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %saturation, align 2
  br label %cleanup

sw.bb124:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf125 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %99 = ptrtoint ptr %usb_buf125 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %usb_buf125, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  %redGain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 1
  %103 = ptrtoint ptr %redGain to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %redGain, align 1
  %arrayidx129 = getelementptr i8, ptr %100, i32 1
  %104 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx129, align 1
  %greenGain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 2
  %106 = ptrtoint ptr %greenGain to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %greenGain, align 1
  %arrayidx133 = getelementptr i8, ptr %100, i32 2
  %107 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx133, align 1
  %blueGain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 3
  %109 = ptrtoint ptr %blueGain to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %blueGain, align 1
  br label %cleanup

sw.bb136:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_buf137 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %110 = ptrtoint ptr %usb_buf137 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb_buf137, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %114 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %gain, align 1
  %arrayidx141 = getelementptr i8, ptr %111, i32 1
  %115 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx141, align 1
  %fineExp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 5
  %117 = ptrtoint ptr %fineExp to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %fineExp, align 1
  %arrayidx145 = getelementptr i8, ptr %111, i32 2
  %118 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx145, align 1
  %coarseExpLo = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %120 = ptrtoint ptr %coarseExpLo to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %coarseExpLo, align 1
  %arrayidx149 = getelementptr i8, ptr %111, i32 3
  %121 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx149, align 1
  %coarseExpHi = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %123 = ptrtoint ptr %coarseExpHi to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %coarseExpHi, align 1
  %arrayidx153 = getelementptr i8, ptr %111, i32 4
  %124 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx153, align 1
  %redComp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %126 = ptrtoint ptr %redComp to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %redComp, align 1
  %arrayidx157 = getelementptr i8, ptr %111, i32 5
  %127 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx157, align 1
  %green1Comp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %129 = ptrtoint ptr %green1Comp to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %green1Comp, align 1
  %arrayidx161 = getelementptr i8, ptr %111, i32 6
  %130 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx161, align 1
  %green2Comp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %132 = ptrtoint ptr %green2Comp to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %green2Comp, align 1
  %arrayidx165 = getelementptr i8, ptr %111, i32 7
  %133 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx165, align 1
  %blueComp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %135 = ptrtoint ptr %blueComp to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %blueComp, align 1
  br label %cleanup

sw.bb168:                                         ; preds = %if.end
  %usb_buf169 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %136 = ptrtoint ptr %usb_buf169 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %usb_buf169, align 4
  %arrayidx170 = getelementptr i8, ptr %137, i32 1
  %138 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx170, align 1
  %140 = lshr i8 %139, 1
  %.lobit = and i8 %140, 1
  %141 = xor i8 %.lobit, 1
  %button = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16, i32 3
  %142 = ptrtoint ptr %button to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %button, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %141, i8 %143)
  %cmp178.not = icmp eq i8 %141, %143
  br i1 %cmp178.not, label %sw.bb168.if.end186_crit_edge, label %if.then180

sw.bb168.if.end186_crit_edge:                     ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.then180:                                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #9
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %144 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %input_dev, align 8
  %146 = zext i8 %141 to i32
  tail call void @input_event(ptr noundef %145, i32 noundef 1, i32 noundef 212, i32 noundef %146) #7
  %147 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %148, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %149 = ptrtoint ptr %button to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %141, ptr %button, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.then180, %sw.bb168.if.end186_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool190.not = icmp eq i8 %141, 0
  br i1 %tobool190.not, label %if.end186.if.end200_crit_edge, label %if.then191

if.end186.if.end200_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200

if.then191:                                       ; preds = %if.end186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %150 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %151 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %152 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %153 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %154 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %155 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %156 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %157 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 64, ptr %cmd.i, align 1
  %158 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 36, ptr %150, align 1
  %159 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 3, ptr %151, align 1
  %160 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -33, ptr %152, align 1
  %161 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -33, ptr %153, align 1
  %162 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %154, align 1
  %163 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %155, align 1
  %164 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %156, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end195, label %if.then191.cleanup_crit_edge

if.then191.cleanup_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end195:                                        ; preds = %if.then191
  %call196 = tail call fastcc i32 @do_command(ptr noundef %gspca_dev, i16 noundef zeroext 16420, i8 noundef zeroext 3, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end195.if.end200_crit_edge, label %if.end195.cleanup_crit_edge

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end195.if.end200_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200

if.end200:                                        ; preds = %if.end195.if.end200_crit_edge, %if.end186.if.end200_crit_edge
  %165 = ptrtoint ptr %usb_buf169 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %usb_buf169, align 4
  %arrayidx202 = getelementptr i8, ptr %166, i32 2
  %167 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx202, align 1
  %169 = lshr i8 %168, 6
  %.lobit303 = and i8 %169, 1
  %170 = xor i8 %.lobit303, 1
  %cradled = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 16, i32 4
  %171 = ptrtoint ptr %cradled to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %cradled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.end195.cleanup_crit_edge, %if.then191.cleanup_crit_edge, %sw.bb136, %sw.bb124, %sw.bb112, %sw.bb92, %sw.bb60, %sw.bb29, %sw.bb15, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog.cleanup_crit_edge ], [ %call196, %if.end195.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end200 ], [ 0, %sw.bb136 ], [ 0, %sw.bb124 ], [ 0, %sw.bb112 ], [ 0, %sw.bb92 ], [ 0, %sw.bb60 ], [ 0, %sw.bb29 ], [ 0, %sw.bb15 ], [ %call.i, %if.then191.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @printstatus(ptr noundef %gspca_dev, ptr nocapture noundef readonly %params) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %status = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %status, align 2
  %conv = zext i8 %2 to i32
  %grabState = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %grabState to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %grabState, align 1
  %conv3 = zext i8 %4 to i32
  %streamState = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %streamState to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %streamState, align 2
  %conv5 = zext i8 %6 to i32
  %fatalError = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %fatalError to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fatalError, align 1
  %conv7 = zext i8 %8 to i32
  %cmdError = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %cmdError to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmdError, align 2
  %conv9 = zext i8 %10 to i32
  %debugFlags = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %debugFlags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %debugFlags, align 1
  %conv11 = zext i8 %12 to i32
  %vpStatus = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %vpStatus to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vpStatus, align 2
  %conv13 = zext i8 %14 to i32
  %errorCode = getelementptr inbounds %struct.cam_params, ptr %params, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %errorCode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %errorCode, align 1
  %conv15 = zext i8 %16 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr nocapture noundef readonly %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %command, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %arrayidx1 = getelementptr i8, ptr %command, i32 7
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i16
  %shl = shl nuw i16 %conv2, 8
  %or = or i16 %shl, %conv
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %command, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %5, label %do.end [
    i8 -64, label %entry.if.end20_crit_edge
    i8 64, label %if.then12
  ]

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = zext i8 %5 to i32
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %conv4) #10
  br label %cleanup

if.end20:                                         ; preds = %if.then12, %entry.if.end20_crit_edge
  %.sink = phi i32 [ -2147483648, %if.then12 ], [ -2147483520, %entry.if.end20_crit_edge ]
  %dev13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i81 = shl i32 %10, 8
  %or15 = or i32 %shl.i81, %.sink
  %dev21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %arrayidx22 = getelementptr i8, ptr %command, i32 1
  %arrayidx23 = getelementptr i8, ptr %command, i32 2
  %arrayidx25 = getelementptr i8, ptr %command, i32 3
  %arrayidx30 = getelementptr i8, ptr %command, i32 4
  %arrayidx32 = getelementptr i8, ptr %command, i32 5
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev21, align 4
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22, align 1
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i16
  %shl27 = shl nuw i16 %conv26, 8
  %or28 = or i16 %shl27, %conv24
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %20 to i16
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %22 to i16
  %shl34 = shl nuw i16 %conv33, 8
  %or35 = or i16 %shl34, %conv31
  %23 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf, align 4
  %call38 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or15, i8 noundef zeroext %14, i8 noundef zeroext %5, i16 noundef zeroext %or28, i16 noundef zeroext %or35, ptr noundef %24, i16 noundef zeroext %or, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end49, label %if.end20.if.end55_crit_edge

if.end20.if.end55_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end49:                                         ; preds = %if.end20
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22, align 1
  %conv47 = zext i8 %26 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv47, i32 noundef %call38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call38)
  %cmp50 = icmp eq i32 %call38, -32
  br i1 %cmp50, label %retry.1, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

retry.1:                                          ; preds = %if.end49
  %27 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev21, align 4
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx22, align 1
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx23, align 1
  %conv24.1 = zext i8 %32 to i16
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx25, align 1
  %conv26.1 = zext i8 %34 to i16
  %shl27.1 = shl nuw i16 %conv26.1, 8
  %or28.1 = or i16 %shl27.1, %conv24.1
  %35 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx30, align 1
  %conv31.1 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx32, align 1
  %conv33.1 = zext i8 %38 to i16
  %shl34.1 = shl nuw i16 %conv33.1, 8
  %or35.1 = or i16 %shl34.1, %conv31.1
  %39 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_buf, align 4
  %call38.1 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or15, i8 noundef zeroext %30, i8 noundef zeroext %5, i16 noundef zeroext %or28.1, i16 noundef zeroext %or35.1, ptr noundef %40, i16 noundef zeroext %or, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1)
  %cmp39.1 = icmp slt i32 %call38.1, 0
  br i1 %cmp39.1, label %if.end49.1, label %retry.1.if.end55_crit_edge

retry.1.if.end55_crit_edge:                       ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end49.1:                                       ; preds = %retry.1
  %41 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx22, align 1
  %conv47.1 = zext i8 %42 to i32
  %call48.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv47.1, i32 noundef %call38.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call38.1)
  %cmp50.1 = icmp eq i32 %call38.1, -32
  br i1 %cmp50.1, label %retry.2, label %if.end49.1.if.end55_crit_edge

if.end49.1.if.end55_crit_edge:                    ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

retry.2:                                          ; preds = %if.end49.1
  %43 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev21, align 4
  %45 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx22, align 1
  %47 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx23, align 1
  %conv24.2 = zext i8 %48 to i16
  %49 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx25, align 1
  %conv26.2 = zext i8 %50 to i16
  %shl27.2 = shl nuw i16 %conv26.2, 8
  %or28.2 = or i16 %shl27.2, %conv24.2
  %51 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx30, align 1
  %conv31.2 = zext i8 %52 to i16
  %53 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx32, align 1
  %conv33.2 = zext i8 %54 to i16
  %shl34.2 = shl nuw i16 %conv33.2, 8
  %or35.2 = or i16 %shl34.2, %conv31.2
  %55 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_buf, align 4
  %call38.2 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or15, i8 noundef zeroext %46, i8 noundef zeroext %5, i16 noundef zeroext %or28.2, i16 noundef zeroext %or35.2, ptr noundef %56, i16 noundef zeroext %or, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.2)
  %cmp39.2 = icmp slt i32 %call38.2, 0
  br i1 %cmp39.2, label %if.end49.2, label %retry.2.if.end55_crit_edge

retry.2.if.end55_crit_edge:                       ; preds = %retry.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end49.2:                                       ; preds = %retry.2
  %57 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx22, align 1
  %conv47.2 = zext i8 %58 to i32
  %call48.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv47.2, i32 noundef %call38.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call38.2)
  %cmp50.2 = icmp eq i32 %call38.2, -32
  br i1 %cmp50.2, label %retry.3, label %if.end49.2.if.end55_crit_edge

if.end49.2.if.end55_crit_edge:                    ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

retry.3:                                          ; preds = %if.end49.2
  %59 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev21, align 4
  %61 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx22, align 1
  %63 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx23, align 1
  %conv24.3 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx25, align 1
  %conv26.3 = zext i8 %66 to i16
  %shl27.3 = shl nuw i16 %conv26.3, 8
  %or28.3 = or i16 %shl27.3, %conv24.3
  %67 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx30, align 1
  %conv31.3 = zext i8 %68 to i16
  %69 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx32, align 1
  %conv33.3 = zext i8 %70 to i16
  %shl34.3 = shl nuw i16 %conv33.3, 8
  %or35.3 = or i16 %shl34.3, %conv31.3
  %71 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf, align 4
  %call38.3 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or15, i8 noundef zeroext %62, i8 noundef zeroext %5, i16 noundef zeroext %or28.3, i16 noundef zeroext %or35.3, ptr noundef %72, i16 noundef zeroext %or, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.3)
  %cmp39.3 = icmp slt i32 %call38.3, 0
  br i1 %cmp39.3, label %if.end49.3, label %retry.3.if.end55_crit_edge

retry.3.if.end55_crit_edge:                       ; preds = %retry.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end49.3:                                       ; preds = %retry.3
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx22, align 1
  %conv47.3 = zext i8 %74 to i32
  %call48.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv47.3, i32 noundef %call38.3) #10
  br label %if.end55

if.end55:                                         ; preds = %if.end49.3, %retry.3.if.end55_crit_edge, %if.end49.2.if.end55_crit_edge, %retry.2.if.end55_crit_edge, %if.end49.1.if.end55_crit_edge, %retry.1.if.end55_crit_edge, %if.end49.if.end55_crit_edge, %if.end20.if.end55_crit_edge
  %call38.lcssa = phi i32 [ %call38, %if.end20.if.end55_crit_edge ], [ %call38, %if.end49.if.end55_crit_edge ], [ %call38.1, %retry.1.if.end55_crit_edge ], [ %call38.1, %if.end49.1.if.end55_crit_edge ], [ %call38.2, %retry.2.if.end55_crit_edge ], [ %call38.2, %if.end49.2.if.end55_crit_edge ], [ %call38.3, %retry.3.if.end55_crit_edge ], [ %call38.3, %if.end49.3 ]
  %75 = tail call i32 @llvm.smin.i32(i32 %call38.lcssa, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end
  %retval.0 = phi i32 [ %75, %if.end55 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %cmd.i.i146 = alloca [8 x i8], align 1
  %cmd.i18.i131 = alloca [8 x i8], align 1
  %cmd.i.i132 = alloca [8 x i8], align 1
  %cmd.i18.i = alloca [8 x i8], align 1
  %cmd.i.i129 = alloca [8 x i8], align 1
  %cmd.i.i124 = alloca [8 x i8], align 1
  %cmd.i.i119 = alloca [8 x i8], align 1
  %cmd.i.i117 = alloca [8 x i8], align 1
  %cmd.i.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963800, i32 %6)
  %cmp.not = icmp eq i32 %6, 9963800
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id1, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %8, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb16
    i32 9963778, label %sw.bb23
    i32 9963800, label %sw.bb30
    i32 9963813, label %sw.bb53
    i32 9963814, label %sw.bb59
    i32 9965568, label %sw.bb66
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i8
  %colourParams = getelementptr i8, ptr %1, i32 1046
  %12 = ptrtoint ptr %colourParams to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %colourParams, align 2
  %conv5 = and i32 %11, 255
  %sub1.i = sub nsw i32 191, %conv5
  %13 = tail call i32 @llvm.smin.i32(i32 %sub1.i, i32 146) #7
  %conv6 = trunc i32 %13 to i8
  %allowableOverExposure = getelementptr i8, ptr %1, i32 1074
  %14 = ptrtoint ptr %allowableOverExposure to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6, ptr %allowableOverExposure, align 1
  %contrast.i = getelementptr i8, ptr %1, i32 1047
  %15 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %contrast.i, align 1
  %saturation.i = getelementptr i8, ptr %1, i32 1048
  %17 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %saturation.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %19 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 1
  %20 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 2
  %21 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 3
  %22 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 4
  %23 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 5
  %24 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 6
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 64, ptr %cmd.i.i, align 1
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -93, ptr %19, align 1
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %20, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %16, ptr %21, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %18, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %23, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %24, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %25, align 1
  %call.i.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %34 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i.i, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not, label %if.then12, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %flickerMode.i = getelementptr i8, ptr %1, i32 1072
  %35 = ptrtoint ptr %flickerMode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flickerMode.i, align 1
  %coarseJump.i = getelementptr i8, ptr %1, i32 1073
  %37 = ptrtoint ptr %coarseJump.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %coarseJump.i, align 1
  %39 = ptrtoint ptr %allowableOverExposure to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %allowableOverExposure, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i117) #7
  %41 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 1
  %42 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 2
  %43 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 3
  %44 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 4
  %45 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 5
  %46 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 6
  %47 = getelementptr inbounds [8 x i8], ptr %cmd.i.i117, i32 0, i32 7
  %48 = ptrtoint ptr %cmd.i.i117 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 64, ptr %cmd.i.i117, align 1
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -86, ptr %41, align 1
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %36, ptr %42, align 1
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %38, ptr %43, align 1
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %40, ptr %44, align 1
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %45, align 1
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %46, align 1
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %47, align 1
  %call.i.i118 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i117) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i117) #7
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val17, align 4
  %conv18 = trunc i32 %57 to i8
  %contrast = getelementptr i8, ptr %1, i32 1047
  %58 = ptrtoint ptr %contrast to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv18, ptr %contrast, align 1
  %colourParams.i120 = getelementptr i8, ptr %1, i32 1046
  %59 = ptrtoint ptr %colourParams.i120 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %colourParams.i120, align 2
  %saturation.i122 = getelementptr i8, ptr %1, i32 1048
  %61 = ptrtoint ptr %saturation.i122 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %saturation.i122, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i119) #7
  %63 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 1
  %64 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 2
  %65 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 3
  %66 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 4
  %67 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 5
  %68 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 6
  %69 = getelementptr inbounds [8 x i8], ptr %cmd.i.i119, i32 0, i32 7
  %70 = ptrtoint ptr %cmd.i.i119 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 64, ptr %cmd.i.i119, align 1
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -93, ptr %63, align 1
  %72 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %60, ptr %64, align 1
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv18, ptr %65, align 1
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %62, ptr %66, align 1
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %67, align 1
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %68, align 1
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %69, align 1
  %call.i.i123 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i119) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i119) #7
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %78 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val24, align 4
  %conv25 = trunc i32 %79 to i8
  %saturation = getelementptr i8, ptr %1, i32 1048
  %80 = ptrtoint ptr %saturation to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv25, ptr %saturation, align 2
  %colourParams.i125 = getelementptr i8, ptr %1, i32 1046
  %81 = ptrtoint ptr %colourParams.i125 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %colourParams.i125, align 2
  %contrast.i126 = getelementptr i8, ptr %1, i32 1047
  %83 = ptrtoint ptr %contrast.i126 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %contrast.i126, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i124) #7
  %85 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 1
  %86 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 2
  %87 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 3
  %88 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 4
  %89 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 5
  %90 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 6
  %91 = getelementptr inbounds [8 x i8], ptr %cmd.i.i124, i32 0, i32 7
  %92 = ptrtoint ptr %cmd.i.i124 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 64, ptr %cmd.i.i124, align 1
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -93, ptr %85, align 1
  %94 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %82, ptr %86, align 1
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %84, ptr %87, align 1
  %96 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv25, ptr %88, align 1
  %97 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %89, align 1
  %98 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %90, align 1
  %99 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %91, align 1
  %call.i.i128 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i124) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i124) #7
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %100 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp32 = icmp eq i32 %101, 2
  %conv34 = zext i1 %cmp32 to i8
  %mainsFreq = getelementptr i8, ptr %1, i32 1128
  %102 = ptrtoint ptr %mainsFreq to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv34, ptr %mainsFreq, align 8
  %idxprom = zext i1 %cmp32 to i32
  %sensorFps = getelementptr i8, ptr %1, i32 1065
  %baserate = getelementptr i8, ptr %1, i32 1066
  %103 = ptrtoint ptr %baserate to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %baserate, align 1
  %idxprom37 = zext i8 %104 to i32
  %105 = ptrtoint ptr %sensorFps to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sensorFps, align 1
  %idxprom41 = zext i8 %106 to i32
  %arrayidx42 = getelementptr [2 x [2 x [4 x i8]]], ptr @flicker_jumps, i32 0, i32 %idxprom, i32 %idxprom37, i32 %idxprom41
  %107 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx42, align 1
  %coarseJump = getelementptr i8, ptr %1, i32 1073
  %109 = ptrtoint ptr %coarseJump to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %coarseJump, align 1
  %110 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp46 = icmp ne i32 %111, 0
  %conv47 = zext i1 %cmp46 to i32
  %112 = zext i8 %4 to i32
  %call51 = tail call fastcc i32 @set_flicker(ptr noundef %add.ptr, i32 noundef %conv47, i32 noundef %112)
  br label %sw.epilog.sink.split

sw.bb53:                                          ; preds = %if.end
  %val54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %113 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val54, align 4
  %conv55 = trunc i32 %114 to i8
  %bottomlight = getelementptr i8, ptr %1, i32 1099
  %115 = ptrtoint ptr %bottomlight to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv55, ptr %bottomlight, align 1
  %toplight.i = getelementptr i8, ptr %1, i32 1098
  %116 = ptrtoint ptr %toplight.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %toplight.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i129) #7
  %118 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 1
  %119 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 2
  %120 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 3
  %121 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 4
  %122 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 5
  %123 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 6
  %124 = getelementptr inbounds [8 x i8], ptr %cmd.i.i129, i32 0, i32 7
  %125 = ptrtoint ptr %cmd.i.i129 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 64, ptr %cmd.i.i129, align 1
  %126 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 34, ptr %118, align 1
  %127 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -112, ptr %119, align 1
  %128 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -113, ptr %120, align 1
  %129 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 80, ptr %121, align 1
  %130 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %122, align 1
  %131 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %123, align 1
  %132 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %124, align 1
  %call.i.i130 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool.not.i.i = icmp eq i32 %call.i.i130, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i129) #7
  br i1 %tobool.not.i.i, label %if.end.i, label %sw.bb53.sw.epilog.sink.split_crit_edge

sw.bb53.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end.i:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp5.i = icmp eq i8 %117, 0
  %shl7.i = select i1 %cmp5.i, i8 8, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv55)
  %cmp.i = icmp eq i8 %conv55, 0
  %or.i = select i1 %cmp.i, i8 -30, i8 -32
  %or8.i = or i8 %shl7.i, %or.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i18.i) #7
  %133 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 1
  %134 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 2
  %135 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 3
  %136 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 4
  %137 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 5
  %138 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 6
  %139 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i, i32 0, i32 7
  %140 = ptrtoint ptr %cmd.i18.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 64, ptr %cmd.i18.i, align 1
  %141 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 36, ptr %133, align 1
  %142 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 2, ptr %134, align 1
  %143 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %135, align 1
  %144 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %or8.i, ptr %136, align 1
  %145 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %137, align 1
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %138, align 1
  %147 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %139, align 1
  %call.i19.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i18.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i18.i) #7
  br label %sw.epilog.sink.split

sw.bb59:                                          ; preds = %if.end
  %val60 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %148 = ptrtoint ptr %val60 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val60, align 4
  %conv61 = trunc i32 %149 to i8
  %toplight = getelementptr i8, ptr %1, i32 1098
  %150 = ptrtoint ptr %toplight to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv61, ptr %toplight, align 1
  %bottomlight.i133 = getelementptr i8, ptr %1, i32 1099
  %151 = ptrtoint ptr %bottomlight.i133 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bottomlight.i133, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i132) #7
  %153 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 1
  %154 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 2
  %155 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 3
  %156 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 4
  %157 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 5
  %158 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 6
  %159 = getelementptr inbounds [8 x i8], ptr %cmd.i.i132, i32 0, i32 7
  %160 = ptrtoint ptr %cmd.i.i132 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 64, ptr %cmd.i.i132, align 1
  %161 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 34, ptr %153, align 1
  %162 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -112, ptr %154, align 1
  %163 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -113, ptr %155, align 1
  %164 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 80, ptr %156, align 1
  %165 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %157, align 1
  %166 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %158, align 1
  %167 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %159, align 1
  %call.i.i135 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i132) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %call.i.i135, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i132) #7
  br i1 %tobool.not.i.i136, label %if.end.i143, label %sw.bb59.sw.epilog.sink.split_crit_edge

sw.bb59.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end.i143:                                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv61)
  %cmp5.i137 = icmp eq i8 %conv61, 0
  %shl7.i138 = select i1 %cmp5.i137, i8 8, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp.i139 = icmp eq i8 %152, 0
  %or.i140 = select i1 %cmp.i139, i8 -30, i8 -32
  %or8.i141 = or i8 %or.i140, %shl7.i138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i18.i131) #7
  %168 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 1
  %169 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 2
  %170 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 3
  %171 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 4
  %172 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 5
  %173 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 6
  %174 = getelementptr inbounds [8 x i8], ptr %cmd.i18.i131, i32 0, i32 7
  %175 = ptrtoint ptr %cmd.i18.i131 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 64, ptr %cmd.i18.i131, align 1
  %176 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 36, ptr %168, align 1
  %177 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 2, ptr %169, align 1
  %178 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %170, align 1
  %179 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %or8.i141, ptr %171, align 1
  %180 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %172, align 1
  %181 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %173, align 1
  %182 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %174, align 1
  %call.i19.i142 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i18.i131) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i18.i131) #7
  br label %sw.epilog.sink.split

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %183 = ptrtoint ptr %val67 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %val67, align 4
  %conv68 = trunc i32 %184 to i8
  %compressionTarget = getelementptr i8, ptr %1, i32 1081
  %185 = ptrtoint ptr %compressionTarget to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv68, ptr %compressionTarget, align 1
  %targetFR.i = getelementptr i8, ptr %1, i32 1082
  %186 = ptrtoint ptr %targetFR.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %targetFR.i, align 1
  %targetQ.i = getelementptr i8, ptr %1, i32 1083
  %188 = ptrtoint ptr %targetQ.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %targetQ.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i146) #7
  %190 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 1
  %191 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 2
  %192 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 3
  %193 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 4
  %194 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 5
  %195 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 6
  %196 = getelementptr inbounds [8 x i8], ptr %cmd.i.i146, i32 0, i32 7
  %197 = ptrtoint ptr %cmd.i.i146 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 64, ptr %cmd.i.i146, align 1
  %198 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -53, ptr %190, align 1
  %199 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv68, ptr %191, align 1
  %200 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %187, ptr %192, align 1
  %201 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %189, ptr %193, align 1
  %202 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %194, align 1
  %203 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %195, align 1
  %204 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %196, align 1
  %call.i.i147 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i146) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i146) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb66, %if.end.i143, %sw.bb59.sw.epilog.sink.split_crit_edge, %if.end.i, %sw.bb53.sw.epilog.sink.split_crit_edge, %sw.bb30, %sw.bb23, %sw.bb16, %if.then12
  %call.i.i118.sink = phi i32 [ %call.i.i118, %if.then12 ], [ %call.i.i147, %sw.bb66 ], [ %call51, %sw.bb30 ], [ %call.i.i128, %sw.bb23 ], [ %call.i.i123, %sw.bb16 ], [ %call.i19.i, %if.end.i ], [ %call.i.i130, %sw.bb53.sw.epilog.sink.split_crit_edge ], [ %call.i19.i142, %if.end.i143 ], [ %call.i.i135, %sw.bb59.sw.epilog.sink.split_crit_edge ]
  %205 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %call.i.i118.sink, ptr %usb_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %206 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %207, %sw.epilog ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setcolourparams(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %colourParams = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %colourParams to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %colourParams, align 2
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %contrast to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %contrast, align 1
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4, i32 2
  %4 = ptrtoint ptr %saturation to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %saturation, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %cmd.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -93, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %1, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %3, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %12, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setflickerctrl(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flickerMode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %0 = ptrtoint ptr %flickerMode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flickerMode, align 1
  %coarseJump = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %2 = ptrtoint ptr %coarseJump to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %coarseJump, align 1
  %allowableOverExposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 3
  %4 = ptrtoint ptr %allowableOverExposure to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %allowableOverExposure, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %cmd.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -86, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %1, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %3, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %12, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_flicker(ptr noundef %gspca_dev, i32 noundef %on, i32 noundef %apply) unnamed_addr #2 align 64 {
entry:
  %cmd.i.i422 = alloca [8 x i8], align 1
  %cmd.i.i417 = alloca [8 x i8], align 1
  %cmd.i.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %coarseExpLo = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %0 = ptrtoint ptr %coarseExpLo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %coarseExpLo, align 1
  %conv = zext i8 %1 to i32
  %coarseExpHi = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %2 = ptrtoint ptr %coarseExpHi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %coarseExpHi, align 1
  %conv3 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv3, 8
  %add = or i32 %mul, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %flickerControl143 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  br i1 %tobool.not, label %if.else141, label %if.then

if.then:                                          ; preds = %entry
  %coarseJump = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %4 = ptrtoint ptr %coarseJump to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %coarseJump, align 1
  %conv5 = zext i8 %5 to i32
  %flickerMode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %6 = ptrtoint ptr %flickerMode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %flickerMode, align 1
  %7 = ptrtoint ptr %flickerControl143 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flickerControl143, align 1
  %expMode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 1
  %8 = ptrtoint ptr %expMode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %expMode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.not = icmp eq i8 %9, 2
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then14

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %expMode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %expMode, align 1
  %exposure_status = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %11 = ptrtoint ptr %exposure_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %exposure_status, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then.if.end_crit_edge
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %12 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gain, align 1
  %conv20 = zext i8 %13 to i32
  %shl = shl i32 %add, %conv20
  store i8 0, ptr %gain, align 1
  %add24 = add i32 %shl, 15
  %div = sdiv i32 %add24, %conv5
  %14 = tail call i32 @llvm.smax.i32(i32 %div, i32 1)
  %mul29 = mul i32 %14, %conv5
  %sub = add i32 %mul29, -1
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp32 = icmp eq i8 %16, 1
  br i1 %cmp32, label %land.lhs.true, label %if.end.while.cond43.preheader_crit_edge

if.end.while.cond43.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43.preheader

while.cond43.preheader:                           ; preds = %land.lhs.true.while.cond43.preheader_crit_edge, %if.end.while.cond43.preheader_crit_edge
  br label %while.cond43

land.lhs.true:                                    ; preds = %if.end
  %firmwareRevision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %firmwareRevision to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %firmwareRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp37 = icmp eq i8 %18, 2
  br i1 %cmp37, label %land.lhs.true.while.cond_crit_edge, label %land.lhs.true.while.cond43.preheader_crit_edge

land.lhs.true.while.cond43.preheader_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43.preheader

land.lhs.true.while.cond_crit_edge:               ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %land.lhs.true.while.cond_crit_edge
  %startexp.0 = phi i32 [ %sub42, %while.cond.while.cond_crit_edge ], [ %sub, %land.lhs.true.while.cond_crit_edge ]
  %cmp40 = icmp sgt i32 %startexp.0, 255
  %sub42 = sub i32 %startexp.0, %conv5
  br i1 %cmp40, label %while.cond.while.cond_crit_edge, label %while.cond.if.end49_crit_edge

while.cond.if.end49_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.cond43:                                     ; preds = %while.cond43.while.cond43_crit_edge, %while.cond43.preheader
  %startexp.1 = phi i32 [ %sub47, %while.cond43.while.cond43_crit_edge ], [ %sub, %while.cond43.preheader ]
  %cmp44 = icmp sgt i32 %startexp.1, 302
  %sub47 = sub i32 %startexp.1, %conv5
  br i1 %cmp44, label %while.cond43.while.cond43_crit_edge, label %while.cond43.if.end49_crit_edge

while.cond43.if.end49_crit_edge:                  ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

while.cond43.while.cond43_crit_edge:              ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43

if.end49:                                         ; preds = %while.cond43.if.end49_crit_edge, %while.cond.if.end49_crit_edge
  %startexp.2 = phi i32 [ %startexp.0, %while.cond.if.end49_crit_edge ], [ %startexp.1, %while.cond43.if.end49_crit_edge ]
  %conv50 = trunc i32 %startexp.2 to i8
  %19 = ptrtoint ptr %coarseExpLo to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv50, ptr %coarseExpLo, align 1
  %20 = lshr i32 %startexp.2, 8
  %conv54 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %coarseExpHi to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv54, ptr %coarseExpHi, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %startexp.2)
  %cmp58 = icmp sgt i32 %shl, %startexp.2
  br i1 %cmp58, label %if.then60, label %if.end49.if.end112_crit_edge

if.end49.if.end112_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %mul61 = shl i32 %startexp.2, 1
  %22 = tail call i32 @llvm.smin.i32(i32 %shl, i32 %mul61)
  %mul67 = mul i32 %22, 184
  %add68 = add i32 %mul67, %startexp.2
  %div70 = udiv i32 %add68, %mul61
  %23 = trunc i32 %div70 to i8
  %conv72 = xor i8 %23, -128
  %mul75 = mul i32 %22, 172
  %add76 = add i32 %mul75, %startexp.2
  %div78 = udiv i32 %add76, %mul61
  %24 = trunc i32 %div78 to i8
  %conv80 = xor i8 %24, -128
  %mul91 = mul i32 %22, 204
  %add92 = add i32 %mul91, %startexp.2
  %div94 = udiv i32 %add92, %mul61
  %25 = trunc i32 %div94 to i8
  %conv96 = xor i8 %25, -128
  br label %if.end112

if.end112:                                        ; preds = %if.then60, %if.end49.if.end112_crit_edge
  %.sink431 = phi i8 [ %conv72, %if.then60 ], [ -36, %if.end49.if.end112_crit_edge ]
  %.sink430 = phi i8 [ %conv80, %if.then60 ], [ -42, %if.end49.if.end112_crit_edge ]
  %.sink = phi i8 [ %conv96, %if.then60 ], [ -26, %if.end49.if.end112_crit_edge ]
  %26 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink431, ptr %26, align 1
  %28 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink430, ptr %28, align 1
  %30 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink430, ptr %30, align 1
  %32 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %32, align 1
  br i1 %cmp32, label %land.lhs.true119, label %if.end112.if.else129_crit_edge

if.end112.if.else129_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else129

land.lhs.true119:                                 ; preds = %if.end112
  %firmwareRevision122 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %firmwareRevision122 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %firmwareRevision122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp124 = icmp eq i8 %35, 2
  br i1 %cmp124, label %land.lhs.true119.if.end274_crit_edge, label %land.lhs.true119.if.else129_crit_edge

land.lhs.true119.if.else129_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else129

land.lhs.true119.if.end274_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274

if.else129:                                       ; preds = %land.lhs.true119.if.else129_crit_edge, %if.end112.if.else129_crit_edge
  br label %if.end274

if.else141:                                       ; preds = %entry
  %flickerMode144 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %36 = ptrtoint ptr %flickerMode144 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %flickerMode144, align 1
  %37 = ptrtoint ptr %flickerControl143 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %flickerControl143, align 1
  %redComp150 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %38 = ptrtoint ptr %redComp150 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %redComp150, align 1
  %add152 = xor i8 %39, -128
  %conv154 = zext i8 %add152 to i32
  %mul155 = mul nuw nsw i32 %add, %conv154
  %div156 = udiv i32 %mul155, 92
  %conv158 = and i32 %div156, 65535
  %green1Comp161 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %40 = ptrtoint ptr %green1Comp161 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %green1Comp161, align 1
  %add163 = xor i8 %41, -128
  %conv165 = zext i8 %add163 to i32
  %mul166 = mul nuw nsw i32 %add, %conv165
  %div167 = udiv i32 %mul166, 86
  %conv169 = and i32 %div167, 65535
  %add170 = add nuw nsw i32 %conv169, %conv158
  %green2Comp173 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %42 = ptrtoint ptr %green2Comp173 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %green2Comp173, align 1
  %add175 = xor i8 %43, -128
  %conv177 = zext i8 %add175 to i32
  %mul178 = mul nuw nsw i32 %add, %conv177
  %div179 = udiv i32 %mul178, 86
  %conv181 = and i32 %div179, 65535
  %add182 = add nuw nsw i32 %add170, %conv181
  %blueComp185 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %44 = ptrtoint ptr %blueComp185 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %blueComp185, align 1
  %add187 = xor i8 %45, -128
  %conv189 = zext i8 %add187 to i32
  %mul190 = mul nuw nsw i32 %add, %conv189
  %div191 = udiv i32 %mul190, 102
  %conv193 = and i32 %div191, 65535
  %add194 = add nuw nsw i32 %add182, %conv193
  %46 = lshr i32 %add194, 2
  %gain201 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1211, i32 %add194)
  %cmp197425 = icmp ugt i32 %add194, 1211
  br i1 %cmp197425, label %land.rhs.lr.ph, label %if.else141.while.end214_crit_edge

if.else141.while.end214_crit_edge:                ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end214

land.rhs.lr.ph:                                   ; preds = %if.else141
  %47 = ptrtoint ptr %exposure to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %exposure, align 1
  %conv205 = zext i8 %48 to i32
  %sub206 = add nsw i32 %conv205, -1
  %49 = ptrtoint ptr %gain201 to i32
  call void @__asan_load1_noabort(i32 %49)
  %gain201.promoted = load i8, ptr %gain201, align 1
  br label %land.rhs

land.rhs:                                         ; preds = %while.body209.land.rhs_crit_edge, %land.rhs.lr.ph
  %50 = phi i8 [ %gain201.promoted, %land.rhs.lr.ph ], [ %inc, %while.body209.land.rhs_crit_edge ]
  %startexp.3426 = phi i32 [ %46, %land.rhs.lr.ph ], [ %51, %while.body209.land.rhs_crit_edge ]
  %conv202 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub206, i32 %conv202)
  %cmp207 = icmp sgt i32 %sub206, %conv202
  br i1 %cmp207, label %while.body209, label %land.rhs.while.end214_crit_edge

land.rhs.while.end214_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end214

while.body209:                                    ; preds = %land.rhs
  %51 = lshr i32 %startexp.3426, 1
  %inc = add i8 %50, 1
  %52 = ptrtoint ptr %gain201 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %inc, ptr %gain201, align 1
  %cmp197 = icmp ugt i32 %startexp.3426, 605
  br i1 %cmp197, label %while.body209.land.rhs_crit_edge, label %while.body209.while.end214_crit_edge

while.body209.while.end214_crit_edge:             ; preds = %while.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end214

while.body209.land.rhs_crit_edge:                 ; preds = %while.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end214:                                     ; preds = %while.body209.while.end214_crit_edge, %land.rhs.while.end214_crit_edge, %if.else141.while.end214_crit_edge
  %startexp.3.lcssa = phi i32 [ %46, %if.else141.while.end214_crit_edge ], [ %51, %while.body209.while.end214_crit_edge ], [ %startexp.3426, %land.rhs.while.end214_crit_edge ]
  %53 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp219 = icmp eq i8 %54, 1
  br i1 %cmp219, label %land.lhs.true221, label %while.end214.if.end232_crit_edge

while.end214.if.end232_crit_edge:                 ; preds = %while.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

land.lhs.true221:                                 ; preds = %while.end214
  call void @__sanitizer_cov_trace_pc() #9
  %firmwareRevision224 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %firmwareRevision224 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %firmwareRevision224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp226 = icmp eq i8 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %startexp.3.lcssa)
  %cmp229 = icmp ugt i32 %startexp.3.lcssa, 255
  %or.cond = select i1 %cmp226, i1 %cmp229, i1 false
  %spec.select416 = select i1 %or.cond, i32 255, i32 %startexp.3.lcssa
  br label %if.end232

if.end232:                                        ; preds = %land.lhs.true221, %while.end214.if.end232_crit_edge
  %startexp.4 = phi i32 [ %startexp.3.lcssa, %while.end214.if.end232_crit_edge ], [ %spec.select416, %land.lhs.true221 ]
  %57 = tail call i32 @llvm.smin.i32(i32 %startexp.4, i32 302)
  %conv238 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %coarseExpLo to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv238, ptr %coarseExpLo, align 1
  %59 = lshr i32 %57, 8
  %conv243 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %coarseExpHi to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv243, ptr %coarseExpHi, align 1
  %61 = ptrtoint ptr %redComp150 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -36, ptr %redComp150, align 1
  %62 = ptrtoint ptr %green1Comp161 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -42, ptr %green1Comp161, align 1
  %63 = ptrtoint ptr %green2Comp173 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -42, ptr %green2Comp173, align 1
  %64 = ptrtoint ptr %blueComp185 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -26, ptr %blueComp185, align 1
  br label %if.end274

if.end274:                                        ; preds = %if.end232, %if.else129, %land.lhs.true119.if.end274_crit_edge
  %.sink437 = phi i8 [ 1, %if.end232 ], [ 1, %if.else129 ], [ 0, %land.lhs.true119.if.end274_crit_edge ]
  %.sink436 = phi i8 [ 22, %if.end232 ], [ 24, %if.else129 ], [ 24, %land.lhs.true119.if.end274_crit_edge ]
  %.sink435 = phi i8 [ 36, %if.end232 ], [ 22, %if.else129 ], [ 22, %land.lhs.true119.if.end274_crit_edge ]
  %.sink434 = phi i8 [ 52, %if.end232 ], [ 20, %if.else129 ], [ 20, %land.lhs.true119.if.end274_crit_edge ]
  %compMode261 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 2
  %65 = ptrtoint ptr %compMode261 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink437, ptr %compMode261, align 1
  %apcor263 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %66 = ptrtoint ptr %apcor263 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 24, ptr %apcor263, align 1
  %gain2267 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 1
  %67 = ptrtoint ptr %gain2267 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink436, ptr %gain2267, align 1
  %gain4270 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 2
  %68 = ptrtoint ptr %gain4270 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink435, ptr %gain4270, align 1
  %gain8273 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 3
  %69 = ptrtoint ptr %gain8273 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink434, ptr %gain8273, align 1
  %vlOffset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %70 = ptrtoint ptr %vlOffset to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 20, ptr %vlOffset, align 1
  %gain2279 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 1
  %71 = ptrtoint ptr %gain2279 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 24, ptr %gain2279, align 1
  %gain4282 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 2
  %72 = ptrtoint ptr %gain4282 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 26, ptr %gain4282, align 1
  %gain8285 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 3
  %73 = ptrtoint ptr %gain8285 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 26, ptr %gain8285, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apply)
  %tobool286.not = icmp eq i32 %apply, 0
  br i1 %tobool286.not, label %if.end274.if.end303_crit_edge, label %if.then287

if.end274.if.end303_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303

if.then287:                                       ; preds = %if.end274
  %call = tail call fastcc i32 @command_setexposure(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool288.not = icmp eq i32 %call, 0
  br i1 %tobool288.not, label %if.end290, label %if.then287.cleanup_crit_edge

if.then287.cleanup_crit_edge:                     ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end290:                                        ; preds = %if.then287
  %apcor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %74 = ptrtoint ptr %apcor.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %apcor.i, align 1
  %gain2.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 1
  %76 = ptrtoint ptr %gain2.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gain2.i, align 1
  %gain4.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 2
  %78 = ptrtoint ptr %gain4.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %gain4.i, align 1
  %gain8.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 3
  %80 = ptrtoint ptr %gain8.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %gain8.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #7
  %82 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 1
  %83 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 2
  %84 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 3
  %85 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 4
  %86 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 5
  %87 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 6
  %88 = getelementptr inbounds [8 x i8], ptr %cmd.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 64, ptr %cmd.i.i, align 1
  %90 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -87, ptr %82, align 1
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %75, ptr %83, align 1
  %92 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %77, ptr %84, align 1
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %79, ptr %85, align 1
  %94 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %81, ptr %86, align 1
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %87, align 1
  %96 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %88, align 1
  %call.i.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool292.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool292.not, label %if.end294, label %if.end290.cleanup_crit_edge

if.end290.cleanup_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end294:                                        ; preds = %if.end290
  %97 = ptrtoint ptr %vlOffset to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vlOffset, align 1
  %99 = ptrtoint ptr %gain2279 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %gain2279, align 1
  %101 = ptrtoint ptr %gain4282 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %gain4282, align 1
  %103 = ptrtoint ptr %gain8285 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %gain8285, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i417) #7
  %105 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 1
  %106 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 2
  %107 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 3
  %108 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 4
  %109 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 5
  %110 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 6
  %111 = getelementptr inbounds [8 x i8], ptr %cmd.i.i417, i32 0, i32 7
  %112 = ptrtoint ptr %cmd.i.i417 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 64, ptr %cmd.i.i417, align 1
  %113 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -85, ptr %105, align 1
  %114 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %98, ptr %106, align 1
  %115 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %100, ptr %107, align 1
  %116 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %102, ptr %108, align 1
  %117 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %104, ptr %109, align 1
  %118 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %110, align 1
  %119 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %111, align 1
  %call.i.i421 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i417) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i417) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i421)
  %tobool296.not = icmp eq i32 %call.i.i421, 0
  br i1 %tobool296.not, label %if.end298, label %if.end294.cleanup_crit_edge

if.end294.cleanup_crit_edge:                      ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end298:                                        ; preds = %if.end294
  %flickerMode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 1
  %120 = ptrtoint ptr %flickerMode.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %flickerMode.i, align 1
  %coarseJump.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 2
  %122 = ptrtoint ptr %coarseJump.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %coarseJump.i, align 1
  %allowableOverExposure.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9, i32 3
  %124 = ptrtoint ptr %allowableOverExposure.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %allowableOverExposure.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i422) #7
  %126 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 1
  %127 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 2
  %128 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 3
  %129 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 4
  %130 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 5
  %131 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 6
  %132 = getelementptr inbounds [8 x i8], ptr %cmd.i.i422, i32 0, i32 7
  %133 = ptrtoint ptr %cmd.i.i422 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 64, ptr %cmd.i.i422, align 1
  %134 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -86, ptr %126, align 1
  %135 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %121, ptr %127, align 1
  %136 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %123, ptr %128, align 1
  %137 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %125, ptr %129, align 1
  %138 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %130, align 1
  %139 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %131, align 1
  %140 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %132, align 1
  %call.i.i423 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i.i422) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i422) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i423)
  %tobool300.not = icmp eq i32 %call.i.i423, 0
  br i1 %tobool300.not, label %if.end298.if.end303_crit_edge, label %if.end298.cleanup_crit_edge

if.end298.cleanup_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end298.if.end303_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303

if.end303:                                        ; preds = %if.end298.if.end303_crit_edge, %if.end274.if.end303_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end303, %if.end298.cleanup_crit_edge, %if.end294.cleanup_crit_edge, %if.end290.cleanup_crit_edge, %if.then287.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end303 ], [ %call, %if.then287.cleanup_crit_edge ], [ %call.i.i, %if.end290.cleanup_crit_edge ], [ %call.i.i421, %if.end294.cleanup_crit_edge ], [ %call.i.i423, %if.end298.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setcompressiontarget(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %compressionTarget = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %compressionTarget to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %compressionTarget, align 1
  %targetFR = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 12, i32 1
  %2 = ptrtoint ptr %targetFR to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %targetFR, align 1
  %targetQ = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 12, i32 2
  %4 = ptrtoint ptr %targetQ to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %targetQ, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %cmd.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -53, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %1, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %3, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %12, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setexposure(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i63 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %exposure to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exposure, align 1
  %compMode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 2
  %2 = ptrtoint ptr %compMode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %compMode, align 1
  %centreWeight = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 3
  %4 = ptrtoint ptr %centreWeight to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %centreWeight, align 1
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 4
  %6 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gain, align 1
  %fineExp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 5
  %8 = ptrtoint ptr %fineExp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fineExp, align 1
  %coarseExpLo = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 6
  %10 = ptrtoint ptr %coarseExpLo to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %coarseExpLo, align 1
  %coarseExpHi = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 7
  %12 = ptrtoint ptr %coarseExpHi to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %coarseExpHi, align 1
  %redComp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 8
  %14 = ptrtoint ptr %redComp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %redComp, align 1
  %green1Comp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 9
  %16 = ptrtoint ptr %green1Comp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %green1Comp, align 1
  %green2Comp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 10
  %18 = ptrtoint ptr %green2Comp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %green2Comp, align 1
  %blueComp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 11
  %20 = ptrtoint ptr %blueComp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %blueComp, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %22 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %23 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %24 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %26 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %27 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %28 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 64, ptr %cmd.i, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -92, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %1, ptr %23, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %24, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %3, ptr %25, align 1
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %5, ptr %26, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 8, ptr %27, align 1
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %28, align 1
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %37 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %7, ptr %38, align 1
  %40 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %9, ptr %arrayidx13.i, align 1
  %42 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx15.i = getelementptr i8, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %11, ptr %arrayidx15.i, align 1
  %44 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %44, i32 3
  %45 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %13, ptr %arrayidx17.i, align 1
  %46 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx19.i = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %15, ptr %arrayidx19.i, align 1
  %48 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %48, i32 5
  %49 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %17, ptr %arrayidx21.i, align 1
  %50 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %50, i32 6
  %51 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %19, ptr %arrayidx23.i, align 1
  %52 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %52, i32 7
  %53 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %21, ptr %arrayidx25.i, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %expMode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5, i32 1
  %54 = ptrtoint ptr %expMode to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %expMode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp.not = icmp eq i8 %55, 1
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %gain, align 1
  %58 = ptrtoint ptr %fineExp to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fineExp, align 1
  %60 = ptrtoint ptr %coarseExpLo to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %coarseExpLo, align 1
  %62 = ptrtoint ptr %coarseExpHi to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %coarseExpHi, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i63) #7
  %64 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 1
  %65 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 2
  %66 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 3
  %67 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 4
  %68 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 5
  %69 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 6
  %70 = getelementptr inbounds [8 x i8], ptr %cmd.i63, i32 0, i32 7
  %71 = ptrtoint ptr %cmd.i63 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 64, ptr %cmd.i63, align 1
  %72 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -92, ptr %64, align 1
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %65, align 1
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %55, ptr %66, align 1
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %67, align 1
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %68, align 1
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 8, ptr %69, align 1
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %70, align 1
  %79 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb_buf.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %57, ptr %80, align 1
  %82 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx13.i65 = getelementptr i8, ptr %82, i32 1
  %83 = ptrtoint ptr %arrayidx13.i65 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %59, ptr %arrayidx13.i65, align 1
  %84 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx15.i66 = getelementptr i8, ptr %84, i32 2
  %85 = ptrtoint ptr %arrayidx15.i66 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %61, ptr %arrayidx15.i66, align 1
  %86 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx17.i67 = getelementptr i8, ptr %86, i32 3
  %87 = ptrtoint ptr %arrayidx17.i67 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %63, ptr %arrayidx17.i67, align 1
  %88 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx19.i68 = getelementptr i8, ptr %88, i32 4
  %89 = ptrtoint ptr %arrayidx19.i68 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx19.i68, align 1
  %90 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx21.i69 = getelementptr i8, ptr %90, i32 5
  %91 = ptrtoint ptr %arrayidx21.i69 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx21.i69, align 1
  %92 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx23.i70 = getelementptr i8, ptr %92, i32 6
  %93 = ptrtoint ptr %arrayidx23.i70 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx23.i70, align 1
  %94 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx25.i71 = getelementptr i8, ptr %94, i32 7
  %95 = ptrtoint ptr %arrayidx25.i71 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx25.i71, align 1
  %call.i72 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i63) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i63) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i72, %if.then24 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setapcor(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %apcor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %apcor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %apcor, align 1
  %gain2 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 1
  %2 = ptrtoint ptr %gain2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gain2, align 1
  %gain4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 2
  %4 = ptrtoint ptr %gain4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gain4, align 1
  %gain8 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8, i32 3
  %6 = ptrtoint ptr %gain8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gain8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %13 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %14 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %cmd.i, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -87, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %1, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %3, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %5, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %7, ptr %12, align 1
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %13, align 1
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %14, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setvloffset(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vlOffset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %vlOffset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vlOffset, align 1
  %gain2 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 1
  %2 = ptrtoint ptr %gain2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gain2, align 1
  %gain4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 2
  %4 = ptrtoint ptr %gain4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gain4, align 1
  %gain8 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10, i32 3
  %6 = ptrtoint ptr %gain8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gain8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %13 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %14 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %cmd.i, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -85, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %1, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %3, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %5, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %7, ptr %12, align 1
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %13, align 1
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %14, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goto_high_power(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i49 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %0 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %cmd.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %0, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 6)
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @msleep_interruptible(i32 noundef 40) #7
  %5 = tail call i32 @llvm.read_register.i32(metadata !126) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i46 = icmp eq i32 %13, 0
  br i1 %tobool.not.i46, label %signal_pending.exit, label %if.end.cleanup_crit_edge, !prof !137

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool4.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %signal_pending.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i49) #7
  %16 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 1
  %17 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 2
  %18 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 6
  %19 = getelementptr inbounds [8 x i8], ptr %cmd.i49, i32 0, i32 7
  %20 = ptrtoint ptr %cmd.i49 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -64, ptr %cmd.i49, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %16, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %17, align 1
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %18, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %19, align 1
  %call.i50 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end10, label %do_command.exit54

do_command.exit54:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i49) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %usb_buf61.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf61.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf61.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %status.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %status.i, align 2
  %arrayidx65.i = getelementptr i8, ptr %26, i32 1
  %30 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx65.i, align 1
  %grabState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 1
  %32 = ptrtoint ptr %grabState.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %grabState.i, align 1
  %arrayidx69.i = getelementptr i8, ptr %26, i32 2
  %33 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx69.i, align 1
  %streamState.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 2
  %35 = ptrtoint ptr %streamState.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %streamState.i, align 2
  %arrayidx73.i = getelementptr i8, ptr %26, i32 3
  %36 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx73.i, align 1
  %fatalError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 3
  %38 = ptrtoint ptr %fatalError.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %fatalError.i, align 1
  %arrayidx77.i = getelementptr i8, ptr %26, i32 4
  %39 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx77.i, align 1
  %cmdError.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 4
  %41 = ptrtoint ptr %cmdError.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %cmdError.i, align 2
  %arrayidx81.i = getelementptr i8, ptr %26, i32 5
  %42 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx81.i, align 1
  %debugFlags.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 5
  %44 = ptrtoint ptr %debugFlags.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %debugFlags.i, align 1
  %arrayidx85.i = getelementptr i8, ptr %26, i32 6
  %45 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx85.i, align 1
  %vpStatus.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 6
  %47 = ptrtoint ptr %vpStatus.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %vpStatus.i, align 2
  %arrayidx89.i = getelementptr i8, ptr %26, i32 7
  %48 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx89.i, align 1
  %errorCode.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3, i32 7
  %50 = ptrtoint ptr %errorCode.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %errorCode.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i49) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.not = icmp eq i8 %28, 3
  br i1 %cmp.not, label %do.body20, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %28 to i32
  %params = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %conv) #10
  tail call fastcc void @printstatus(ptr noundef %gspca_dev, ptr noundef %params)
  br label %cleanup

do.body20:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp21 = icmp sgt i32 %51, 1
  br i1 %cmp21, label %do.end26, label %do.body20.cleanup_crit_edge

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %name29 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name29) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.body20.cleanup_crit_edge, %do.end, %do_command.exit54, %signal_pending.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ %call.i50, %do_command.exit54 ], [ 0, %do.end26 ], [ 0, %do.body20.cleanup_crit_edge ], [ -4, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setformat(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i23 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %format, align 2
  %subSample = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15, i32 1
  %2 = ptrtoint ptr %subSample to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %subSample, align 1
  %yuvOrder = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 15, i32 2
  %4 = ptrtoint ptr %yuvOrder to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %yuvOrder, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %cmd.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -56, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %1, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %3, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %12, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %roi = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17
  %21 = ptrtoint ptr %roi to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %roi, align 2
  %colEnd = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 1
  %23 = ptrtoint ptr %colEnd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %colEnd, align 1
  %rowStart = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 2
  %25 = ptrtoint ptr %rowStart to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rowStart, align 2
  %rowEnd = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 17, i32 3
  %27 = ptrtoint ptr %rowEnd to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rowEnd, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i23) #7
  %29 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 1
  %30 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 2
  %31 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 3
  %32 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 4
  %33 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 5
  %34 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 6
  %35 = getelementptr inbounds [8 x i8], ptr %cmd.i23, i32 0, i32 7
  %36 = ptrtoint ptr %cmd.i23 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 64, ptr %cmd.i23, align 1
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -55, ptr %29, align 1
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %22, ptr %30, align 1
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %24, ptr %31, align 1
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %26, ptr %32, align 1
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %28, ptr %33, align 1
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %34, align 1
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %35, align 1
  %call.i24 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i23) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i24, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setyuvtresh(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %yuvThreshold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %yuvThreshold to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %yuvThreshold, align 4
  %uvThreshold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 13, i32 1
  %2 = ptrtoint ptr %uvThreshold to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uvThreshold, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %4 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %cmd.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -52, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %5, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %3, ptr %6, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %7, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setcompressionparams(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %compressionParams = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14
  %0 = ptrtoint ptr %compressionParams to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %compressionParams, align 2
  %threshMax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 1
  %2 = ptrtoint ptr %threshMax to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %threshMax, align 1
  %smallStep = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 2
  %4 = ptrtoint ptr %smallStep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smallStep, align 2
  %largeStep = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 3
  %6 = ptrtoint ptr %largeStep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %largeStep, align 1
  %decimationHysteresis = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 4
  %8 = ptrtoint ptr %decimationHysteresis to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %decimationHysteresis, align 2
  %frDiffStepThresh = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 5
  %10 = ptrtoint ptr %frDiffStepThresh to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frDiffStepThresh, align 1
  %qDiffStepThresh = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 6
  %12 = ptrtoint ptr %qDiffStepThresh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %qDiffStepThresh, align 2
  %decimationThreshMod = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 14, i32 7
  %14 = ptrtoint ptr %decimationThreshMod to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %decimationThreshMod, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %16 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %17 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %18 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %19 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %cmd.i, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -51, ptr %16, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %17, align 1
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %18, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %19, align 1
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %1, ptr %26, align 1
  %28 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %3, ptr %arrayidx13.i, align 1
  %30 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx15.i = getelementptr i8, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %5, ptr %arrayidx15.i, align 1
  %32 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %7, ptr %arrayidx17.i, align 1
  %34 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx19.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %9, ptr %arrayidx19.i, align 1
  %36 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %36, i32 5
  %37 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %11, ptr %arrayidx21.i, align 1
  %38 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %38, i32 6
  %39 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %13, ptr %arrayidx23.i, align 1
  %40 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %15, ptr %arrayidx25.i, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setcolourbalance(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i52 = alloca [8 x i8], align 1
  %cmd.i46 = alloca [8 x i8], align 1
  %cmd.i40 = alloca [8 x i8], align 1
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %colourBalance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %colourBalance to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %colourBalance, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %1, label %entry.cleanup29_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then17
    i8 3, label %if.then26
  ]

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.then:                                          ; preds = %entry
  %redGain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 1
  %3 = ptrtoint ptr %redGain to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %redGain, align 1
  %greenGain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 2
  %5 = ptrtoint ptr %greenGain to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %greenGain, align 1
  %blueGain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6, i32 3
  %7 = ptrtoint ptr %blueGain to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blueGain, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %13 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %14 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %15 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %cmd.i, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -90, ptr %9, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %10, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %4, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %6, ptr %12, align 1
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %8, ptr %13, align 1
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %14, align 1
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %15, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  br i1 %tobool.not.i, label %if.end, label %if.then.cleanup29_crit_edge

if.then.cleanup29_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i40) #7
  %24 = getelementptr inbounds [8 x i8], ptr %cmd.i40, i32 0, i32 1
  %25 = getelementptr inbounds [8 x i8], ptr %cmd.i40, i32 0, i32 2
  %26 = getelementptr inbounds [8 x i8], ptr %cmd.i40, i32 0, i32 3
  %27 = ptrtoint ptr %cmd.i40 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 64, ptr %cmd.i40, align 1
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -90, ptr %24, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %25, align 1
  %30 = call ptr @memset(ptr %26, i32 0, i32 5)
  %call.i41 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i40) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i40) #7
  br label %cleanup29

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i46) #7
  %31 = getelementptr inbounds [8 x i8], ptr %cmd.i46, i32 0, i32 1
  %32 = getelementptr inbounds [8 x i8], ptr %cmd.i46, i32 0, i32 2
  %33 = getelementptr inbounds [8 x i8], ptr %cmd.i46, i32 0, i32 3
  %34 = ptrtoint ptr %cmd.i46 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %cmd.i46, align 1
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -90, ptr %31, align 1
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %32, align 1
  %37 = call ptr @memset(ptr %33, i32 0, i32 5)
  %call.i47 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i46) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i46) #7
  br label %cleanup29

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i52) #7
  %38 = getelementptr inbounds [8 x i8], ptr %cmd.i52, i32 0, i32 1
  %39 = getelementptr inbounds [8 x i8], ptr %cmd.i52, i32 0, i32 2
  %40 = getelementptr inbounds [8 x i8], ptr %cmd.i52, i32 0, i32 3
  %41 = ptrtoint ptr %cmd.i52 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 64, ptr %cmd.i52, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -90, ptr %38, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %39, align 1
  %44 = call ptr @memset(ptr %40, i32 0, i32 5)
  %call.i53 = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i52) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i52) #7
  br label %cleanup29

cleanup29:                                        ; preds = %if.then26, %if.then17, %if.end, %if.then.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.1 = phi i32 [ %call.i47, %if.then17 ], [ %call.i53, %if.then26 ], [ %call.i41, %if.end ], [ -22, %entry.cleanup29_crit_edge ], [ %call.i, %if.then.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @command_setsensorfps(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensorFps = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %sensorFps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensorFps, align 1
  %baserate = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7, i32 1
  %2 = ptrtoint ptr %baserate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %baserate, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %4 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %cmd.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -89, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %5, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %3, ptr %6, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %7, align 1
  %call.i = call fastcc i32 @cpia_usb_transferCmd(ptr noundef %gspca_dev, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124}
!llvm.named.register.sp = !{!126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_cpia1__307_1897_sd_driver_init6, !8, !"__initcall__kmod_gspca_cpia1__307_1897_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1897, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1886, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1885, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1855, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1432, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sd_config._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sd_config._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1444, i32 3}
!25 = !{ptr @sd_config._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_config._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @flicker_jumps, !28, !"flicker_jumps", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 227, i32 11}
!29 = !{ptr @mode, !30, !"mode", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 365, i32 37}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 721, i32 4}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @goto_low_power._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @goto_low_power._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 728, i32 2}
!38 = !{ptr @goto_low_power._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @goto_low_power._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 413, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cpia_usb_transferCmd._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cpia_usb_transferCmd._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 427, i32 3}
!47 = !{ptr @cpia_usb_transferCmd._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cpia_usb_transferCmd._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 699, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @printstatus._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @printstatus._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1667, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sd_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sd_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1672, i32 2}
!61 = !{ptr @sd_init._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sd_init._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1675, i32 2}
!65 = !{ptr @sd_init._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sd_init._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1811, i32 3}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1812, i32 3}
!71 = !{ptr @sd_init_controls.comp_target_menu, !72, !"comp_target_menu", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1810, i32 28}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1819, i32 11}
!75 = !{ptr @sd_init_controls.comp_target, !76, !"comp_target", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1815, i32 39}
!77 = !{ptr @sd_init_controls._key, !78, !"_key", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1826, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1848, i32 3}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sd_init_controls._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sd_init_controls._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @sd_ctrl_ops, !86, !"sd_ctrl_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1802, i32 35}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1470, i32 4}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sd_start._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sd_start._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1518, i32 3}
!94 = !{ptr @sd_start._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sd_start._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 751, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @goto_high_power._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @goto_high_power._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 757, i32 2}
!103 = !{ptr @goto_high_power._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @goto_high_power._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1155, i32 3}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @monitor_exposure._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @monitor_exposure._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1300, i32 4}
!112 = !{ptr @monitor_exposure._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @monitor_exposure._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1329, i32 4}
!116 = !{ptr @monitor_exposure._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @monitor_exposure._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @monitor_exposure._entry.52, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1347, i32 4}
!120 = !{ptr @monitor_exposure._entry_ptr.53, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @monitor_exposure._entry.54, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1364, i32 4}
!123 = !{ptr @monitor_exposure._entry_ptr.55, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @device_table, !125, !"device_table", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/cpia1.c", i32 1870, i32 35}
!126 = !{!"sp"}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i8 0, i8 2}
!137 = !{!"branch_weights", i32 2000, i32 1}
