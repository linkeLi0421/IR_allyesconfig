; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cpia2/cpia2_core.c_pt.bc'
source_filename = "../drivers/media/usb/cpia2/cpia2_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpia2_command = type { i32, i8, i8, i8, i8, %union.reg_types }
%union.reg_types = type { ptr, [60 x i8] }
%struct.camera_data = type { %struct.v4l2_device, %struct.mutex, %struct.v4l2_ctrl_handler, %struct.anon.92, ptr, i32, i32, i8, ptr, i8, i32, i32, %struct.camera_params, i32, %struct.video_device, i32, i32, i32, ptr, i8, i32, i32, [2 x %struct.cpia2_sbuf], %struct.wait_queue_head, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, [60 x i8], i32, [60 x i8] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.92 = type { ptr, ptr }
%struct.camera_params = type { %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102 }
%struct.anon.93 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.94 = type { i32, i16, i16, i16 }
%struct.anon.95 = type { i8, i8, i8 }
%struct.anon.96 = type { i8, i8 }
%struct.anon.97 = type { i8, i8, i8, i8 }
%struct.anon.98 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.99 = type { i32, i32 }
%struct.anon.100 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.101 = type { i8, i8, i8, i8, i8, i8 }
%struct.anon.102 = type { i8, i8, i8, i8 }
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
%struct.cpia2_sbuf = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpia2_register = type { i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.framebuf = type { i64, i32, i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.poll_table_struct = type { ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__UNIQUE_ID_firmware297 = internal constant [37 x i8] c"cpia2.firmware=cpia2/stv0672_vp4.bin\00", section ".modinfo", align 1
@cpia2_do_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cpia2: DoCommand received invalid command\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpia2_do_command\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/cpia2/cpia2_core.c\00", [59 x i8] zeroinitializer }, align 32
@cpia2_do_command._entry_ptr = internal global ptr @cpia2_do_command._entry, section ".printk_index", align 4
@cpia2_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cpia2: %s: invalid request mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpia2_send_command\00", [45 x i8] zeroinitializer }, align 32
@cpia2_send_command._entry_ptr = internal global ptr @cpia2_send_command._entry, section ".printk_index", align 4
@cpia2_reset_camera._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cpia2: Couldn't configure sensor, error=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpia2_reset_camera\00", [45 x i8] zeroinitializer }, align 32
@cpia2_reset_camera._entry_ptr = internal global ptr @cpia2_reset_camera._entry, section ".printk_index", align 4
@cpia2_init_camera_struct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 2191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cpia2: couldn't kmalloc cpia2 struct\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpia2_init_camera_struct\00", [39 x i8] zeroinitializer }, align 32
@cpia2_init_camera_struct._entry_ptr = internal global ptr @cpia2_init_camera_struct._entry, section ".printk_index", align 4
@cpia2_init_camera_struct._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 2197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: couldn't register v4l2_device\0A\00", [59 x i8] zeroinitializer }, align 32
@cpia2_init_camera_struct._entry_ptr.11 = internal global ptr @cpia2_init_camera_struct._entry.9, section ".printk_index", align 4
@cpia2_init_camera_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cam->v4l2_lock\00", [16 x i8] zeroinitializer }, align 32
@cpia2_init_camera_struct.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cam->wq_stream\00", [16 x i8] zeroinitializer }, align 32
@cpia2_init_camera._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013cpia2: Device IO error (asicID has incorrect value of 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpia2_init_camera\00", [46 x i8] zeroinitializer }, align 32
@cpia2_init_camera._entry_ptr = internal global ptr @cpia2_init_camera._entry, section ".printk_index", align 4
@cpia2_allocate_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 2258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cpia2: couldn't kmalloc frame buffer structures\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpia2_allocate_buffers\00", [41 x i8] zeroinitializer }, align 32
@cpia2_allocate_buffers._entry_ptr = internal global ptr @cpia2_allocate_buffers._entry, section ".printk_index", align 4
@cpia2_allocate_buffers._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 2266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cpia2: couldn't vmalloc frame buffer data area\0A\00", [46 x i8] zeroinitializer }, align 32
@cpia2_allocate_buffers._entry_ptr.21 = internal global ptr @cpia2_allocate_buffers._entry.19, section ".printk_index", align 4
@cpia2_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013cpia2: %s: buffer NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpia2_read\00", [21 x i8] zeroinitializer }, align 32
@cpia2_read._entry_ptr = internal global ptr @cpia2_read._entry, section ".printk_index", align 4
@cpia2_read._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 2330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cpia2: %s: Internal error, camera_data NULL!\0A\00", [48 x i8] zeroinitializer }, align 32
@cpia2_read._entry_ptr.26 = internal global ptr @cpia2_read._entry.24, section ".printk_index", align 4
@pgprot_user = external dso_local local_unnamed_addr global i32, align 4
@cpia2_set_high_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cpia2: Camera did not wake up\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpia2_set_high_power\00", [43 x i8] zeroinitializer }, align 32
@cpia2_set_high_power._entry_ptr = internal global ptr @cpia2_set_high_power._entry, section ".printk_index", align 4
@__const.apply_vp_patch.fw_name = private unnamed_addr constant [22 x i8] c"cpia2/stv0672_vp4.bin\00", align 1
@apply_vp_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cpia2: failed to load VP patch \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apply_vp_patch\00", [17 x i8] zeroinitializer }, align 32
@apply_vp_patch._entry_ptr = internal global ptr @apply_vp_patch._entry, section ".printk_index", align 4
@set_default_user_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cpia2: %s: Invalid sensor flag value 0x%0X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_default_user_mode\00", [42 x i8] zeroinitializer }, align 32
@set_default_user_mode._entry_ptr = internal global ptr @set_default_user_mode._entry, section ".printk_index", align 4
@config_sensor_410._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cpia2: ConfigSensor410 failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"config_sensor_410\00", [46 x i8] zeroinitializer }, align 32
@config_sensor_410._entry_ptr = internal global ptr @config_sensor_410._entry, section ".printk_index", align 4
@config_sensor_500._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cpia2: ConfigSensor500 failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"config_sensor_500\00", [46 x i8] zeroinitializer }, align 32
@config_sensor_500._entry_ptr = internal global ptr @config_sensor_500._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [53 x i64] [i64 51, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [22 x i64] [i64 20, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12, i64 14, i64 16, i64 18, i64 21, i64 28, i64 31, i64 33, i64 35, i64 37, i64 38, i64 40, i64 42, i64 46, i64 51]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 320, i64 337]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.47 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 50, i64 60]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 50, i64 60]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 416, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 566, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 630, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2191, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2197, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2202, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2203, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2224, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2258, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2266, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2325, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2330, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 870, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 916, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 985, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1190, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private constant [40 x i8] c"../drivers/media/usb/cpia2/cpia2_core.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1361, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 440, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 230, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 214, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 174, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_firmware297, ptr @apply_vp_patch._entry, ptr @apply_vp_patch._entry_ptr, ptr @config_sensor_410._entry, ptr @config_sensor_410._entry_ptr, ptr @config_sensor_500._entry, ptr @config_sensor_500._entry_ptr, ptr @cpia2_allocate_buffers._entry, ptr @cpia2_allocate_buffers._entry.19, ptr @cpia2_allocate_buffers._entry_ptr, ptr @cpia2_allocate_buffers._entry_ptr.21, ptr @cpia2_do_command._entry, ptr @cpia2_do_command._entry_ptr, ptr @cpia2_init_camera._entry, ptr @cpia2_init_camera._entry_ptr, ptr @cpia2_init_camera_struct._entry, ptr @cpia2_init_camera_struct._entry.9, ptr @cpia2_init_camera_struct._entry_ptr, ptr @cpia2_init_camera_struct._entry_ptr.11, ptr @cpia2_read._entry, ptr @cpia2_read._entry.24, ptr @cpia2_read._entry_ptr, ptr @cpia2_read._entry_ptr.26, ptr @cpia2_reset_camera._entry, ptr @cpia2_reset_camera._entry_ptr, ptr @cpia2_send_command._entry, ptr @cpia2_send_command._entry_ptr, ptr @cpia2_set_high_power._entry, ptr @cpia2_set_high_power._entry_ptr, ptr @set_default_user_mode._entry, ptr @set_default_user_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @cpia2_init_camera_struct.__key, ptr @.str.12, ptr @cpia2_init_camera_struct.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_do_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_reset_camera._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_init_camera_struct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_init_camera_struct._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_init_camera_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_init_camera_struct.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_init_camera._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_allocate_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_allocate_buffers._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_read._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_set_high_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_vp_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_default_user_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_sensor_410._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_sensor_500._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_do_command(ptr noundef %cam, i32 noundef %command, i8 noundef zeroext %direction, i8 noundef zeroext %param) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %params = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnp_id, align 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %command, ptr %cmd, align 4
  %reg_count = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %reg_count, align 1
  %direction3 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %direction3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %direction, ptr %direction3, align 2
  %7 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb14
    i32 7, label %sw.bb17
    i32 6, label %entry.sw.bb18_crit_edge
    i32 9, label %sw.bb23
    i32 8, label %entry.sw.bb26_crit_edge
    i32 11, label %sw.bb30
    i32 10, label %entry.sw.bb33_crit_edge
    i32 15, label %sw.bb42
    i32 14, label %entry.sw.bb45_crit_edge
    i32 13, label %sw.bb49
    i32 12, label %entry.sw.bb52_crit_edge
    i32 19, label %sw.bb56
    i32 18, label %entry.sw.bb59_crit_edge
    i32 17, label %sw.bb63
    i32 16, label %entry.sw.bb66_crit_edge
    i32 20, label %sw.bb70
    i32 22, label %sw.bb76
    i32 21, label %entry.sw.bb79_crit_edge
    i32 23, label %sw.bb83
    i32 24, label %sw.bb97
    i32 25, label %sw.bb112
    i32 26, label %sw.bb118
    i32 27, label %sw.bb124
    i32 28, label %entry.sw.bb127_crit_edge
    i32 29, label %sw.bb136
    i32 32, label %sw.bb147
    i32 31, label %entry.sw.bb150_crit_edge
    i32 34, label %sw.bb154
    i32 33, label %entry.sw.bb157_crit_edge
    i32 37, label %sw.bb161
    i32 36, label %sw.bb165
    i32 35, label %entry.sw.bb168_crit_edge
    i32 39, label %sw.bb172
    i32 38, label %entry.sw.bb175_crit_edge
    i32 41, label %sw.bb179
    i32 40, label %entry.sw.bb182_crit_edge
    i32 43, label %sw.bb186
    i32 42, label %entry.sw.bb189_crit_edge
    i32 44, label %sw.bb193
    i32 45, label %sw.bb199
    i32 47, label %sw.bb205
    i32 46, label %entry.sw.bb208_crit_edge
    i32 48, label %sw.bb212
    i32 49, label %sw.bb221
    i32 50, label %sw.bb248
    i32 52, label %sw.bb254
    i32 51, label %entry.sw.bb257_crit_edge
  ]

entry.sw.bb257_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb257

entry.sw.bb208_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb208

entry.sw.bb189_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb189

entry.sw.bb182_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb182

entry.sw.bb175_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

entry.sw.bb168_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb168

entry.sw.bb157_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb157

entry.sw.bb150_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb150

entry.sw.bb127_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb127

entry.sw.bb79_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb79

entry.sw.bb66_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb66

entry.sw.bb59_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb59

entry.sw.bb52_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb52

entry.sw.bb45_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %req_mode, align 4
  %start = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %start, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode5 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %req_mode5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %req_mode5, align 4
  %11 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %reg_count, align 1
  %start7 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %start7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 48, ptr %start7, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode9 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %req_mode9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %req_mode9, align 4
  %start10 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %14 = ptrtoint ptr %start10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %start10, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode12 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %req_mode12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %req_mode12, align 4
  %start13 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %16 = ptrtoint ptr %start13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %start13, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode15 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %req_mode15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %req_mode15, align 4
  %start16 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %18 = ptrtoint ptr %start16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %start16, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %param, ptr %buffer, align 4
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb17, %entry.sw.bb18_crit_edge
  %req_mode19 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %req_mode19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %req_mode19, align 4
  %21 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %reg_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %start21 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %start21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 22, ptr %start21, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %start21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %start21, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer24 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %buffer24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %param, ptr %buffer24, align 4
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb23, %entry.sw.bb26_crit_edge
  %req_mode27 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %25 = ptrtoint ptr %req_mode27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %req_mode27, align 4
  %26 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %reg_count, align 1
  %start29 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %27 = ptrtoint ptr %start29 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 38, ptr %start29, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer31 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %28 = ptrtoint ptr %buffer31 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %param, ptr %buffer31, align 4
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb30, %entry.sw.bb33_crit_edge
  %req_mode34 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %29 = ptrtoint ptr %req_mode34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %req_mode34, align 4
  %30 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %reg_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp36 = icmp eq i32 %3, 1
  %start38 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %start38 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 39, ptr %start38, align 1
  br label %sw.epilog

if.else39:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %start38 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 61, ptr %start38, align 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer43 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %33 = ptrtoint ptr %buffer43 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %param, ptr %buffer43, align 4
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.bb42, %entry.sw.bb45_crit_edge
  %req_mode46 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %req_mode46 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %req_mode46, align 4
  %35 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %reg_count, align 1
  %start48 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %36 = ptrtoint ptr %start48 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 9, ptr %start48, align 1
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer50 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %37 = ptrtoint ptr %buffer50 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %param, ptr %buffer50, align 4
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb49, %entry.sw.bb52_crit_edge
  %req_mode53 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %38 = ptrtoint ptr %req_mode53 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %req_mode53, align 4
  %39 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %reg_count, align 1
  %start55 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %40 = ptrtoint ptr %start55 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %start55, align 1
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer57 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %41 = ptrtoint ptr %buffer57 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %param, ptr %buffer57, align 4
  br label %sw.bb59

sw.bb59:                                          ; preds = %sw.bb56, %entry.sw.bb59_crit_edge
  %req_mode60 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %42 = ptrtoint ptr %req_mode60 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %req_mode60, align 4
  %43 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %reg_count, align 1
  %start62 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %44 = ptrtoint ptr %start62 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -111, ptr %start62, align 1
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer64 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %45 = ptrtoint ptr %buffer64 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %param, ptr %buffer64, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb63, %entry.sw.bb66_crit_edge
  %req_mode67 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %46 = ptrtoint ptr %req_mode67 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %req_mode67, align 4
  %47 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %reg_count, align 1
  %start69 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %48 = ptrtoint ptr %start69 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -112, ptr %start69, align 1
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode71 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %49 = ptrtoint ptr %req_mode71 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %req_mode71, align 4
  %start72 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %50 = ptrtoint ptr %start72 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %start72, align 1
  %51 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %reg_count, align 1
  %buffer74 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %52 = ptrtoint ptr %buffer74 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %param, ptr %buffer74, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer77 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %53 = ptrtoint ptr %buffer77 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %param, ptr %buffer77, align 4
  br label %sw.bb79

sw.bb79:                                          ; preds = %sw.bb76, %entry.sw.bb79_crit_edge
  %req_mode80 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %54 = ptrtoint ptr %req_mode80 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %req_mode80, align 4
  %55 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %reg_count, align 1
  %start82 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %56 = ptrtoint ptr %start82 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 27, ptr %start82, align 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode84 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %57 = ptrtoint ptr %req_mode84 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 5, ptr %req_mode84, align 4
  %start86 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %58 = ptrtoint ptr %start86 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %start86, align 1
  %buffer87 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %59 = ptrtoint ptr %buffer87 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -96, ptr %buffer87, align 4
  %value = getelementptr inbounds %struct.cpia2_register, ptr %buffer87, i32 0, i32 1
  %60 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 64, ptr %value, align 1
  %arrayidx92 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer87, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -96, ptr %arrayidx92, align 2
  %value96 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer87, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %value96 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 96, ptr %value96, align 1
  br label %sw.epilog

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode98 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %63 = ptrtoint ptr %req_mode98 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %req_mode98, align 4
  %buffer100 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %64 = ptrtoint ptr %buffer100 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %buffer100, align 4
  %arrayidx104 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer100, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %arrayidx104, align 2
  %value108 = getelementptr inbounds %struct.cpia2_register, ptr %buffer100, i32 0, i32 1
  %66 = ptrtoint ptr %value108 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -128, ptr %value108, align 1
  %value111 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer100, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %value111 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %value111, align 1
  br label %sw.epilog

sw.bb112:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode113 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %68 = ptrtoint ptr %req_mode113 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %req_mode113, align 4
  %69 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %reg_count, align 1
  %start115 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %70 = ptrtoint ptr %start115 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %start115, align 1
  %buffer116 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %71 = ptrtoint ptr %buffer116 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %buffer116, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode119 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %72 = ptrtoint ptr %req_mode119 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %req_mode119, align 4
  %73 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %reg_count, align 1
  %start121 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %74 = ptrtoint ptr %start121 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 2, ptr %start121, align 1
  %buffer122 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %75 = ptrtoint ptr %buffer122 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -128, ptr %buffer122, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer125 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %76 = ptrtoint ptr %buffer125 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %param, ptr %buffer125, align 4
  br label %sw.bb127

sw.bb127:                                         ; preds = %sw.bb124, %entry.sw.bb127_crit_edge
  %req_mode128 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %77 = ptrtoint ptr %req_mode128 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %req_mode128, align 4
  %78 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %reg_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp130 = icmp eq i32 %3, 1
  %start132 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  br i1 %cmp130, label %if.then131, label %if.else133

if.then131:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %start132 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 16, ptr %start132, align 1
  br label %sw.epilog

if.else133:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %start132 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 19, ptr %start132, align 1
  br label %sw.epilog

sw.bb136:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode137 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %81 = ptrtoint ptr %req_mode137 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %req_mode137, align 4
  %82 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %reg_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp139 = icmp eq i32 %3, 1
  %spec.select = select i1 %cmp139, i8 17, i8 20
  %83 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select, ptr %83, align 1
  %buffer145 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %85 = ptrtoint ptr %buffer145 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %param, ptr %buffer145, align 4
  br label %sw.epilog

sw.bb147:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer148 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %86 = ptrtoint ptr %buffer148 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %param, ptr %buffer148, align 4
  br label %sw.bb150

sw.bb150:                                         ; preds = %sw.bb147, %entry.sw.bb150_crit_edge
  %req_mode151 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %87 = ptrtoint ptr %req_mode151 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %req_mode151, align 4
  %88 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %reg_count, align 1
  %start153 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %89 = ptrtoint ptr %start153 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -125, ptr %start153, align 1
  br label %sw.epilog

sw.bb154:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer155 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %90 = ptrtoint ptr %buffer155 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %param, ptr %buffer155, align 4
  br label %sw.bb157

sw.bb157:                                         ; preds = %sw.bb154, %entry.sw.bb157_crit_edge
  %req_mode158 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %91 = ptrtoint ptr %req_mode158 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %req_mode158, align 4
  %92 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %reg_count, align 1
  %start160 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %93 = ptrtoint ptr %start160 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -126, ptr %start160, align 1
  br label %sw.epilog

sw.bb161:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode162 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %94 = ptrtoint ptr %req_mode162 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %req_mode162, align 4
  %95 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %reg_count, align 1
  %start164 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %96 = ptrtoint ptr %start164 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %start164, align 1
  br label %sw.epilog

sw.bb165:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer166 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %97 = ptrtoint ptr %buffer166 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %param, ptr %buffer166, align 4
  br label %sw.bb168

sw.bb168:                                         ; preds = %sw.bb165, %entry.sw.bb168_crit_edge
  %req_mode169 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %98 = ptrtoint ptr %req_mode169 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %req_mode169, align 4
  %99 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %reg_count, align 1
  %start171 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %100 = ptrtoint ptr %start171 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 2, ptr %start171, align 1
  br label %sw.epilog

sw.bb172:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer173 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %101 = ptrtoint ptr %buffer173 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %param, ptr %buffer173, align 4
  br label %sw.bb175

sw.bb175:                                         ; preds = %sw.bb172, %entry.sw.bb175_crit_edge
  %req_mode176 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %102 = ptrtoint ptr %req_mode176 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %req_mode176, align 4
  %103 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %reg_count, align 1
  %start178 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %104 = ptrtoint ptr %start178 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %start178, align 1
  br label %sw.epilog

sw.bb179:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer180 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %105 = ptrtoint ptr %buffer180 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %param, ptr %buffer180, align 4
  br label %sw.bb182

sw.bb182:                                         ; preds = %sw.bb179, %entry.sw.bb182_crit_edge
  %req_mode183 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %106 = ptrtoint ptr %req_mode183 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %req_mode183, align 4
  %107 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %reg_count, align 1
  %start185 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %108 = ptrtoint ptr %start185 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 21, ptr %start185, align 1
  br label %sw.epilog

sw.bb186:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer187 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %109 = ptrtoint ptr %buffer187 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %param, ptr %buffer187, align 4
  br label %sw.bb189

sw.bb189:                                         ; preds = %sw.bb186, %entry.sw.bb189_crit_edge
  %req_mode190 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %110 = ptrtoint ptr %req_mode190 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 2, ptr %req_mode190, align 4
  %111 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %reg_count, align 1
  %start192 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %112 = ptrtoint ptr %start192 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 7, ptr %start192, align 1
  br label %sw.epilog

sw.bb193:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer194 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %113 = ptrtoint ptr %buffer194 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %param, ptr %buffer194, align 4
  %req_mode196 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %114 = ptrtoint ptr %req_mode196 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %req_mode196, align 4
  %115 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %reg_count, align 1
  %start198 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %116 = ptrtoint ptr %start198 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 8, ptr %start198, align 1
  br label %sw.epilog

sw.bb199:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer200 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %117 = ptrtoint ptr %buffer200 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %param, ptr %buffer200, align 4
  %req_mode202 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %118 = ptrtoint ptr %req_mode202 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %req_mode202, align 4
  %119 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %reg_count, align 1
  %start204 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %120 = ptrtoint ptr %start204 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 118, ptr %start204, align 1
  br label %sw.epilog

sw.bb205:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer206 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %121 = ptrtoint ptr %buffer206 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %param, ptr %buffer206, align 4
  br label %sw.bb208

sw.bb208:                                         ; preds = %sw.bb205, %entry.sw.bb208_crit_edge
  %req_mode209 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %122 = ptrtoint ptr %req_mode209 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %req_mode209, align 4
  %123 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %reg_count, align 1
  %start211 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %124 = ptrtoint ptr %start211 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -64, ptr %start211, align 1
  br label %sw.epilog

sw.bb212:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode213 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %125 = ptrtoint ptr %req_mode213 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 5, ptr %req_mode213, align 4
  %126 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %reg_count, align 1
  %buffer215 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %127 = ptrtoint ptr %buffer215 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -39, ptr %buffer215, align 4
  %value220 = getelementptr inbounds %struct.cpia2_register, ptr %buffer215, i32 0, i32 1
  %128 = ptrtoint ptr %value220 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %param, ptr %value220, align 1
  br label %sw.epilog

sw.bb221:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode222 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %129 = ptrtoint ptr %req_mode222 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 5, ptr %req_mode222, align 4
  %130 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 4, ptr %reg_count, align 1
  %buffer224 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %131 = ptrtoint ptr %buffer224 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -42, ptr %buffer224, align 4
  %value229 = getelementptr inbounds %struct.cpia2_register, ptr %buffer224, i32 0, i32 1
  %132 = ptrtoint ptr %value229 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %value229, align 1
  %arrayidx231 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer224, i32 0, i32 1
  %133 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -40, ptr %arrayidx231, align 2
  %value235 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer224, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %value235 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 20, ptr %value235, align 1
  %arrayidx237 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1
  %135 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -41, ptr %arrayidx237, align 4
  %value241 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 1
  %136 = ptrtoint ptr %value241 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 2, ptr %value241, align 1
  %arrayidx243 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 2
  %137 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -42, ptr %arrayidx243, align 2
  %value247 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 3
  %138 = ptrtoint ptr %value247 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 5, ptr %value247, align 1
  br label %sw.epilog

sw.bb248:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode249 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %139 = ptrtoint ptr %req_mode249 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 2, ptr %req_mode249, align 4
  %140 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %reg_count, align 1
  %start251 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %141 = ptrtoint ptr %start251 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 96, ptr %start251, align 1
  %buffer252 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %142 = ptrtoint ptr %buffer252 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %param, ptr %buffer252, align 4
  br label %sw.epilog

sw.bb254:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer255 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %143 = ptrtoint ptr %buffer255 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %param, ptr %buffer255, align 4
  br label %sw.bb257

sw.bb257:                                         ; preds = %sw.bb254, %entry.sw.bb257_crit_edge
  %req_mode258 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %144 = ptrtoint ptr %req_mode258 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 2, ptr %req_mode258, align 4
  %145 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %reg_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp260 = icmp eq i32 %3, 1
  %start262 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  br i1 %cmp260, label %if.then261, label %if.else263

if.then261:                                       ; preds = %sw.bb257
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %start262 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 18, ptr %start262, align 1
  br label %sw.epilog

if.else263:                                       ; preds = %sw.bb257
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %start262 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 21, ptr %start262, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.else263, %if.then261, %sw.bb248, %sw.bb221, %sw.bb212, %sw.bb208, %sw.bb199, %sw.bb193, %sw.bb189, %sw.bb182, %sw.bb175, %sw.bb168, %sw.bb161, %sw.bb157, %sw.bb150, %sw.bb136, %if.else133, %if.then131, %sw.bb118, %sw.bb112, %sw.bb97, %sw.bb83, %sw.bb79, %sw.bb70, %sw.bb66, %sw.bb59, %sw.bb52, %sw.bb45, %if.else39, %if.then37, %sw.bb26, %if.else, %if.then, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb4, %sw.bb
  %req_mode.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %148 = ptrtoint ptr %req_mode.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %req_mode.i, align 4
  %150 = lshr i8 %149, 2
  %151 = and i8 %150, 3
  %152 = zext i8 %151 to i32
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %152, label %entry.unreachabledefault.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb6.i
    i32 2, label %sw.bb17.i
    i32 3, label %sw.bb30.i
  ]

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %reg_count to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %reg_count, align 1
  %mul.i = shl i8 %155, 1
  br label %cpia2_send_command.exit

sw.bb6.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %reg_count to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %reg_count, align 1
  %start8.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %158 = ptrtoint ptr %start8.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %start8.i, align 1
  br label %cpia2_send_command.exit

sw.bb17.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %reg_count to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %reg_count, align 1
  %mul20.i = shl i8 %161, 2
  br label %cpia2_send_command.exit

sw.bb30.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %reg_count to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %reg_count, align 1
  %start32.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %164 = ptrtoint ptr %start32.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %start32.i, align 1
  br label %cpia2_send_command.exit

entry.unreachabledefault.i:                       ; preds = %sw.epilog
  unreachable

cpia2_send_command.exit:                          ; preds = %sw.bb30.i, %sw.bb17.i, %sw.bb6.i, %sw.bb.i
  %start.0.i = phi i8 [ %165, %sw.bb30.i ], [ 0, %sw.bb17.i ], [ %159, %sw.bb6.i ], [ 0, %sw.bb.i ]
  %count.0.i = phi i8 [ %163, %sw.bb30.i ], [ %mul20.i, %sw.bb17.i ], [ %157, %sw.bb6.i ], [ %mul.i, %sw.bb.i ]
  %buffer.0.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %166 = ptrtoint ptr %direction3 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %direction3, align 2
  %call46.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i, i8 noundef zeroext %149, i8 noundef zeroext %start.0.i, i8 noundef zeroext %count.0.i, i8 noundef zeroext %167) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool.not = icmp eq i32 %call46.i, 0
  br i1 %tobool.not, label %if.end268, label %cpia2_send_command.exit.cleanup_crit_edge

cpia2_send_command.exit.cleanup_crit_edge:        ; preds = %cpia2_send_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end268:                                        ; preds = %cpia2_send_command.exit
  %168 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %command, label %if.end268.cleanup_crit_edge [
    i32 1, label %sw.bb269
    i32 2, label %sw.bb277
    i32 3, label %sw.bb345
    i32 4, label %sw.bb354
    i32 5, label %sw.bb363
    i32 14, label %sw.bb372
    i32 12, label %sw.bb376
    i32 16, label %sw.bb381
    i32 18, label %sw.bb385
    i32 21, label %sw.bb390
    i32 31, label %sw.bb394
    i32 33, label %sw.bb399
    i32 35, label %sw.bb404
    i32 37, label %sw.bb408
    i32 38, label %sw.bb413
    i32 40, label %sw.bb419
    i32 42, label %sw.bb424
    i32 46, label %sw.bb429
    i32 28, label %sw.bb434
    i32 51, label %sw.bb439
  ]

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb269:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %buffer.0.i, align 4
  %171 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %params, align 4
  %arrayidx274 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 1
  %172 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx274, align 1
  %firmware_revision_lo = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 1
  %174 = ptrtoint ptr %firmware_revision_lo to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %firmware_revision_lo, align 1
  br label %cleanup

sw.bb277:                                         ; preds = %if.end268
  %175 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %buffer.0.i, align 4
  %conv = zext i8 %176 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx281 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 1
  %177 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx281, align 1
  %conv282 = zext i8 %178 to i16
  %or = or i16 %shl, %conv282
  %vendor = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1, i32 1
  %179 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %or, ptr %vendor, align 4
  %arrayidx287 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 2
  %180 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx287, align 2
  %conv288 = zext i8 %181 to i16
  %shl289 = shl nuw i16 %conv288, 8
  %arrayidx291 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 3
  %182 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %183 to i16
  %or293 = or i16 %shl289, %conv292
  %product = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1, i32 2
  %184 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %or293, ptr %product, align 2
  %arrayidx298 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1
  %185 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx298, align 4
  %conv299 = zext i8 %186 to i16
  %shl300 = shl nuw i16 %conv299, 8
  %arrayidx302 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 1
  %187 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx302, align 1
  %conv303 = zext i8 %188 to i16
  %or304 = or i16 %shl300, %conv303
  %device_revision = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1, i32 3
  %189 = ptrtoint ptr %device_revision to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %or304, ptr %device_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1363, i16 %or)
  %cmp312 = icmp eq i16 %or, 1363
  br i1 %cmp312, label %if.then314, label %sw.bb277.cleanup_crit_edge

sw.bb277.cleanup_crit_edge:                       ; preds = %sw.bb277
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then314:                                       ; preds = %sw.bb277
  %190 = zext i16 %or293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %or293, label %if.then314.cleanup_crit_edge [
    i16 256, label %if.then321
    i16 320, label %if.then314.if.then338_crit_edge
    i16 337, label %if.then314.if.then338_crit_edge511
  ]

if.then314.if.then338_crit_edge511:               ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then338

if.then314.if.then338_crit_edge:                  ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then338

if.then314.cleanup_crit_edge:                     ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then321:                                       ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  %191 = ptrtoint ptr %pnp_id to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %pnp_id, align 4
  br label %cleanup

if.then338:                                       ; preds = %if.then314.if.then338_crit_edge, %if.then314.if.then338_crit_edge511
  %192 = ptrtoint ptr %pnp_id to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 2, ptr %pnp_id, align 4
  br label %cleanup

sw.bb345:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %buffer.0.i, align 4
  %asic_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 2
  %195 = ptrtoint ptr %asic_id to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %asic_id, align 2
  %arrayidx351 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 1
  %196 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx351, align 1
  %asic_rev = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 3
  %198 = ptrtoint ptr %asic_rev to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %asic_rev, align 1
  br label %cleanup

sw.bb354:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %buffer.0.i, align 4
  %sensor_flags = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 6
  %201 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %sensor_flags, align 2
  %arrayidx360 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 1
  %202 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx360, align 1
  %sensor_rev = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 7
  %204 = ptrtoint ptr %sensor_rev to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %sensor_rev, align 1
  br label %cleanup

sw.bb363:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %205 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %buffer.0.i, align 4
  %vp_device_hi = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 4
  %207 = ptrtoint ptr %vp_device_hi to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %vp_device_hi, align 4
  %arrayidx369 = getelementptr inbounds [64 x i8], ptr %buffer.0.i, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx369, align 1
  %vp_device_lo = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 5
  %210 = ptrtoint ptr %vp_device_lo to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %vp_device_lo, align 1
  br label %cleanup

sw.bb372:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %buffer.0.i, align 4
  %gpio_data = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 4
  %213 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %gpio_data, align 4
  br label %cleanup

sw.bb376:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %buffer.0.i, align 4
  %gpio_direction = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 3
  %216 = ptrtoint ptr %gpio_direction to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %gpio_direction, align 1
  br label %cleanup

sw.bb381:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %buffer.0.i, align 4
  %vc_mp_direction = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 3
  %219 = ptrtoint ptr %vc_mp_direction to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %vc_mp_direction, align 1
  br label %cleanup

sw.bb385:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %220 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %buffer.0.i, align 4
  %vc_mp_data = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 4
  %222 = ptrtoint ptr %vc_mp_data to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %vc_mp_data, align 1
  br label %cleanup

sw.bb390:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %223 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %buffer.0.i, align 4
  %flicker_control = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 3
  %225 = ptrtoint ptr %flicker_control to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %flicker_control, align 1
  br label %cleanup

sw.bb394:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %226 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %buffer.0.i, align 4
  %wakeup = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 1
  %228 = ptrtoint ptr %wakeup to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %wakeup, align 1
  br label %cleanup

sw.bb399:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %229 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %buffer.0.i, align 4
  %vc_params403 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8
  %231 = ptrtoint ptr %vc_params403 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %vc_params403, align 1
  br label %cleanup

sw.bb404:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %232 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %buffer.0.i, align 4
  %system_ctrl = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 1
  %234 = ptrtoint ptr %system_ctrl to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %system_ctrl, align 1
  br label %cleanup

sw.bb408:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %235 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %buffer.0.i, align 4
  %system_state = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 6
  %237 = ptrtoint ptr %system_state to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %system_state, align 2
  br label %cleanup

sw.bb413:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %238 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %buffer.0.i, align 4
  %system_ctrl418 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 5
  %240 = ptrtoint ptr %system_ctrl418 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %system_ctrl418, align 1
  br label %cleanup

sw.bb419:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %buffer.0.i, align 4
  %exposure_modes = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 9
  %243 = ptrtoint ptr %exposure_modes to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %exposure_modes, align 1
  br label %cleanup

sw.bb424:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %244 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %buffer.0.i, align 4
  %device_config = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 8
  %246 = ptrtoint ptr %device_config to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %device_config, align 4
  br label %cleanup

sw.bb429:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %247 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %buffer.0.i, align 4
  %vc_control = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 2
  %249 = ptrtoint ptr %vc_control to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %vc_control, align 1
  br label %cleanup

sw.bb434:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %250 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %buffer.0.i, align 4
  %vp_params438 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7
  %252 = ptrtoint ptr %vp_params438 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %vp_params438, align 4
  br label %cleanup

sw.bb439:                                         ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #11
  %253 = ptrtoint ptr %buffer.0.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %buffer.0.i, align 4
  %user_effects = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %255 = ptrtoint ptr %user_effects to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %user_effects, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb439, %sw.bb434, %sw.bb429, %sw.bb424, %sw.bb419, %sw.bb413, %sw.bb408, %sw.bb404, %sw.bb399, %sw.bb394, %sw.bb390, %sw.bb385, %sw.bb381, %sw.bb376, %sw.bb372, %sw.bb363, %sw.bb354, %sw.bb345, %if.then338, %if.then321, %if.then314.cleanup_crit_edge, %sw.bb277.cleanup_crit_edge, %sw.bb269, %if.end268.cleanup_crit_edge, %cpia2_send_command.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call46.i, %cpia2_send_command.exit.cleanup_crit_edge ], [ 0, %if.then314.cleanup_crit_edge ], [ 0, %if.end268.cleanup_crit_edge ], [ 0, %sw.bb277.cleanup_crit_edge ], [ 0, %if.then338 ], [ 0, %if.then321 ], [ 0, %sw.bb439 ], [ 0, %sw.bb434 ], [ 0, %sw.bb429 ], [ 0, %sw.bb424 ], [ 0, %sw.bb419 ], [ 0, %sw.bb413 ], [ 0, %sw.bb408 ], [ 0, %sw.bb404 ], [ 0, %sw.bb399 ], [ 0, %sw.bb394 ], [ 0, %sw.bb390 ], [ 0, %sw.bb385 ], [ 0, %sw.bb381 ], [ 0, %sw.bb376 ], [ 0, %sw.bb372 ], [ 0, %sw.bb363 ], [ 0, %sw.bb354 ], [ 0, %sw.bb345 ], [ 0, %sw.bb269 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_send_command(ptr noundef %cam, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req_mode = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %req_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req_mode, align 4
  %2 = lshr i8 %1, 2
  %3 = and i8 %2, 3
  %4 = zext i8 %3 to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %4, label %entry.unreachabledefault [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
    i32 2, label %sw.bb17
    i32 3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_count = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %reg_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_count, align 1
  %mul = shl i8 %7, 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_count7 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %reg_count7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_count7, align 1
  %start8 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %start8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %start8, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_count18 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %reg_count18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_count18, align 1
  %mul20 = shl i8 %13, 2
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_count31 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %reg_count31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_count31, align 1
  %start32 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %16 = ptrtoint ptr %start32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %start32, align 1
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb17, %sw.bb6, %sw.bb
  %start.0 = phi i8 [ %17, %sw.bb30 ], [ 0, %sw.bb17 ], [ %11, %sw.bb6 ], [ 0, %sw.bb ]
  %count.0 = phi i8 [ %15, %sw.bb30 ], [ %mul20, %sw.bb17 ], [ %9, %sw.bb6 ], [ %mul, %sw.bb ]
  %buffer.0 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %direction = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %direction, align 2
  %call46 = tail call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0, i8 noundef zeroext %1, i8 noundef zeroext %start.0, i8 noundef zeroext %count.0, i8 noundef zeroext %19) #9
  ret i32 %call46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_transfer_cmd(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_reset_camera(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i849 = alloca %struct.cpia2_command, align 4
  %cmd.i824 = alloca %struct.cpia2_command, align 4
  %cmd.i796 = alloca %struct.cpia2_command, align 4
  %cmd.i769 = alloca %struct.cpia2_command, align 4
  %cmd.i744 = alloca %struct.cpia2_command, align 4
  %cmd.i719 = alloca %struct.cpia2_command, align 4
  %cmd.i692 = alloca %struct.cpia2_command, align 4
  %cmd.i667 = alloca %struct.cpia2_command, align 4
  %cmd.i618 = alloca %struct.cpia2_command, align 4
  %cmd.i590 = alloca %struct.cpia2_command, align 4
  %cmd.i565 = alloca %struct.cpia2_command, align 4
  %cmd.i537 = alloca %struct.cpia2_command, align 4
  %cmd.i509 = alloca %struct.cpia2_command, align 4
  %cmd.i484 = alloca %struct.cpia2_command, align 4
  %cmd.i459 = alloca %struct.cpia2_command, align 4
  %cmd.i413 = alloca %struct.cpia2_command, align 4
  %cmd.i388 = alloca %struct.cpia2_command, align 4
  %cmd.i373 = alloca %struct.cpia2_command, align 4
  %cmd.i.i25.i = alloca %struct.cpia2_command, align 4
  %cmd.i26.i = alloca %struct.cpia2_command, align 4
  %cmd.i.i.i356 = alloca %struct.cpia2_command, align 4
  %cmd.i1.i = alloca %struct.cpia2_command, align 4
  %cmd.i.i357 = alloca %struct.cpia2_command, align 4
  %cmd.i.i.i = alloca %struct.cpia2_command, align 4
  %cmd.i.i342 = alloca %struct.cpia2_command, align 4
  %fw.i = alloca ptr, align 4
  %fw_name.i = alloca [22 x i8], align 1
  %cmd.i = alloca %struct.cpia2_command, align 4
  %cmd.i8.i = alloca %struct.cpia2_command, align 4
  %cmd.i.i = alloca %struct.cpia2_command, align 4
  %cmd = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd) #9
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 72)
  %roi = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %roi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %roi, align 4
  %height = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 6, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %sensor_flags.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 6
  %5 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor_flags.i, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %6, label %entry.do.end_crit_edge [
    i8 1, label %entry.sw.bb.i_crit_edge
    i8 2, label %entry.sw.bb.i_crit_edge913
    i8 4, label %entry.sw.bb.i_crit_edge914
    i8 8, label %entry.sw.bb.i_crit_edge915
    i8 16, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge915:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge914:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge913:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge913, %entry.sw.bb.i_crit_edge914, %entry.sw.bb.i_crit_edge915
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i) #9
  %8 = call ptr @memset(ptr %cmd.i.i, i32 255, i32 72)
  %9 = tail call i32 @llvm.smin.i32(i32 %2, i32 352) #9
  %10 = tail call i32 @llvm.smin.i32(i32 %4, i32 288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %9)
  %cmp2.i.i.i = icmp sgt i32 %9, 351
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %10)
  %cmp4.i.i.i = icmp sgt i32 %10, 287
  %or.cond51.i.i.i = and i1 %cmp2.i.i.i, %cmp4.i.i.i
  br i1 %or.cond51.i.i.i, label %do.end10.i.i.i, label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %9)
  %cmp7.i.i.i = icmp sgt i32 %9, 319
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %10)
  %cmp9.i.i.i = icmp sgt i32 %10, 239
  %or.cond52.i.i.i = and i1 %cmp7.i.i.i, %cmp9.i.i.i
  br i1 %or.cond52.i.i.i, label %do.end22.i.i.i, label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %9)
  %cmp12.i.i.i = icmp sgt i32 %9, 287
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %10)
  %cmp14.i.i.i = icmp sgt i32 %10, 215
  %or.cond53.i.i.i = and i1 %cmp12.i.i.i, %cmp14.i.i.i
  br i1 %or.cond53.i.i.i, label %sw.bb31.i.i.i, label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp17.i.i.i = icmp sgt i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %10)
  %cmp19.i.i.i = icmp sgt i32 %10, 191
  %or.cond54.i.i.i = and i1 %cmp17.i.i.i, %cmp19.i.i.i
  br i1 %or.cond54.i.i.i, label %sw.bb40.i.i.i, label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %9)
  %cmp22.i.i.i = icmp sgt i32 %9, 223
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %10)
  %cmp24.i.i.i = icmp sgt i32 %10, 167
  %or.cond55.i.i.i = and i1 %cmp22.i.i.i, %cmp24.i.i.i
  br i1 %or.cond55.i.i.i, label %sw.bb49.i.i.i, label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %9)
  %cmp27.i.i.i = icmp sgt i32 %9, 191
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %10)
  %cmp29.i.i.i = icmp sgt i32 %10, 143
  %or.cond56.i.i.i = and i1 %cmp27.i.i.i, %cmp29.i.i.i
  br i1 %or.cond56.i.i.i, label %sw.bb58.i.i.i, label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %9)
  %cmp32.i.i.i = icmp sgt i32 %9, 175
  %or.cond57.i.i.i = and i1 %cmp32.i.i.i, %cmp29.i.i.i
  br i1 %or.cond57.i.i.i, label %do.end70.i.i.i, label %do.end39.i.i

do.end10.i.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i392.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %11 = ptrtoint ptr %video_size.i392.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %video_size.i392.i.i, align 2
  %12 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 352, ptr %roi, align 4
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 288, ptr %height, align 4
  %width17.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %14 = ptrtoint ptr %width17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 352, ptr %width17.i.i.i, align 8
  %height18.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %15 = ptrtoint ptr %height18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 288, ptr %height18.i.i.i, align 4
  br label %set_vw_size.exit.i.i

do.end22.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i396.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %16 = ptrtoint ptr %video_size.i396.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %video_size.i396.i.i, align 2
  %17 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 320, ptr %roi, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 240, ptr %height, align 4
  %width29.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %19 = ptrtoint ptr %width29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 320, ptr %width29.i.i.i, align 8
  %height30.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %20 = ptrtoint ptr %height30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 240, ptr %height30.i.i.i, align 4
  br label %set_vw_size.exit.i.i

sw.bb31.i.i.i:                                    ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i400.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %21 = ptrtoint ptr %video_size.i400.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %video_size.i400.i.i, align 2
  %22 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 288, ptr %roi, align 4
  %23 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 216, ptr %height, align 4
  %width38.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %24 = ptrtoint ptr %width38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 288, ptr %width38.i.i.i, align 8
  %height39.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %25 = ptrtoint ptr %height39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 216, ptr %height39.i.i.i, align 4
  br label %set_vw_size.exit.i.i

sw.bb40.i.i.i:                                    ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i404.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %26 = ptrtoint ptr %video_size.i404.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %video_size.i404.i.i, align 2
  %width41.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %27 = ptrtoint ptr %width41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %width41.i.i.i, align 8
  %height42.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %28 = ptrtoint ptr %height42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 192, ptr %height42.i.i.i, align 4
  %29 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %roi, align 4
  %30 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 192, ptr %height, align 4
  br label %set_vw_size.exit.i.i

sw.bb49.i.i.i:                                    ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i408.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %31 = ptrtoint ptr %video_size.i408.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %video_size.i408.i.i, align 2
  %width50.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %32 = ptrtoint ptr %width50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 224, ptr %width50.i.i.i, align 8
  %height51.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %33 = ptrtoint ptr %height51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 168, ptr %height51.i.i.i, align 4
  %34 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 224, ptr %roi, align 4
  %35 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 168, ptr %height, align 4
  br label %set_vw_size.exit.i.i

sw.bb58.i.i.i:                                    ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i412.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %36 = ptrtoint ptr %video_size.i412.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %video_size.i412.i.i, align 2
  %width59.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %37 = ptrtoint ptr %width59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 192, ptr %width59.i.i.i, align 8
  %height60.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %38 = ptrtoint ptr %height60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 144, ptr %height60.i.i.i, align 4
  %39 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 192, ptr %roi, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 144, ptr %height, align 4
  br label %set_vw_size.exit.i.i

do.end70.i.i.i:                                   ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %41 = ptrtoint ptr %video_size.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %video_size.i.i.i, align 2
  %42 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 176, ptr %roi, align 4
  %43 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 144, ptr %height, align 4
  %width77.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %44 = ptrtoint ptr %width77.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 176, ptr %width77.i.i.i, align 8
  %height78.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %45 = ptrtoint ptr %height78.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 144, ptr %height78.i.i.i, align 4
  br label %set_vw_size.exit.i.i

set_vw_size.exit.i.i:                             ; preds = %do.end70.i.i.i, %sw.bb58.i.i.i, %sw.bb49.i.i.i, %sw.bb40.i.i.i, %sw.bb31.i.i.i, %do.end22.i.i.i, %do.end10.i.i.i
  %46 = ptrtoint ptr %roi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %roi, align 4
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 177, i32 %47)
  %cmp17.i.i = icmp slt i32 %47, 177
  call void @__sanitizer_cov_trace_const_cmp4(i32 145, i32 %49)
  %cmp18.i.i = icmp slt i32 %49, 145
  %or.cond.i.i = select i1 %cmp17.i.i, i1 %cmp18.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then56.i.i, label %if.end41.i.i

do.end39.i.i:                                     ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %config_sensor_410.exit.i

if.end41.i.i:                                     ; preds = %set_vw_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %47)
  %cmp23.i.i = icmp sgt i32 %47, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %49)
  %cmp25.i.i = icmp sgt i32 %49, 240
  %or.cond377.i.i = select i1 %cmp23.i.i, i1 true, i1 %cmp25.i.i
  %req_mode.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %req_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %req_mode.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %direction.i.i, align 2
  %buffer.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -61, ptr %buffer.i.i, align 4
  %spec.select.i.i = select i1 %or.cond377.i.i, i8 9, i8 1
  %53 = getelementptr inbounds %struct.cpia2_register, ptr %buffer.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select.i.i, ptr %53, align 1
  %55 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -60, ptr %55, align 2
  %pnp_id75.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %pnp_id75.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pnp_id75.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp77.i.i = icmp eq i32 %58, 1
  %.sink441.i.i = select i1 %cmp77.i.i, i8 4, i8 24
  br label %if.end167.i.i

if.then56.i.i:                                    ; preds = %set_vw_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %req_mode415.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %req_mode415.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 5, ptr %req_mode415.i.i, align 4
  %direction416.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %direction416.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %direction416.i.i, align 2
  %buffer417.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %buffer417.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -61, ptr %buffer417.i.i, align 4
  %value50436.i.i = getelementptr inbounds %struct.cpia2_register, ptr %buffer417.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %value50436.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %value50436.i.i, align 1
  %arrayidx53437.i.i = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer417.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx53437.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -60, ptr %arrayidx53437.i.i, align 2
  %pnp_id.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %64 = ptrtoint ptr %pnp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pnp_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp58.i.i = icmp eq i32 %65, 1
  %spec.select442.i.i = select i1 %cmp58.i.i, i8 14, i8 10
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %if.then56.i.i, %if.end41.i.i
  %.451.i.i = phi i32 [ 72, %if.end41.i.i ], [ 36, %if.then56.i.i ]
  %..i.i = phi i32 [ 88, %if.end41.i.i ], [ 44, %if.then56.i.i ]
  %buffer.sink.i.i = phi ptr [ %buffer.i.i, %if.end41.i.i ], [ %buffer417.i.i, %if.then56.i.i ]
  %.sink441.sink.i.i = phi i8 [ %.sink441.i.i, %if.end41.i.i ], [ %spec.select442.i.i, %if.then56.i.i ]
  %.sink446.i.i = phi i8 [ 88, %if.end41.i.i ], [ 44, %if.then56.i.i ]
  %.sink445.i.i = phi i8 [ 1, %if.end41.i.i ], [ 0, %if.then56.i.i ]
  %.sink444.i.i = phi i8 [ -96, %if.end41.i.i ], [ -48, %if.then56.i.i ]
  %.sink.i.i = phi i8 [ 64, %if.end41.i.i ], [ -96, %if.then56.i.i ]
  %66 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5
  %67 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %66, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink441.sink.i.i, ptr %67, align 1
  %69 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -59, ptr %69, align 4
  %value106.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %value106.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink446.i.i, ptr %value106.i.i, align 1
  %arrayidx109.c.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 2
  %72 = ptrtoint ptr %arrayidx109.c.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -58, ptr %arrayidx109.c.i.i, align 2
  %value121.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 3
  %73 = ptrtoint ptr %value121.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink445.i.i, ptr %value121.i.i, align 1
  %arrayidx124.c.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 4
  %74 = ptrtoint ptr %arrayidx124.c.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -57, ptr %arrayidx124.c.i.i, align 4
  %value136.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 5
  %75 = ptrtoint ptr %value136.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %.sink444.i.i, ptr %value136.i.i, align 1
  %arrayidx139.c.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 6
  %76 = ptrtoint ptr %arrayidx139.c.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -56, ptr %arrayidx139.c.i.i, align 2
  %value151.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 7
  %77 = ptrtoint ptr %value151.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink445.i.i, ptr %value151.i.i, align 1
  %arrayidx154.c.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 8
  %78 = ptrtoint ptr %arrayidx154.c.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -55, ptr %arrayidx154.c.i.i, align 4
  %value166.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 9
  %79 = ptrtoint ptr %value166.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.sink.i.i, ptr %value166.i.i, align 1
  %arrayidx169.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 10
  %80 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -54, ptr %arrayidx169.i.i, align 2
  %div.i.i = sdiv i32 %47, 4
  %conv.i.i = trunc i32 %div.i.i to i8
  %value177.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 11
  %81 = ptrtoint ptr %value177.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i.i, ptr %value177.i.i, align 1
  %arrayidx179.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 12
  %82 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -53, ptr %arrayidx179.i.i, align 4
  %div184.i.i = sdiv i32 %49, 4
  %conv185.i.i = trunc i32 %div184.i.i to i8
  %value189.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 13
  %83 = ptrtoint ptr %value189.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv185.i.i, ptr %value189.i.i, align 1
  %arrayidx191.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 14
  %84 = ptrtoint ptr %arrayidx191.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -52, ptr %arrayidx191.i.i, align 2
  %div204.neg.i.i = sdiv i32 %47, -4
  %sub205.i.i = add nsw i32 %..i.i, %div204.neg.i.i
  %div228.neg.i.i = sdiv i32 %49, -4
  %sub229.i.i = add nsw i32 %.451.i.i, %div228.neg.i.i
  %conv231.sink.in.i.i = sdiv i32 %sub229.i.i, 2
  %conv231.sink.i.i = trunc i32 %conv231.sink.in.i.i to i8
  %conv207.sink.in.i.i = sdiv i32 %sub205.i.i, 2
  %conv207.sink.i.i = trunc i32 %conv207.sink.in.i.i to i8
  %85 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 15
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv207.sink.i.i, ptr %85, align 1
  %87 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 16
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -51, ptr %87, align 4
  %89 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 17
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv231.sink.i.i, ptr %89, align 1
  %arrayidx238.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 18
  %91 = ptrtoint ptr %arrayidx238.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -50, ptr %arrayidx238.i.i, align 2
  %value243.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 19
  %92 = ptrtoint ptr %value243.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %value243.i.i, align 1
  %arrayidx245.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 20
  %93 = ptrtoint ptr %arrayidx245.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -49, ptr %arrayidx245.i.i, align 4
  %value250.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 21
  %94 = ptrtoint ptr %value250.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %value250.i.i, align 1
  %arrayidx252.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 22
  %95 = ptrtoint ptr %arrayidx252.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -48, ptr %arrayidx252.i.i, align 2
  %value257.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 23
  %96 = ptrtoint ptr %value257.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 31, ptr %value257.i.i, align 1
  %arrayidx259.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 24
  %97 = ptrtoint ptr %arrayidx259.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -47, ptr %arrayidx259.i.i, align 4
  %value264.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 25
  %98 = ptrtoint ptr %value264.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 31, ptr %value264.i.i, align 1
  %arrayidx266.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 26
  %99 = ptrtoint ptr %arrayidx266.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -46, ptr %arrayidx266.i.i, align 2
  %value271.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 27
  %100 = ptrtoint ptr %value271.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %value271.i.i, align 1
  %arrayidx273.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 28
  %101 = ptrtoint ptr %arrayidx273.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -45, ptr %arrayidx273.i.i, align 4
  %value278.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 29
  %102 = ptrtoint ptr %value278.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %value278.i.i, align 1
  %arrayidx280.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 30
  %103 = ptrtoint ptr %arrayidx280.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -44, ptr %arrayidx280.i.i, align 2
  %value285.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 31
  %104 = ptrtoint ptr %value285.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -127, ptr %value285.i.i, align 1
  %arrayidx287.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 32
  %105 = ptrtoint ptr %arrayidx287.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -43, ptr %arrayidx287.i.i, align 4
  %value292.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 5, i32 1, i32 33
  %106 = ptrtoint ptr %value292.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -127, ptr %value292.i.i, align 1
  %reg_count.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %reg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 19, ptr %reg_count.i.i, align 1
  %call46.i.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.sink.i.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 38, i8 noundef zeroext 1) #9
  br label %config_sensor_410.exit.i

config_sensor_410.exit.i:                         ; preds = %if.end167.i.i, %do.end39.i.i
  %retval.0.i.i = phi i32 [ 19, %if.end167.i.i ], [ -22, %do.end39.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i) #9
  br label %configure_sensor.exit

sw.bb2.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i8.i) #9
  %108 = call ptr @memset(ptr %cmd.i8.i, i32 255, i32 72)
  %pnp_id.i9.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %109 = ptrtoint ptr %pnp_id.i9.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pnp_id.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 639, i32 %2)
  %cmp.i.i.i = icmp sgt i32 %2, 639
  call void @__sanitizer_cov_trace_const_cmp4(i32 479, i32 %4)
  %cmp1.i.i.i = icmp sgt i32 %4, 479
  %or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %if.then15.thread.i.i, label %if.end.i.i.i

if.then15.thread.i.i:                             ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %video_size.i615.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %111 = ptrtoint ptr %video_size.i615.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %video_size.i615.i.i, align 2
  br label %do.end.i.i.i

if.end.i.i.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %2)
  %cmp2.i.i10.i = icmp sgt i32 %2, 351
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %4)
  %cmp4.i.i11.i = icmp sgt i32 %4, 287
  %or.cond51.i.i12.i = and i1 %cmp2.i.i10.i, %cmp4.i.i11.i
  br i1 %or.cond51.i.i12.i, label %if.end.i.i.i.cpia2_match_video_size.exit.i.i_crit_edge, label %if.end6.i.i16.i

if.end.i.i.i.cpia2_match_video_size.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_match_video_size.exit.i.i

if.end6.i.i16.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %2)
  %cmp7.i.i13.i = icmp sgt i32 %2, 319
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %4)
  %cmp9.i.i14.i = icmp sgt i32 %4, 239
  %or.cond52.i.i15.i = and i1 %cmp7.i.i13.i, %cmp9.i.i14.i
  br i1 %or.cond52.i.i15.i, label %if.end6.i.i16.i.cpia2_match_video_size.exit.i.i_crit_edge, label %if.end11.i.i20.i

if.end6.i.i16.i.cpia2_match_video_size.exit.i.i_crit_edge: ; preds = %if.end6.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_match_video_size.exit.i.i

if.end11.i.i20.i:                                 ; preds = %if.end6.i.i16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %2)
  %cmp12.i.i17.i = icmp sgt i32 %2, 287
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %4)
  %cmp14.i.i18.i = icmp sgt i32 %4, 215
  %or.cond53.i.i19.i = and i1 %cmp12.i.i17.i, %cmp14.i.i18.i
  br i1 %or.cond53.i.i19.i, label %if.end11.i.i20.i.cpia2_match_video_size.exit.i.i_crit_edge, label %if.end16.i.i24.i

if.end11.i.i20.i.cpia2_match_video_size.exit.i.i_crit_edge: ; preds = %if.end11.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_match_video_size.exit.i.i

if.end16.i.i24.i:                                 ; preds = %if.end11.i.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp17.i.i21.i = icmp sgt i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %4)
  %cmp19.i.i22.i = icmp sgt i32 %4, 191
  %or.cond54.i.i23.i = and i1 %cmp17.i.i21.i, %cmp19.i.i22.i
  br i1 %or.cond54.i.i23.i, label %if.end16.i.i24.i.cpia2_match_video_size.exit.i.i_crit_edge, label %if.end21.i.i28.i

if.end16.i.i24.i.cpia2_match_video_size.exit.i.i_crit_edge: ; preds = %if.end16.i.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_match_video_size.exit.i.i

if.end21.i.i28.i:                                 ; preds = %if.end16.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %2)
  %cmp22.i.i25.i = icmp sgt i32 %2, 223
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %4)
  %cmp24.i.i26.i = icmp sgt i32 %4, 167
  %or.cond55.i.i27.i = and i1 %cmp22.i.i25.i, %cmp24.i.i26.i
  br i1 %or.cond55.i.i27.i, label %if.end21.i.i28.i.cpia2_match_video_size.exit.i.i_crit_edge, label %if.end26.i.i32.i

if.end21.i.i28.i.cpia2_match_video_size.exit.i.i_crit_edge: ; preds = %if.end21.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_match_video_size.exit.i.i

if.end26.i.i32.i:                                 ; preds = %if.end21.i.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %2)
  %cmp27.i.i29.i = icmp sgt i32 %2, 191
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %4)
  %cmp29.i.i30.i = icmp sgt i32 %4, 143
  %or.cond56.i.i31.i = and i1 %cmp27.i.i29.i, %cmp29.i.i30.i
  br i1 %or.cond56.i.i31.i, label %if.end26.i.i32.i.cpia2_match_video_size.exit.i.i_crit_edge, label %if.end31.i.i35.i

if.end26.i.i32.i.cpia2_match_video_size.exit.i.i_crit_edge: ; preds = %if.end26.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_match_video_size.exit.i.i

if.end31.i.i35.i:                                 ; preds = %if.end26.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %2)
  %cmp32.i.i33.i = icmp sgt i32 %2, 175
  %or.cond57.i.i34.i = and i1 %cmp32.i.i33.i, %cmp29.i.i30.i
  %spec.select.i.i.i = select i1 %or.cond57.i.i34.i, i32 3, i32 -1
  br label %cpia2_match_video_size.exit.i.i

cpia2_match_video_size.exit.i.i:                  ; preds = %if.end31.i.i35.i, %if.end26.i.i32.i.cpia2_match_video_size.exit.i.i_crit_edge, %if.end21.i.i28.i.cpia2_match_video_size.exit.i.i_crit_edge, %if.end16.i.i24.i.cpia2_match_video_size.exit.i.i_crit_edge, %if.end11.i.i20.i.cpia2_match_video_size.exit.i.i_crit_edge, %if.end6.i.i16.i.cpia2_match_video_size.exit.i.i_crit_edge, %if.end.i.i.i.cpia2_match_video_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %if.end.i.i.i.cpia2_match_video_size.exit.i.i_crit_edge ], [ 2, %if.end6.i.i16.i.cpia2_match_video_size.exit.i.i_crit_edge ], [ 4, %if.end11.i.i20.i.cpia2_match_video_size.exit.i.i_crit_edge ], [ 5, %if.end16.i.i24.i.cpia2_match_video_size.exit.i.i_crit_edge ], [ 6, %if.end21.i.i28.i.cpia2_match_video_size.exit.i.i_crit_edge ], [ 7, %if.end26.i.i32.i.cpia2_match_video_size.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end31.i.i35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %2)
  %cmp.i.i = icmp sgt i32 %2, 352
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %4)
  %cmp1.i.i = icmp sgt i32 %4, 288
  %or.cond.i36.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i36.i, label %cpia2_match_video_size.exit.i.i.if.end13.i.i_crit_edge, label %if.else.i.i

cpia2_match_video_size.exit.i.i.if.end13.i.i_crit_edge: ; preds = %cpia2_match_video_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %cpia2_match_video_size.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %2)
  %cmp2.i.i = icmp sgt i32 %2, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %4)
  %cmp4.i.i = icmp sgt i32 %4, 240
  %or.cond558.i.i = or i1 %cmp2.i.i, %cmp4.i.i
  br i1 %or.cond558.i.i, label %if.else.i.i.if.end13.i.i_crit_edge, label %if.else6.i.i

if.else.i.i.if.end13.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %2)
  %cmp7.i.i = icmp sgt i32 %2, 176
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %4)
  %cmp9.i.i = icmp sgt i32 %4, 144
  %or.cond559.i.i = or i1 %cmp7.i.i, %cmp9.i.i
  %not.or.cond559.i.i.demorgan = or i1 %cmp7.i.i, %cmp9.i.i
  %not.or.cond559.i.i = xor i1 %not.or.cond559.i.i.demorgan, true
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else6.i.i, %if.else.i.i.if.end13.i.i_crit_edge, %cpia2_match_video_size.exit.i.i.if.end13.i.i_crit_edge
  %cmp30.i.i = phi i1 [ false, %cpia2_match_video_size.exit.i.i.if.end13.i.i_crit_edge ], [ false, %if.else.i.i.if.end13.i.i_crit_edge ], [ %not.or.cond559.i.i, %if.else6.i.i ]
  %cmp116.i.i = phi i1 [ false, %cpia2_match_video_size.exit.i.i.if.end13.i.i_crit_edge ], [ false, %if.else.i.i.if.end13.i.i_crit_edge ], [ %or.cond559.i.i, %if.else6.i.i ]
  %cmp232.i.i = phi i1 [ false, %cpia2_match_video_size.exit.i.i.if.end13.i.i_crit_edge ], [ true, %if.else.i.i.if.end13.i.i_crit_edge ], [ false, %if.else6.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp14.i.i = icmp sgt i32 %retval.0.i.i.i, -1
  br i1 %cmp14.i.i, label %if.then15.i.i, label %do.end.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  %conv.i.i.i = trunc i32 %retval.0.i.i.i to i8
  %video_size.i.i37.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 2
  %112 = ptrtoint ptr %video_size.i.i37.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv.i.i.i, ptr %video_size.i.i37.i, align 2
  %113 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %retval.0.i.i.i, label %if.then15.i.i.set_vw_size.exit.i78.i_crit_edge [
    i32 0, label %if.then15.i.i.do.end.i.i.i_crit_edge
    i32 1, label %do.end10.i.i42.i
    i32 2, label %do.end22.i.i47.i
    i32 4, label %sw.bb31.i.i52.i
    i32 5, label %sw.bb40.i.i57.i
    i32 6, label %sw.bb49.i.i62.i
    i32 7, label %sw.bb58.i.i67.i
    i32 3, label %do.end70.i.i72.i
  ]

if.then15.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

if.then15.i.i.set_vw_size.exit.i78.i_crit_edge:   ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_vw_size.exit.i78.i

do.end.i.i.i:                                     ; preds = %if.then15.i.i.do.end.i.i.i_crit_edge, %if.then15.thread.i.i
  %cmp30599622.i.i = phi i1 [ false, %if.then15.thread.i.i ], [ %cmp30.i.i, %if.then15.i.i.do.end.i.i.i_crit_edge ]
  %cmp55600620.i.i = phi i1 [ true, %if.then15.thread.i.i ], [ %or.cond.i36.i, %if.then15.i.i.do.end.i.i.i_crit_edge ]
  %cmp116604618.i.i = phi i1 [ false, %if.then15.thread.i.i ], [ %cmp116.i.i, %if.then15.i.i.do.end.i.i.i_crit_edge ]
  %cmp232607616.i.i = phi i1 [ false, %if.then15.thread.i.i ], [ %cmp232.i.i, %if.then15.i.i.do.end.i.i.i_crit_edge ]
  %114 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 640, ptr %roi, align 4
  %115 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 480, ptr %height, align 4
  %width5.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %116 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 640, ptr %width5.i.i.i, align 8
  %height6.i.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %117 = ptrtoint ptr %height6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 480, ptr %height6.i.i.i, align 4
  br label %set_vw_size.exit.i78.i

do.end10.i.i42.i:                                 ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 352, ptr %roi, align 4
  %119 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 288, ptr %height, align 4
  %width17.i.i40.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %120 = ptrtoint ptr %width17.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 352, ptr %width17.i.i40.i, align 8
  %height18.i.i41.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %121 = ptrtoint ptr %height18.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 288, ptr %height18.i.i41.i, align 4
  br label %set_vw_size.exit.i78.i

do.end22.i.i47.i:                                 ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 320, ptr %roi, align 4
  %123 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 240, ptr %height, align 4
  %width29.i.i45.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %124 = ptrtoint ptr %width29.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 320, ptr %width29.i.i45.i, align 8
  %height30.i.i46.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %125 = ptrtoint ptr %height30.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 240, ptr %height30.i.i46.i, align 4
  br label %set_vw_size.exit.i78.i

sw.bb31.i.i52.i:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 288, ptr %roi, align 4
  %127 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 216, ptr %height, align 4
  %width38.i.i50.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %128 = ptrtoint ptr %width38.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 288, ptr %width38.i.i50.i, align 8
  %height39.i.i51.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %129 = ptrtoint ptr %height39.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 216, ptr %height39.i.i51.i, align 4
  br label %set_vw_size.exit.i78.i

sw.bb40.i.i57.i:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %width41.i.i53.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %130 = ptrtoint ptr %width41.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 256, ptr %width41.i.i53.i, align 8
  %height42.i.i54.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %131 = ptrtoint ptr %height42.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 192, ptr %height42.i.i54.i, align 4
  %132 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 256, ptr %roi, align 4
  %133 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 192, ptr %height, align 4
  br label %set_vw_size.exit.i78.i

sw.bb49.i.i62.i:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %width50.i.i58.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %134 = ptrtoint ptr %width50.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 224, ptr %width50.i.i58.i, align 8
  %height51.i.i59.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %135 = ptrtoint ptr %height51.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 168, ptr %height51.i.i59.i, align 4
  %136 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 224, ptr %roi, align 4
  %137 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 168, ptr %height, align 4
  br label %set_vw_size.exit.i78.i

sw.bb58.i.i67.i:                                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %width59.i.i63.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %138 = ptrtoint ptr %width59.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 192, ptr %width59.i.i63.i, align 8
  %height60.i.i64.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %139 = ptrtoint ptr %height60.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 144, ptr %height60.i.i64.i, align 4
  %140 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 192, ptr %roi, align 4
  %141 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 144, ptr %height, align 4
  br label %set_vw_size.exit.i78.i

do.end70.i.i72.i:                                 ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 176, ptr %roi, align 4
  %143 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 144, ptr %height, align 4
  %width77.i.i70.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %144 = ptrtoint ptr %width77.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 176, ptr %width77.i.i70.i, align 8
  %height78.i.i71.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %145 = ptrtoint ptr %height78.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 144, ptr %height78.i.i71.i, align 4
  br label %set_vw_size.exit.i78.i

set_vw_size.exit.i78.i:                           ; preds = %do.end70.i.i72.i, %sw.bb58.i.i67.i, %sw.bb49.i.i62.i, %sw.bb40.i.i57.i, %sw.bb31.i.i52.i, %do.end22.i.i47.i, %do.end10.i.i42.i, %do.end.i.i.i, %if.then15.i.i.set_vw_size.exit.i78.i_crit_edge
  %cmp30599623.i.i = phi i1 [ %cmp30.i.i, %if.then15.i.i.set_vw_size.exit.i78.i_crit_edge ], [ %cmp30599622.i.i, %do.end.i.i.i ], [ %cmp30.i.i, %do.end10.i.i42.i ], [ %cmp30.i.i, %do.end22.i.i47.i ], [ %cmp30.i.i, %sw.bb31.i.i52.i ], [ %cmp30.i.i, %sw.bb40.i.i57.i ], [ %cmp30.i.i, %sw.bb49.i.i62.i ], [ %cmp30.i.i, %sw.bb58.i.i67.i ], [ %cmp30.i.i, %do.end70.i.i72.i ]
  %cmp55600621.i.i = phi i1 [ %or.cond.i36.i, %if.then15.i.i.set_vw_size.exit.i78.i_crit_edge ], [ %cmp55600620.i.i, %do.end.i.i.i ], [ %or.cond.i36.i, %do.end10.i.i42.i ], [ %or.cond.i36.i, %do.end22.i.i47.i ], [ %or.cond.i36.i, %sw.bb31.i.i52.i ], [ %or.cond.i36.i, %sw.bb40.i.i57.i ], [ %or.cond.i36.i, %sw.bb49.i.i62.i ], [ %or.cond.i36.i, %sw.bb58.i.i67.i ], [ %or.cond.i36.i, %do.end70.i.i72.i ]
  %cmp116604619.i.i = phi i1 [ %cmp116.i.i, %if.then15.i.i.set_vw_size.exit.i78.i_crit_edge ], [ %cmp116604618.i.i, %do.end.i.i.i ], [ %cmp116.i.i, %do.end10.i.i42.i ], [ %cmp116.i.i, %do.end22.i.i47.i ], [ %cmp116.i.i, %sw.bb31.i.i52.i ], [ %cmp116.i.i, %sw.bb40.i.i57.i ], [ %cmp116.i.i, %sw.bb49.i.i62.i ], [ %cmp116.i.i, %sw.bb58.i.i67.i ], [ %cmp116.i.i, %do.end70.i.i72.i ]
  %cmp232607617.i.i = phi i1 [ %cmp232.i.i, %if.then15.i.i.set_vw_size.exit.i78.i_crit_edge ], [ %cmp232607616.i.i, %do.end.i.i.i ], [ %cmp232.i.i, %do.end10.i.i42.i ], [ %cmp232.i.i, %do.end22.i.i47.i ], [ %cmp232.i.i, %sw.bb31.i.i52.i ], [ %cmp232.i.i, %sw.bb40.i.i57.i ], [ %cmp232.i.i, %sw.bb49.i.i62.i ], [ %cmp232.i.i, %sw.bb58.i.i67.i ], [ %cmp232.i.i, %do.end70.i.i72.i ]
  %146 = ptrtoint ptr %roi to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %roi, align 4
  %148 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %height, align 4
  %req_mode.i74.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 1
  %150 = ptrtoint ptr %req_mode.i74.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 5, ptr %req_mode.i74.i, align 4
  %direction.i75.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 3
  %151 = ptrtoint ptr %direction.i75.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %direction.i75.i, align 2
  %buffer.i76.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5
  %152 = ptrtoint ptr %buffer.i76.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -61, ptr %buffer.i76.i, align 4
  %value.i.i = getelementptr inbounds %struct.cpia2_register, ptr %buffer.i76.i, i32 0, i32 1
  %spec.select.i77.i = select i1 %cmp30599623.i.i, i8 5, i8 1
  %153 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %spec.select.i77.i, ptr %value.i.i, align 1
  %arrayidx38.i.i = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer.i76.i, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -60, ptr %arrayidx38.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp40.i.i = icmp eq i32 %110, 1
  %value48.i.i = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer.i76.i, i32 0, i32 1, i32 1
  br i1 %cmp55600621.i.i, label %if.then76.i.i, label %if.else80.i.i

do.end.i.i:                                       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %config_sensor_500.exit.i

if.then76.i.i:                                    ; preds = %set_vw_size.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  %..i79.i = zext i1 %cmp40.i.i to i8
  %155 = ptrtoint ptr %value48.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %..i79.i, ptr %value48.i.i, align 1
  br label %if.end170.i.i

if.else80.i.i:                                    ; preds = %set_vw_size.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  %.665.i.i = select i1 %cmp40.i.i, i8 11, i8 18
  %156 = ptrtoint ptr %value48.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %.665.i.i, ptr %value48.i.i, align 1
  %spec.select662.i.i = select i1 %cmp116604619.i.i, i8 125, i8 -96
  %spec.select663.i.i = select i1 %cmp116604619.i.i, i8 64, i8 6
  br label %if.end170.i.i

if.end170.i.i:                                    ; preds = %if.else80.i.i, %if.then76.i.i
  %.sink86.i = phi i8 [ -96, %if.then76.i.i ], [ 80, %if.else80.i.i ]
  %.sink.i = phi i8 [ 2, %if.then76.i.i ], [ 1, %if.else80.i.i ]
  %.mux667.i.i = phi i32 [ 120, %if.then76.i.i ], [ 60, %if.else80.i.i ]
  %.mux.i.i = phi i32 [ 160, %if.then76.i.i ], [ 80, %if.else80.i.i ]
  %.sink652.i.i = phi i8 [ -6, %if.then76.i.i ], [ %spec.select662.i.i, %if.else80.i.i ]
  %.sink.i80.i = phi i8 [ 12, %if.then76.i.i ], [ %spec.select663.i.i, %if.else80.i.i ]
  %157 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -59, ptr %157, align 4
  %159 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 1
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %.sink86.i, ptr %159, align 1
  %161 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 2
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -58, ptr %161, align 2
  %163 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 3
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %.sink.i, ptr %163, align 1
  %165 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -57, ptr %165, align 4
  %value122.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 5
  %167 = ptrtoint ptr %value122.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %.sink652.i.i, ptr %value122.i.i, align 1
  %arrayidx131.c.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 6
  %168 = ptrtoint ptr %arrayidx131.c.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -56, ptr %arrayidx131.c.i.i, align 2
  %value144.c585.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 7
  %169 = ptrtoint ptr %value144.c585.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %.sink.i, ptr %value144.c585.i.i, align 1
  %arrayidx147.c.c586.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 8
  %170 = ptrtoint ptr %arrayidx147.c.c586.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -55, ptr %arrayidx147.c.c586.i.i, align 4
  %value163.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 9
  %171 = ptrtoint ptr %value163.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %.sink.i80.i, ptr %value163.i.i, align 1
  %arrayidx172.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 10
  %172 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -54, ptr %arrayidx172.i.i, align 2
  %div.i81.i = sdiv i32 %147, 4
  %conv182.i.i = trunc i32 %div.i81.i to i8
  %div199.i.i = sdiv i32 %149, 4
  %conv200.i.i = trunc i32 %div199.i.i to i8
  %conv182.sink.i.i = select i1 %cmp30599623.i.i, i8 88, i8 %conv182.i.i
  %conv200.sink.i.i = select i1 %cmp30599623.i.i, i8 72, i8 %conv200.i.i
  %173 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 11
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv182.sink.i.i, ptr %173, align 1
  %175 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 12
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -53, ptr %175, align 4
  %177 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 13
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv200.sink.i.i, ptr %177, align 1
  %arrayidx207.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 14
  %179 = ptrtoint ptr %arrayidx207.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -52, ptr %arrayidx207.i.i, align 2
  %div212.neg.i.i = sdiv i32 %147, -4
  %brmerge666.i.i = or i1 %cmp55600621.i.i, %cmp116604619.i.i
  %cmp232607617.not.i.i = xor i1 %cmp232607617.i.i, true
  %brmerge668.i.i = or i1 %brmerge666.i.i, %cmp232607617.not.i.i
  br i1 %brmerge668.i.i, label %if.end304.i.i, label %if.end304.thread.i.i

if.end304.thread.i.i:                             ; preds = %if.end170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub236.i.i = add nsw i32 %div212.neg.i.i, 88
  %div237.i.i = sdiv i32 %sub236.i.i, 2
  %conv238.i.i = trunc i32 %div237.i.i to i8
  %value242.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 15
  %180 = ptrtoint ptr %value242.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv238.i.i, ptr %value242.i.i, align 1
  %arrayidx256.c575.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 16
  %181 = ptrtoint ptr %arrayidx256.c575.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -51, ptr %arrayidx256.c575.i.i, align 4
  %div285.neg.i.i = sdiv i32 %149, -4
  %sub286.i.i = add nsw i32 %div285.neg.i.i, 72
  %div287.i.i = sdiv i32 %sub286.i.i, 2
  %conv288.i.i = trunc i32 %div287.i.i to i8
  %value292.i82.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 17
  %182 = ptrtoint ptr %value292.i82.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv288.i.i, ptr %value292.i82.i, align 1
  %arrayidx306625.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 18
  %183 = ptrtoint ptr %arrayidx306625.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -50, ptr %arrayidx306625.i.i, align 2
  br label %cpia2_send_command.exit.i.i

if.end304.i.i:                                    ; preds = %if.end170.i.i
  %.mux667.mux.i.i = select i1 %brmerge666.i.i, i32 %.mux667.i.i, i32 36
  %.mux.mux.i.i = select i1 %brmerge666.i.i, i32 %.mux.i.i, i32 44
  %sub224.i.i = add nsw i32 %.mux.mux.i.i, %div212.neg.i.i
  %div225.i.i = sdiv i32 %sub224.i.i, 2
  %conv226.i.i = trunc i32 %div225.i.i to i8
  %value230.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 15
  %184 = ptrtoint ptr %value230.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv226.i.i, ptr %value230.i.i, align 1
  %arrayidx256.c.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 16
  %185 = ptrtoint ptr %arrayidx256.c.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -51, ptr %arrayidx256.c.i.i, align 4
  %div273.neg.i.i = sdiv i32 %149, -4
  %sub274.i.i = add nsw i32 %.mux667.mux.i.i, %div273.neg.i.i
  %div275.i.i = sdiv i32 %sub274.i.i, 2
  %conv276.i.i = trunc i32 %div275.i.i to i8
  %value280.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 17
  %186 = ptrtoint ptr %value280.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv276.i.i, ptr %value280.i.i, align 1
  %arrayidx306.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 18
  %187 = ptrtoint ptr %arrayidx306.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -50, ptr %arrayidx306.i.i, align 2
  %brmerge.i.i = or i1 %cmp30599623.i.i, %cmp232607617.i.i
  br i1 %brmerge.i.i, label %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge, label %if.else427.i.i

if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge: ; preds = %if.end304.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i

if.else427.i.i:                                   ; preds = %if.end304.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i

cpia2_send_command.exit.i.i:                      ; preds = %if.else427.i.i, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge, %if.end304.thread.i.i
  %.sink659.i.i = phi i8 [ 0, %if.else427.i.i ], [ 36, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge ], [ 36, %if.end304.thread.i.i ]
  %.sink658.i.i = phi i8 [ 0, %if.else427.i.i ], [ 32, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge ], [ 32, %if.end304.thread.i.i ]
  %.sink657.i.i = phi i8 [ 31, %if.else427.i.i ], [ 26, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge ], [ 26, %if.end304.thread.i.i ]
  %.sink656.i.i = phi i8 [ 31, %if.else427.i.i ], [ 21, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge ], [ 21, %if.end304.thread.i.i ]
  %.sink655.i.i = phi i8 [ -127, %if.else427.i.i ], [ 43, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge ], [ 43, %if.end304.thread.i.i ]
  %.sink654.i.i = phi i8 [ -127, %if.else427.i.i ], [ 19, %if.end304.i.i.cpia2_send_command.exit.i.i_crit_edge ], [ 19, %if.end304.thread.i.i ]
  %value322.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 19
  %188 = ptrtoint ptr %value322.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %.sink659.i.i, ptr %value322.i.i, align 1
  %arrayidx325.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 20
  %189 = ptrtoint ptr %arrayidx325.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -49, ptr %arrayidx325.i.i, align 4
  %value341.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 21
  %190 = ptrtoint ptr %value341.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %.sink658.i.i, ptr %value341.i.i, align 1
  %arrayidx344.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 22
  %191 = ptrtoint ptr %arrayidx344.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -48, ptr %arrayidx344.i.i, align 2
  %value360.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 23
  %192 = ptrtoint ptr %value360.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %.sink657.i.i, ptr %value360.i.i, align 1
  %arrayidx363.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 24
  %193 = ptrtoint ptr %arrayidx363.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -47, ptr %arrayidx363.i.i, align 4
  %value379.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 25
  %194 = ptrtoint ptr %value379.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %.sink656.i.i, ptr %value379.i.i, align 1
  %arrayidx382.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 26
  %195 = ptrtoint ptr %arrayidx382.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 -46, ptr %arrayidx382.i.i, align 2
  %value387.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 27
  %196 = ptrtoint ptr %value387.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %value387.i.i, align 1
  %arrayidx389.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 28
  %197 = ptrtoint ptr %arrayidx389.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -45, ptr %arrayidx389.i.i, align 4
  %value394.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 29
  %198 = ptrtoint ptr %value394.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %value394.i.i, align 1
  %arrayidx396.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 30
  %199 = ptrtoint ptr %arrayidx396.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -44, ptr %arrayidx396.i.i, align 2
  %value412.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 31
  %200 = ptrtoint ptr %value412.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %.sink655.i.i, ptr %value412.i.i, align 1
  %arrayidx415.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 32
  %201 = ptrtoint ptr %arrayidx415.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -43, ptr %arrayidx415.i.i, align 4
  %value431.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 5, i32 1, i32 33
  %202 = ptrtoint ptr %value431.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %.sink654.i.i, ptr %value431.i.i, align 1
  %reg_count.i83.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i8.i, i32 0, i32 2
  %203 = ptrtoint ptr %reg_count.i83.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 19, ptr %reg_count.i83.i, align 1
  %call46.i.i84.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i76.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 38, i8 noundef zeroext 1) #9
  br label %config_sensor_500.exit.i

config_sensor_500.exit.i:                         ; preds = %cpia2_send_command.exit.i.i, %do.end.i.i
  %retval.0.i85.i = phi i32 [ 19, %cpia2_send_command.exit.i.i ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i8.i) #9
  br label %configure_sensor.exit

configure_sensor.exit:                            ; preds = %config_sensor_500.exit.i, %config_sensor_410.exit.i
  %retval.0.i = phi i32 [ %retval.0.i85.i, %config_sensor_500.exit.i ], [ %retval.0.i.i, %config_sensor_410.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %configure_sensor.exit.do.end_crit_edge, label %cpia2_send_command.exit

configure_sensor.exit.do.end_crit_edge:           ; preds = %configure_sensor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %configure_sensor.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i882 = phi i32 [ %retval.0.i, %configure_sensor.exit.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %retval.0.i882) #12
  br label %cleanup

cpia2_send_command.exit:                          ; preds = %configure_sensor.exit
  %req_mode = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %204 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 5, ptr %req_mode, align 4
  %direction = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 3
  %205 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %direction, align 2
  %reg_count = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %206 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 2, ptr %reg_count, align 1
  %buffer = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %207 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -96, ptr %buffer, align 4
  %value = getelementptr inbounds %struct.cpia2_register, ptr %buffer, i32 0, i32 1
  %208 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 64, ptr %value, align 1
  %arrayidx8 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer, i32 0, i32 1
  %209 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -96, ptr %arrayidx8, align 2
  %value12 = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer, i32 0, i32 1, i32 1
  %210 = ptrtoint ptr %value12 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 96, ptr %value12, align 1
  %call46.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1) #9
  call fastcc void @cpia2_set_high_power(ptr noundef %cam)
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %211 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %212)
  %cmp16 = icmp eq i32 %212, 1
  br i1 %cmp16, label %cpia2_send_command.exit315, label %cpia2_send_command.exit.if.end27_crit_edge

cpia2_send_command.exit.if.end27_crit_edge:       ; preds = %cpia2_send_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

cpia2_send_command.exit315:                       ; preds = %cpia2_send_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 4, ptr %req_mode, align 4
  %214 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 4, ptr %buffer, align 4
  %215 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 1, ptr %value, align 1
  %216 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %reg_count, align 1
  %217 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %direction, align 2
  %call46.i314 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext %218) #9
  br label %if.end27

if.end27:                                         ; preds = %cpia2_send_command.exit315, %cpia2_send_command.exit.if.end27_crit_edge
  %call29 = call i32 @schedule_timeout_interruptible(i32 noundef 10) #9
  %219 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp33 = icmp eq i32 %220, 1
  br i1 %cmp33, label %if.then34, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #9
  %221 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %fw_name.i) #9
  %222 = call ptr @memcpy(ptr %fw_name.i, ptr @__const.apply_vp_patch.fw_name, i32 22)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %223 = call ptr @memset(ptr %cmd.i, i32 255, i32 72)
  %dev.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %224 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %225, i32 0, i32 15
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %dev1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cpia2_send_onebyte_command.exit.i, label %do.end.i

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %fw_name.i) #12
  br label %apply_vp_patch.exit

cpia2_send_onebyte_command.exit.i:                ; preds = %if.then34
  %req_mode.i316 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 1
  %226 = ptrtoint ptr %req_mode.i316 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 14, ptr %req_mode.i316, align 4
  %direction.i317 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %227 = ptrtoint ptr %direction.i317 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %direction.i317, align 2
  %228 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %data.i, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 1
  %buffer.i.i318 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %234 = ptrtoint ptr %buffer.i.i318 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %buffer.i.i318, align 4
  %start1.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %235 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 10, ptr %start1.i.i, align 1
  %reg_count.i.i319 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %236 = ptrtoint ptr %reg_count.i.i319 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %reg_count.i.i319, align 1
  %call46.i.i.i320 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i318, i8 noundef zeroext 14, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  %237 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %fw.i, align 4
  %data5.i = getelementptr inbounds %struct.firmware, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %data5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %240, i32 1
  %241 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx6.i, align 1
  %243 = ptrtoint ptr %buffer.i.i318 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %buffer.i.i318, align 4
  %244 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 11, ptr %start1.i.i, align 1
  %245 = ptrtoint ptr %reg_count.i.i319 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %reg_count.i.i319, align 1
  %246 = ptrtoint ptr %req_mode.i316 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %req_mode.i316, align 4
  %248 = lshr i8 %247, 2
  %249 = and i8 %248, 3
  %250 = zext i8 %249 to i32
  %switch.shiftamt = shl nuw nsw i32 %250, 3
  %switch.downshift = lshr i32 184549387, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt886 = shl nuw nsw i32 %250, 3
  %switch.downshift887 = lshr i32 17039873, %switch.shiftamt886
  %switch.masked888 = trunc i32 %switch.downshift887 to i8
  %251 = ptrtoint ptr %direction.i317 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %direction.i317, align 2
  %call46.i.i51.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i318, i8 noundef zeroext %247, i8 noundef zeroext %switch.masked, i8 noundef zeroext %switch.masked888, i8 noundef zeroext %252) #9
  %253 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %fw.i, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %256)
  %cmp94.i = icmp ugt i32 %256, 2
  br i1 %cmp94.i, label %cpia2_send_onebyte_command.exit.i.for.body.i_crit_edge, label %cpia2_send_onebyte_command.exit.i.for.end.i_crit_edge

cpia2_send_onebyte_command.exit.i.for.end.i_crit_edge: ; preds = %cpia2_send_onebyte_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cpia2_send_onebyte_command.exit.i.for.body.i_crit_edge: ; preds = %cpia2_send_onebyte_command.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %cpia2_send_command.exit.i.for.body.i_crit_edge, %cpia2_send_onebyte_command.exit.i.for.body.i_crit_edge
  %257 = phi ptr [ %275, %cpia2_send_command.exit.i.for.body.i_crit_edge ], [ %254, %cpia2_send_onebyte_command.exit.i.for.body.i_crit_edge ]
  %i.095.i = phi i32 [ %add.i, %cpia2_send_command.exit.i.for.body.i_crit_edge ], [ 2, %cpia2_send_onebyte_command.exit.i.for.body.i_crit_edge ]
  %258 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 12, ptr %start1.i.i, align 1
  %259 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %257, align 4
  %sub.i = sub i32 %260, %i.095.i
  %261 = call i32 @llvm.umin.i32(i32 %sub.i, i32 64) #9
  %conv.i = trunc i32 %261 to i8
  %262 = ptrtoint ptr %reg_count.i.i319 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %conv.i, ptr %reg_count.i.i319, align 1
  %data12.i = getelementptr inbounds %struct.firmware, ptr %257, i32 0, i32 1
  %263 = ptrtoint ptr %data12.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %data12.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %264, i32 %i.095.i
  %265 = call ptr @memcpy(ptr %buffer.i.i318, ptr %arrayidx13.i, i32 %261)
  %266 = ptrtoint ptr %req_mode.i316 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %req_mode.i316, align 4
  %268 = lshr i8 %267, 2
  %269 = and i8 %268, 3
  %270 = zext i8 %269 to i32
  %271 = zext i32 %270 to i64
  call void @__sanitizer_cov_trace_switch(i64 %271, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %270, label %entry.unreachabledefault.i.i [
    i32 1, label %sw.bb.i.i
    i32 0, label %for.body.i.cpia2_send_command.exit.i_crit_edge
    i32 2, label %sw.bb17.i.i
    i32 3, label %for.body.i.cpia2_send_command.exit.i_crit_edge916
  ]

for.body.i.cpia2_send_command.exit.i_crit_edge916: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

for.body.i.cpia2_send_command.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = shl nuw i8 %conv.i, 1
  br label %cpia2_send_command.exit.i

sw.bb17.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul20.i.i = shl i8 %conv.i, 2
  br label %cpia2_send_command.exit.i

entry.unreachabledefault.i.i:                     ; preds = %for.body.i
  unreachable

cpia2_send_command.exit.i:                        ; preds = %sw.bb17.i.i, %sw.bb.i.i, %for.body.i.cpia2_send_command.exit.i_crit_edge, %for.body.i.cpia2_send_command.exit.i_crit_edge916
  %start.0.i.i = phi i8 [ 0, %sw.bb17.i.i ], [ 0, %sw.bb.i.i ], [ 12, %for.body.i.cpia2_send_command.exit.i_crit_edge ], [ 12, %for.body.i.cpia2_send_command.exit.i_crit_edge916 ]
  %count.0.i.i = phi i8 [ %mul20.i.i, %sw.bb17.i.i ], [ %mul.i.i, %sw.bb.i.i ], [ %conv.i, %for.body.i.cpia2_send_command.exit.i_crit_edge ], [ %conv.i, %for.body.i.cpia2_send_command.exit.i_crit_edge916 ]
  %272 = ptrtoint ptr %direction.i317 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %direction.i317, align 2
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i318, i8 noundef zeroext %267, i8 noundef zeroext %start.0.i.i, i8 noundef zeroext %count.0.i.i, i8 noundef zeroext %273) #9
  %add.i = add i32 %i.095.i, 64
  %274 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %fw.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %cmp.i = icmp ult i32 %add.i, %277
  br i1 %cmp.i, label %cpia2_send_command.exit.i.for.body.i_crit_edge, label %cpia2_send_command.exit.i.for.end.i_crit_edge

cpia2_send_command.exit.i.for.end.i_crit_edge:    ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cpia2_send_command.exit.i.for.body.i_crit_edge:   ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %cpia2_send_command.exit.i.for.end.i_crit_edge, %cpia2_send_onebyte_command.exit.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %254, %cpia2_send_onebyte_command.exit.i.for.end.i_crit_edge ], [ %275, %cpia2_send_command.exit.i.for.end.i_crit_edge ]
  %data17.i = getelementptr inbounds %struct.firmware, ptr %.lcssa.i, i32 0, i32 1
  %278 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %data17.i, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %279, align 1
  %282 = ptrtoint ptr %buffer.i.i318 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %buffer.i.i318, align 4
  %283 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 10, ptr %start1.i.i, align 1
  %284 = ptrtoint ptr %reg_count.i.i319 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 1, ptr %reg_count.i.i319, align 1
  %285 = ptrtoint ptr %req_mode.i316 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %req_mode.i316, align 4
  %287 = lshr i8 %286, 2
  %288 = and i8 %287, 3
  %289 = zext i8 %288 to i32
  %switch.shiftamt889 = shl nuw nsw i32 %289, 3
  %switch.downshift890 = lshr i32 167772170, %switch.shiftamt889
  %switch.masked891 = trunc i32 %switch.downshift890 to i8
  %switch.shiftamt892 = shl nuw nsw i32 %289, 3
  %switch.downshift893 = lshr i32 17039873, %switch.shiftamt892
  %switch.masked894 = trunc i32 %switch.downshift893 to i8
  %290 = ptrtoint ptr %direction.i317 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %direction.i317, align 2
  %call46.i.i65.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i318, i8 noundef zeroext %286, i8 noundef zeroext %switch.masked891, i8 noundef zeroext %switch.masked894, i8 noundef zeroext %291) #9
  %292 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %fw.i, align 4
  %data20.i = getelementptr inbounds %struct.firmware, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %data20.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %data20.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %295, i32 1
  %296 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx21.i, align 1
  %298 = ptrtoint ptr %buffer.i.i318 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %buffer.i.i318, align 4
  %299 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 11, ptr %start1.i.i, align 1
  %300 = ptrtoint ptr %reg_count.i.i319 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 1, ptr %reg_count.i.i319, align 1
  %301 = ptrtoint ptr %req_mode.i316 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %req_mode.i316, align 4
  %303 = lshr i8 %302, 2
  %304 = and i8 %303, 3
  %305 = zext i8 %304 to i32
  %switch.shiftamt907 = shl nuw nsw i32 %305, 3
  %switch.downshift908 = lshr i32 184549387, %switch.shiftamt907
  %switch.masked909 = trunc i32 %switch.downshift908 to i8
  %switch.shiftamt910 = shl nuw nsw i32 %305, 3
  %switch.downshift911 = lshr i32 17039873, %switch.shiftamt910
  %switch.masked912 = trunc i32 %switch.downshift911 to i8
  %306 = ptrtoint ptr %direction.i317 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %direction.i317, align 2
  %call46.i.i78.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i318, i8 noundef zeroext %302, i8 noundef zeroext %switch.masked909, i8 noundef zeroext %switch.masked912, i8 noundef zeroext %307) #9
  %308 = ptrtoint ptr %buffer.i.i318 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 1, ptr %buffer.i.i318, align 4
  %309 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 13, ptr %start1.i.i, align 1
  %310 = ptrtoint ptr %reg_count.i.i319 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 1, ptr %reg_count.i.i319, align 1
  %311 = ptrtoint ptr %req_mode.i316 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %req_mode.i316, align 4
  %313 = lshr i8 %312, 2
  %314 = and i8 %313, 3
  %315 = zext i8 %314 to i32
  %switch.shiftamt895 = shl nuw nsw i32 %315, 3
  %switch.downshift896 = lshr i32 218103821, %switch.shiftamt895
  %switch.masked897 = trunc i32 %switch.downshift896 to i8
  %switch.shiftamt898 = shl nuw nsw i32 %315, 3
  %switch.downshift899 = lshr i32 17039873, %switch.shiftamt898
  %switch.masked900 = trunc i32 %switch.downshift899 to i8
  %316 = ptrtoint ptr %direction.i317 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %direction.i317, align 2
  %call46.i.i91.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i318, i8 noundef zeroext %312, i8 noundef zeroext %switch.masked897, i8 noundef zeroext %switch.masked900, i8 noundef zeroext %317) #9
  %318 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %319) #9
  br label %apply_vp_patch.exit

apply_vp_patch.exit:                              ; preds = %for.end.i, %do.end.i
  %retval.0.i321 = phi i32 [ %call.i, %do.end.i ], [ 0, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %fw_name.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %if.end36

if.end36:                                         ; preds = %apply_vp_patch.exit, %if.end27.if.end36_crit_edge
  %retval1.0 = phi i32 [ %retval.0.i321, %apply_vp_patch.exit ], [ %retval.0.i, %if.end27.if.end36_crit_edge ]
  %call38 = call i32 @schedule_timeout_interruptible(i32 noundef 10) #9
  %320 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %321)
  %cmp42 = icmp eq i32 %321, 2
  br i1 %cmp42, label %cpia2_send_command.exit341, label %if.end36.if.end102_crit_edge

if.end36.if.end102_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

cpia2_send_command.exit341:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %322 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 6, ptr %req_mode, align 4
  %323 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 58, ptr %buffer, align 4
  %324 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 0, ptr %value, align 1
  %325 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 59, ptr %arrayidx8, align 2
  %326 = ptrtoint ptr %value12 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 -110, ptr %value12, align 1
  %arrayidx58 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1
  %327 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 60, ptr %arrayidx58, align 4
  %value62 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 1
  %328 = ptrtoint ptr %value62 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 -1, ptr %value62, align 1
  %arrayidx64 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 2
  %329 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 61, ptr %arrayidx64, align 2
  %value68 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 3
  %330 = ptrtoint ptr %value68 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 -1, ptr %value68, align 1
  %arrayidx70 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 4
  %331 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 34, ptr %arrayidx70, align 4
  %value74 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 5
  %332 = ptrtoint ptr %value74 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 -128, ptr %value74, align 1
  %arrayidx76 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 6
  %333 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 10, ptr %arrayidx76, align 2
  %value80 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 7
  %334 = ptrtoint ptr %value80 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 1, ptr %value80, align 1
  %arrayidx82 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 8
  %335 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 11, ptr %arrayidx82, align 4
  %value86 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 9
  %336 = ptrtoint ptr %value86 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 -29, ptr %value86, align 1
  %arrayidx88 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 10
  %337 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 12, ptr %arrayidx88, align 2
  %value92 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 11
  %338 = ptrtoint ptr %value92 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 2, ptr %value92, align 1
  %arrayidx94 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 12
  %339 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 12, ptr %arrayidx94, align 4
  %value98 = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5, i32 1, i32 13
  %340 = ptrtoint ptr %value98 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 -4, ptr %value98, align 1
  %341 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 1, ptr %direction, align 2
  %342 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 9, ptr %reg_count, align 1
  %call46.i340 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 1) #9
  br label %if.end102

if.end102:                                        ; preds = %cpia2_send_command.exit341, %if.end36.if.end102_crit_edge
  %343 = ptrtoint ptr %roi to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %roi, align 4
  %345 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %height, align 4
  %347 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %sensor_flags.i, align 2
  %349 = zext i8 %348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %349, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %348, label %do.end.i348 [
    i8 1, label %if.end102.sw.bb.i345_crit_edge
    i8 2, label %if.end102.sw.bb.i345_crit_edge917
    i8 4, label %if.end102.sw.bb.i345_crit_edge918
    i8 8, label %if.end102.sw.bb.i345_crit_edge919
    i8 16, label %sw.bb9.i
  ]

if.end102.sw.bb.i345_crit_edge919:                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i345

if.end102.sw.bb.i345_crit_edge918:                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i345

if.end102.sw.bb.i345_crit_edge917:                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i345

if.end102.sw.bb.i345_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i345

sw.bb.i345:                                       ; preds = %if.end102.sw.bb.i345_crit_edge, %if.end102.sw.bb.i345_crit_edge917, %if.end102.sw.bb.i345_crit_edge918, %if.end102.sw.bb.i345_crit_edge919
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %344)
  %cmp.i344 = icmp sgt i32 %344, 176
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %346)
  %cmp7.i = icmp sgt i32 %346, 144
  %or.cond.i = select i1 %cmp.i344, i1 true, i1 %cmp7.i
  %user_mode.0.i = select i1 %or.cond.i, i8 1, i8 2
  br label %do.end30.i

sw.bb9.i:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %344)
  %cmp10.i = icmp sgt i32 %344, 352
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %346)
  %cmp13.i = icmp sgt i32 %346, 288
  %or.cond1.i = select i1 %cmp10.i, i1 true, i1 %cmp13.i
  %user_mode.1.i = select i1 %or.cond1.i, i8 32, i8 8
  %350 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %351)
  %cmp19.i = icmp eq i32 %351, 1
  %spec.select.i = select i1 %cmp19.i, i8 8, i8 32
  br label %do.end30.i

do.end.i348:                                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i346 = zext i8 %348 to i32
  %call.i347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv.i346) #12
  br label %set_default_user_mode.exit

do.end30.i:                                       ; preds = %sw.bb9.i, %sw.bb.i345
  %user_mode.2.i = phi i8 [ %user_mode.0.i, %sw.bb.i345 ], [ %user_mode.1.i, %sw.bb9.i ]
  %frame_rate.0.i = phi i8 [ 32, %sw.bb.i345 ], [ %spec.select.i, %sw.bb9.i ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i342) #9
  %352 = getelementptr inbounds i8, ptr %cmd.i.i342, i32 4
  %353 = getelementptr inbounds i8, ptr %cmd.i.i342, i32 8
  %354 = call ptr @memset(ptr %353, i32 255, i32 64)
  %355 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %pnp_id, align 4
  %357 = ptrtoint ptr %cmd.i.i342 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 27, ptr %cmd.i.i342, align 4
  %reg_count.i.i350 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i342, i32 0, i32 2
  %direction3.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i342, i32 0, i32 3
  %358 = ptrtoint ptr %direction3.i.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 1, ptr %direction3.i.i, align 2
  %359 = ptrtoint ptr %353 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %user_mode.2.i, ptr %353, align 4
  %360 = ptrtoint ptr %352 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 2, ptr %352, align 4
  %361 = ptrtoint ptr %reg_count.i.i350 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 1, ptr %reg_count.i.i350, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %356)
  %cmp130.i.i = icmp eq i32 %356, 1
  %start132.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i342, i32 0, i32 4
  %..i = select i1 %cmp130.i.i, i8 16, i8 19
  %362 = ptrtoint ptr %start132.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %..i, ptr %start132.i.i, align 1
  %call46.i.i.i351 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %353, i8 noundef zeroext 2, i8 noundef zeroext %..i, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i342) #9
  %frame_rate33.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 1
  %363 = ptrtoint ptr %frame_rate33.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %frame_rate33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %cmp35.not.i = icmp ne i8 %364, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %frame_rate.0.i, i8 %364)
  %cmp42.i = icmp ugt i8 %frame_rate.0.i, %364
  %or.cond2.i = and i1 %cmp35.not.i, %cmp42.i
  %frame_rate.1.i = select i1 %or.cond2.i, i8 %364, i8 %frame_rate.0.i
  %365 = zext i8 %frame_rate.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %365, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %frame_rate.1.i, label %do.end30.i.set_default_user_mode.exit_crit_edge [
    i8 32, label %do.end30.i.sw.bb.i.i353_crit_edge
    i8 16, label %do.end30.i.sw.bb.i.i353_crit_edge920
    i8 8, label %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge
    i8 4, label %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge921
    i8 2, label %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge922
    i8 1, label %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge923
  ]

do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge923: ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i.i

do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge922: ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i.i

do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge921: ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i.i

do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge: ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i.i

do.end30.i.sw.bb.i.i353_crit_edge920:             ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i353

do.end30.i.sw.bb.i.i353_crit_edge:                ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i353

do.end30.i.set_default_user_mode.exit_crit_edge:  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_default_user_mode.exit

sw.bb.i.i353:                                     ; preds = %do.end30.i.sw.bb.i.i353_crit_edge, %do.end30.i.sw.bb.i.i353_crit_edge920
  %366 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %367)
  %cmp.i.i352 = icmp eq i32 %367, 1
  br i1 %cmp.i.i352, label %land.lhs.true.i.i, label %sw.bb.i.i353.cpia2_send_command.exit.i.i.i_crit_edge

sw.bb.i.i353.cpia2_send_command.exit.i.i.i_crit_edge: ; preds = %sw.bb.i.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i353
  %368 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %sensor_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %369)
  %cmp3.i.i = icmp eq i8 %369, 16
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.set_default_user_mode.exit_crit_edge, label %land.lhs.true.i.i.cpia2_send_command.exit.i.i.i_crit_edge

land.lhs.true.i.i.cpia2_send_command.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i.i.i

land.lhs.true.i.i.set_default_user_mode.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_default_user_mode.exit

cpia2_send_command.exit.i.i.i:                    ; preds = %land.lhs.true.i.i.cpia2_send_command.exit.i.i.i_crit_edge, %sw.bb.i.i353.cpia2_send_command.exit.i.i.i_crit_edge, %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge, %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge921, %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge922, %do.end30.i.cpia2_send_command.exit.i.i.i_crit_edge923
  %370 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %371)
  %cmp9.i.i354 = icmp eq i32 %371, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %frame_rate.1.i)
  %cmp12.i.i = icmp eq i8 %frame_rate.1.i, 8
  %372 = and i1 %cmp12.i.i, %cmp9.i.i354
  %conv16.i.i = select i1 %372, i8 0, i8 %frame_rate.1.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i.i) #9
  %373 = getelementptr inbounds i8, ptr %cmd.i.i.i, i32 4
  %374 = getelementptr inbounds i8, ptr %cmd.i.i.i, i32 8
  %375 = call ptr @memset(ptr %374, i32 255, i32 64)
  %376 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 29, ptr %cmd.i.i.i, align 4
  %reg_count.i.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i.i, i32 0, i32 2
  %direction3.i.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i.i, i32 0, i32 3
  %377 = ptrtoint ptr %direction3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 1, ptr %direction3.i.i.i, align 2
  %378 = ptrtoint ptr %373 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 2, ptr %373, align 4
  %379 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 1, ptr %reg_count.i.i.i, align 1
  %spec.select.i.i.i355 = select i1 %cmp9.i.i354, i8 17, i8 20
  %380 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i.i, i32 0, i32 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %spec.select.i.i.i355, ptr %380, align 1
  %382 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %conv16.i.i, ptr %374, align 4
  %call46.i.i.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %374, i8 noundef zeroext 2, i8 noundef zeroext %spec.select.i.i.i355, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call46.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i.i) #9
  br i1 %tobool.not.i.i.i, label %if.then19.i.i, label %cpia2_send_command.exit.i.i.i.set_default_user_mode.exit_crit_edge

cpia2_send_command.exit.i.i.i.set_default_user_mode.exit_crit_edge: ; preds = %cpia2_send_command.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_default_user_mode.exit

if.then19.i.i:                                    ; preds = %cpia2_send_command.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %383 = ptrtoint ptr %frame_rate33.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %conv16.i.i, ptr %frame_rate33.i, align 1
  br label %set_default_user_mode.exit

set_default_user_mode.exit:                       ; preds = %if.then19.i.i, %cpia2_send_command.exit.i.i.i.set_default_user_mode.exit_crit_edge, %land.lhs.true.i.i.set_default_user_mode.exit_crit_edge, %do.end30.i.set_default_user_mode.exit_crit_edge, %do.end.i348
  %call105 = call i32 @schedule_timeout_interruptible(i32 noundef 10) #9
  %stream_mode.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %384 = ptrtoint ptr %stream_mode.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %stream_mode.i, align 1
  %conv.i358 = zext i8 %385 to i32
  %call.i359 = call i32 @cpia2_usb_change_streaming_alternate(ptr noundef %cam, i32 noundef %conv.i358) #9
  %gpio_direction.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 3
  %386 = ptrtoint ptr %gpio_direction.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %gpio_direction.i, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i357) #9
  %388 = getelementptr inbounds i8, ptr %cmd.i.i357, i32 4
  %389 = getelementptr inbounds i8, ptr %cmd.i.i357, i32 8
  %390 = call ptr @memset(ptr %389, i32 255, i32 64)
  %391 = ptrtoint ptr %cmd.i.i357 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 17, ptr %cmd.i.i357, align 4
  %reg_count.i.i361 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i357, i32 0, i32 2
  %direction3.i.i362 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i357, i32 0, i32 3
  %392 = ptrtoint ptr %direction3.i.i362 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 1, ptr %direction3.i.i362, align 2
  %393 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %387, ptr %389, align 4
  %394 = ptrtoint ptr %388 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 1, ptr %388, align 4
  %395 = ptrtoint ptr %reg_count.i.i361 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 1, ptr %reg_count.i.i361, align 1
  %start69.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i357, i32 0, i32 4
  %396 = ptrtoint ptr %start69.i.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 -112, ptr %start69.i.i, align 1
  %call46.i.i.i363 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %389, i8 noundef zeroext 1, i8 noundef zeroext -112, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i357) #9
  %gpio_data.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 4
  %397 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %gpio_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i1.i) #9
  %399 = getelementptr inbounds i8, ptr %cmd.i1.i, i32 4
  %400 = getelementptr inbounds i8, ptr %cmd.i1.i, i32 8
  %401 = call ptr @memset(ptr %400, i32 255, i32 64)
  %402 = ptrtoint ptr %cmd.i1.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 19, ptr %cmd.i1.i, align 4
  %reg_count.i4.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1.i, i32 0, i32 2
  %direction3.i5.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1.i, i32 0, i32 3
  %403 = ptrtoint ptr %direction3.i5.i to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 1, ptr %direction3.i5.i, align 2
  %404 = ptrtoint ptr %400 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %398, ptr %400, align 4
  %405 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 1, ptr %399, align 4
  %406 = ptrtoint ptr %reg_count.i4.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 1, ptr %reg_count.i4.i, align 1
  %start62.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1.i, i32 0, i32 4
  %407 = ptrtoint ptr %start62.i.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 -111, ptr %start62.i.i, align 1
  %call46.i.i19.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %400, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i1.i) #9
  %hdl.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 2
  %call6.i = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl.i) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i.i356) #9
  %408 = getelementptr inbounds i8, ptr %cmd.i.i.i356, i32 4
  %409 = getelementptr inbounds i8, ptr %cmd.i.i.i356, i32 8
  %410 = call ptr @memset(ptr %409, i32 255, i32 64)
  %411 = ptrtoint ptr %cmd.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 32, ptr %cmd.i.i.i356, align 4
  %reg_count.i.i.i364 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i.i356, i32 0, i32 2
  %direction3.i.i.i365 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i.i356, i32 0, i32 3
  %412 = ptrtoint ptr %direction3.i.i.i365 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 1, ptr %direction3.i.i.i365, align 2
  %413 = ptrtoint ptr %409 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 0, ptr %409, align 4
  %414 = ptrtoint ptr %408 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %408, align 4
  %415 = ptrtoint ptr %reg_count.i.i.i364 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 1, ptr %reg_count.i.i.i364, align 1
  %start153.i.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i.i356, i32 0, i32 4
  %416 = ptrtoint ptr %start153.i.i.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 -125, ptr %start153.i.i.i, align 1
  %call46.i.i.i.i366 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %409, i8 noundef zeroext 1, i8 noundef zeroext -125, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i.i356) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i26.i) #9
  %417 = call ptr @memset(ptr %cmd.i26.i, i32 255, i32 72)
  %418 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %419)
  %cmp.not.i.i = icmp eq i32 %419, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %set_default_user_mode.exit.set_all_properties.exit_crit_edge

set_default_user_mode.exit.set_all_properties.exit_crit_edge: ; preds = %set_default_user_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_all_properties.exit

lor.lhs.false.i.i:                                ; preds = %set_default_user_mode.exit
  %420 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %sensor_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %421)
  %cmp2.not.i.i = icmp eq i8 %421, 16
  br i1 %cmp2.not.i.i, label %cpia2_send_command.exit.i31.i, label %lor.lhs.false.i.i.set_all_properties.exit_crit_edge

lor.lhs.false.i.i.set_all_properties.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_all_properties.exit

cpia2_send_command.exit.i31.i:                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %direction.i.i368 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i26.i, i32 0, i32 3
  %422 = ptrtoint ptr %direction.i.i368 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 1, ptr %direction.i.i368, align 2
  %req_mode.i.i369 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i26.i, i32 0, i32 1
  %423 = ptrtoint ptr %req_mode.i.i369 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 2, ptr %req_mode.i.i369, align 4
  %reg_count.i28.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i26.i, i32 0, i32 2
  %424 = ptrtoint ptr %reg_count.i28.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 3, ptr %reg_count.i28.i, align 1
  %start.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i26.i, i32 0, i32 4
  %425 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 10, ptr %start.i.i, align 1
  %buffer.i.i370 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i26.i, i32 0, i32 5
  %426 = ptrtoint ptr %buffer.i.i370 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %buffer.i.i370, align 4
  %arrayidx5.i.i = getelementptr inbounds [64 x i8], ptr %buffer.i.i370, i32 0, i32 1
  %427 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 89, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr inbounds [64 x i8], ptr %buffer.i.i370, i32 0, i32 2
  %428 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 0, ptr %arrayidx7.i.i, align 2
  %call46.i.i29.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i370, i8 noundef zeroext 2, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 1) #9
  %lowlight_boost.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 7
  %429 = ptrtoint ptr %lowlight_boost.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %lowlight_boost.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %tobool.not.i30.i = icmp eq i8 %430, 0
  %..i.i371 = select i1 %tobool.not.i30.i, i8 6, i8 2
  %431 = ptrtoint ptr %buffer.i.i370 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %..i.i371, ptr %buffer.i.i370, align 4
  %432 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 12, ptr %start.i.i, align 1
  %433 = ptrtoint ptr %reg_count.i28.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 1, ptr %reg_count.i28.i, align 1
  %434 = ptrtoint ptr %req_mode.i.i369 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %req_mode.i.i369, align 4
  %436 = lshr i8 %435, 2
  %437 = and i8 %436, 3
  %438 = zext i8 %437 to i32
  %switch.shiftamt901 = shl nuw nsw i32 %438, 3
  %switch.downshift902 = lshr i32 201326604, %switch.shiftamt901
  %switch.masked903 = trunc i32 %switch.downshift902 to i8
  %switch.shiftamt904 = shl nuw nsw i32 %438, 3
  %switch.downshift905 = lshr i32 17039873, %switch.shiftamt904
  %switch.masked906 = trunc i32 %switch.downshift905 to i8
  %439 = ptrtoint ptr %direction.i.i368 to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %direction.i.i368, align 2
  %call46.i42.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i.i370, i8 noundef zeroext %435, i8 noundef zeroext %switch.masked903, i8 noundef zeroext %switch.masked906, i8 noundef zeroext %440) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i25.i) #9
  %441 = getelementptr inbounds i8, ptr %cmd.i.i25.i, i32 4
  %442 = getelementptr inbounds i8, ptr %cmd.i.i25.i, i32 8
  %443 = call ptr @memset(ptr %442, i32 255, i32 64)
  %444 = ptrtoint ptr %cmd.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 50, ptr %cmd.i.i25.i, align 4
  %reg_count.i44.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i25.i, i32 0, i32 2
  %direction3.i.i32.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i25.i, i32 0, i32 3
  %445 = ptrtoint ptr %direction3.i.i32.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 1, ptr %direction3.i.i32.i, align 2
  %446 = ptrtoint ptr %441 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 2, ptr %441, align 4
  %447 = ptrtoint ptr %reg_count.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 1, ptr %reg_count.i44.i.i, align 1
  %start251.i.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i25.i, i32 0, i32 4
  %448 = ptrtoint ptr %start251.i.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 96, ptr %start251.i.i.i, align 1
  %449 = ptrtoint ptr %442 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 1, ptr %442, align 4
  %call46.i.i.i33.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %442, i8 noundef zeroext 2, i8 noundef zeroext 96, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i25.i) #9
  %450 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %450)
  %.pr = load i32, ptr %pnp_id, align 4
  br label %set_all_properties.exit

set_all_properties.exit:                          ; preds = %cpia2_send_command.exit.i31.i, %lor.lhs.false.i.i.set_all_properties.exit_crit_edge, %set_default_user_mode.exit.set_all_properties.exit_crit_edge
  %451 = phi i32 [ %419, %set_default_user_mode.exit.set_all_properties.exit_crit_edge ], [ 1, %lor.lhs.false.i.i.set_all_properties.exit_crit_edge ], [ %.pr, %cpia2_send_command.exit.i31.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i26.i) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i373) #9
  %452 = getelementptr inbounds i8, ptr %cmd.i373, i32 4
  %453 = getelementptr inbounds i8, ptr %cmd.i373, i32 8
  %454 = call ptr @memset(ptr %453, i32 255, i32 64)
  %455 = ptrtoint ptr %cmd.i373 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 28, ptr %cmd.i373, align 4
  %reg_count.i375 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i373, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i373, i32 0, i32 3
  %456 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 0, ptr %direction3.i, align 2
  %457 = ptrtoint ptr %452 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 2, ptr %452, align 4
  %458 = ptrtoint ptr %reg_count.i375 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 1, ptr %reg_count.i375, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %451)
  %cmp130.i = icmp eq i32 %451, 1
  %start132.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i373, i32 0, i32 4
  %spec.select = select i1 %cmp130.i, i8 16, i8 19
  %459 = ptrtoint ptr %start132.i to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %spec.select, ptr %start132.i, align 1
  %buffer.0.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i373, i32 0, i32 5
  %call46.i.i384 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i, i8 noundef zeroext 2, i8 noundef zeroext %spec.select, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i384)
  %tobool.not.i385 = icmp eq i32 %call46.i.i384, 0
  br i1 %tobool.not.i385, label %if.end268.i, label %set_all_properties.exit.cpia2_send_command.exit.i409_crit_edge

set_all_properties.exit.cpia2_send_command.exit.i409_crit_edge: ; preds = %set_all_properties.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i409

if.end268.i:                                      ; preds = %set_all_properties.exit
  call void @__sanitizer_cov_trace_pc() #11
  %460 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %buffer.0.i.i, align 4
  %vp_params438.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7
  %462 = ptrtoint ptr %vp_params438.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 %461, ptr %vp_params438.i, align 4
  br label %cpia2_send_command.exit.i409

cpia2_send_command.exit.i409:                     ; preds = %if.end268.i, %set_all_properties.exit.cpia2_send_command.exit.i409_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i373) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i388) #9
  %463 = getelementptr inbounds i8, ptr %cmd.i388, i32 4
  %464 = getelementptr inbounds i8, ptr %cmd.i388, i32 8
  %465 = call ptr @memset(ptr %464, i32 255, i32 64)
  %466 = ptrtoint ptr %cmd.i388 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 38, ptr %cmd.i388, align 4
  %reg_count.i391 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i388, i32 0, i32 2
  %direction3.i392 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i388, i32 0, i32 3
  %467 = ptrtoint ptr %direction3.i392 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 0, ptr %direction3.i392, align 2
  %468 = ptrtoint ptr %463 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 2, ptr %463, align 4
  %469 = ptrtoint ptr %reg_count.i391 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 1, ptr %reg_count.i391, align 1
  %start178.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i388, i32 0, i32 4
  %470 = ptrtoint ptr %start178.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 3, ptr %start178.i, align 1
  %buffer.0.i.i406 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i388, i32 0, i32 5
  %call46.i.i407 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i406, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i407)
  %tobool.not.i408 = icmp eq i32 %call46.i.i407, 0
  br i1 %tobool.not.i408, label %if.end268.i410, label %cpia2_send_command.exit.i409.cpia2_send_command.exit.i434_crit_edge

cpia2_send_command.exit.i409.cpia2_send_command.exit.i434_crit_edge: ; preds = %cpia2_send_command.exit.i409
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i434

if.end268.i410:                                   ; preds = %cpia2_send_command.exit.i409
  call void @__sanitizer_cov_trace_pc() #11
  %471 = ptrtoint ptr %buffer.0.i.i406 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %buffer.0.i.i406, align 4
  %system_ctrl418.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 5
  %473 = ptrtoint ptr %system_ctrl418.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %472, ptr %system_ctrl418.i, align 1
  br label %cpia2_send_command.exit.i434

cpia2_send_command.exit.i434:                     ; preds = %if.end268.i410, %cpia2_send_command.exit.i409.cpia2_send_command.exit.i434_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i388) #9
  %system_ctrl = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 5
  %474 = ptrtoint ptr %system_ctrl to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %system_ctrl, align 1
  %476 = and i8 %475, -3
  %477 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 %476, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i413) #9
  %478 = getelementptr inbounds i8, ptr %cmd.i413, i32 4
  %479 = getelementptr inbounds i8, ptr %cmd.i413, i32 8
  %480 = call ptr @memset(ptr %479, i32 255, i32 64)
  %481 = ptrtoint ptr %cmd.i413 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 42, ptr %cmd.i413, align 4
  %reg_count.i416 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i413, i32 0, i32 2
  %direction3.i417 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i413, i32 0, i32 3
  %482 = ptrtoint ptr %direction3.i417 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 0, ptr %direction3.i417, align 2
  %483 = ptrtoint ptr %478 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 2, ptr %478, align 4
  %484 = ptrtoint ptr %reg_count.i416 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 1, ptr %reg_count.i416, align 1
  %start192.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i413, i32 0, i32 4
  %485 = ptrtoint ptr %start192.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 7, ptr %start192.i, align 1
  %buffer.0.i.i431 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i413, i32 0, i32 5
  %call46.i.i432 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i431, i8 noundef zeroext 2, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i432)
  %tobool.not.i433 = icmp eq i32 %call46.i.i432, 0
  br i1 %tobool.not.i433, label %if.end268.i435, label %cpia2_send_command.exit.i434.cpia2_send_command.exit.i480_crit_edge

cpia2_send_command.exit.i434.cpia2_send_command.exit.i480_crit_edge: ; preds = %cpia2_send_command.exit.i434
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i480

if.end268.i435:                                   ; preds = %cpia2_send_command.exit.i434
  call void @__sanitizer_cov_trace_pc() #11
  %486 = ptrtoint ptr %buffer.0.i.i431 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %buffer.0.i.i431, align 4
  %device_config.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 8
  %488 = ptrtoint ptr %device_config.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %487, ptr %device_config.i, align 4
  br label %cpia2_send_command.exit.i480

cpia2_send_command.exit.i480:                     ; preds = %if.end268.i435, %cpia2_send_command.exit.i434.cpia2_send_command.exit.i480_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i413) #9
  %device_config = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 8
  %489 = ptrtoint ptr %device_config to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %device_config, align 4
  %491 = or i8 %490, 1
  %492 = ptrtoint ptr %value12 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %491, ptr %value12, align 1
  %493 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 3, ptr %buffer, align 4
  %494 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 7, ptr %arrayidx8, align 2
  %495 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 6, ptr %req_mode, align 4
  %496 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 2, ptr %reg_count, align 1
  %497 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 1, ptr %direction, align 2
  %start = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %498 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 0, ptr %start, align 1
  %call46.i456 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i459) #9
  %499 = getelementptr inbounds i8, ptr %cmd.i459, i32 4
  %500 = getelementptr inbounds i8, ptr %cmd.i459, i32 8
  %501 = call ptr @memset(ptr %500, i32 255, i32 64)
  %502 = ptrtoint ptr %cmd.i459 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 44, ptr %cmd.i459, align 4
  %reg_count.i462 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i459, i32 0, i32 2
  %direction3.i463 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i459, i32 0, i32 3
  %503 = ptrtoint ptr %direction3.i463 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 1, ptr %direction3.i463, align 2
  %buffer194.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i459, i32 0, i32 5
  %504 = ptrtoint ptr %buffer194.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 32, ptr %buffer194.i, align 4
  %505 = ptrtoint ptr %499 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %499, align 4
  %506 = ptrtoint ptr %reg_count.i462 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 1, ptr %reg_count.i462, align 1
  %start198.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i459, i32 0, i32 4
  %507 = ptrtoint ptr %start198.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 8, ptr %start198.i, align 1
  %call46.i.i478 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer194.i, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i459) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i484) #9
  %508 = getelementptr inbounds i8, ptr %cmd.i484, i32 4
  %509 = getelementptr inbounds i8, ptr %cmd.i484, i32 8
  %510 = call ptr @memset(ptr %509, i32 255, i32 64)
  %511 = ptrtoint ptr %cmd.i484 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 45, ptr %cmd.i484, align 4
  %reg_count.i487 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i484, i32 0, i32 2
  %direction3.i488 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i484, i32 0, i32 3
  %512 = ptrtoint ptr %direction3.i488 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 1, ptr %direction3.i488, align 2
  %buffer200.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i484, i32 0, i32 5
  %513 = ptrtoint ptr %buffer200.i to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 16, ptr %buffer200.i, align 4
  %514 = ptrtoint ptr %508 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 2, ptr %508, align 4
  %515 = ptrtoint ptr %reg_count.i487 to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 1, ptr %reg_count.i487, align 1
  %start204.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i484, i32 0, i32 4
  %516 = ptrtoint ptr %start204.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 118, ptr %start204.i, align 1
  %call46.i.i503 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer200.i, i8 noundef zeroext 2, i8 noundef zeroext 118, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i484) #9
  %517 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %518)
  %cmp142 = icmp eq i32 %518, 1
  br i1 %cmp142, label %cpia2_send_command.exit.i533, label %cpia2_send_command.exit.i561

cpia2_send_command.exit.i533:                     ; preds = %cpia2_send_command.exit.i480
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i509) #9
  %519 = getelementptr inbounds i8, ptr %cmd.i509, i32 4
  %520 = getelementptr inbounds i8, ptr %cmd.i509, i32 8
  %521 = call ptr @memset(ptr %520, i32 255, i32 64)
  %522 = ptrtoint ptr %cmd.i509 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 44, ptr %cmd.i509, align 4
  %reg_count.i512 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i509, i32 0, i32 2
  %direction3.i513 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i509, i32 0, i32 3
  %523 = ptrtoint ptr %direction3.i513 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 1, ptr %direction3.i513, align 2
  %buffer194.i514 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i509, i32 0, i32 5
  %524 = ptrtoint ptr %buffer194.i514 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 -120, ptr %buffer194.i514, align 4
  %525 = ptrtoint ptr %519 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 0, ptr %519, align 4
  %526 = ptrtoint ptr %reg_count.i512 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 1, ptr %reg_count.i512, align 1
  %start198.i516 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i509, i32 0, i32 4
  %527 = ptrtoint ptr %start198.i516 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 8, ptr %start198.i516, align 1
  %call46.i.i531 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer194.i514, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i509) #9
  br label %if.end147

cpia2_send_command.exit.i561:                     ; preds = %cpia2_send_command.exit.i480
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i537) #9
  %528 = getelementptr inbounds i8, ptr %cmd.i537, i32 4
  %529 = getelementptr inbounds i8, ptr %cmd.i537, i32 8
  %530 = call ptr @memset(ptr %529, i32 255, i32 64)
  %531 = ptrtoint ptr %cmd.i537 to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 44, ptr %cmd.i537, align 4
  %reg_count.i540 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i537, i32 0, i32 2
  %direction3.i541 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i537, i32 0, i32 3
  %532 = ptrtoint ptr %direction3.i541 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 1, ptr %direction3.i541, align 2
  %buffer194.i542 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i537, i32 0, i32 5
  %533 = ptrtoint ptr %buffer194.i542 to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 -118, ptr %buffer194.i542, align 4
  %534 = ptrtoint ptr %528 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 0, ptr %528, align 4
  %535 = ptrtoint ptr %reg_count.i540 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 1, ptr %reg_count.i540, align 1
  %start198.i544 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i537, i32 0, i32 4
  %536 = ptrtoint ptr %start198.i544 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 8, ptr %start198.i544, align 1
  %call46.i.i559 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer194.i542, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i537) #9
  br label %if.end147

if.end147:                                        ; preds = %cpia2_send_command.exit.i561, %cpia2_send_command.exit.i533
  %537 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %538)
  %cmp151 = icmp eq i32 %538, 2
  br i1 %cmp151, label %cpia2_send_command.exit.i586, label %if.end147.cpia2_send_command.exit.i613_crit_edge

if.end147.cpia2_send_command.exit.i613_crit_edge: ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i613

cpia2_send_command.exit.i586:                     ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i565) #9
  %539 = getelementptr inbounds i8, ptr %cmd.i565, i32 4
  %540 = getelementptr inbounds i8, ptr %cmd.i565, i32 8
  %541 = call ptr @memset(ptr %540, i32 255, i32 64)
  %542 = ptrtoint ptr %cmd.i565 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 41, ptr %cmd.i565, align 4
  %reg_count.i568 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i565, i32 0, i32 2
  %direction3.i569 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i565, i32 0, i32 3
  %543 = ptrtoint ptr %direction3.i569 to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 1, ptr %direction3.i569, align 2
  %buffer180.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i565, i32 0, i32 5
  %544 = ptrtoint ptr %buffer180.i to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 16, ptr %buffer180.i, align 4
  %545 = ptrtoint ptr %539 to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 2, ptr %539, align 4
  %546 = ptrtoint ptr %reg_count.i568 to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 1, ptr %reg_count.i568, align 1
  %start185.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i565, i32 0, i32 4
  %547 = ptrtoint ptr %start185.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 21, ptr %start185.i, align 1
  %call46.i.i584 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer180.i, i8 noundef zeroext 2, i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i565) #9
  br label %cpia2_send_command.exit.i613

cpia2_send_command.exit.i613:                     ; preds = %cpia2_send_command.exit.i586, %if.end147.cpia2_send_command.exit.i613_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i590) #9
  %548 = getelementptr inbounds i8, ptr %cmd.i590, i32 4
  %549 = getelementptr inbounds i8, ptr %cmd.i590, i32 8
  %550 = call ptr @memset(ptr %549, i32 255, i32 64)
  %551 = ptrtoint ptr %cmd.i590 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 42, ptr %cmd.i590, align 4
  %reg_count.i593 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i590, i32 0, i32 2
  %direction3.i594 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i590, i32 0, i32 3
  %552 = ptrtoint ptr %direction3.i594 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 0, ptr %direction3.i594, align 2
  %553 = ptrtoint ptr %548 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 2, ptr %548, align 4
  %554 = ptrtoint ptr %reg_count.i593 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 1, ptr %reg_count.i593, align 1
  %start192.i596 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i590, i32 0, i32 4
  %555 = ptrtoint ptr %start192.i596 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 7, ptr %start192.i596, align 1
  %buffer.0.i.i610 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i590, i32 0, i32 5
  %call46.i.i611 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i610, i8 noundef zeroext 2, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i611)
  %tobool.not.i612 = icmp eq i32 %call46.i.i611, 0
  br i1 %tobool.not.i612, label %if.end268.i614, label %cpia2_send_command.exit.i613.cpia2_send_command.exit.i641_crit_edge

cpia2_send_command.exit.i613.cpia2_send_command.exit.i641_crit_edge: ; preds = %cpia2_send_command.exit.i613
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i641

if.end268.i614:                                   ; preds = %cpia2_send_command.exit.i613
  call void @__sanitizer_cov_trace_pc() #11
  %556 = ptrtoint ptr %buffer.0.i.i610 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %buffer.0.i.i610, align 4
  %558 = ptrtoint ptr %device_config to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 %557, ptr %device_config, align 4
  br label %cpia2_send_command.exit.i641

cpia2_send_command.exit.i641:                     ; preds = %if.end268.i614, %cpia2_send_command.exit.i613.cpia2_send_command.exit.i641_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i590) #9
  %559 = ptrtoint ptr %device_config to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %device_config, align 4
  %561 = and i8 %560, -2
  %562 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 %561, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i618) #9
  %563 = getelementptr inbounds i8, ptr %cmd.i618, i32 4
  %564 = getelementptr inbounds i8, ptr %cmd.i618, i32 8
  %565 = call ptr @memset(ptr %564, i32 255, i32 64)
  %566 = ptrtoint ptr %cmd.i618 to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 38, ptr %cmd.i618, align 4
  %reg_count.i621 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i618, i32 0, i32 2
  %direction3.i622 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i618, i32 0, i32 3
  %567 = ptrtoint ptr %direction3.i622 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 0, ptr %direction3.i622, align 2
  %568 = ptrtoint ptr %563 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 2, ptr %563, align 4
  %569 = ptrtoint ptr %reg_count.i621 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 1, ptr %reg_count.i621, align 1
  %start178.i624 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i618, i32 0, i32 4
  %570 = ptrtoint ptr %start178.i624 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 3, ptr %start178.i624, align 1
  %buffer.0.i.i638 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i618, i32 0, i32 5
  %call46.i.i639 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i638, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i639)
  %tobool.not.i640 = icmp eq i32 %call46.i.i639, 0
  br i1 %tobool.not.i640, label %if.end268.i642, label %cpia2_send_command.exit.i641.cpia2_send_command.exit.i688_crit_edge

cpia2_send_command.exit.i641.cpia2_send_command.exit.i688_crit_edge: ; preds = %cpia2_send_command.exit.i641
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i688

if.end268.i642:                                   ; preds = %cpia2_send_command.exit.i641
  call void @__sanitizer_cov_trace_pc() #11
  %571 = ptrtoint ptr %buffer.0.i.i638 to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %buffer.0.i.i638, align 4
  %573 = ptrtoint ptr %system_ctrl to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %572, ptr %system_ctrl, align 1
  br label %cpia2_send_command.exit.i688

cpia2_send_command.exit.i688:                     ; preds = %if.end268.i642, %cpia2_send_command.exit.i641.cpia2_send_command.exit.i688_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i618) #9
  %574 = ptrtoint ptr %system_ctrl to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %system_ctrl, align 1
  %576 = or i8 %575, 2
  %577 = ptrtoint ptr %value12 to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %576, ptr %value12, align 1
  %578 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 7, ptr %buffer, align 4
  %579 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %579)
  store i8 3, ptr %arrayidx8, align 2
  %580 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 6, ptr %req_mode, align 4
  %581 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 2, ptr %reg_count, align 1
  %582 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 1, ptr %direction, align 2
  %call46.i664 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i667) #9
  %583 = getelementptr inbounds i8, ptr %cmd.i667, i32 4
  %584 = getelementptr inbounds i8, ptr %cmd.i667, i32 8
  %585 = call ptr @memset(ptr %584, i32 255, i32 64)
  %586 = ptrtoint ptr %cmd.i667 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 46, ptr %cmd.i667, align 4
  %reg_count.i670 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i667, i32 0, i32 2
  %direction3.i671 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i667, i32 0, i32 3
  %587 = ptrtoint ptr %direction3.i671 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %direction3.i671, align 2
  %588 = ptrtoint ptr %583 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 1, ptr %583, align 4
  %589 = ptrtoint ptr %reg_count.i670 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 1, ptr %reg_count.i670, align 1
  %start211.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i667, i32 0, i32 4
  %590 = ptrtoint ptr %start211.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 -64, ptr %start211.i, align 1
  %buffer.0.i.i685 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i667, i32 0, i32 5
  %call46.i.i686 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i685, i8 noundef zeroext 1, i8 noundef zeroext -64, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i686)
  %tobool.not.i687 = icmp eq i32 %call46.i.i686, 0
  br i1 %tobool.not.i687, label %if.end268.i689, label %cpia2_send_command.exit.i688.cpia2_do_command.exit691_crit_edge

cpia2_send_command.exit.i688.cpia2_do_command.exit691_crit_edge: ; preds = %cpia2_send_command.exit.i688
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit691

if.end268.i689:                                   ; preds = %cpia2_send_command.exit.i688
  call void @__sanitizer_cov_trace_pc() #11
  %591 = ptrtoint ptr %buffer.0.i.i685 to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %buffer.0.i.i685, align 4
  %vc_control.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 2
  %593 = ptrtoint ptr %vc_control.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %592, ptr %vc_control.i, align 1
  br label %cpia2_do_command.exit691

cpia2_do_command.exit691:                         ; preds = %if.end268.i689, %cpia2_send_command.exit.i688.cpia2_do_command.exit691_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i667) #9
  %inhibit_htables = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 4, i32 3
  %594 = ptrtoint ptr %inhibit_htables to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %inhibit_htables, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %595)
  %tobool.not = icmp eq i8 %595, 0
  %vc_control196 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 2
  %596 = ptrtoint ptr %vc_control196 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %vc_control196, align 1
  %598 = and i8 %597, -17
  %masksel = select i1 %tobool.not, i8 0, i8 16
  %tmp_reg.0 = or i8 %598, %masksel
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i692) #9
  %599 = getelementptr inbounds i8, ptr %cmd.i692, i32 4
  %600 = getelementptr inbounds i8, ptr %cmd.i692, i32 8
  %601 = call ptr @memset(ptr %600, i32 255, i32 64)
  %602 = ptrtoint ptr %cmd.i692 to i32
  call void @__asan_store4_noabort(i32 %602)
  store i32 47, ptr %cmd.i692, align 4
  %reg_count.i695 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i692, i32 0, i32 2
  %direction3.i696 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i692, i32 0, i32 3
  %603 = ptrtoint ptr %direction3.i696 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 1, ptr %direction3.i696, align 2
  %buffer206.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i692, i32 0, i32 5
  %604 = ptrtoint ptr %buffer206.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %tmp_reg.0, ptr %buffer206.i, align 4
  %605 = ptrtoint ptr %599 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 1, ptr %599, align 4
  %606 = ptrtoint ptr %reg_count.i695 to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 1, ptr %reg_count.i695, align 1
  %start211.i698 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i692, i32 0, i32 4
  %607 = ptrtoint ptr %start211.i698 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 -64, ptr %start211.i698, align 1
  %call46.i.i713 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer206.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i692) #9
  %width202 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %608 = ptrtoint ptr %width202 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %width202, align 8
  %height203 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %610 = ptrtoint ptr %height203 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %height203, align 4
  %mul = mul i32 %611, %609
  %612 = lshr i32 %mul, 13
  %div294 = and i32 %612, 262143
  %vc_params206 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8
  %quality = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 5
  %613 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %quality, align 1
  %conv207 = zext i8 %614 to i32
  %mul208 = mul nuw nsw i32 %div294, %conv207
  %div209 = udiv i32 %mul208, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul208)
  %615 = icmp ult i32 %mul208, 100
  %616 = trunc i32 %div209 to i8
  %conv214 = select i1 %615, i8 1, i8 %616
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i719) #9
  %617 = getelementptr inbounds i8, ptr %cmd.i719, i32 4
  %618 = call ptr @memset(ptr %617, i32 255, i32 68)
  %619 = ptrtoint ptr %cmd.i719 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 48, ptr %cmd.i719, align 4
  %reg_count.i722 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i719, i32 0, i32 2
  %direction3.i723 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i719, i32 0, i32 3
  %620 = ptrtoint ptr %direction3.i723 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 1, ptr %direction3.i723, align 2
  %621 = ptrtoint ptr %617 to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 5, ptr %617, align 4
  %622 = ptrtoint ptr %reg_count.i722 to i32
  call void @__asan_store1_noabort(i32 %622)
  store i8 1, ptr %reg_count.i722, align 1
  %buffer215.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i719, i32 0, i32 5
  %623 = ptrtoint ptr %buffer215.i to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 -39, ptr %buffer215.i, align 4
  %value220.i = getelementptr inbounds %struct.cpia2_register, ptr %buffer215.i, i32 0, i32 1
  %624 = ptrtoint ptr %value220.i to i32
  call void @__asan_store1_noabort(i32 %624)
  store i8 %conv214, ptr %value220.i, align 1
  %call46.i.i738 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer215.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i719) #9
  %625 = getelementptr inbounds i8, ptr %cmd.i744, i32 4
  %reg_count.i747 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i744, i32 0, i32 2
  %direction3.i748 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i744, i32 0, i32 3
  %start160.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i744, i32 0, i32 4
  %buffer.0.i.i762 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i744, i32 0, i32 5
  %626 = getelementptr inbounds i8, ptr %cmd.i744, i32 8
  br label %cpia2_send_command.exit.i765

cpia2_send_command.exit.i765:                     ; preds = %cpia2_do_command.exit768.cpia2_send_command.exit.i765_crit_edge, %cpia2_do_command.exit691
  %i.0885 = phi i32 [ 0, %cpia2_do_command.exit691 ], [ %inc, %cpia2_do_command.exit768.cpia2_send_command.exit.i765_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i744) #9
  %627 = call ptr @memset(ptr %626, i32 255, i32 64)
  %628 = ptrtoint ptr %cmd.i744 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 33, ptr %cmd.i744, align 4
  %629 = ptrtoint ptr %direction3.i748 to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 0, ptr %direction3.i748, align 2
  %630 = ptrtoint ptr %625 to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 1, ptr %625, align 4
  %631 = ptrtoint ptr %reg_count.i747 to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 1, ptr %reg_count.i747, align 1
  %632 = ptrtoint ptr %start160.i to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 -126, ptr %start160.i, align 1
  %call46.i.i763 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i762, i8 noundef zeroext 1, i8 noundef zeroext -126, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i763)
  %tobool.not.i764 = icmp eq i32 %call46.i.i763, 0
  br i1 %tobool.not.i764, label %if.end268.i766, label %cpia2_send_command.exit.i765.cpia2_do_command.exit768_crit_edge

cpia2_send_command.exit.i765.cpia2_do_command.exit768_crit_edge: ; preds = %cpia2_send_command.exit.i765
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit768

if.end268.i766:                                   ; preds = %cpia2_send_command.exit.i765
  call void @__sanitizer_cov_trace_pc() #11
  %633 = ptrtoint ptr %buffer.0.i.i762 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %buffer.0.i.i762, align 4
  %635 = ptrtoint ptr %vc_params206 to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 %634, ptr %vc_params206, align 1
  br label %cpia2_do_command.exit768

cpia2_do_command.exit768:                         ; preds = %if.end268.i766, %cpia2_send_command.exit.i765.cpia2_do_command.exit768_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i744) #9
  %inc = add nuw nsw i32 %i.0885, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %cpia2_send_command.exit.i792, label %cpia2_do_command.exit768.cpia2_send_command.exit.i765_crit_edge

cpia2_do_command.exit768.cpia2_send_command.exit.i765_crit_edge: ; preds = %cpia2_do_command.exit768
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i765

cpia2_send_command.exit.i792:                     ; preds = %cpia2_do_command.exit768
  %636 = ptrtoint ptr %vc_params206 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %vc_params206, align 1
  %638 = and i8 %637, -17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i769) #9
  %639 = getelementptr inbounds i8, ptr %cmd.i769, i32 4
  %640 = getelementptr inbounds i8, ptr %cmd.i769, i32 8
  %641 = call ptr @memset(ptr %640, i32 255, i32 64)
  %642 = ptrtoint ptr %cmd.i769 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 34, ptr %cmd.i769, align 4
  %reg_count.i772 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i769, i32 0, i32 2
  %direction3.i773 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i769, i32 0, i32 3
  %643 = ptrtoint ptr %direction3.i773 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 1, ptr %direction3.i773, align 2
  %buffer155.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i769, i32 0, i32 5
  %644 = ptrtoint ptr %buffer155.i to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 %638, ptr %buffer155.i, align 4
  %645 = ptrtoint ptr %639 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 1, ptr %639, align 4
  %646 = ptrtoint ptr %reg_count.i772 to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 1, ptr %reg_count.i772, align 1
  %start160.i775 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i769, i32 0, i32 4
  %647 = ptrtoint ptr %start160.i775 to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 -126, ptr %start160.i775, align 1
  %call46.i.i790 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer155.i, i8 noundef zeroext 1, i8 noundef zeroext -126, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i769) #9
  %648 = or i8 %637, 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i796) #9
  %649 = getelementptr inbounds i8, ptr %cmd.i796, i32 4
  %650 = getelementptr inbounds i8, ptr %cmd.i796, i32 8
  %651 = call ptr @memset(ptr %650, i32 255, i32 64)
  %652 = ptrtoint ptr %cmd.i796 to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 34, ptr %cmd.i796, align 4
  %reg_count.i799 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i796, i32 0, i32 2
  %direction3.i800 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i796, i32 0, i32 3
  %653 = ptrtoint ptr %direction3.i800 to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 1, ptr %direction3.i800, align 2
  %buffer155.i801 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i796, i32 0, i32 5
  %654 = ptrtoint ptr %buffer155.i801 to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 %648, ptr %buffer155.i801, align 4
  %655 = ptrtoint ptr %649 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 1, ptr %649, align 4
  %656 = ptrtoint ptr %reg_count.i799 to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 1, ptr %reg_count.i799, align 1
  %start160.i803 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i796, i32 0, i32 4
  %657 = ptrtoint ptr %start160.i803 to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 -126, ptr %start160.i803, align 1
  %call46.i.i818 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer155.i801, i8 noundef zeroext 1, i8 noundef zeroext -126, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i796) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i824) #9
  %658 = getelementptr inbounds i8, ptr %cmd.i824, i32 4
  %659 = call ptr @memset(ptr %658, i32 255, i32 68)
  %660 = ptrtoint ptr %cmd.i824 to i32
  call void @__asan_store4_noabort(i32 %660)
  store i32 49, ptr %cmd.i824, align 4
  %reg_count.i827 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 2
  %direction3.i828 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 3
  %661 = ptrtoint ptr %direction3.i828 to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 1, ptr %direction3.i828, align 2
  %662 = ptrtoint ptr %658 to i32
  call void @__asan_store1_noabort(i32 %662)
  store i8 5, ptr %658, align 4
  %663 = ptrtoint ptr %reg_count.i827 to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 4, ptr %reg_count.i827, align 1
  %buffer224.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 5
  %664 = ptrtoint ptr %buffer224.i to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 -42, ptr %buffer224.i, align 4
  %value229.i = getelementptr inbounds %struct.cpia2_register, ptr %buffer224.i, i32 0, i32 1
  %665 = ptrtoint ptr %value229.i to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 1, ptr %value229.i, align 1
  %arrayidx231.i = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer224.i, i32 0, i32 1
  %666 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 -40, ptr %arrayidx231.i, align 2
  %value235.i = getelementptr inbounds [32 x %struct.cpia2_register], ptr %buffer224.i, i32 0, i32 1, i32 1
  %667 = ptrtoint ptr %value235.i to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 20, ptr %value235.i, align 1
  %arrayidx237.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 5, i32 1
  %668 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_store1_noabort(i32 %668)
  store i8 -41, ptr %arrayidx237.i, align 4
  %value241.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 5, i32 1, i32 1
  %669 = ptrtoint ptr %value241.i to i32
  call void @__asan_store1_noabort(i32 %669)
  store i8 2, ptr %value241.i, align 1
  %arrayidx243.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 5, i32 1, i32 2
  %670 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 -42, ptr %arrayidx243.i, align 2
  %value247.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i824, i32 0, i32 5, i32 1, i32 3
  %671 = ptrtoint ptr %value247.i to i32
  call void @__asan_store1_noabort(i32 %671)
  store i8 5, ptr %value247.i, align 1
  %call46.i.i843 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer224.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i824) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i849) #9
  %672 = getelementptr inbounds i8, ptr %cmd.i849, i32 4
  %673 = getelementptr inbounds i8, ptr %cmd.i849, i32 8
  %674 = call ptr @memset(ptr %673, i32 255, i32 64)
  %675 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %pnp_id, align 4
  %677 = ptrtoint ptr %cmd.i849 to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 28, ptr %cmd.i849, align 4
  %reg_count.i852 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i849, i32 0, i32 2
  %direction3.i853 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i849, i32 0, i32 3
  %678 = ptrtoint ptr %direction3.i853 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 0, ptr %direction3.i853, align 2
  %679 = ptrtoint ptr %672 to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 2, ptr %672, align 4
  %680 = ptrtoint ptr %reg_count.i852 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 1, ptr %reg_count.i852, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %676)
  %cmp130.i855 = icmp eq i32 %676, 1
  %start132.i856 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i849, i32 0, i32 4
  %.884 = select i1 %cmp130.i855, i8 16, i8 19
  %681 = ptrtoint ptr %start132.i856 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %.884, ptr %start132.i856, align 1
  %buffer.0.i.i872 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i849, i32 0, i32 5
  %call46.i.i873 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i872, i8 noundef zeroext 2, i8 noundef zeroext %.884, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i873)
  %tobool.not.i874 = icmp eq i32 %call46.i.i873, 0
  br i1 %tobool.not.i874, label %if.end268.i876, label %cpia2_send_command.exit.i792.cpia2_do_command.exit879_crit_edge

cpia2_send_command.exit.i792.cpia2_do_command.exit879_crit_edge: ; preds = %cpia2_send_command.exit.i792
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit879

if.end268.i876:                                   ; preds = %cpia2_send_command.exit.i792
  call void @__sanitizer_cov_trace_pc() #11
  %682 = ptrtoint ptr %buffer.0.i.i872 to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %buffer.0.i.i872, align 4
  %vp_params438.i877 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7
  %684 = ptrtoint ptr %vp_params438.i877 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %683, ptr %vp_params438.i877, align 4
  br label %cpia2_do_command.exit879

cpia2_do_command.exit879:                         ; preds = %if.end268.i876, %cpia2_send_command.exit.i792.cpia2_do_command.exit879_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i849) #9
  br label %cleanup

cleanup:                                          ; preds = %cpia2_do_command.exit879, %do.end
  %retval.0 = phi i32 [ %retval.0.i882, %do.end ], [ %retval1.0, %cpia2_do_command.exit879 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpia2_set_high_power(ptr noundef %cam) unnamed_addr #0 align 64 {
entry:
  %cmd.i51 = alloca %struct.cpia2_command, align 4
  %cmd.i25 = alloca %struct.cpia2_command, align 4
  %cmd.i1 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %start171.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %buffer.0.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %system_ctrl.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd.i1, i32 4
  %reg_count.i4 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1, i32 0, i32 2
  %direction3.i5 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1, i32 0, i32 3
  %start121.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1, i32 0, i32 4
  %buffer122.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i1, i32 0, i32 5
  %2 = getelementptr inbounds i8, ptr %cmd.i25, i32 4
  %reg_count.i28 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i25, i32 0, i32 2
  %direction3.i29 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i25, i32 0, i32 3
  %buffer166.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i25, i32 0, i32 5
  %start171.i31 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i25, i32 0, i32 4
  %3 = getelementptr inbounds i8, ptr %cmd.i51, i32 4
  %reg_count.i54 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i51, i32 0, i32 2
  %direction3.i55 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i51, i32 0, i32 3
  %start164.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i51, i32 0, i32 4
  %buffer.0.i.i68 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i51, i32 0, i32 5
  %system_state.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 6
  %4 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %5 = getelementptr inbounds i8, ptr %cmd.i1, i32 8
  %6 = getelementptr inbounds i8, ptr %cmd.i25, i32 8
  %7 = getelementptr inbounds i8, ptr %cmd.i51, i32 8
  br label %cpia2_send_command.exit.i

cpia2_send_command.exit.i:                        ; preds = %if.else.cpia2_send_command.exit.i_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.else.cpia2_send_command.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %8 = call ptr @memset(ptr %4, i32 255, i32 64)
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 35, ptr %cmd.i, align 4
  %10 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %direction3.i, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %0, align 4
  %12 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %reg_count.i, align 1
  %13 = ptrtoint ptr %start171.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %start171.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool.not.i, label %if.end268.i, label %cpia2_send_command.exit.i.cpia2_do_command.exit_crit_edge

cpia2_send_command.exit.i.cpia2_do_command.exit_crit_edge: ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit

if.end268.i:                                      ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buffer.0.i.i, align 4
  %16 = ptrtoint ptr %system_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %system_ctrl.i, align 1
  br label %cpia2_do_command.exit

cpia2_do_command.exit:                            ; preds = %if.end268.i, %cpia2_send_command.exit.i.cpia2_do_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  %17 = ptrtoint ptr %system_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %system_ctrl.i, align 1
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %cpia2_do_command.exit.cpia2_send_command.exit.i47_crit_edge, label %cpia2_send_command.exit.i21

cpia2_do_command.exit.cpia2_send_command.exit.i47_crit_edge: ; preds = %cpia2_do_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i47

cpia2_send_command.exit.i21:                      ; preds = %cpia2_do_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i1) #9
  %20 = call ptr @memset(ptr %5, i32 255, i32 64)
  %21 = ptrtoint ptr %cmd.i1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 26, ptr %cmd.i1, align 4
  %22 = ptrtoint ptr %direction3.i5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %direction3.i5, align 2
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %1, align 4
  %24 = ptrtoint ptr %reg_count.i4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %reg_count.i4, align 1
  %25 = ptrtoint ptr %start121.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %start121.i, align 1
  %26 = ptrtoint ptr %buffer122.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %buffer122.i, align 4
  %call46.i.i19 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer122.i, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i1) #9
  br label %cpia2_send_command.exit.i47

cpia2_send_command.exit.i47:                      ; preds = %cpia2_send_command.exit.i21, %cpia2_do_command.exit.cpia2_send_command.exit.i47_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i25) #9
  %27 = call ptr @memset(ptr %6, i32 255, i32 64)
  %28 = ptrtoint ptr %cmd.i25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 36, ptr %cmd.i25, align 4
  %29 = ptrtoint ptr %direction3.i29 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %direction3.i29, align 2
  %30 = ptrtoint ptr %buffer166.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %buffer166.i, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %2, align 4
  %32 = ptrtoint ptr %reg_count.i28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %reg_count.i28, align 1
  %33 = ptrtoint ptr %start171.i31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %start171.i31, align 1
  %call46.i.i45 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer166.i, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i25) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i51) #9
  %34 = call ptr @memset(ptr %7, i32 255, i32 64)
  %35 = ptrtoint ptr %cmd.i51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 37, ptr %cmd.i51, align 4
  %36 = ptrtoint ptr %direction3.i55 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %direction3.i55, align 2
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %3, align 4
  %38 = ptrtoint ptr %reg_count.i54 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %reg_count.i54, align 1
  %39 = ptrtoint ptr %start164.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %start164.i, align 1
  %call46.i.i69 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i68, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i69)
  %tobool.not.i70 = icmp eq i32 %call46.i.i69, 0
  br i1 %tobool.not.i70, label %if.end268.i72, label %cpia2_send_command.exit.i47.cpia2_do_command.exit74_crit_edge

cpia2_send_command.exit.i47.cpia2_do_command.exit74_crit_edge: ; preds = %cpia2_send_command.exit.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit74

if.end268.i72:                                    ; preds = %cpia2_send_command.exit.i47
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %buffer.0.i.i68 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buffer.0.i.i68, align 4
  %42 = ptrtoint ptr %system_state.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %system_state.i, align 2
  br label %cpia2_do_command.exit74

cpia2_do_command.exit74:                          ; preds = %if.end268.i72, %cpia2_send_command.exit.i47.cpia2_do_command.exit74_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i51) #9
  %43 = ptrtoint ptr %system_state.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %system_state.i, align 2
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool7.not = icmp eq i8 %45, 0
  br i1 %tobool7.not, label %if.else, label %do.end19

if.else:                                          ; preds = %cpia2_do_command.exit74
  %cmp9 = icmp eq i32 %i.0, 50
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %cmp9, label %if.then11, label %if.else.cpia2_send_command.exit.i_crit_edge

if.else.cpia2_send_command.exit.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %camera_state.le = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9
  %46 = ptrtoint ptr %camera_state.le to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %camera_state.le, align 1
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %cleanup

do.end19:                                         ; preds = %cpia2_do_command.exit74
  call void @__sanitizer_cov_trace_pc() #11
  %camera_state21 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9
  %47 = ptrtoint ptr %camera_state21 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %camera_state21, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_set_low_power(ptr noundef %cam) local_unnamed_addr #0 align 64 {
cpia2_send_command.exit.i:
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %camera_state = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9
  %0 = ptrtoint ptr %camera_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %camera_state, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 64)
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 36, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %5 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %direction3.i, align 2
  %buffer166.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %6 = ptrtoint ptr %buffer166.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buffer166.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %1, align 4
  %8 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_count.i, align 1
  %start171.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %9 = ptrtoint ptr %start171.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %start171.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer166.i, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpia2_match_video_size(i32 noundef %width, i32 noundef %height) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 639, i32 %width)
  %cmp = icmp sgt i32 %width, 639
  call void @__sanitizer_cov_trace_const_cmp4(i32 479, i32 %height)
  %cmp1 = icmp sgt i32 %height, 479
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %width)
  %cmp2 = icmp sgt i32 %width, 351
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %height)
  %cmp4 = icmp sgt i32 %height, 287
  %or.cond51 = and i1 %cmp2, %cmp4
  br i1 %or.cond51, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %width)
  %cmp7 = icmp sgt i32 %width, 319
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %height)
  %cmp9 = icmp sgt i32 %height, 239
  %or.cond52 = and i1 %cmp7, %cmp9
  br i1 %or.cond52, label %if.end6.return_crit_edge, label %if.end11

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %width)
  %cmp12 = icmp sgt i32 %width, 287
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %height)
  %cmp14 = icmp sgt i32 %height, 215
  %or.cond53 = and i1 %cmp12, %cmp14
  br i1 %or.cond53, label %if.end11.return_crit_edge, label %if.end16

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %width)
  %cmp17 = icmp sgt i32 %width, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %height)
  %cmp19 = icmp sgt i32 %height, 191
  %or.cond54 = and i1 %cmp17, %cmp19
  br i1 %or.cond54, label %if.end16.return_crit_edge, label %if.end21

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %width)
  %cmp22 = icmp sgt i32 %width, 223
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %height)
  %cmp24 = icmp sgt i32 %height, 167
  %or.cond55 = and i1 %cmp22, %cmp24
  br i1 %or.cond55, label %if.end21.return_crit_edge, label %if.end26

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %width)
  %cmp27 = icmp sgt i32 %width, 191
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %height)
  %cmp29 = icmp sgt i32 %height, 143
  %or.cond56 = and i1 %cmp27, %cmp29
  br i1 %or.cond56, label %if.end26.return_crit_edge, label %if.end31

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %width)
  %cmp32 = icmp sgt i32 %width, 175
  %or.cond57 = and i1 %cmp32, %cmp29
  %spec.select = select i1 %or.cond57, i32 3, i32 -1
  br label %return

return:                                           ; preds = %if.end31, %if.end26.return_crit_edge, %if.end21.return_crit_edge, %if.end16.return_crit_edge, %if.end11.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 2, %if.end6.return_crit_edge ], [ 4, %if.end11.return_crit_edge ], [ 5, %if.end16.return_crit_edge ], [ 6, %if.end21.return_crit_edge ], [ 7, %if.end26.return_crit_edge ], [ %spec.select, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_save_camera_state(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i30 = alloca %struct.cpia2_command, align 4
  %cmd.i5 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %pnp_id.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pnp_id.i, align 4
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 51, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %direction3.i, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %0, align 4
  %8 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp260.i = icmp eq i32 %4, 1
  %start262.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %. = select i1 %cmp260.i, i8 18, i8 21
  %9 = ptrtoint ptr %start262.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %., ptr %start262.i, align 1
  %buffer.0.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i, i8 noundef zeroext 2, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool.not.i, label %if.end268.i, label %entry.cpia2_send_command.exit.i26_crit_edge

entry.cpia2_send_command.exit.i26_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i26

if.end268.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buffer.0.i.i, align 4
  %user_effects.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %12 = ptrtoint ptr %user_effects.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %user_effects.i, align 2
  br label %cpia2_send_command.exit.i26

cpia2_send_command.exit.i26:                      ; preds = %if.end268.i, %entry.cpia2_send_command.exit.i26_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i5) #9
  %13 = getelementptr inbounds i8, ptr %cmd.i5, i32 4
  %14 = getelementptr inbounds i8, ptr %cmd.i5, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 64)
  %16 = ptrtoint ptr %cmd.i5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %cmd.i5, align 4
  %reg_count.i8 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i5, i32 0, i32 2
  %direction3.i9 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i5, i32 0, i32 3
  %17 = ptrtoint ptr %direction3.i9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %direction3.i9, align 2
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %13, align 4
  %19 = ptrtoint ptr %reg_count.i8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %reg_count.i8, align 1
  %start69.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i5, i32 0, i32 4
  %20 = ptrtoint ptr %start69.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -112, ptr %start69.i, align 1
  %buffer.0.i.i23 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i5, i32 0, i32 5
  %call46.i.i24 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i23, i8 noundef zeroext 1, i8 noundef zeroext -112, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i24)
  %tobool.not.i25 = icmp eq i32 %call46.i.i24, 0
  br i1 %tobool.not.i25, label %if.end268.i27, label %cpia2_send_command.exit.i26.cpia2_send_command.exit.i51_crit_edge

cpia2_send_command.exit.i26.cpia2_send_command.exit.i51_crit_edge: ; preds = %cpia2_send_command.exit.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i51

if.end268.i27:                                    ; preds = %cpia2_send_command.exit.i26
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %buffer.0.i.i23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buffer.0.i.i23, align 4
  %vc_mp_direction.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 3
  %23 = ptrtoint ptr %vc_mp_direction.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %vc_mp_direction.i, align 1
  br label %cpia2_send_command.exit.i51

cpia2_send_command.exit.i51:                      ; preds = %if.end268.i27, %cpia2_send_command.exit.i26.cpia2_send_command.exit.i51_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i5) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i30) #9
  %24 = getelementptr inbounds i8, ptr %cmd.i30, i32 4
  %25 = getelementptr inbounds i8, ptr %cmd.i30, i32 8
  %26 = call ptr @memset(ptr %25, i32 255, i32 64)
  %27 = ptrtoint ptr %cmd.i30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 18, ptr %cmd.i30, align 4
  %reg_count.i33 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i30, i32 0, i32 2
  %direction3.i34 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i30, i32 0, i32 3
  %28 = ptrtoint ptr %direction3.i34 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %direction3.i34, align 2
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %24, align 4
  %30 = ptrtoint ptr %reg_count.i33 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %reg_count.i33, align 1
  %start62.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i30, i32 0, i32 4
  %31 = ptrtoint ptr %start62.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -111, ptr %start62.i, align 1
  %buffer.0.i.i48 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i30, i32 0, i32 5
  %call46.i.i49 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i48, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i49)
  %tobool.not.i50 = icmp eq i32 %call46.i.i49, 0
  br i1 %tobool.not.i50, label %if.end268.i52, label %cpia2_send_command.exit.i51.cpia2_do_command.exit54_crit_edge

cpia2_send_command.exit.i51.cpia2_do_command.exit54_crit_edge: ; preds = %cpia2_send_command.exit.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit54

if.end268.i52:                                    ; preds = %cpia2_send_command.exit.i51
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %buffer.0.i.i48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buffer.0.i.i48, align 4
  %vc_mp_data.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 4
  %34 = ptrtoint ptr %vc_mp_data.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %vc_mp_data.i, align 1
  br label %cpia2_do_command.exit54

cpia2_do_command.exit54:                          ; preds = %if.end268.i52, %cpia2_send_command.exit.i51.cpia2_do_command.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i30) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_set_flicker_mode(ptr noundef %cam, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i106 = alloca %struct.cpia2_command, align 4
  %cmd.i80 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %cpia2_send_command.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cpia2_send_command.exit.i:                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 255, i32 64)
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 21, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %direction3.i, align 2
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %2, align 4
  %8 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_count.i, align 1
  %start82.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %9 = ptrtoint ptr %start82.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 27, ptr %start82.i, align 1
  %buffer.0.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i, i8 noundef zeroext 2, i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool.not.i, label %if.end2, label %cpia2_do_command.exit

cpia2_do_command.exit:                            ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  br label %cleanup

if.end2:                                          ; preds = %cpia2_send_command.exit.i
  %10 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buffer.0.i.i, align 4
  %flicker_control.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %flicker_control.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %flicker_control.i, align 1
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  %13 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %mode, label %if.end2.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 60, label %sw.bb7
    i32 50, label %sw.bb14
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %14 = and i8 %11, 95
  %15 = or i8 %14, 32
  br label %cpia2_send_command.exit.i102

sw.bb7:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %16 = and i8 %11, 95
  br label %cpia2_send_command.exit.i102

sw.bb14:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i8 %11, 95
  %18 = or i8 %17, -128
  br label %cpia2_send_command.exit.i102

cpia2_send_command.exit.i102:                     ; preds = %sw.bb14, %sw.bb7, %sw.bb
  %cam_reg.0 = phi i8 [ %18, %sw.bb14 ], [ %16, %sw.bb7 ], [ %15, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i80) #9
  %19 = getelementptr inbounds i8, ptr %cmd.i80, i32 4
  %20 = getelementptr inbounds i8, ptr %cmd.i80, i32 8
  %21 = call ptr @memset(ptr %20, i32 255, i32 64)
  %22 = ptrtoint ptr %cmd.i80 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 22, ptr %cmd.i80, align 4
  %reg_count.i83 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i80, i32 0, i32 2
  %direction3.i84 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i80, i32 0, i32 3
  %23 = ptrtoint ptr %direction3.i84 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %direction3.i84, align 2
  %buffer77.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i80, i32 0, i32 5
  %24 = ptrtoint ptr %buffer77.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cam_reg.0, ptr %buffer77.i, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %19, align 4
  %26 = ptrtoint ptr %reg_count.i83 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %reg_count.i83, align 1
  %start82.i86 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i80, i32 0, i32 4
  %27 = ptrtoint ptr %start82.i86 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 27, ptr %start82.i86, align 1
  %call46.i.i100 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer77.i, i8 noundef zeroext 2, i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i100)
  %tobool.not.i101 = icmp eq i32 %call46.i.i100, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i80) #9
  br i1 %tobool.not.i101, label %cpia2_send_command.exit.i126, label %cpia2_send_command.exit.i102.cleanup_crit_edge

cpia2_send_command.exit.i102.cleanup_crit_edge:   ; preds = %cpia2_send_command.exit.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cpia2_send_command.exit.i126:                     ; preds = %cpia2_send_command.exit.i102
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i106) #9
  %28 = getelementptr inbounds i8, ptr %cmd.i106, i32 4
  %29 = getelementptr inbounds i8, ptr %cmd.i106, i32 8
  %30 = call ptr @memset(ptr %29, i32 255, i32 64)
  %31 = ptrtoint ptr %cmd.i106 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 40, ptr %cmd.i106, align 4
  %reg_count.i109 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i106, i32 0, i32 2
  %direction3.i110 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i106, i32 0, i32 3
  %32 = ptrtoint ptr %direction3.i110 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %direction3.i110, align 2
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %28, align 4
  %34 = ptrtoint ptr %reg_count.i109 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %reg_count.i109, align 1
  %start185.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i106, i32 0, i32 4
  %35 = ptrtoint ptr %start185.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 21, ptr %start185.i, align 1
  %buffer.0.i.i123 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i106, i32 0, i32 5
  %call46.i.i124 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i123, i8 noundef zeroext 2, i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i124)
  %tobool.not.i125 = icmp eq i32 %call46.i.i124, 0
  br i1 %tobool.not.i125, label %if.end28, label %cpia2_do_command.exit129

cpia2_do_command.exit129:                         ; preds = %cpia2_send_command.exit.i126
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i106) #9
  br label %cleanup

if.end28:                                         ; preds = %cpia2_send_command.exit.i126
  %36 = ptrtoint ptr %buffer.0.i.i123 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buffer.0.i.i123, align 4
  %exposure_modes.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 9
  %38 = ptrtoint ptr %exposure_modes.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %exposure_modes.i, align 1
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp30 = icmp eq i32 %mode, 0
  %39 = and i8 %37, -33
  %masksel = select i1 %cmp30, i8 32, i8 0
  %cam_reg.1 = or i8 %39, %masksel
  %call40 = call i32 @cpia2_do_command(ptr noundef %cam, i32 noundef 41, i8 noundef zeroext 1, i8 noundef zeroext %cam_reg.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %call44 = call i32 @cpia2_do_command(ptr noundef %cam, i32 noundef 50, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %40 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mode, label %if.end47.cleanup_crit_edge [
    i32 0, label %if.end47.sw.bb48_crit_edge
    i32 60, label %if.end47.sw.bb48_crit_edge136
    i32 50, label %if.end47.sw.bb48_crit_edge137
  ]

if.end47.sw.bb48_crit_edge137:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

if.end47.sw.bb48_crit_edge136:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

if.end47.sw.bb48_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb48:                                          ; preds = %if.end47.sw.bb48_crit_edge, %if.end47.sw.bb48_crit_edge136, %if.end47.sw.bb48_crit_edge137
  %conv49 = trunc i32 %mode to i8
  %flicker_mode_req = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 3, i32 1
  %41 = ptrtoint ptr %flicker_mode_req to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv49, ptr %flicker_mode_req, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb48, %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %cpia2_do_command.exit129, %cpia2_send_command.exit.i102.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %cpia2_do_command.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call46.i.i, %cpia2_do_command.exit ], [ -22, %if.end2.cleanup_crit_edge ], [ %call46.i.i124, %cpia2_do_command.exit129 ], [ %call40, %if.end28.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ 0, %sw.bb48 ], [ -22, %if.end47.cleanup_crit_edge ], [ %call46.i.i100, %cpia2_send_command.exit.i102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_set_property_flip(ptr noundef %cam, i32 noundef %prop_val) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i14 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %pnp_id.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pnp_id.i, align 4
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 51, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %direction3.i, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %0, align 4
  %8 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp260.i = icmp eq i32 %4, 1
  %start262.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %. = select i1 %cmp260.i, i8 18, i8 21
  %9 = ptrtoint ptr %start262.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %., ptr %start262.i, align 1
  %buffer.0.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i, i8 noundef zeroext 2, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool.not.i, label %if.end268.i, label %entry.cpia2_do_command.exit_crit_edge

entry.cpia2_do_command.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit

if.end268.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buffer.0.i.i, align 4
  %user_effects.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %12 = ptrtoint ptr %user_effects.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %user_effects.i, align 2
  br label %cpia2_do_command.exit

cpia2_do_command.exit:                            ; preds = %if.end268.i, %entry.cpia2_do_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  %user_effects = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %13 = ptrtoint ptr %user_effects to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %user_effects, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prop_val)
  %tobool.not = icmp eq i32 %prop_val, 0
  %15 = and i8 %14, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %cam_reg.0 = or i8 %15, %masksel
  %16 = ptrtoint ptr %user_effects to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cam_reg.0, ptr %user_effects, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i14) #9
  %17 = getelementptr inbounds i8, ptr %cmd.i14, i32 4
  %18 = getelementptr inbounds i8, ptr %cmd.i14, i32 8
  %19 = call ptr @memset(ptr %18, i32 255, i32 64)
  %20 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pnp_id.i, align 4
  %22 = ptrtoint ptr %cmd.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 52, ptr %cmd.i14, align 4
  %reg_count.i17 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 2
  %direction3.i18 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 3
  %23 = ptrtoint ptr %direction3.i18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %direction3.i18, align 2
  %buffer255.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 5
  %24 = ptrtoint ptr %buffer255.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cam_reg.0, ptr %buffer255.i, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %17, align 4
  %26 = ptrtoint ptr %reg_count.i17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %reg_count.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp260.i20 = icmp eq i32 %21, 1
  %.45 = select i1 %cmp260.i20, i8 18, i8 21
  %start262.i21 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 4
  %27 = ptrtoint ptr %start262.i21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.45, ptr %start262.i21, align 1
  %call46.i.i38 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer255.i, i8 noundef zeroext 2, i8 noundef zeroext %.45, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i14) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_set_property_mirror(ptr noundef %cam, i32 noundef %prop_val) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i14 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %pnp_id.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pnp_id.i, align 4
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 51, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %direction3.i, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %0, align 4
  %8 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp260.i = icmp eq i32 %4, 1
  %start262.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %. = select i1 %cmp260.i, i8 18, i8 21
  %9 = ptrtoint ptr %start262.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %., ptr %start262.i, align 1
  %buffer.0.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.0.i.i, i8 noundef zeroext 2, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool.not.i, label %if.end268.i, label %entry.cpia2_do_command.exit_crit_edge

entry.cpia2_do_command.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_do_command.exit

if.end268.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buffer.0.i.i, align 4
  %user_effects.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %12 = ptrtoint ptr %user_effects.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %user_effects.i, align 2
  br label %cpia2_do_command.exit

cpia2_do_command.exit:                            ; preds = %if.end268.i, %entry.cpia2_do_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  %user_effects = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %13 = ptrtoint ptr %user_effects to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %user_effects, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prop_val)
  %tobool.not = icmp eq i32 %prop_val, 0
  %15 = and i8 %14, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %cam_reg.0 = or i8 %15, %masksel
  %16 = ptrtoint ptr %user_effects to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cam_reg.0, ptr %user_effects, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i14) #9
  %17 = getelementptr inbounds i8, ptr %cmd.i14, i32 4
  %18 = getelementptr inbounds i8, ptr %cmd.i14, i32 8
  %19 = call ptr @memset(ptr %18, i32 255, i32 64)
  %20 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pnp_id.i, align 4
  %22 = ptrtoint ptr %cmd.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 52, ptr %cmd.i14, align 4
  %reg_count.i17 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 2
  %direction3.i18 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 3
  %23 = ptrtoint ptr %direction3.i18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %direction3.i18, align 2
  %buffer255.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 5
  %24 = ptrtoint ptr %buffer255.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cam_reg.0, ptr %buffer255.i, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %17, align 4
  %26 = ptrtoint ptr %reg_count.i17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %reg_count.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp260.i20 = icmp eq i32 %21, 1
  %.45 = select i1 %cmp260.i20, i8 18, i8 21
  %start262.i21 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 4
  %27 = ptrtoint ptr %start262.i21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.45, ptr %start262.i21, align 1
  %call46.i.i38 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer255.i, i8 noundef zeroext 2, i8 noundef zeroext %.45, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i14) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_set_gpio(ptr noundef %cam, i8 noundef zeroext %setting) local_unnamed_addr #0 align 64 {
cpia2_send_command.exit.i:
  %cmd.i14 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %4 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %direction3.i, align 2
  %buffer64.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 4
  %6 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %reg_count.i, align 1
  %start69.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %7 = ptrtoint ptr %start69.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -112, ptr %start69.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer64.i, i8 noundef zeroext 1, i8 noundef zeroext -112, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %cmp = icmp slt i32 %call46.i.i, 0
  br i1 %cmp, label %cpia2_send_command.exit.i.cleanup_crit_edge, label %cpia2_send_command.exit.i34

cpia2_send_command.exit.i.cleanup_crit_edge:      ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cpia2_send_command.exit.i34:                      ; preds = %cpia2_send_command.exit.i
  %gpio_direction = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 3
  %8 = ptrtoint ptr %gpio_direction to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %gpio_direction, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i14) #9
  %9 = getelementptr inbounds i8, ptr %cmd.i14, i32 4
  %10 = getelementptr inbounds i8, ptr %cmd.i14, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 64)
  %12 = ptrtoint ptr %cmd.i14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 19, ptr %cmd.i14, align 4
  %reg_count.i17 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 2
  %direction3.i18 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 3
  %13 = ptrtoint ptr %direction3.i18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %direction3.i18, align 2
  %buffer57.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 5
  %14 = ptrtoint ptr %buffer57.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %setting, ptr %buffer57.i, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %9, align 4
  %16 = ptrtoint ptr %reg_count.i17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %reg_count.i17, align 1
  %start62.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i14, i32 0, i32 4
  %17 = ptrtoint ptr %start62.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -111, ptr %start62.i, align 1
  %call46.i.i32 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer57.i, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i32)
  %cmp2 = icmp slt i32 %call46.i.i32, 0
  br i1 %cmp2, label %cpia2_send_command.exit.i34.cleanup_crit_edge, label %if.end4

cpia2_send_command.exit.i34.cleanup_crit_edge:    ; preds = %cpia2_send_command.exit.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %cpia2_send_command.exit.i34
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_data = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 4
  %18 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %setting, ptr %gpio_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %cpia2_send_command.exit.i34.cleanup_crit_edge, %cpia2_send_command.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call46.i.i, %cpia2_send_command.exit.i.cleanup_crit_edge ], [ %call46.i.i32, %cpia2_send_command.exit.i34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_set_fps(ptr noundef %cam, i32 noundef %framerate) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %framerate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %framerate, label %entry.cleanup_crit_edge [
    i32 32, label %entry.sw.bb_crit_edge
    i32 16, label %entry.sw.bb_crit_edge34
    i32 8, label %entry.cpia2_send_command.exit.i_crit_edge
    i32 4, label %entry.cpia2_send_command.exit.i_crit_edge35
    i32 2, label %entry.cpia2_send_command.exit.i_crit_edge36
    i32 1, label %entry.cpia2_send_command.exit.i_crit_edge37
  ]

entry.cpia2_send_command.exit.i_crit_edge37:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

entry.cpia2_send_command.exit.i_crit_edge36:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

entry.cpia2_send_command.exit.i_crit_edge35:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

entry.cpia2_send_command.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb.cpia2_send_command.exit.i_crit_edge

sw.bb.cpia2_send_command.exit.i_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

land.lhs.true:                                    ; preds = %sw.bb
  %sensor_flags = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 6
  %3 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sensor_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp3 = icmp eq i8 %4, 16
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cpia2_send_command.exit.i_crit_edge

land.lhs.true.cpia2_send_command.exit.i_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cpia2_send_command.exit.i:                        ; preds = %land.lhs.true.cpia2_send_command.exit.i_crit_edge, %sw.bb.cpia2_send_command.exit.i_crit_edge, %entry.cpia2_send_command.exit.i_crit_edge, %entry.cpia2_send_command.exit.i_crit_edge35, %entry.cpia2_send_command.exit.i_crit_edge36, %entry.cpia2_send_command.exit.i_crit_edge37
  %pnp_id7 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %pnp_id7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pnp_id7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp9 = icmp eq i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %framerate)
  %cmp12 = icmp eq i32 %framerate, 8
  %7 = and i1 %cmp12, %cmp9
  %8 = trunc i32 %framerate to i8
  %conv16 = select i1 %7, i8 0, i8 %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %9 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 64)
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 29, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %13 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %direction3.i, align 2
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %9, align 4
  %15 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %reg_count.i, align 1
  %spec.select.i = select i1 %cmp9, i8 17, i8 20
  %16 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.i, ptr %16, align 1
  %buffer145.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %18 = ptrtoint ptr %buffer145.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv16, ptr %buffer145.i, align 4
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer145.i, i8 noundef zeroext 2, i8 noundef zeroext %spec.select.i, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool.not.i = icmp eq i32 %call46.i.i, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  br i1 %tobool.not.i, label %if.then19, label %cpia2_send_command.exit.i.cleanup_crit_edge

cpia2_send_command.exit.i.cleanup_crit_edge:      ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %frame_rate = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 1
  %19 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv16, ptr %frame_rate, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %cpia2_send_command.exit.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then19 ], [ %call46.i.i, %cpia2_send_command.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_set_brightness(ptr noundef %cam, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %cmp1 = icmp eq i8 %value, 0
  %or.cond = and i1 %cmp1, %cmp
  %inc = zext i1 %or.cond to i8
  %value.addr.0 = add i8 %inc, %value
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 255, i32 64)
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %direction3.i, align 2
  %buffer.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %value.addr.0, ptr %buffer.i, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %2, align 4
  %9 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_count.i, align 1
  %. = select i1 %cmp, i8 22, i8 32
  %start21.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %10 = ptrtoint ptr %start21.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %start21.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer.i, i8 noundef zeroext 2, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_set_contrast(ptr noundef %cam, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
cpia2_send_command.exit.i:
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %4 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %direction3.i, align 2
  %buffer24.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %5 = ptrtoint ptr %buffer24.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %value, ptr %buffer24.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %0, align 4
  %7 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %reg_count.i, align 1
  %start29.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %8 = ptrtoint ptr %start29.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 38, ptr %start29.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer24.i, i8 noundef zeroext 2, i8 noundef zeroext 38, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_set_saturation(ptr noundef %cam, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %pnp_id.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pnp_id.i, align 4
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 11, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %direction3.i, align 2
  %buffer31.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %7 = ptrtoint ptr %buffer31.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %value, ptr %buffer31.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %0, align 4
  %9 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp36.i = icmp eq i32 %4, 1
  %. = select i1 %cmp36.i, i8 39, i8 61
  %start38.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %10 = ptrtoint ptr %start38.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %start38.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer31.i, i8 noundef zeroext 2, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_set_format(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flush = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 7
  %0 = ptrtoint ptr %flush to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %flush, align 8
  %call = tail call i32 @cpia2_usb_stream_pause(ptr noundef %cam) #9
  %camera_state.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9
  %1 = ptrtoint ptr %camera_state.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %camera_state.i, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i) #9
  %2 = getelementptr inbounds i8, ptr %cmd.i.i, i32 4
  %3 = getelementptr inbounds i8, ptr %cmd.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 255, i32 64)
  %5 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 36, ptr %cmd.i.i, align 4
  %reg_count.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 2
  %direction3.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %direction3.i.i, align 2
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %2, align 4
  %9 = ptrtoint ptr %reg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %reg_count.i.i, align 1
  %start171.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %start171.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %start171.i.i, align 1
  %call46.i.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i) #9
  %call2 = call i32 @cpia2_reset_camera(ptr noundef %cam)
  %11 = ptrtoint ptr %flush to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %flush, align 8
  %call4 = call i32 @cpia2_usb_stream_resume(ptr noundef %cam) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_stream_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cpia2_dbg_dump_registers(ptr nocapture %cam) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_stream_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_deinit_camera_struct(ptr noundef %cam, ptr nocapture noundef readnone %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister(ptr noundef %cam) #9
  tail call void @kfree(ptr noundef %cam) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpia2_init_camera_struct(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2136) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %release = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cpia2_camera_release, ptr %release, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call3 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %do.body12

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @cpia2_init_camera_struct.__key) #9
  %wq_stream = getelementptr inbounds %struct.camera_data, ptr %call7.i.i, i32 0, i32 23
  tail call void @__init_waitqueue_head(ptr noundef %wq_stream, ptr noundef nonnull @.str.14, ptr noundef nonnull @cpia2_init_camera_struct.__key.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.end7, %do.end
  %retval.0 = phi ptr [ null, %do.end7 ], [ %call7.i.i, %do.body12 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_camera_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_init_camera(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i47 = alloca %struct.cpia2_command, align 4
  %cmd.i22 = alloca %struct.cpia2_command, align 4
  %cmd.i = alloca %struct.cpia2_command, align 4
  %cmd.i57.i = alloca %struct.cpia2_command, align 4
  %cmd.i33.i = alloca %struct.cpia2_command, align 4
  %cmd.i9.i = alloca %struct.cpia2_command, align 4
  %cmd.i.i = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmapped = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 9
  %0 = ptrtoint ptr %mmapped to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mmapped, align 8
  tail call fastcc void @cpia2_set_high_power(ptr noundef %cam)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i) #9
  %1 = getelementptr inbounds i8, ptr %cmd.i.i, i32 4
  %2 = getelementptr inbounds i8, ptr %cmd.i.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 64)
  %4 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %cmd.i.i, align 4
  %reg_count.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %reg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %reg_count.i.i, align 1
  %direction3.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %direction3.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %direction3.i.i, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %1, align 4
  %start.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %start.i.i, align 1
  %call46.i.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call46.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end268.i.i, label %entry.cpia2_send_command.exit.i29.i_crit_edge

entry.cpia2_send_command.exit.i29.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i29.i

if.end268.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %params.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 4
  %11 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %params.i.i, align 4
  %arrayidx274.i.i = getelementptr inbounds i8, ptr %cmd.i.i, i32 9
  %12 = ptrtoint ptr %arrayidx274.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx274.i.i, align 1
  %firmware_revision_lo.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 1
  %14 = ptrtoint ptr %firmware_revision_lo.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %firmware_revision_lo.i.i, align 1
  br label %cpia2_send_command.exit.i29.i

cpia2_send_command.exit.i29.i:                    ; preds = %if.end268.i.i, %entry.cpia2_send_command.exit.i29.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i) #9
  %call1.i = call i32 @cpia2_do_command(ptr noundef %cam, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i9.i) #9
  %15 = getelementptr inbounds i8, ptr %cmd.i9.i, i32 4
  %16 = getelementptr inbounds i8, ptr %cmd.i9.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 255, i32 64)
  %18 = ptrtoint ptr %cmd.i9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %cmd.i9.i, align 4
  %reg_count.i12.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i9.i, i32 0, i32 2
  %19 = ptrtoint ptr %reg_count.i12.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %reg_count.i12.i, align 1
  %direction3.i13.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i9.i, i32 0, i32 3
  %20 = ptrtoint ptr %direction3.i13.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %direction3.i13.i, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %15, align 4
  %start10.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i9.i, i32 0, i32 4
  %22 = ptrtoint ptr %start10.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %start10.i.i, align 1
  %call46.i.i27.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %16, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call46.i.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.end268.i30.i, label %cpia2_send_command.exit.i29.i.cpia2_send_command.exit.i53.i_crit_edge

cpia2_send_command.exit.i29.i.cpia2_send_command.exit.i53.i_crit_edge: ; preds = %cpia2_send_command.exit.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i53.i

if.end268.i30.i:                                  ; preds = %cpia2_send_command.exit.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %16, align 4
  %asic_id.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 2
  %25 = ptrtoint ptr %asic_id.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %asic_id.i.i, align 2
  %arrayidx351.i.i = getelementptr inbounds i8, ptr %cmd.i9.i, i32 9
  %26 = ptrtoint ptr %arrayidx351.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx351.i.i, align 1
  %asic_rev.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 3
  %28 = ptrtoint ptr %asic_rev.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %asic_rev.i.i, align 1
  br label %cpia2_send_command.exit.i53.i

cpia2_send_command.exit.i53.i:                    ; preds = %if.end268.i30.i, %cpia2_send_command.exit.i29.i.cpia2_send_command.exit.i53.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i9.i) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i33.i) #9
  %29 = getelementptr inbounds i8, ptr %cmd.i33.i, i32 4
  %30 = getelementptr inbounds i8, ptr %cmd.i33.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 255, i32 64)
  %32 = ptrtoint ptr %cmd.i33.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %cmd.i33.i, align 4
  %reg_count.i36.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i33.i, i32 0, i32 2
  %33 = ptrtoint ptr %reg_count.i36.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %reg_count.i36.i, align 1
  %direction3.i37.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i33.i, i32 0, i32 3
  %34 = ptrtoint ptr %direction3.i37.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %direction3.i37.i, align 2
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %29, align 4
  %start13.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i33.i, i32 0, i32 4
  %36 = ptrtoint ptr %start13.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 5, ptr %start13.i.i, align 1
  %call46.i.i51.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %30, i8 noundef zeroext 2, i8 noundef zeroext 5, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call46.i.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.end268.i54.i, label %cpia2_send_command.exit.i53.i.cpia2_send_command.exit.i77.i_crit_edge

cpia2_send_command.exit.i53.i.cpia2_send_command.exit.i77.i_crit_edge: ; preds = %cpia2_send_command.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_send_command.exit.i77.i

if.end268.i54.i:                                  ; preds = %cpia2_send_command.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %30, align 4
  %sensor_flags.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 6
  %39 = ptrtoint ptr %sensor_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sensor_flags.i.i, align 2
  %arrayidx360.i.i = getelementptr inbounds i8, ptr %cmd.i33.i, i32 9
  %40 = ptrtoint ptr %arrayidx360.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx360.i.i, align 1
  %sensor_rev.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 7
  %42 = ptrtoint ptr %sensor_rev.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %sensor_rev.i.i, align 1
  br label %cpia2_send_command.exit.i77.i

cpia2_send_command.exit.i77.i:                    ; preds = %if.end268.i54.i, %cpia2_send_command.exit.i53.i.cpia2_send_command.exit.i77.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i33.i) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i57.i) #9
  %43 = getelementptr inbounds i8, ptr %cmd.i57.i, i32 4
  %44 = getelementptr inbounds i8, ptr %cmd.i57.i, i32 8
  %45 = call ptr @memset(ptr %44, i32 255, i32 64)
  %46 = ptrtoint ptr %cmd.i57.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %cmd.i57.i, align 4
  %reg_count.i60.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i57.i, i32 0, i32 2
  %47 = ptrtoint ptr %reg_count.i60.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %reg_count.i60.i, align 1
  %direction3.i61.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i57.i, i32 0, i32 3
  %48 = ptrtoint ptr %direction3.i61.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %direction3.i61.i, align 2
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %43, align 4
  %start16.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i57.i, i32 0, i32 4
  %50 = ptrtoint ptr %start16.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %start16.i.i, align 1
  %call46.i.i75.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %44, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call46.i.i75.i, 0
  br i1 %tobool.not.i76.i, label %if.end268.i78.i, label %cpia2_send_command.exit.i77.i.cpia2_get_version_info.exit_crit_edge

cpia2_send_command.exit.i77.i.cpia2_get_version_info.exit_crit_edge: ; preds = %cpia2_send_command.exit.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpia2_get_version_info.exit

if.end268.i78.i:                                  ; preds = %cpia2_send_command.exit.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %44, align 4
  %vp_device_hi.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 4
  %53 = ptrtoint ptr %vp_device_hi.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %vp_device_hi.i.i, align 4
  %arrayidx369.i.i = getelementptr inbounds i8, ptr %cmd.i57.i, i32 9
  %54 = ptrtoint ptr %arrayidx369.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx369.i.i, align 1
  %vp_device_lo.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 5
  %56 = ptrtoint ptr %vp_device_lo.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %vp_device_lo.i.i, align 1
  br label %cpia2_get_version_info.exit

cpia2_get_version_info.exit:                      ; preds = %if.end268.i78.i, %cpia2_send_command.exit.i77.i.cpia2_get_version_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i57.i) #9
  %asic_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 2
  %57 = ptrtoint ptr %asic_id to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %asic_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %58)
  %cmp.not = icmp eq i8 %58, 103
  br i1 %cmp.not, label %cpia2_send_command.exit.i, label %do.end3

do.end3:                                          ; preds = %cpia2_get_version_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %58 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #12
  br label %return

cpia2_send_command.exit.i:                        ; preds = %cpia2_get_version_info.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i) #9
  %59 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %60 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %61 = call ptr @memset(ptr %60, i32 255, i32 64)
  %pnp_id.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %62 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 17, ptr %cmd.i, align 4
  %reg_count.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 2
  %direction3.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 3
  %63 = ptrtoint ptr %direction3.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %direction3.i, align 2
  %buffer64.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 5
  %64 = ptrtoint ptr %buffer64.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %buffer64.i, align 4
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %59, align 4
  %66 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %reg_count.i, align 1
  %start69.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i, i32 0, i32 4
  %67 = ptrtoint ptr %start69.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -112, ptr %start69.i, align 1
  %call46.i.i = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer64.i, i8 noundef zeroext 1, i8 noundef zeroext -112, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i22) #9
  %68 = getelementptr inbounds i8, ptr %cmd.i22, i32 4
  %69 = getelementptr inbounds i8, ptr %cmd.i22, i32 8
  %70 = call ptr @memset(ptr %69, i32 255, i32 64)
  %71 = ptrtoint ptr %cmd.i22 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 19, ptr %cmd.i22, align 4
  %reg_count.i25 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i22, i32 0, i32 2
  %direction3.i26 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i22, i32 0, i32 3
  %72 = ptrtoint ptr %direction3.i26 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %direction3.i26, align 2
  %buffer57.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i22, i32 0, i32 5
  %73 = ptrtoint ptr %buffer57.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %buffer57.i, align 4
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %68, align 4
  %75 = ptrtoint ptr %reg_count.i25 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %reg_count.i25, align 1
  %start62.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i22, i32 0, i32 4
  %76 = ptrtoint ptr %start62.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -111, ptr %start62.i, align 1
  %call46.i.i40 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %buffer57.i, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i22) #9
  %lowlight_boost.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 7
  %77 = ptrtoint ptr %lowlight_boost.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %lowlight_boost.i, align 1
  %flicker_mode_req.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 3, i32 1
  %78 = ptrtoint ptr %flicker_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %flicker_mode_req.i, align 1
  %compression.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 4
  %79 = ptrtoint ptr %compression.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 5, ptr %compression.i, align 1
  %creep_period.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 4, i32 1
  %80 = ptrtoint ptr %creep_period.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %creep_period.i, align 1
  %user_squeeze.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 4, i32 2
  %81 = ptrtoint ptr %user_squeeze.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 20, ptr %user_squeeze.i, align 1
  %inhibit_htables.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 4, i32 3
  %82 = ptrtoint ptr %inhibit_htables.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %inhibit_htables.i, align 1
  %gpio_direction.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 3
  %83 = ptrtoint ptr %gpio_direction.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %gpio_direction.i, align 1
  %gpio_data.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 4
  %84 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %gpio_data.i, align 4
  %quality.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 8, i32 5
  %85 = ptrtoint ptr %quality.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 100, ptr %quality.i, align 1
  %86 = ptrtoint ptr %pnp_id.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pnp_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i = icmp eq i32 %87, 1
  br i1 %cmp.i, label %if.then.i, label %if.else24.i

if.then.i:                                        ; preds = %cpia2_send_command.exit.i
  %sensor_flags.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 6
  %88 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %sensor_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %89)
  %cmp16.i = icmp eq i8 %89, 16
  %frame_rate.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 1
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %frame_rate.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 8, ptr %frame_rate.i, align 1
  br label %if.end28.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %frame_rate.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 32, ptr %frame_rate.i, align 1
  br label %if.end28.i

if.else24.i:                                      ; preds = %cpia2_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %frame_rate27.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 1
  %92 = ptrtoint ptr %frame_rate27.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 32, ptr %frame_rate27.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else24.i, %if.else.i, %if.then18.i
  %sensor_flags31.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 0, i32 6
  %93 = ptrtoint ptr %sensor_flags31.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sensor_flags31.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %94)
  %cmp33.i = icmp eq i8 %94, 16
  br i1 %cmp33.i, label %if.end28.i.reset_camera_struct.exit_crit_edge, label %if.else39.i

if.end28.i.reset_camera_struct.exit_crit_edge:    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_camera_struct.exit

if.else39.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_camera_struct.exit

reset_camera_struct.exit:                         ; preds = %if.else39.i, %if.end28.i.reset_camera_struct.exit_crit_edge
  %.sink85.i = phi i32 [ 0, %if.else39.i ], [ 1, %if.end28.i.reset_camera_struct.exit_crit_edge ]
  %.sink84.i = phi i32 [ 1, %if.else39.i ], [ 0, %if.end28.i.reset_camera_struct.exit_crit_edge ]
  %.sink83.i = phi i32 [ 352, %if.else39.i ], [ 640, %if.end28.i.reset_camera_struct.exit_crit_edge ]
  %.sink.i = phi i32 [ 288, %if.else39.i ], [ 480, %if.end28.i.reset_camera_struct.exit_crit_edge ]
  %95 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 6
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.sink85.i, ptr %95, align 4
  %97 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 13
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink84.i, ptr %97, align 8
  %99 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 6
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %.sink83.i, ptr %99, align 4
  %101 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 6, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink.i, ptr %101, align 4
  %width52.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %103 = ptrtoint ptr %width52.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink83.i, ptr %width52.i, align 8
  %height56.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %104 = ptrtoint ptr %height56.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink.i, ptr %height56.i, align 4
  %camera_state.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9
  %105 = ptrtoint ptr %camera_state.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %camera_state.i, align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd.i.i47) #9
  %106 = getelementptr inbounds i8, ptr %cmd.i.i47, i32 4
  %107 = getelementptr inbounds i8, ptr %cmd.i.i47, i32 8
  %108 = call ptr @memset(ptr %107, i32 255, i32 64)
  %109 = ptrtoint ptr %cmd.i.i47 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 36, ptr %cmd.i.i47, align 4
  %reg_count.i.i48 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i47, i32 0, i32 2
  %direction3.i.i49 = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i47, i32 0, i32 3
  %110 = ptrtoint ptr %direction3.i.i49 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %direction3.i.i49, align 2
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %107, align 4
  %112 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %106, align 4
  %113 = ptrtoint ptr %reg_count.i.i48 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %reg_count.i.i48, align 1
  %start171.i.i = getelementptr inbounds %struct.cpia2_command, ptr %cmd.i.i47, i32 0, i32 4
  %114 = ptrtoint ptr %start171.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 2, ptr %start171.i.i, align 1
  %call46.i.i.i50 = call i32 @cpia2_usb_transfer_cmd(ptr noundef %cam, ptr noundef %107, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd.i.i47) #9
  br label %return

return:                                           ; preds = %reset_camera_struct.exit, %do.end3
  %retval.0 = phi i32 [ -19, %do.end3 ], [ 0, %reset_camera_struct.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_allocate_buffers(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 28
  %0 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffers, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end8.i, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end8.i:                                        ; preds = %entry
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %2 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_frames, align 4
  %mul = mul i32 %3, 40
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #14
  %4 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %buffers, align 8
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %do.end, label %if.end8.i.if.end6_crit_edge

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %cleanup71

if.end6:                                          ; preds = %if.end8.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %frame_buffer = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 27
  %5 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frame_buffer, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end24_crit_edge

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then8:                                         ; preds = %if.end6
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 24
  %7 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_size, align 8
  %num_frames9 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %9 = ptrtoint ptr %num_frames9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_frames9, align 4
  %mul10 = mul i32 %10, %8
  %add.i = add i32 %mul10, 4095
  %and.i = and i32 %add.i, -4096
  %call.i = tail call noalias ptr @vmalloc_32(i32 noundef %and.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end18, label %if.end.i123

if.end.i123:                                      ; preds = %if.then8
  %11 = call ptr @memset(ptr %call.i, i32 0, i32 %and.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp13.i = icmp sgt i32 %and.i, 0
  br i1 %cmp13.i, label %while.body.preheader.i, label %if.end.i123.if.end24.sink.split_crit_edge

if.end.i123.if.end24.sink.split_crit_edge:        ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

while.body.preheader.i:                           ; preds = %if.end.i123
  %12 = ptrtoint ptr %call.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %SetPageReserved.exit.i.while.body.i_crit_edge, %while.body.preheader.i
  %adr.015.i = phi i32 [ %add2.i, %SetPageReserved.exit.i.while.body.i_crit_edge ], [ %12, %while.body.preheader.i ]
  %size.addr.014.i = phi i32 [ %sub.i, %SetPageReserved.exit.i.while.body.i_crit_edge ], [ %and.i, %while.body.preheader.i ]
  %13 = inttoptr i32 %adr.015.i to ptr
  %call1.i = tail call ptr @vmalloc_to_page(ptr noundef %13) #9
  %14 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call1.i, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %PageCompound.exit.i.i, label %while.body.i.if.then.i.i_crit_edge

while.body.i.if.then.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

PageCompound.exit.i.i:                            ; preds = %while.body.i
  %17 = getelementptr inbounds %struct.page, ptr %call1.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i124, label %do.body7.i.i, label %PageCompound.exit.i.i.if.then.i.i_crit_edge, !prof !104

PageCompound.exit.i.i.if.then.i.i_crit_edge:      ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %PageCompound.exit.i.i.if.then.i.i_crit_edge, %while.body.i.if.then.i.i_crit_edge
  tail call void @dump_page(ptr noundef %call1.i, ptr noundef nonnull @.str.37) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

do.body7.i.i:                                     ; preds = %PageCompound.exit.i.i
  %20 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i.i, label %if.then16.i.i, label %SetPageReserved.exit.i, !prof !106

if.then16.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call1.i, ptr noundef nonnull @.str.38) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

SetPageReserved.exit.i:                           ; preds = %do.body7.i.i
  tail call void @_set_bit(i32 noundef 12, ptr noundef %call1.i) #9
  %add2.i = add i32 %adr.015.i, 4096
  %sub.i = add nsw i32 %size.addr.014.i, -4096
  %cmp.i125 = icmp sgt i32 %size.addr.014.i, 4096
  br i1 %cmp.i125, label %SetPageReserved.exit.i.while.body.i_crit_edge, label %SetPageReserved.exit.i.if.end24.sink.split_crit_edge

SetPageReserved.exit.i.if.end24.sink.split_crit_edge: ; preds = %SetPageReserved.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

SetPageReserved.exit.i.while.body.i_crit_edge:    ; preds = %SetPageReserved.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end18:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %frame_buffer, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  %23 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffers, align 8
  tail call void @kfree(ptr noundef %24) #9
  %25 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %buffers, align 8
  br label %cleanup71

if.end24.sink.split:                              ; preds = %SetPageReserved.exit.i.if.end24.sink.split_crit_edge, %if.end.i123.if.end24.sink.split_crit_edge
  %26 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %frame_buffer, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.end6.if.end24_crit_edge
  %num_frames25 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %27 = ptrtoint ptr %num_frames25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_frames25, align 4
  %sub131 = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub131)
  %cmp132 = icmp sgt i32 %sub131, 0
  br i1 %cmp132, label %for.body.lr.ph, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %frame_size30 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %29 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffers, align 8
  %add = add nuw nsw i32 %i.0133, 1
  %arrayidx = getelementptr %struct.framebuf, ptr %30, i32 %add
  %next = getelementptr %struct.framebuf, ptr %30, i32 %i.0133, i32 7
  %31 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx, ptr %next, align 8
  %32 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %frame_buffer, align 4
  %34 = ptrtoint ptr %frame_size30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_size30, align 8
  %mul31 = mul i32 %35, %i.0133
  %add.ptr = getelementptr i8, ptr %33, i32 %mul31
  %36 = load ptr, ptr %buffers, align 8
  %data = getelementptr %struct.framebuf, ptr %36, i32 %i.0133, i32 6
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %data, align 4
  %38 = load ptr, ptr %buffers, align 8
  %status = getelementptr %struct.framebuf, ptr %38, i32 %i.0133, i32 5
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %status, align 8
  %40 = load ptr, ptr %buffers, align 8
  %length = getelementptr %struct.framebuf, ptr %40, i32 %i.0133, i32 3
  %41 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %length, align 8
  %42 = load ptr, ptr %buffers, align 8
  %max_length = getelementptr %struct.framebuf, ptr %42, i32 %i.0133, i32 4
  %43 = ptrtoint ptr %max_length to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %max_length, align 4
  %44 = load ptr, ptr %buffers, align 8
  %num = getelementptr %struct.framebuf, ptr %44, i32 %i.0133, i32 2
  %45 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0133, ptr %num, align 4
  %46 = ptrtoint ptr %num_frames25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_frames25, align 4
  %sub = add i32 %47, -1
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end24.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %48 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffers, align 8
  %next45 = getelementptr %struct.framebuf, ptr %49, i32 %i.0.lcssa, i32 7
  %50 = ptrtoint ptr %next45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %next45, align 8
  %51 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %frame_buffer, align 4
  %frame_size47 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 24
  %53 = ptrtoint ptr %frame_size47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame_size47, align 8
  %mul48 = mul i32 %54, %i.0.lcssa
  %add.ptr49 = getelementptr i8, ptr %52, i32 %mul48
  %55 = load ptr, ptr %buffers, align 8
  %data52 = getelementptr %struct.framebuf, ptr %55, i32 %i.0.lcssa, i32 6
  %56 = ptrtoint ptr %data52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr49, ptr %data52, align 4
  %57 = load ptr, ptr %buffers, align 8
  %status55 = getelementptr %struct.framebuf, ptr %57, i32 %i.0.lcssa, i32 5
  %58 = ptrtoint ptr %status55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %status55, align 8
  %59 = load ptr, ptr %buffers, align 8
  %length58 = getelementptr %struct.framebuf, ptr %59, i32 %i.0.lcssa, i32 3
  %60 = ptrtoint ptr %length58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %length58, align 8
  %61 = load ptr, ptr %buffers, align 8
  %max_length61 = getelementptr %struct.framebuf, ptr %61, i32 %i.0.lcssa, i32 4
  %62 = ptrtoint ptr %max_length61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %max_length61, align 4
  %63 = load ptr, ptr %buffers, align 8
  %num64 = getelementptr %struct.framebuf, ptr %63, i32 %i.0.lcssa, i32 2
  %64 = ptrtoint ptr %num64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.0.lcssa, ptr %num64, align 4
  %65 = load ptr, ptr %buffers, align 8
  %curbuff = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 29
  %66 = ptrtoint ptr %curbuff to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %curbuff, align 4
  %67 = load volatile ptr, ptr %curbuff, align 4
  %next67 = getelementptr inbounds %struct.framebuf, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %next67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %next67, align 8
  %workbuff = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 30
  %70 = ptrtoint ptr %workbuff to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %workbuff, align 8
  br label %cleanup71

cleanup71:                                        ; preds = %for.end, %do.end18, %do.end
  %retval.1 = phi i32 [ 0, %for.end ], [ -12, %do.end18 ], [ -12, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_free_buffers(ptr nocapture noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 28
  %0 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffers, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buffers, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frame_buffer = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 27
  %3 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frame_buffer, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 24
  %5 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frame_size, align 8
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %7 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_frames, align 4
  %mul = mul i32 %8, %6
  %add.i = add i32 %mul, 4095
  %and.i = and i32 %add.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.i = icmp sgt i32 %and.i, 0
  br i1 %cmp8.i, label %while.body.preheader.i, label %if.end.i.rvfree.exit_crit_edge

if.end.i.rvfree.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvfree.exit

while.body.preheader.i:                           ; preds = %if.end.i
  %9 = ptrtoint ptr %4 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %ClearPageReserved.exit.i.while.body.i_crit_edge, %while.body.preheader.i
  %adr.010.i = phi i32 [ %add1.i, %ClearPageReserved.exit.i.while.body.i_crit_edge ], [ %9, %while.body.preheader.i ]
  %size.addr.09.i = phi i32 [ %sub.i, %ClearPageReserved.exit.i.while.body.i_crit_edge ], [ %and.i, %while.body.preheader.i ]
  %10 = inttoptr i32 %adr.010.i to ptr
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %10) #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call.i, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %PageCompound.exit.i.i, label %while.body.i.if.then.i.i_crit_edge

while.body.i.if.then.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

PageCompound.exit.i.i:                            ; preds = %while.body.i
  %14 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %PageCompound.exit.i.i.if.then.i.i_crit_edge, !prof !104

PageCompound.exit.i.i.if.then.i.i_crit_edge:      ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %PageCompound.exit.i.i.if.then.i.i_crit_edge, %while.body.i.if.then.i.i_crit_edge
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.37) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.body7.i.i:                                     ; preds = %PageCompound.exit.i.i
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i.i, label %if.then16.i.i, label %ClearPageReserved.exit.i, !prof !106

if.then16.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.38) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #9, !srcloc !109
  unreachable

ClearPageReserved.exit.i:                         ; preds = %do.body7.i.i
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %call.i) #9
  %add1.i = add i32 %adr.010.i, 4096
  %sub.i = add nsw i32 %size.addr.09.i, -4096
  %cmp.i = icmp sgt i32 %size.addr.09.i, 4096
  br i1 %cmp.i, label %ClearPageReserved.exit.i.while.body.i_crit_edge, label %ClearPageReserved.exit.i.rvfree.exit_crit_edge

ClearPageReserved.exit.i.rvfree.exit_crit_edge:   ; preds = %ClearPageReserved.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rvfree.exit

ClearPageReserved.exit.i.while.body.i_crit_edge:  ; preds = %ClearPageReserved.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

rvfree.exit:                                      ; preds = %ClearPageReserved.exit.i.rvfree.exit_crit_edge, %if.end.i.rvfree.exit_crit_edge
  tail call void @vfree(ptr noundef nonnull %4) #9
  %19 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %frame_buffer, align 4
  br label %if.end7

if.end7:                                          ; preds = %rvfree.exit, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_read(ptr noundef %cam, ptr noundef %buf, i32 noundef %count, i32 noundef %noblock) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %buf, null
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #12
  br label %cleanup79

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %cam, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #12
  br label %cleanup79

if.end11:                                         ; preds = %if.end3
  %streaming = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 10
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %2 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_mode, align 1
  %conv = zext i8 %3 to i32
  %call14 = tail call i32 @cpia2_usb_stream_start(ptr noundef nonnull %cam, i32 noundef %conv) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %curbuff = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 29
  %4 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %curbuff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noblock)
  %tobool16.not = icmp eq i32 %noblock, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %land.lhs.true

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end15
  %status = getelementptr inbounds %struct.framebuf, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.cleanup79_crit_edge

land.lhs.true.cleanup79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %status20 = getelementptr inbounds %struct.framebuf, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %status20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp21.not = icmp eq i32 %9, 2
  br i1 %cmp21.not, label %if.end19.if.end67_crit_edge, label %if.then23

if.end19.if.end67_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then23:                                        ; preds = %if.end19
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2350) #9
  %flags.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 17
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool31.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool31.not, label %if.then23.if.end54_crit_edge, label %lor.lhs.false

if.then23.if.end54_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

lor.lhs.false:                                    ; preds = %if.then23
  %12 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %curbuff, align 4
  %status33 = getelementptr inbounds %struct.framebuf, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %status33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp34 = icmp eq i32 %15, 2
  br i1 %cmp34, label %lor.lhs.false.if.end54_crit_edge, label %if.then36

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then36:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wq_stream = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 23
  %call38121 = call i32 @prepare_to_wait_event(ptr noundef %wq_stream, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i104122 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i104122)
  %tobool41.not123 = icmp eq i32 %and1.i.i104122, 0
  br i1 %tobool41.not123, label %if.then36.for.end_crit_edge, label %if.then36.lor.lhs.false42_crit_edge

if.then36.lor.lhs.false42_crit_edge:              ; preds = %if.then36
  br label %lor.lhs.false42

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false42:                                  ; preds = %cleanup.lor.lhs.false42_crit_edge, %if.then36.lor.lhs.false42_crit_edge
  %call38124 = phi i32 [ %call38, %cleanup.lor.lhs.false42_crit_edge ], [ %call38121, %if.then36.lor.lhs.false42_crit_edge ]
  %19 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %curbuff, align 4
  %status44 = getelementptr inbounds %struct.framebuf, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %status44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp45 = icmp eq i32 %22, 2
  br i1 %cmp45, label %lor.lhs.false42.for.end_crit_edge, label %if.end48

lor.lhs.false42.for.end_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end48:                                         ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38124)
  %tobool49.not = icmp eq i32 %call38124, 0
  br i1 %tobool49.not, label %cleanup, label %if.end48.__out_crit_edge

if.end48.__out_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end48
  call void @schedule() #9
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %wq_stream, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i104 = and i32 %24, 1
  %tobool41.not = icmp eq i32 %and1.i.i104, 0
  br i1 %tobool41.not, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false42_crit_edge

cleanup.lor.lhs.false42_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false42

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false42.for.end_crit_edge, %if.then36.for.end_crit_edge
  %frame.2.ph = phi ptr [ %13, %if.then36.for.end_crit_edge ], [ %20, %lor.lhs.false42.for.end_crit_edge ], [ %20, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wq_stream, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end48.__out_crit_edge
  %frame.2110 = phi ptr [ %frame.2.ph, %for.end ], [ %20, %if.end48.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end54

if.end54:                                         ; preds = %__out, %lor.lhs.false.if.end54_crit_edge, %if.then23.if.end54_crit_edge
  %frame.3 = phi ptr [ %13, %lor.lhs.false.if.end54_crit_edge ], [ %frame.2110, %__out ], [ %5, %if.then23.if.end54_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  %25 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end54.cleanup79_crit_edge, !prof !104

if.end54.cleanup79_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

signal_pending.exit:                              ; preds = %if.end54
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and1.i.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool59.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool59.not, label %if.end61, label %signal_pending.exit.cleanup79_crit_edge

signal_pending.exit.cleanup79_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

if.end61:                                         ; preds = %signal_pending.exit
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i106 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i106)
  %tobool64.not = icmp eq i32 %and1.i.i106, 0
  br i1 %tobool64.not, label %if.end61.cleanup79_crit_edge, label %if.end61.if.end67_crit_edge

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end61.cleanup79_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

if.end67:                                         ; preds = %if.end61.if.end67_crit_edge, %if.end19.if.end67_crit_edge
  %frame.4 = phi ptr [ %frame.3, %if.end61.if.end67_crit_edge ], [ %5, %if.end19.if.end67_crit_edge ]
  %length = getelementptr inbounds %struct.framebuf, ptr %frame.4, i32 0, i32 3
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %count)
  %cmp68 = icmp ugt i32 %39, %count
  br i1 %cmp68, label %if.end67.cleanup79_crit_edge, label %if.end71

if.end67.cleanup79_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

if.end71:                                         ; preds = %if.end67
  %data = getelementptr inbounds %struct.framebuf, ptr %frame.4, i32 0, i32 6
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp9.i.i = icmp slt i32 %39, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end71
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup79_crit_edge, label %if.then27.i.i, !prof !104

land.rhs16.i.i.cleanup79_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup79

if.then.i.i.i:                                    ; preds = %if.end71
  call void @__check_object_size(ptr noundef %41, i32 noundef %39, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %39, i32 -1226833920) #15, !srcloc !110
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %41, i32 noundef %39) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %buf, ptr noundef %41, i32 noundef %39) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %39, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %39, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool74.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool74.not, label %if.end76, label %copy_to_user.exit.cleanup79_crit_edge

copy_to_user.exit.cleanup79_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79

if.end76:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 8
  %status78 = getelementptr inbounds %struct.framebuf, ptr %frame.4, i32 0, i32 5
  %45 = ptrtoint ptr %status78 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %status78, align 8
  br label %cleanup79

cleanup79:                                        ; preds = %if.end76, %copy_to_user.exit.cleanup79_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup79_crit_edge, %if.end67.cleanup79_crit_edge, %if.end61.cleanup79_crit_edge, %signal_pending.exit.cleanup79_crit_edge, %if.end54.cleanup79_crit_edge, %land.lhs.true.cleanup79_crit_edge, %do.end8, %do.end, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %44, %if.end76 ], [ -22, %do.end8 ], [ -22, %do.end ], [ 0, %entry.cleanup79_crit_edge ], [ -11, %land.lhs.true.cleanup79_crit_edge ], [ -512, %signal_pending.exit.cleanup79_crit_edge ], [ 0, %if.end61.cleanup79_crit_edge ], [ -14, %if.end67.cleanup79_crit_edge ], [ -14, %copy_to_user.exit.cleanup79_crit_edge ], [ -512, %if.end54.cleanup79_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup79_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_stream_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_poll(ptr noundef %cam, ptr noundef %filp, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_ctrl_poll(ptr noundef %filp, ptr noundef %wait) #9
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %poll_requested_events.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

poll_requested_events.exit:                       ; preds = %entry
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %0 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_key.i, align 4
  %and = and i32 %1, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %poll_requested_events.exit.land.lhs.true.i_crit_edge, label %poll_requested_events.exit.land.lhs.true_crit_edge

poll_requested_events.exit.land.lhs.true_crit_edge: ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

poll_requested_events.exit.land.lhs.true.i_crit_edge: ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

land.lhs.true:                                    ; preds = %poll_requested_events.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %streaming = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %4 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stream_mode, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call i32 @cpia2_usb_stream_start(ptr noundef %cam, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end.land.lhs.true.i_crit_edge, %poll_requested_events.exit.land.lhs.true.i_crit_edge
  %wq_stream21 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 23
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %wq_stream21, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %filp, ptr noundef nonnull %wq_stream21, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %curbuff = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 29
  %8 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %curbuff, align 4
  %status4 = getelementptr inbounds %struct.framebuf, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  %or = or i32 %call, 65
  %spec.select = select i1 %cmp, i32 %or, i32 %call
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_remap_buffer(ptr noundef %cam, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %3, %1
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %5, 12
  %flags.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 17
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 24
  %8 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_size, align 8
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %10 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_frames, align 4
  %mul = mul i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp = icmp ugt i32 %sub, %mul
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rem = urem i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3.not = icmp ne i32 %rem, 0
  %add = add i32 %shl, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp8 = icmp ugt i32 %add, %mul
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12.not48 = icmp eq i32 %sub, 0
  br i1 %cmp12.not48, label %if.end10.while.end_crit_edge, label %while.body.preheader

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %if.end10
  %frame_buffer = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 27
  %12 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frame_buffer, align 4
  %14 = ptrtoint ptr %13 to i32
  %add11 = add i32 %shl, %14
  %15 = and i32 %14, 4095
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.preheader
  %pos.051 = phi i32 [ %add19, %if.end17.while.body_crit_edge ], [ %add11, %while.body.preheader ]
  %start.050 = phi i32 [ %add18, %if.end17.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %size.049 = phi i32 [ %19, %if.end17.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %16 = inttoptr i32 %pos.051 to ptr
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %16) #9
  %call1.i = tail call ptr @page_address(ptr noundef %call.i) #9
  %17 = ptrtoint ptr %call1.i to i32
  %or.i = or i32 %15, %17
  %call2.i = tail call i32 @__virt_to_phys(i32 noundef %or.i) #9
  %shr = lshr i32 %call2.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_user to i32))
  %18 = load i32, ptr @pgprot_user, align 4
  %or = or i32 %18, 768
  %call14 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %start.050, i32 noundef %shr, i32 noundef 4096, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %add18 = add i32 %start.050, 4096
  %add19 = add i32 %pos.051, 4096
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %size.049, i32 4096)
  %cmp12.not = icmp ult i32 %size.049, 4097
  br i1 %cmp12.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.end10.while.end_crit_edge
  %mmapped = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 9
  %20 = ptrtoint ptr %mmapped to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %mmapped, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -11, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_change_streaming_alternate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__UNIQUE_ID_firmware297, !1, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 29, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 416, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpia2_do_command._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpia2_do_command._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 566, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cpia2_send_command._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @cpia2_send_command._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 630, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cpia2_reset_camera._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @cpia2_reset_camera._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2191, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cpia2_init_camera_struct._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @cpia2_init_camera_struct._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2197, i32 3}
!25 = !{ptr @cpia2_init_camera_struct._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cpia2_init_camera_struct._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @cpia2_init_camera_struct.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2202, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cpia2_init_camera_struct.__key.13, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2203, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2224, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cpia2_init_camera._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cpia2_init_camera._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2258, i32 4}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cpia2_allocate_buffers._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cpia2_allocate_buffers._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2266, i32 4}
!45 = !{ptr @cpia2_allocate_buffers._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cpia2_allocate_buffers._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2325, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cpia2_read._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cpia2_read._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 2330, i32 3}
!54 = !{ptr @cpia2_read._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cpia2_read._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"debugs_on", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 43, i32 21}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 870, i32 4}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cpia2_set_high_power._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cpia2_set_high_power._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 916, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @apply_vp_patch._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @apply_vp_patch._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 985, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @set_default_user_mode._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @set_default_user_mode._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 1190, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @config_sensor_410._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @config_sensor_410._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/cpia2/cpia2_core.c", i32 1361, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @config_sensor_500._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @config_sensor_500._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2151575194, i64 2151575367, i64 2151575382, i64 2151575434, i64 2151575493, i64 2151575517, i64 2151575558, i64 2151575579, i64 2151575607, i64 2151575639}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2151575965, i64 2151576138, i64 2151576153, i64 2151576205, i64 2151576264, i64 2151576288, i64 2151576329, i64 2151576350, i64 2151576378, i64 2151576410}
!108 = !{i64 2151583353, i64 2151583526, i64 2151583541, i64 2151583593, i64 2151583652, i64 2151583676, i64 2151583717, i64 2151583738, i64 2151583766, i64 2151583798}
!109 = !{i64 2151584124, i64 2151584297, i64 2151584312, i64 2151584364, i64 2151584423, i64 2151584447, i64 2151584488, i64 2151584509, i64 2151584537, i64 2151584569}
!110 = !{i64 2153806947, i64 2153806972}
