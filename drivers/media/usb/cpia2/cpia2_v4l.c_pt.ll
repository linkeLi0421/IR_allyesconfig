; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cpia2/cpia2_v4l.c_pt.bc'
source_filename = "../drivers/media/usb/cpia2/cpia2_v4l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.framerate_info = type { i32, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.anon.128 = type { i32, i32 }
%struct.camera_data = type { %struct.v4l2_device, %struct.mutex, %struct.v4l2_ctrl_handler, %struct.anon.117, ptr, i32, i32, i8, ptr, i8, i32, i32, %struct.camera_params, i32, %struct.video_device, i32, i32, i32, ptr, i8, i32, i32, [2 x %struct.cpia2_sbuf], %struct.wait_queue_head, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, [60 x i8], i32, [60 x i8] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.117 = type { ptr, ptr }
%struct.camera_params = type { %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127 }
%struct.anon.118 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.119 = type { i32, i16, i16, i16 }
%struct.anon.120 = type { i8, i8, i8 }
%struct.anon.121 = type { i8, i8 }
%struct.anon.122 = type { i8, i8, i8, i8 }
%struct.anon.123 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.124 = type { i32, i32 }
%struct.anon.125 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.126 = type { i8, i8, i8, i8, i8, i8 }
%struct.anon.127 = type { i8, i8, i8, i8 }
%struct.cpia2_sbuf = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.framebuf = type { i64, i32, i32, i32, i32, i32, ptr, ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.96, i32, i32, %union.anon.98 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.96 = type { i32 }
%union.anon.98 = type { i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.109 }
%union.anon.109 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.110, [2 x i32] }
%union.anon.110 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.111, [2 x i32] }
%union.anon.111 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__param_str_video_nr = internal constant [15 x i8] c"cpia2.video_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@video_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype297 = internal constant [28 x i8] c"cpia2.parmtype=video_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr298 = internal constant [66 x i8] c"cpia2.parm=video_nr:video device to register (0=/dev/video0, etc)\00", section ".modinfo", align 1
@__param_str_buffer_size = internal constant [18 x i8] c"cpia2.buffer_size\00", align 1
@buffer_size = internal global { i32, [28 x i8] } { i32 69632, [28 x i8] zeroinitializer }, align 32
@__param_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_buffer_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @buffer_size } }, section "__param", align 4
@__UNIQUE_ID_buffer_sizetype299 = internal constant [31 x i8] c"cpia2.parmtype=buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffer_size300 = internal constant [73 x i8] c"cpia2.parm=buffer_size:Size for each frame buffer in bytes (default 68k)\00", section ".modinfo", align 1
@__param_str_num_buffers = internal constant [18 x i8] c"cpia2.num_buffers\00", align 1
@num_buffers = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_num_buffers = internal constant %struct.kernel_param { ptr @__param_str_num_buffers, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @num_buffers } }, section "__param", align 4
@__UNIQUE_ID_num_bufferstype301 = internal constant [31 x i8] c"cpia2.parmtype=num_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_buffers302 = internal constant [65 x i8] c"cpia2.parm=num_buffers:Number of frame buffers (1-32, default 3)\00", section ".modinfo", align 1
@__param_str_alternate = internal constant [16 x i8] c"cpia2.alternate\00", align 1
@alternate = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_alternate = internal constant %struct.kernel_param { ptr @__param_str_alternate, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @alternate } }, section "__param", align 4
@__UNIQUE_ID_alternatetype303 = internal constant [29 x i8] c"cpia2.parmtype=alternate:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alternate304 = internal constant [52 x i8] c"cpia2.parm=alternate:USB Alternate (2-7, default 7)\00", section ".modinfo", align 1
@__param_str_flicker_mode = internal constant [19 x i8] c"cpia2.flicker_mode\00", align 1
@flicker_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_flicker_mode = internal constant %struct.kernel_param { ptr @__param_str_flicker_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @flicker_mode } }, section "__param", align 4
@__UNIQUE_ID_flicker_modetype305 = internal constant [32 x i8] c"cpia2.parmtype=flicker_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flicker_mode306 = internal constant [78 x i8] c"cpia2.parm=flicker_mode:Flicker frequency (0 (disabled), 50 or 60, default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [69 x i8] c"cpia2.author=Steve Miller (STMicroelectronics) <steve.miller@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [72 x i8] c"cpia2.description=V4L-driver for STMicroelectronics CPiA2 based cameras\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [41 x i8] c"cpia2.file=drivers/media/usb/cpia2/cpia2\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [18 x i8] c"cpia2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version311 = internal constant [20 x i8] c"cpia2.version=3.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpia2\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@cpia2_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cpia2_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB Alternate\00", [18 x i8] zeroinitializer }, align 32
@__const.cpia2_register_camera.cpia2_usb_alt = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @cpia2_ctrl_ops, ptr null, i32 10025216, ptr @.str.3, i32 1, [4 x i8] zeroinitializer, i64 2, i64 7, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@cpia2_register_camera._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cpia2_v4l:1079:(hdl)->_lock\00", [36 x i8] zeroinitializer }, align 32
@cpia2_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @cpia2_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"CPiA2 Camera\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @cpia2_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@cpia2_register_camera._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cpia2: video_register_device failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpia2_register_camera\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/cpia2/cpia2_v4l.c\00", [60 x i8] zeroinitializer }, align 32
@cpia2_register_camera._entry_ptr = internal global ptr @cpia2_register_camera._entry, section ".printk_index", align 4
@__initcall__kmod_cpia2__312_1225_cpia2_init6 = internal global ptr @cpia2_init, section ".initcall6.init", align 4
@__exitcall_cpia2_exit = internal global ptr @cpia2_exit, section ".exitcall.exit", align 4
@cpia2_s_ctrl.flicker_table = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 50, i32 60], [20 x i8] zeroinitializer }, align 32
@cpia2_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @cpia2_v4l_read, ptr null, ptr @cpia2_v4l_poll, ptr @video_ioctl2, ptr null, ptr @cpia2_mmap, ptr @cpia2_open, ptr @cpia2_close }, [60 x i8] zeroinitializer }, align 32
@cpia2_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cpia2_querycap, ptr @cpia2_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_reqbufs, ptr @cpia2_querybuf, ptr @cpia2_qbuf, ptr null, ptr @cpia2_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_streamon, ptr @cpia2_streamoff, ptr null, ptr null, ptr null, ptr @cpia2_enum_input, ptr @cpia2_g_input, ptr @cpia2_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_g_selection, ptr null, ptr @cpia2_g_jpegcomp, ptr @cpia2_s_jpegcomp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_g_parm, ptr @cpia2_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpia2_enum_framesizes, ptr @cpia2_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QX5 Microscope\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPiA2 Camera\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (672/\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (676/\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (XXX/\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"404)\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"407)\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"409)\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"410)\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"500)\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XXX)\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@cpia2_s_jpegcomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cpia2: Bad APPn Params n=%d len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpia2_s_jpegcomp\00", [47 x i8] zeroinitializer }, align 32
@cpia2_s_jpegcomp._entry_ptr = internal global ptr @cpia2_s_jpegcomp._entry, section ".printk_index", align 4
@cpia2_s_jpegcomp._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016cpia2: Bad COM_len=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@cpia2_s_jpegcomp._entry_ptr.25 = internal global ptr @cpia2_s_jpegcomp._entry.23, section ".printk_index", align 4
@framerate_controls = internal constant { [6 x %struct.framerate_info], [56 x i8] } { [6 x %struct.framerate_info] [%struct.framerate_info { i32 1, %struct.v4l2_fract { i32 4, i32 25 } }, %struct.framerate_info { i32 2, %struct.v4l2_fract { i32 2, i32 15 } }, %struct.framerate_info { i32 4, %struct.v4l2_fract { i32 2, i32 25 } }, %struct.framerate_info { i32 8, %struct.v4l2_fract { i32 1, i32 15 } }, %struct.framerate_info { i32 16, %struct.v4l2_fract { i32 1, i32 25 } }, %struct.framerate_info { i32 32, %struct.v4l2_fract { i32 1, i32 30 } }], [56 x i8] zeroinitializer }, align 32
@cpia2_framesizes = internal constant { [8 x %struct.anon.128], [32 x i8] } { [8 x %struct.anon.128] [%struct.anon.128 { i32 640, i32 480 }, %struct.anon.128 { i32 352, i32 288 }, %struct.anon.128 { i32 320, i32 240 }, %struct.anon.128 { i32 288, i32 216 }, %struct.anon.128 { i32 256, i32 192 }, %struct.anon.128 { i32 224, i32 168 }, %struct.anon.128 { i32 192, i32 144 }, %struct.anon.128 { i32 176, i32 144 }], [32 x i8] zeroinitializer }, align 32
@cpia2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016cpia2: %s v%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpia2_init\00", [21 x i8] zeroinitializer }, align 32
@cpia2_init._entry_ptr = internal global ptr @cpia2_init._entry, section ".printk_index", align 4
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"V4L-Driver for Vision CPiA2 based cameras\00", [54 x i8] zeroinitializer }, align 32
@check_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cpia2: buffer_size too small, setting to %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_parameters\00", [47 x i8] zeroinitializer }, align 32
@check_parameters._entry_ptr = internal global ptr @check_parameters._entry, section ".printk_index", align 4
@check_parameters._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.7, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016cpia2: buffer_size ridiculously large, setting to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@check_parameters._entry_ptr.33 = internal global ptr @check_parameters._entry.31, section ".printk_index", align 4
@check_parameters._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.7, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cpia2: num_buffers too small, setting to %d\0A\00", [49 x i8] zeroinitializer }, align 32
@check_parameters._entry_ptr.36 = internal global ptr @check_parameters._entry.34, section ".printk_index", align 4
@check_parameters._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.7, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cpia2: num_buffers too large, setting to %d\0A\00", [49 x i8] zeroinitializer }, align 32
@check_parameters._entry_ptr.39 = internal global ptr @check_parameters._entry.37, section ".printk_index", align 4
@check_parameters._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.7, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cpia2: alternate specified is invalid, using %d\0A\00", [45 x i8] zeroinitializer }, align 32
@check_parameters._entry_ptr.42 = internal global ptr @check_parameters._entry.40, section ".printk_index", align 4
@check_parameters._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.7, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cpia2: Flicker mode specified is invalid, using %d\0A\00", [42 x i8] zeroinitializer }, align 32
@check_parameters._entry_ptr.45 = internal global ptr @check_parameters._entry.43, section ".printk_index", align 4
@switch.table.cpia2_s_fmt_vid_cap = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 640, i32 352, i32 320, i32 176, i32 288, i32 256, i32 224, i32 192], [32 x i8] zeroinitializer }, align 32
@switch.table.cpia2_s_fmt_vid_cap.46 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 480, i32 288, i32 240, i32 144, i32 216, i32 192, i32 168, i32 144], [32 x i8] zeroinitializer }, align 32
@switch.table.cpia2_try_fmt_vid_cap = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 640, i32 352, i32 320, i32 176, i32 288, i32 256, i32 224, i32 192], [32 x i8] zeroinitializer }, align 32
@switch.table.cpia2_try_fmt_vid_cap.47 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 480, i32 288, i32 240, i32 144, i32 216, i32 192, i32 168, i32 144], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963796, i64 9963797, i64 9963800, i64 9963813, i64 10025216, i64 10291459, i64 10291460]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.56 = internal global [10 x i64] [i64 8, i64 32, i64 176, i64 192, i64 224, i64 256, i64 288, i64 320, i64 352, i64 640]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 50, i64 60]
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 33, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 37, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"num_buffers\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 41, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 46, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"flicker_mode\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 52, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 60, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"cpia2_ctrl_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1056, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1071, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1079, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"cpia2_template\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1038, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1138, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"flicker_table\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 603, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"cpia2_fops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1028, i32 42 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"cpia2_ioctl_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 999, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 213, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 215, i32 21 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 218, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 221, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 224, i32 20 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 229, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 232, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 235, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 238, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 241, i32 20 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 244, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 912, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 265, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 716, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 730, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"framerate_controls\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 474, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"cpia2_framesizes\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 537, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1208, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1165, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1169, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1178, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1181, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1186, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [39 x i8] c"../drivers/media/usb/cpia2/cpia2_v4l.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1191, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [33 x i8] c"switch.table.cpia2_s_fmt_vid_cap\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [36 x i8] c"switch.table.cpia2_s_fmt_vid_cap.46\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [35 x i8] c"switch.table.cpia2_try_fmt_vid_cap\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [38 x i8] c"switch.table.cpia2_try_fmt_vid_cap.47\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_alternate304, ptr @__UNIQUE_ID_alternatetype303, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_buffer_size300, ptr @__UNIQUE_ID_buffer_sizetype299, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_flicker_mode306, ptr @__UNIQUE_ID_flicker_modetype305, ptr @__UNIQUE_ID_license310, ptr @__UNIQUE_ID_num_buffers302, ptr @__UNIQUE_ID_num_bufferstype301, ptr @__UNIQUE_ID_version311, ptr @__UNIQUE_ID_video_nr298, ptr @__UNIQUE_ID_video_nrtype297, ptr @__exitcall_cpia2_exit, ptr @__initcall__kmod_cpia2__312_1225_cpia2_init6, ptr @__modver_attr, ptr @__param_alternate, ptr @__param_buffer_size, ptr @__param_flicker_mode, ptr @__param_num_buffers, ptr @__param_video_nr, ptr @check_parameters._entry, ptr @check_parameters._entry.31, ptr @check_parameters._entry.34, ptr @check_parameters._entry.37, ptr @check_parameters._entry.40, ptr @check_parameters._entry.43, ptr @check_parameters._entry_ptr, ptr @check_parameters._entry_ptr.33, ptr @check_parameters._entry_ptr.36, ptr @check_parameters._entry_ptr.39, ptr @check_parameters._entry_ptr.42, ptr @check_parameters._entry_ptr.45, ptr @cpia2_exit, ptr @cpia2_init._entry, ptr @cpia2_init._entry_ptr, ptr @cpia2_register_camera._entry, ptr @cpia2_register_camera._entry_ptr, ptr @cpia2_s_jpegcomp._entry, ptr @cpia2_s_jpegcomp._entry.23, ptr @cpia2_s_jpegcomp._entry_ptr, ptr @cpia2_s_jpegcomp._entry_ptr.25, ptr @video_nr, ptr @buffer_size, ptr @num_buffers, ptr @alternate, ptr @flicker_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cpia2_ctrl_ops, ptr @.str.3, ptr @cpia2_register_camera._key, ptr @.str.4, ptr @cpia2_template, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cpia2_s_ctrl.flicker_table, ptr @cpia2_fops, ptr @cpia2_ioctl_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @framerate_controls, ptr @cpia2_framesizes, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @switch.table.cpia2_s_fmt_vid_cap, ptr @switch.table.cpia2_s_fmt_vid_cap.46, ptr @switch.table.cpia2_try_fmt_vid_cap, ptr @switch.table.cpia2_try_fmt_vid_cap.47], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alternate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flicker_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_register_camera._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_register_camera._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_s_ctrl.flicker_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_s_jpegcomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_s_jpegcomp._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @framerate_controls to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_framesizes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_parameters._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_parameters._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_parameters._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_parameters._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_parameters._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpia2_s_fmt_vid_cap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpia2_s_fmt_vid_cap.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpia2_try_fmt_vid_cap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpia2_try_fmt_vid_cap.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_camera_release(ptr noundef %v4l2_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.camera_data, ptr %v4l2_dev, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  tail call void @kfree(ptr noundef %v4l2_dev) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_register_camera(ptr noundef %cam) local_unnamed_addr #1 align 64 {
entry:
  %cpia2_usb_alt = alloca %struct.v4l2_ctrl_config, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl1 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cpia2_usb_alt) #12
  %0 = call ptr @memcpy(ptr %cpia2_usb_alt, ptr @__const.cpia2_register_camera.cpia2_usb_alt, i32 112)
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl1, i32 noundef 12, ptr noundef nonnull @cpia2_register_camera._key, ptr noundef nonnull @.str.4) #12
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %3 = zext i1 %cmp to i64
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963776, i64 noundef %3, i64 noundef 255, i64 noundef 1, i64 noundef 70) #12
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 147) #12
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #12
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 10291460, i64 noundef 0, i64 noundef 262144, i64 noundef 0, i64 noundef 262144) #12
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 10291459, i64 noundef 1, i64 noundef 100, i64 noundef 1, i64 noundef 100) #12
  %4 = load i32, ptr @alternate, align 4
  %conv8 = sext i32 %4 to i64
  %def = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cpia2_usb_alt, i32 0, i32 8
  %5 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv8, ptr %def, align 8
  %call9 = call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull %cpia2_usb_alt, ptr noundef null) #12
  %usb_alt = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 4
  %6 = ptrtoint ptr %usb_alt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %usb_alt, align 4
  %7 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp13.not = icmp eq i32 %8, 1
  br i1 %cmp13.not, label %entry.if.then21_crit_edge, label %if.end

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.end:                                           ; preds = %entry
  %call15 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %9 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp19 = icmp eq i32 %.pr, 1
  br i1 %cmp19, label %if.end.if.then21_crit_edge, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %if.end.if.then21_crit_edge, %entry.if.then21_crit_edge
  %call22 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  %product = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 1, i32 2
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 337, i16 %11)
  %cmp27 = icmp eq i16 %11, 337
  br i1 %cmp27, label %if.then29, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963813, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %12 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call30, ptr %12, align 4
  %call31 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @cpia2_ctrl_ops, i32 noundef 9963814, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %bottom_light = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %bottom_light to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %bottom_light, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %12) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end23.if.end33_crit_edge
  %error = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl1) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  %vdev = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14
  %17 = call ptr @memcpy(ptr %vdev, ptr @cpia2_template, i32 1352)
  %driver_data.i.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 5, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cam, ptr %driver_data.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 1
  %lock = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 26
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %v4l2_lock, ptr %lock, align 8
  %ctrl_handler = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 9
  %20 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hdl1, ptr %ctrl_handler, align 4
  %v4l2_dev41 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 7
  %21 = ptrtoint ptr %v4l2_dev41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cam, ptr %v4l2_dev41, align 4
  %device_caps = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 4
  %22 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 83886081, ptr %device_caps, align 8
  %roi.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 6
  %23 = ptrtoint ptr %roi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %roi.i, align 4
  %width1.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 15
  %25 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %width1.i, align 8
  %height.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 6, i32 1
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 16
  %28 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %height4.i, align 4
  %29 = load i32, ptr @buffer_size, align 4
  %frame_size.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 24
  %30 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %frame_size.i, align 8
  %31 = load i32, ptr @num_buffers, align 4
  %num_frames.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %32 = ptrtoint ptr %num_frames.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_frames.i, align 4
  %33 = load i32, ptr @flicker_mode, align 4
  %conv.i = trunc i32 %33 to i8
  %flicker_mode_req.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 3, i32 1
  %34 = ptrtoint ptr %flicker_mode_req.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %flicker_mode_req.i, align 1
  %35 = load i32, ptr @alternate, align 4
  %conv6.i = trunc i32 %35 to i8
  %stream_mode.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %36 = ptrtoint ptr %stream_mode.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv6.i, ptr %stream_mode.i, align 1
  %pixelformat.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 17
  %37 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1195724874, ptr %pixelformat.i, align 8
  %38 = load i32, ptr @video_nr, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %38, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp slt i32 %call.i, 0
  br i1 %cmp45, label %do.end, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end36.cleanup_crit_edge, %if.then34
  %retval.0 = phi i32 [ %16, %if.then34 ], [ -19, %do.end ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cpia2_usb_alt) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_unregister_camera(ptr noundef %cam) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14
  tail call void @video_unregister_device(ptr noundef %vdev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpia2_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cpia2_usb_cleanup() #12
  %call = tail call i32 @schedule_timeout(i32 noundef 200) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_usb_cleanup() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2) #15
  tail call fastcc void @check_parameters() #16
  %call1 = tail call i32 @cpia2_usb_init() #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_s_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -220
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb4
    i32 9963796, label %sw.bb7
    i32 9963797, label %sw.bb9
    i32 9963800, label %sw.bb11
    i32 9963813, label %sw.bb13
    i32 10291460, label %sw.bb19
    i32 10291459, label %sw.bb22
    i32 10025216, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  tail call void @cpia2_set_brightness(ptr noundef %add.ptr, i8 noundef zeroext %conv) #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %8 to i8
  tail call void @cpia2_set_contrast(ptr noundef %add.ptr, i8 noundef zeroext %conv3) #12
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val5, align 4
  %conv6 = trunc i32 %10 to i8
  tail call void @cpia2_set_saturation(ptr noundef %add.ptr, i8 noundef zeroext %conv6) #12
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val8, align 4
  tail call void @cpia2_set_property_mirror(ptr noundef %add.ptr, i32 noundef %12) #12
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val10, align 4
  tail call void @cpia2_set_property_flip(ptr noundef %add.ptr, i32 noundef %14) #12
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val12, align 4
  %arrayidx = getelementptr [3 x i32], ptr @cpia2_s_ctrl.flicker_table, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @cpia2_set_flicker_mode(ptr noundef %add.ptr, i32 noundef %18) #12
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %19 = getelementptr i8, ptr %1, i32 184
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val14, align 4
  %shl = shl i32 %23, 6
  %bottom_light = getelementptr i8, ptr %1, i32 188
  %24 = ptrtoint ptr %bottom_light to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bottom_light, align 4
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val15, align 4
  %shl16 = shl i32 %27, 7
  %or = or i32 %shl16, %shl
  %conv17 = trunc i32 %or to i8
  %call18 = tail call i32 @cpia2_set_gpio(ptr noundef %add.ptr, i8 noundef zeroext %conv17) #12
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val20, align 4
  %and = lshr i32 %29, 18
  %30 = trunc i32 %and to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %inhibit_htables = getelementptr i8, ptr %1, i32 252
  %33 = ptrtoint ptr %inhibit_htables to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %inhibit_htables, align 1
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val23, align 4
  %conv24 = trunc i32 %35 to i8
  %quality = getelementptr i8, ptr %1, i32 292
  %36 = ptrtoint ptr %quality to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv24, ptr %quality, align 1
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val27, align 4
  %conv28 = trunc i32 %38 to i8
  %stream_mode = getelementptr i8, ptr %1, i32 295
  %39 = ptrtoint ptr %stream_mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv28, ptr %stream_mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26, %sw.bb22, %sw.bb19, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %sw.bb13 ], [ %call, %sw.bb11 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb26 ], [ 0, %sw.bb22 ], [ 0, %sw.bb19 ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_set_brightness(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_set_contrast(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_set_saturation(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_set_property_mirror(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_set_property_flip(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_set_flicker_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_set_gpio(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_v4l_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %off) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l2_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @cpia2_read(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %count, i32 noundef %and) #12
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_v4l_poll(ptr noundef %filp, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #12
  %call1 = tail call i32 @cpia2_poll(ptr noundef %1, ptr noundef %filp, ptr noundef %wait) #12
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_mmap(ptr noundef %file, ptr noundef %area) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l2_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @cpia2_remap_buffer(ptr noundef %1, ptr noundef %area) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %stream_fh = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %stream_fh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %stream_fh, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end6 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_open(ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l2_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @v4l2_fh_open(ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.open_unlock_crit_edge

if.end.open_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %open_unlock

if.end6:                                          ; preds = %if.end
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i33 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool8.not = icmp eq i32 %call.i33, 0
  br i1 %tobool8.not, label %if.end6.if.end19_crit_edge, label %if.then9

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @cpia2_allocate_buffers(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 @v4l2_fh_release(ptr noundef %file) #12
  br label %open_unlock

if.end14:                                         ; preds = %if.then9
  %call15 = tail call i32 @cpia2_reset_camera(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 @v4l2_fh_release(ptr noundef %file) #12
  br label %open_unlock

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %APP_len = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %APP_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %APP_len, align 8
  %COM_len = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %COM_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %COM_len, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end6.if.end19_crit_edge
  tail call void @cpia2_dbg_dump_registers(ptr noundef %1) #12
  br label %open_unlock

open_unlock:                                      ; preds = %if.end19, %if.then16, %if.then12, %if.end.open_unlock_crit_edge
  %retval1.0 = phi i32 [ %call3, %if.end.open_unlock_crit_edge ], [ -12, %if.then12 ], [ -5, %if.then16 ], [ 0, %if.end19 ]
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %open_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %open_unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_close(ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #12
  %flags.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 14, i32 17
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call i32 @v4l2_fh_is_singular(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @cpia2_usb_stream_stop(ptr noundef %1) #12
  tail call void @cpia2_save_camera_state(ptr noundef %1) #12
  %call6 = tail call i32 @cpia2_set_low_power(ptr noundef %1) #12
  tail call void @cpia2_free_buffers(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %stream_fh = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %stream_fh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_fh, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %stream_fh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %stream_fh, align 4
  %mmapped = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %mmapped to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mmapped, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #12
  %call11 = tail call i32 @v4l2_fh_release(ptr noundef %file) #12
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_remap_buffer(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_allocate_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_reset_camera(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_dbg_dump_registers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_stream_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_save_camera_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_set_low_power(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_free_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %vc, ptr noundef nonnull @.str.1, i32 noundef 16) #12
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 1
  %product = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 1, i32 2
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 337, i16 %3)
  %cmp = icmp eq i16 %3, 337
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %.str.8..str.9 = select i1 %cmp, ptr @.str.8, ptr @.str.9
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull %.str.8..str.9, i32 noundef 32) #12
  %4 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pnp_id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card10 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen83 = tail call i32 @strlen(ptr noundef %card10) #17
  %endptr84 = getelementptr i8, ptr %card10, i32 %strlen83
  %7 = call ptr @memcpy(ptr %endptr84, ptr @.str.10, i32 7)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card14 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen = tail call i32 @strlen(ptr noundef %card14) #17
  %endptr = getelementptr i8, ptr %card14, i32 %strlen
  %8 = call ptr @memcpy(ptr %endptr, ptr @.str.11, i32 7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card17 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen85 = tail call i32 @strlen(ptr noundef %card17) #17
  %endptr86 = getelementptr i8, ptr %card17, i32 %strlen85
  %9 = call ptr @memcpy(ptr %endptr86, ptr @.str.12, i32 7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb
  %sensor_flags = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 0, i32 6
  %10 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor_flags, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %11, label %sw.default42 [
    i8 1, label %sw.bb22
    i8 2, label %sw.bb26
    i8 4, label %sw.bb30
    i8 8, label %sw.bb34
    i8 16, label %sw.bb38
  ]

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card23 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen79 = tail call i32 @strlen(ptr noundef %card23) #17
  %endptr80 = getelementptr i8, ptr %card23, i32 %strlen79
  %13 = call ptr @memcpy(ptr %endptr80, ptr @.str.13, i32 5)
  br label %sw.epilog46

sw.bb26:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card27 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen77 = tail call i32 @strlen(ptr noundef %card27) #17
  %endptr78 = getelementptr i8, ptr %card27, i32 %strlen77
  %14 = call ptr @memcpy(ptr %endptr78, ptr @.str.14, i32 5)
  br label %sw.epilog46

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card31 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen75 = tail call i32 @strlen(ptr noundef %card31) #17
  %endptr76 = getelementptr i8, ptr %card31, i32 %strlen75
  %15 = call ptr @memcpy(ptr %endptr76, ptr @.str.15, i32 5)
  br label %sw.epilog46

sw.bb34:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card35 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen73 = tail call i32 @strlen(ptr noundef %card35) #17
  %endptr74 = getelementptr i8, ptr %card35, i32 %strlen73
  %16 = call ptr @memcpy(ptr %endptr74, ptr @.str.16, i32 5)
  br label %sw.epilog46

sw.bb38:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card39 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen71 = tail call i32 @strlen(ptr noundef %card39) #17
  %endptr72 = getelementptr i8, ptr %card39, i32 %strlen71
  %17 = call ptr @memcpy(ptr %endptr72, ptr @.str.17, i32 5)
  br label %sw.epilog46

sw.default42:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %card43 = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 1
  %strlen81 = tail call i32 @strlen(ptr noundef %card43) #17
  %endptr82 = getelementptr i8, ptr %card43, i32 %strlen81
  %18 = call ptr @memcpy(ptr %endptr82, ptr @.str.18, i32 5)
  br label %sw.epilog46

sw.epilog46:                                      ; preds = %sw.default42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb22
  %dev = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %vc, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 1
  %call.i87 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %24, ptr noundef %devpath.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call.i87)
  %25 = icmp ugt i32 %call.i87, 31
  br i1 %25, label %if.then51, label %sw.epilog46.if.end54_crit_edge

sw.epilog46.if.end54_crit_edge:                   ; preds = %sw.epilog46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then51:                                        ; preds = %sw.epilog46
  call void @__sanitizer_cov_trace_pc() #14
  %26 = call ptr @memset(ptr %bus_info, i32 0, i32 32)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %sw.epilog46.if.end54_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpia2_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %. = select i1 %cmp2, i32 1196444237, i32 1195724874
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %pixelformat = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 8
  %pixelformat5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat5, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bytesperline, align 4
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_size, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef %f) #1 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1196444237, label %entry.if.end.i_crit_edge
    i32 1195724874, label %entry.if.end.i_crit_edge82
  ]

entry.if.end.i_crit_edge82:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge82
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %field.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bytesperline.i, align 4
  %frame_size.i = getelementptr inbounds %struct.camera_data, ptr %6, i32 0, i32 24
  %9 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_size.i, align 8
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %colorspace.i, align 4
  %13 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  %call10.i = tail call i32 @cpia2_match_video_size(i32 noundef %14, i32 noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call10.i)
  %17 = icmp ult i32 %call10.i, 8
  br i1 %17, label %switch.lookup, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cpia2_s_fmt_vid_cap, i32 0, i32 %call10.i
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep79 = getelementptr inbounds [8 x i32], ptr @switch.table.cpia2_s_fmt_vid_cap.46, i32 0, i32 %call10.i
  %19 = ptrtoint ptr %switch.gep79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load80 = load i32, ptr %switch.gep79, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.end.i.if.end_crit_edge
  %.sink73.i = phi i32 [ %switch.load, %switch.lookup ], [ 176, %if.end.i.if.end_crit_edge ]
  %.sink.i = phi i32 [ %switch.load80, %switch.lookup ], [ 144, %if.end.i.if.end_crit_edge ]
  %20 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink73.i, ptr %fmt.i, align 4
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i, ptr %height.i, align 4
  %22 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat.i, align 4
  %pixelformat2 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pixelformat2, align 8
  %inhibit_htables = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 4, i32 3
  %25 = ptrtoint ptr %inhibit_htables to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %inhibit_htables, align 1
  %26 = load i32, ptr %fmt.i, align 4
  %width4 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp5.not = icmp eq i32 %26, %28
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %29 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height.i, align 4
  %height7 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp8.not = icmp eq i32 %30, %32
  br i1 %cmp8.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %33 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %width4, align 8
  %34 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height.i, align 4
  %height15 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height15, align 4
  %37 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt.i, align 4
  %roi = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 6
  %39 = ptrtoint ptr %roi to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %roi, align 4
  %40 = load i32, ptr %height.i, align 4
  %height24 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 6, i32 1
  %41 = ptrtoint ptr %height24 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height24, align 4
  tail call void @cpia2_set_format(ptr noundef %1) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then9, %lor.lhs.false.if.end25_crit_edge
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 25
  %42 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp2673 = icmp sgt i32 %43, 0
  br i1 %cmp2673, label %for.body.lr.ph, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end25
  %buffers = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 28
  %streaming.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %v4l2_lock.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  %wq_stream.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 23
  %flags.i.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 14, i32 17
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %frame.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end33.for.body_crit_edge ]
  %44 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffers, align 8
  %status = getelementptr %struct.framebuf, ptr %45, i32 %frame.074, i32 5
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp27 = icmp eq i32 %47, 1
  br i1 %cmp27, label %for.body.while.cond.i_crit_edge, label %for.body.if.end33_crit_edge

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.body.while.cond.i_crit_edge:                  ; preds = %for.body
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end31.i.while.cond.i_crit_edge, %for.body.while.cond.i_crit_edge
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i = icmp eq i32 %49, 2
  br i1 %cmp.i, label %while.cond.i.if.end33_crit_edge, label %if.end.i65

while.cond.i.if.end33_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end.i65:                                       ; preds = %while.cond.i
  %50 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 2, ptr %status, align 8
  %length.i = getelementptr %struct.framebuf, ptr %45, i32 %frame.074, i32 3
  %53 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %length.i, align 8
  br label %if.end33

if.end3.i:                                        ; preds = %if.end.i65
  call void @mutex_unlock(ptr noundef %v4l2_lock.i) #12
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 189) #12
  %54 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool8.not.i = icmp eq i32 %55, 0
  br i1 %tobool8.not.i, label %if.end3.i.if.end24.i_crit_edge, label %lor.lhs.false.i

if.end3.i.if.end24.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp10.i = icmp eq i32 %57, 2
  br i1 %cmp10.i, label %lor.lhs.false.i.if.end24.i_crit_edge, label %if.then11.i

lor.lhs.false.i.if.end24.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then11.i:                                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %58 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %call59.i = call i32 @prepare_to_wait_event(ptr noundef %wq_stream.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %59 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool14.not60.i = icmp eq i32 %60, 0
  br i1 %tobool14.not60.i, label %if.then11.i.for.end.i_crit_edge, label %if.then11.i.lor.lhs.false15.i_crit_edge

if.then11.i.lor.lhs.false15.i_crit_edge:          ; preds = %if.then11.i
  br label %lor.lhs.false15.i

if.then11.i.for.end.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false15.i:                                ; preds = %cleanup.i.lor.lhs.false15.i_crit_edge, %if.then11.i.lor.lhs.false15.i_crit_edge
  %call61.i = phi i32 [ %call.i66, %cleanup.i.lor.lhs.false15.i_crit_edge ], [ %call59.i, %if.then11.i.lor.lhs.false15.i_crit_edge ]
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp17.i = icmp eq i32 %62, 2
  br i1 %cmp17.i, label %lor.lhs.false15.i.for.end.i_crit_edge, label %if.end19.i

lor.lhs.false15.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end19.i:                                       ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool20.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool20.not.i, label %cleanup.i, label %if.end19.i.__out.i_crit_edge

if.end19.i.__out.i_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out.i

cleanup.i:                                        ; preds = %if.end19.i
  call void @schedule() #12
  %call.i66 = call i32 @prepare_to_wait_event(ptr noundef %wq_stream.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %63 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %streaming.i, align 4
  %tobool14.not.i = icmp eq i32 %64, 0
  br i1 %tobool14.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.lor.lhs.false15.i_crit_edge

cleanup.i.lor.lhs.false15.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false15.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %lor.lhs.false15.i.for.end.i_crit_edge, %if.then11.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wq_stream.i, ptr noundef nonnull %__wq_entry.i) #12
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end19.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %__out.i, %lor.lhs.false.i.if.end24.i_crit_edge, %if.end3.i.if.end24.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %v4l2_lock.i, i32 noundef 0) #12
  %65 = call i32 @llvm.read_register.i32(metadata !148) #12
  %and.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stack.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %73 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end24.i.cleanup_crit_edge, !prof !158

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

signal_pending.exit.i:                            ; preds = %if.end24.i
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %70, align 4
  %and1.i.i.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool29.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %signal_pending.exit.i.cleanup_crit_edge

signal_pending.exit.i.cleanup_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31.i:                                       ; preds = %signal_pending.exit.i
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %77, 1
  %tobool33.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.cleanup_crit_edge, label %if.end31.i.while.cond.i_crit_edge

if.end31.i.while.cond.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.then1.i, %while.cond.i.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %78 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffers, align 8
  %status36 = getelementptr %struct.framebuf, ptr %79, i32 %frame.074, i32 5
  %80 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %status36, align 8
  %inc = add nuw nsw i32 %frame.074, 1
  %81 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_frames, align 4
  %cmp26 = icmp slt i32 %inc, %82
  br i1 %cmp26, label %if.end33.for.body_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end33.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge, %signal_pending.exit.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ -512, %if.end24.i.cleanup_crit_edge ], [ -25, %if.end31.i.cleanup_crit_edge ], [ -512, %signal_pending.exit.i.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1196444237, label %entry.if.end_crit_edge
    i32 1195724874, label %entry.if.end_crit_edge76
  ]

entry.if.end_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge76
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bytesperline, align 4
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %4, i32 0, i32 24
  %7 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_size, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %9 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %colorspace, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %call10 = tail call i32 @cpia2_match_video_size(i32 noundef %12, i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call10)
  %15 = icmp ult i32 %call10, 8
  br i1 %15, label %switch.lookup, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cpia2_try_fmt_vid_cap, i32 0, i32 %call10
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep74 = getelementptr inbounds [8 x i32], ptr @switch.table.cpia2_try_fmt_vid_cap.47, i32 0, i32 %call10
  %17 = ptrtoint ptr %switch.gep74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load75 = load i32, ptr %switch.gep74, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.end.cleanup.sink.split_crit_edge
  %.sink73 = phi i32 [ %switch.load, %switch.lookup ], [ 176, %if.end.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ %switch.load75, %switch.lookup ], [ 144, %if.end.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink73, ptr %fmt, align 4
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_reqbufs(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %memory = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %do.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_frames, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %req, align 4
  %reserved = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %req, i32 0, i32 5
  %9 = call ptr @memset(ptr %reserved, i32 0, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_querybuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %buf) #1 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 8
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %buffers = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffers, align 8
  %data = getelementptr %struct.framebuf, ptr %9, i32 %5, i32 6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %frame_buffer = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frame_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %m = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 9
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub, ptr %m, align 8
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_size, align 8
  %length = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 10
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %length, align 4
  %memory = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 8
  %18 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %memory, align 4
  %mmapped = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %mmapped to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mmapped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool.not, i32 8192, i32 8193
  %21 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %21, align 4
  %23 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffers, align 8
  %status = getelementptr %struct.framebuf, ptr %24, i32 %5, i32 5
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %status, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %26, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge50
    i32 1, label %if.end.sw.bb_crit_edge51
    i32 2, label %sw.bb11
  ]

if.end.sw.bb_crit_edge51:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge50:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge50, %if.end.sw.bb_crit_edge51
  %bytesused = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 2
  %28 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bytesused, align 8
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %length15 = getelementptr %struct.framebuf, ptr %24, i32 %5, i32 3
  %29 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length15, align 8
  %bytesused16 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 2
  %31 = ptrtoint ptr %bytesused16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bytesused16, align 8
  %32 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffers, align 8
  %arrayidx19 = getelementptr %struct.framebuf, ptr %33, i32 %5
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx19, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %36 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %35) #12
  %37 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ts.i, align 8
  %timestamp1.i = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 5
  %39 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %timestamp1.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %40 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %41, 1000
  %conv.i = sext i32 %div.i to i64
  %tv_usec.i = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv.i, ptr %tv_usec.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  %43 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffers, align 8
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf, align 8
  %seq = getelementptr %struct.framebuf, ptr %44, i32 %46, i32 1
  %47 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %seq, align 8
  %sequence = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 7
  %49 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sequence, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb11, %sw.bb
  %.sink = phi i32 [ 4, %sw.bb11 ], [ 2, %sw.bb ]
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_qbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %memory = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 8
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf, align 8
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp ult i32 %7, %9
  br i1 %cmp3.not, label %do.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false2
  %buffers = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffers, align 8
  %status = getelementptr %struct.framebuf, ptr %11, i32 %7, i32 5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp5 = icmp eq i32 %13, 2
  br i1 %cmp5, label %if.then6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_dqbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %buf) #1 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

lor.lhs.false:                                    ; preds = %entry
  %memory = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 8
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup63_crit_edge

lor.lhs.false.cleanup63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

if.end:                                           ; preds = %lor.lhs.false
  %num_frames.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %num_frames.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.i = icmp sgt i32 %7, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

for.body.lr.ph.i:                                 ; preds = %if.end
  %buffers.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffers.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %found.026.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %found.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr %struct.framebuf, ptr %9, i32 %i.024.i, i32 5
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp1.i = icmp eq i32 %11, 2
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.026.i)
  %cmp2.i = icmp slt i32 %found.026.i, 0
  br i1 %cmp2.i, label %if.then.i.for.inc.i_crit_edge, label %if.else.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5.i = getelementptr %struct.framebuf, ptr %9, i32 %i.024.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx5.i, align 8
  %arrayidx7.i = getelementptr %struct.framebuf, ptr %9, i32 %found.026.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp9.i = icmp ult i64 %13, %15
  %spec.select.i = select i1 %cmp9.i, i32 %i.024.i, i32 %found.026.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %found.1.i = phi i32 [ %found.026.i, %for.body.i.for.inc.i_crit_edge ], [ %i.024.i, %if.then.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %find_earliest_filled_buffer.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

find_earliest_filled_buffer.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i)
  %cmp3 = icmp slt i32 %found.1.i, 0
  br i1 %cmp3, label %find_earliest_filled_buffer.exit.land.lhs.true_crit_edge, label %find_earliest_filled_buffer.exit.if.end48_crit_edge

find_earliest_filled_buffer.exit.if.end48_crit_edge: ; preds = %find_earliest_filled_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

find_earliest_filled_buffer.exit.land.lhs.true_crit_edge: ; preds = %find_earliest_filled_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %find_earliest_filled_buffer.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then7.critedge, label %land.lhs.true.cleanup63_crit_edge

land.lhs.true.cleanup63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

if.then7.critedge:                                ; preds = %land.lhs.true
  %curbuff = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %curbuff, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 893) #12
  %flags.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 14, i32 17
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool12.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not, label %if.then7.critedge.if.end32_crit_edge, label %lor.lhs.false13

if.then7.critedge.if.end32_crit_edge:             ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

lor.lhs.false13:                                  ; preds = %if.then7.critedge
  %22 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %curbuff, align 4
  %status = getelementptr inbounds %struct.framebuf, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp15 = icmp eq i32 %25, 2
  br i1 %cmp15, label %lor.lhs.false13.if.end32_crit_edge, label %if.then16

lor.lhs.false13.if.end32_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then16:                                        ; preds = %lor.lhs.false13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wq_stream = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 23
  %call18124 = call i32 @prepare_to_wait_event(ptr noundef %wq_stream, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i103125 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i103125)
  %tobool21.not126 = icmp eq i32 %and1.i.i103125, 0
  br i1 %tobool21.not126, label %if.then16.for.end_crit_edge, label %if.then16.lor.lhs.false22_crit_edge

if.then16.lor.lhs.false22_crit_edge:              ; preds = %if.then16
  br label %lor.lhs.false22

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false22:                                  ; preds = %cleanup.lor.lhs.false22_crit_edge, %if.then16.lor.lhs.false22_crit_edge
  %call18127 = phi i32 [ %call18, %cleanup.lor.lhs.false22_crit_edge ], [ %call18124, %if.then16.lor.lhs.false22_crit_edge ]
  %29 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %curbuff, align 4
  %status24 = getelementptr inbounds %struct.framebuf, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %status24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp25 = icmp eq i32 %32, 2
  br i1 %cmp25, label %lor.lhs.false22.for.end_crit_edge, label %if.end27

lor.lhs.false22.for.end_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end27:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18127)
  %tobool28.not = icmp eq i32 %call18127, 0
  br i1 %tobool28.not, label %cleanup, label %if.end27.__out_crit_edge

if.end27.__out_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end27
  call void @schedule() #12
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %wq_stream, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i103 = and i32 %34, 1
  %tobool21.not = icmp eq i32 %and1.i.i103, 0
  br i1 %tobool21.not, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false22_crit_edge

cleanup.lor.lhs.false22_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false22

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false22.for.end_crit_edge, %if.then16.for.end_crit_edge
  %cb.2.ph = phi ptr [ %23, %if.then16.for.end_crit_edge ], [ %30, %lor.lhs.false22.for.end_crit_edge ], [ %30, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wq_stream, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end27.__out_crit_edge
  %cb.2112 = phi ptr [ %cb.2.ph, %for.end ], [ %30, %if.end27.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end32

if.end32:                                         ; preds = %__out, %lor.lhs.false13.if.end32_crit_edge, %if.then7.critedge.if.end32_crit_edge
  %cb.3 = phi ptr [ %23, %lor.lhs.false13.if.end32_crit_edge ], [ %cb.2112, %__out ], [ %19, %if.then7.critedge.if.end32_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #12
  %35 = call i32 @llvm.read_register.i32(metadata !148) #12
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end32.cleanup63_crit_edge, !prof !158

if.end32.cleanup63_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

signal_pending.exit:                              ; preds = %if.end32
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %40, align 4
  %and1.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool37.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool37.not, label %if.end39, label %signal_pending.exit.cleanup63_crit_edge

signal_pending.exit.cleanup63_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

if.end39:                                         ; preds = %signal_pending.exit
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i105 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i105)
  %tobool42.not = icmp eq i32 %and1.i.i105, 0
  br i1 %tobool42.not, label %if.end39.cleanup63_crit_edge, label %cleanup45

if.end39.cleanup63_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

cleanup45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %num = getelementptr inbounds %struct.framebuf, ptr %cb.3, i32 0, i32 2
  %48 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup45, %find_earliest_filled_buffer.exit.if.end48_crit_edge
  %frame.1 = phi i32 [ %49, %cleanup45 ], [ %found.1.i, %find_earliest_filled_buffer.exit.if.end48_crit_edge ]
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %frame.1, ptr %buf, align 8
  %buffers = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 28
  %51 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffers, align 8
  %length = getelementptr %struct.framebuf, ptr %52, i32 %frame.1, i32 3
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 8
  %bytesused = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 2
  %55 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %bytesused, align 8
  %flags = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 3
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8197, ptr %flags, align 4
  %field = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 4
  %57 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %field, align 8
  %58 = load ptr, ptr %buffers, align 8
  %arrayidx52 = getelementptr %struct.framebuf, ptr %58, i32 %frame.1
  %59 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx52, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %61 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %60) #12
  %62 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ts.i, align 8
  %timestamp1.i = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 5
  %64 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %timestamp1.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %65 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %66, 1000
  %conv.i = sext i32 %div.i to i64
  %tv_usec.i = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv.i, ptr %tv_usec.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  %68 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffers, align 8
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buf, align 8
  %seq = getelementptr %struct.framebuf, ptr %69, i32 %71, i32 1
  %72 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seq, align 8
  %sequence = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 7
  %74 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %sequence, align 8
  %75 = load ptr, ptr %buffers, align 8
  %data = getelementptr %struct.framebuf, ptr %75, i32 %71, i32 6
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %frame_buffer = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 27
  %78 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %frame_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %79 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %m = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 9
  %80 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub.ptr.sub, ptr %m, align 8
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 24
  %81 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %frame_size, align 8
  %length59 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 10
  %83 = ptrtoint ptr %length59 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %length59, align 4
  %reserved2 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 11
  %84 = ptrtoint ptr %reserved2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %reserved2, align 8
  %85 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 12
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %85, align 4
  %timecode = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 6
  %87 = call ptr @memset(ptr %timecode, i32 0, i32 16)
  br label %cleanup63

cleanup63:                                        ; preds = %if.end48, %if.end39.cleanup63_crit_edge, %signal_pending.exit.cleanup63_crit_edge, %if.end32.cleanup63_crit_edge, %land.lhs.true.cleanup63_crit_edge, %lor.lhs.false.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.1 = phi i32 [ 0, %if.end48 ], [ -22, %lor.lhs.false.cleanup63_crit_edge ], [ -22, %entry.cleanup63_crit_edge ], [ -11, %land.lhs.true.cleanup63_crit_edge ], [ -25, %if.end39.cleanup63_crit_edge ], [ -512, %signal_pending.exit.cleanup63_crit_edge ], [ -512, %if.end32.cleanup63_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_streamon(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mmapped = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmapped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmapped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 9, i32 2
  %6 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_mode, align 1
  %conv = zext i8 %7 to i32
  %call3 = tail call i32 @cpia2_usb_stream_start(ptr noundef %1, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  %usb_alt = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %usb_alt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_alt, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %13, i32 noundef 0) #12
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %9, i1 noundef zeroext true) #12
  %14 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i6.i, align 4
  tail call void @mutex_unlock(ptr noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_streamoff(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mmapped = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmapped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mmapped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @cpia2_usb_stream_stop(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  %usb_alt = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_alt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_alt, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %11, i32 noundef 0) #12
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %7, i1 noundef zeroext false) #12
  %12 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i6.i, align 4
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.20, i32 noundef 32) #12
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpia2_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpia2_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 8
  %width3 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width3, align 4
  %height = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_g_jpegcomp(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %parms) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = getelementptr inbounds i8, ptr %parms, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 132)
  %4 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 80, ptr %parms, align 4
  %jpeg_markers = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 6
  %5 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 48, ptr %jpeg_markers, align 4
  %inhibit_htables = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 4, i32 3
  %6 = ptrtoint ptr %inhibit_htables to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %inhibit_htables, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.store.select = select i1 %tobool.not, i32 56, i32 48
  %8 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %jpeg_markers, align 4
  %APPn = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %APPn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %APPn, align 4
  %APPn2 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 1
  %11 = ptrtoint ptr %APPn2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %APPn2, align 4
  %APP_len = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %APP_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %APP_len, align 8
  %APP_len3 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 2
  %14 = ptrtoint ptr %APP_len3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %APP_len3, align 4
  %15 = load i32, ptr %APP_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then5, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %APP_data = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 3
  %APP_data6 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 33
  %16 = call ptr @memcpy(ptr %APP_data, ptr %APP_data6, i32 %15)
  %17 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jpeg_markers, align 4
  %or10 = or i32 %18, 128
  store i32 %or10, ptr %jpeg_markers, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %entry.if.end11_crit_edge
  %COM_len = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %COM_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %COM_len, align 8
  %COM_len12 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 4
  %21 = ptrtoint ptr %COM_len12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %COM_len12, align 4
  %22 = load i32, ptr %COM_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp14 = icmp sgt i32 %22, 0
  br i1 %cmp14, label %if.then15, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %COM_data = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 5
  %COM_data17 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 35
  %23 = call ptr @memcpy(ptr %COM_data, ptr %COM_data17, i32 %22)
  %24 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %jpeg_markers, align 4
  %or21 = or i32 %25, 64
  store i32 %or21, ptr %jpeg_markers, align 4
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end11.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_s_jpegcomp(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %parms) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %jpeg_markers = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 6
  %2 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jpeg_markers, align 4
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 3
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  %inhibit_htables = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 4, i32 3
  %8 = ptrtoint ptr %inhibit_htables to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %inhibit_htables, align 1
  %APP_len = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 2
  %9 = ptrtoint ptr %APP_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %APP_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.else29, label %if.then

if.then:                                          ; preds = %entry
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %11)
  %12 = icmp ult i32 %11, 60
  br i1 %12, label %land.lhs.true8, label %if.then.do.end25_crit_edge

if.then.do.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true8:                                   ; preds = %if.then
  %APPn = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 1
  %13 = ptrtoint ptr %APPn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %APPn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %if.then15, label %land.lhs.true8.do.end25_crit_edge

land.lhs.true8.do.end25_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

if.then15:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %APPn17 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 31
  %16 = ptrtoint ptr %APPn17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %APPn17, align 4
  %17 = ptrtoint ptr %APP_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %APP_len, align 4
  %APP_len19 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %APP_len19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %APP_len19, align 8
  %APP_data = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 33
  %APP_data20 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 3
  %20 = load i32, ptr %APP_len, align 4
  %21 = call ptr @memcpy(ptr %APP_data, ptr %APP_data20, i32 %20)
  br label %if.end31

do.end25:                                         ; preds = %land.lhs.true8.do.end25_crit_edge, %if.then.do.end25_crit_edge
  %APPn26 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 1
  %22 = ptrtoint ptr %APPn26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %APPn26, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %23, i32 noundef %10) #15
  br label %cleanup

if.else29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %APP_len30 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 32
  %24 = ptrtoint ptr %APP_len30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %APP_len30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then15
  %COM_len = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 4
  %25 = ptrtoint ptr %COM_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %COM_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp32.not = icmp eq i32 %26, 0
  br i1 %cmp32.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  %27 = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %27)
  %28 = icmp ult i32 %27, 60
  br i1 %28, label %if.then42, label %do.end52

if.then42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %COM_len44 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 34
  %29 = ptrtoint ptr %COM_len44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %COM_len44, align 8
  %COM_data = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 35
  %COM_data46 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %parms, i32 0, i32 5
  %30 = ptrtoint ptr %COM_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %COM_len, align 4
  %32 = call ptr @memcpy(ptr %COM_data, ptr %COM_data46, i32 %31)
  br label %cleanup

do.end52:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %26) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.then42, %if.end31.cleanup_crit_edge, %do.end25
  %retval.0 = phi i32 [ -22, %do.end52 ], [ -22, %do.end25 ], [ 0, %if.then42 ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %parm, align 4
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_frames, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %readbuffers, align 4
  %frame_rate = getelementptr inbounds %struct.camera_data, ptr %3, i32 0, i32 12, i32 7, i32 1
  %8 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frame_rate, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %9, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.if.then4_crit_edge
    i8 2, label %if.then4.fold.split
    i8 4, label %if.then4.fold.split19
    i8 8, label %if.then4.fold.split20
    i8 16, label %if.then4.fold.split21
    i8 32, label %if.then4.fold.split22
  ]

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4.fold.split19:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4.fold.split20:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4.fold.split21:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4.fold.split22:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.then4.fold.split22, %if.then4.fold.split21, %if.then4.fold.split20, %if.then4.fold.split19, %if.then4.fold.split, %if.end.if.then4_crit_edge
  %i.017.lcssa = phi i32 [ 0, %if.end.if.then4_crit_edge ], [ 1, %if.then4.fold.split ], [ 2, %if.then4.fold.split19 ], [ 3, %if.then4.fold.split20 ], [ 4, %if.then4.fold.split21 ], [ 5, %if.then4.fold.split22 ]
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2
  %period = getelementptr [6 x %struct.framerate_info], ptr @framerate_controls, i32 0, i32 %i.017.lcssa, i32 1
  %11 = ptrtoint ptr %period to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %period, align 4
  %13 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %2)
  %tpf.sroa.0.0.copyload = load i32, ptr %timeperframe, align 4
  %tpf.sroa.6.0.timeperframe.sroa_idx = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %tpf.sroa.6.0.timeperframe.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %tpf.sroa.6.0.copyload = load i32, ptr %tpf.sroa.6.0.timeperframe.sroa_idx, align 4
  %call1 = tail call i32 @cpia2_g_parm(ptr noundef %file, ptr noundef %fh, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpf.sroa.6.0.copyload)
  %tobool2.not = icmp eq i32 %tpf.sroa.6.0.copyload, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpf.sroa.0.0.copyload)
  %tobool4.not = icmp eq i32 %tpf.sroa.0.0.copyload, 0
  %or.cond56 = select i1 %or.cond, i1 true, i1 %tobool4.not
  br i1 %or.cond56, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.end:                                           ; preds = %entry
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sensor_flags = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 0, i32 6
  %6 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sensor_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp6 = icmp eq i8 %7, 16
  %spec.select = select i1 %cmp6, i32 3, i32 5
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end.if.end9_crit_edge
  %max.0 = phi i32 [ 5, %if.end.if.end9_crit_edge ], [ %spec.select, %land.lhs.true ]
  %8 = add nuw nsw i32 %max.0, 1
  %mul = mul i32 %tpf.sroa.0.0.copyload, 25
  %mul16 = shl i32 %tpf.sroa.6.0.copyload, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul16)
  %cmp19.not = icmp ult i32 %mul, %mul16
  br i1 %cmp19.not, label %for.body.1, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %if.end9
  %mul.1 = mul i32 %tpf.sroa.0.0.copyload, 15
  %mul16.1 = shl i32 %tpf.sroa.6.0.copyload, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %mul16.1)
  %cmp19.not.1 = icmp ult i32 %mul.1, %mul16.1
  br i1 %cmp19.not.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %mul.2 = mul i32 %tpf.sroa.0.0.copyload, 25
  %mul16.2 = shl i32 %tpf.sroa.6.0.copyload, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %mul16.2)
  %cmp19.not.2 = icmp ult i32 %mul.2, %mul16.2
  br i1 %cmp19.not.2, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %mul.3 = mul i32 %tpf.sroa.0.0.copyload, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %tpf.sroa.6.0.copyload)
  %cmp19.not.3 = icmp ult i32 %mul.3, %tpf.sroa.6.0.copyload
  br i1 %cmp19.not.3, label %for.inc.3, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.0)
  %exitcond.3 = icmp eq i32 %max.0, 3
  br i1 %exitcond.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %mul.4 = mul i32 %tpf.sroa.0.0.copyload, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %tpf.sroa.6.0.copyload)
  %cmp19.not.4 = icmp ult i32 %mul.4, %tpf.sroa.6.0.copyload
  br i1 %cmp19.not.4, label %for.body.5, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %mul.5 = mul i32 %tpf.sroa.0.0.copyload, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %tpf.sroa.6.0.copyload)
  %cmp19.not.5 = icmp ult i32 %mul.5, %tpf.sroa.6.0.copyload
  br i1 %cmp19.not.5, label %for.inc.5, label %for.body.5.for.end_crit_edge

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5:                                        ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %max.0)
  %exitcond.5 = icmp eq i32 %max.0, 5
  %spec.select59 = select i1 %exitcond.5, i32 %8, i32 6
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %if.end9.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ 1, %for.body.1.for.end_crit_edge ], [ 2, %for.body.2.for.end_crit_edge ], [ 3, %for.body.3.for.end_crit_edge ], [ %8, %for.inc.3.for.end_crit_edge ], [ 4, %for.body.4.for.end_crit_edge ], [ 5, %for.body.5.for.end_crit_edge ], [ %spec.select59, %for.inc.5 ]
  %9 = tail call i32 @llvm.smin.i32(i32 %i.0.lcssa, i32 %max.0)
  %arrayidx29 = getelementptr [6 x %struct.framerate_info], ptr @framerate_controls, i32 0, i32 %9
  %period30 = getelementptr [6 x %struct.framerate_info], ptr @framerate_controls, i32 0, i32 %9, i32 1
  %10 = ptrtoint ptr %period30 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %period30, align 4
  %12 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %timeperframe, align 4
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx29, align 4
  %call32 = tail call i32 @cpia2_set_fps(ptr noundef %1, i32 noundef %14) #12
  br label %cleanup33

cleanup33:                                        ; preds = %for.end, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ %call32, %for.end ], [ %call1, %entry.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpia2_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1196444237, label %entry.if.end_crit_edge
    i32 1195724874, label %entry.if.end_crit_edge18
  ]

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge18
  %3 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp3 = icmp ugt i32 %4, 7
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %arrayidx = getelementptr [8 x %struct.anon.128], ptr @cpia2_framesizes, i32 0, i32 %4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  %height = getelementptr [8 x %struct.anon.128], ptr @cpia2_framesizes, i32 0, i32 %4, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height10, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1196444237, label %entry.if.end_crit_edge
    i32 1195724874, label %entry.if.end_crit_edge58
  ]

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge58
  %pnp_id = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %pnp_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pnp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %land.lhs.true4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true4:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sensor_flags = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 0, i32 6
  %7 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sensor_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp6 = icmp eq i8 %8, 16
  %spec.select = select i1 %cmp6, i32 3, i32 5
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true4, %if.end.if.end9_crit_edge
  %max.0 = phi i32 [ 5, %if.end.if.end9_crit_edge ], [ %spec.select, %land.lhs.true4 ]
  %9 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max.0)
  %cmp10 = icmp ugt i32 %10, %max.0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %for.cond.preheader

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end9
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %12, label %for.cond.preheader.cleanup_crit_edge [
    i32 640, label %land.lhs.true19
    i32 352, label %land.lhs.true19.1
    i32 320, label %land.lhs.true19.2
    i32 288, label %land.lhs.true19.3
    i32 256, label %land.lhs.true19.4
    i32 224, label %land.lhs.true19.5
    i32 192, label %land.lhs.true19.6
    i32 176, label %land.lhs.true19.7
  ]

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19:                                  ; preds = %for.cond.preheader
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %15)
  %cmp22 = icmp eq i32 %15, 480
  br i1 %cmp22, label %land.lhs.true19.if.end29_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.if.end29_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.1:                                ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %17)
  %cmp22.1 = icmp eq i32 %17, 288
  br i1 %cmp22.1, label %land.lhs.true19.1.if.end29_crit_edge, label %land.lhs.true19.1.cleanup_crit_edge

land.lhs.true19.1.cleanup_crit_edge:              ; preds = %land.lhs.true19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.1.if.end29_crit_edge:             ; preds = %land.lhs.true19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.2:                                ; preds = %for.cond.preheader
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %19)
  %cmp22.2 = icmp eq i32 %19, 240
  br i1 %cmp22.2, label %land.lhs.true19.2.if.end29_crit_edge, label %land.lhs.true19.2.cleanup_crit_edge

land.lhs.true19.2.cleanup_crit_edge:              ; preds = %land.lhs.true19.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.2.if.end29_crit_edge:             ; preds = %land.lhs.true19.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.3:                                ; preds = %for.cond.preheader
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 216, i32 %21)
  %cmp22.3 = icmp eq i32 %21, 216
  br i1 %cmp22.3, label %land.lhs.true19.3.if.end29_crit_edge, label %land.lhs.true19.3.cleanup_crit_edge

land.lhs.true19.3.cleanup_crit_edge:              ; preds = %land.lhs.true19.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.3.if.end29_crit_edge:             ; preds = %land.lhs.true19.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.4:                                ; preds = %for.cond.preheader
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %23)
  %cmp22.4 = icmp eq i32 %23, 192
  br i1 %cmp22.4, label %land.lhs.true19.4.if.end29_crit_edge, label %land.lhs.true19.4.cleanup_crit_edge

land.lhs.true19.4.cleanup_crit_edge:              ; preds = %land.lhs.true19.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.4.if.end29_crit_edge:             ; preds = %land.lhs.true19.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.5:                                ; preds = %for.cond.preheader
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 168, i32 %25)
  %cmp22.5 = icmp eq i32 %25, 168
  br i1 %cmp22.5, label %land.lhs.true19.5.if.end29_crit_edge, label %land.lhs.true19.5.cleanup_crit_edge

land.lhs.true19.5.cleanup_crit_edge:              ; preds = %land.lhs.true19.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.5.if.end29_crit_edge:             ; preds = %land.lhs.true19.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.6:                                ; preds = %for.cond.preheader
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %27)
  %cmp22.6 = icmp eq i32 %27, 144
  br i1 %cmp22.6, label %land.lhs.true19.6.if.end29_crit_edge, label %land.lhs.true19.6.cleanup_crit_edge

land.lhs.true19.6.cleanup_crit_edge:              ; preds = %land.lhs.true19.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.6.if.end29_crit_edge:             ; preds = %land.lhs.true19.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true19.7:                                ; preds = %for.cond.preheader
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %29)
  %cmp22.7 = icmp eq i32 %29, 144
  br i1 %cmp22.7, label %land.lhs.true19.7.if.end29_crit_edge, label %land.lhs.true19.7.cleanup_crit_edge

land.lhs.true19.7.cleanup_crit_edge:              ; preds = %land.lhs.true19.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19.7.if.end29_crit_edge:             ; preds = %land.lhs.true19.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true19.7.if.end29_crit_edge, %land.lhs.true19.6.if.end29_crit_edge, %land.lhs.true19.5.if.end29_crit_edge, %land.lhs.true19.4.if.end29_crit_edge, %land.lhs.true19.3.if.end29_crit_edge, %land.lhs.true19.2.if.end29_crit_edge, %land.lhs.true19.1.if.end29_crit_edge, %land.lhs.true19.if.end29_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type, align 4
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %period = getelementptr [6 x %struct.framerate_info], ptr @framerate_controls, i32 0, i32 %10, i32 1
  %32 = ptrtoint ptr %period to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %period, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true19.7.cleanup_crit_edge, %land.lhs.true19.6.cleanup_crit_edge, %land.lhs.true19.5.cleanup_crit_edge, %land.lhs.true19.4.cleanup_crit_edge, %land.lhs.true19.3.cleanup_crit_edge, %land.lhs.true19.2.cleanup_crit_edge, %land.lhs.true19.1.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %land.lhs.true19.7.cleanup_crit_edge ], [ -22, %land.lhs.true19.6.cleanup_crit_edge ], [ -22, %land.lhs.true19.5.cleanup_crit_edge ], [ -22, %land.lhs.true19.4.cleanup_crit_edge ], [ -22, %land.lhs.true19.3.cleanup_crit_edge ], [ -22, %land.lhs.true19.2.cleanup_crit_edge ], [ -22, %land.lhs.true19.1.cleanup_crit_edge ], [ -22, %land.lhs.true19.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_set_format(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_match_video_size(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_stream_start(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_set_fps(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_parameters() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %0)
  %cmp = icmp ult i32 %0, 4096
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 4096, ptr @buffer_size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 4096) #15
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %0)
  %cmp1 = icmp sgt i32 %0, 1048576
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  store i32 1048576, ptr @buffer_size, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef 1048576) #15
  br label %if.end8

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nsw i32 %0, 4095
  %and = and i32 %add, -4096
  store i32 %and, ptr @buffer_size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then2, %if.then
  %1 = load i32, ptr @num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp9 = icmp slt i32 %1, 1
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  store i32 1, ptr @num_buffers, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 1) #15
  br label %if.end23

if.else15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp16 = icmp ugt i32 %1, 32
  br i1 %cmp16, label %if.then17, label %if.else15.if.end23_crit_edge

if.else15.if.end23_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  store i32 32, ptr @num_buffers, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 32) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.else15.if.end23_crit_edge, %if.then10
  %2 = load i32, ptr @alternate, align 4
  %3 = add i32 %2, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %3)
  %4 = icmp ult i32 %3, -6
  br i1 %4, label %if.then26, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  store i32 7, ptr @alternate, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 7) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %5 = load i32, ptr @flicker_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %5, label %if.then36 [
    i32 0, label %if.end31.do.end43_crit_edge
    i32 50, label %if.end31.do.end43_crit_edge47
    i32 60, label %if.end31.do.end43_crit_edge48
  ]

if.end31.do.end43_crit_edge48:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.end31.do.end43_crit_edge47:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.end31.do.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @flicker_mode, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 0) #15
  br label %do.end43

do.end43:                                         ; preds = %if.then36, %if.end31.do.end43_crit_edge, %if.end31.do.end43_crit_edge47, %if.end31.do.end43_crit_edge48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_usb_init() local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !40, !42, !43, !45, !46, !47, !48, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !119, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147}
!llvm.named.register.sp = !{!148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__param_video_nr, !1, !"__param_video_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_video_nrtype297, !1, !"__UNIQUE_ID_video_nrtype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_video_nr298, !4, !"__UNIQUE_ID_video_nr298", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 35, i32 1}
!5 = !{ptr @__param_buffer_size, !6, !"__param_buffer_size", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_buffer_sizetype299, !6, !"__UNIQUE_ID_buffer_sizetype299", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_buffer_size300, !9, !"__UNIQUE_ID_buffer_size300", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 39, i32 1}
!10 = !{ptr @__param_num_buffers, !11, !"__param_num_buffers", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 42, i32 1}
!12 = !{ptr @__UNIQUE_ID_num_bufferstype301, !11, !"__UNIQUE_ID_num_bufferstype301", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_num_buffers302, !14, !"__UNIQUE_ID_num_buffers302", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 43, i32 1}
!15 = !{ptr @__param_alternate, !16, !"__param_alternate", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 47, i32 1}
!17 = !{ptr @__UNIQUE_ID_alternatetype303, !16, !"__UNIQUE_ID_alternatetype303", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alternate304, !19, !"__UNIQUE_ID_alternate304", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 48, i32 1}
!20 = !{ptr @__param_flicker_mode, !21, !"__param_flicker_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 53, i32 1}
!22 = !{ptr @__UNIQUE_ID_flicker_modetype305, !21, !"__UNIQUE_ID_flicker_modetype305", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_flicker_mode306, !24, !"__UNIQUE_ID_flicker_mode306", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 54, i32 1}
!25 = !{ptr @__UNIQUE_ID_author307, !26, !"__UNIQUE_ID_author307", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 57, i32 1}
!27 = !{ptr @__UNIQUE_ID_description308, !28, !"__UNIQUE_ID_description308", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 58, i32 1}
!29 = !{ptr @__UNIQUE_ID_file309, !30, !"__UNIQUE_ID_file309", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 59, i32 1}
!31 = !{ptr @__UNIQUE_ID_license310, !30, !"__UNIQUE_ID_license310", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_version311, !33, !"__UNIQUE_ID_version311", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 60, i32 1}
!34 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__modver_attr, !33, !"__modver_attr", i1 false, i1 false}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1071, i32 11}
!40 = !{ptr @cpia2_register_camera._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1079, i32 2}
!42 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1138, i32 3}
!45 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cpia2_register_camera._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @cpia2_register_camera._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__initcall__kmod_cpia2__312_1225_cpia2_init6, !50, !"__initcall__kmod_cpia2__312_1225_cpia2_init6", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1225, i32 1}
!51 = !{ptr @__exitcall_cpia2_exit, !52, !"__exitcall_cpia2_exit", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1226, i32 1}
!53 = !{ptr @flicker_mode, !54, !"flicker_mode", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 52, i32 12}
!55 = !{ptr @__param_str_video_nr, !1, !"__param_str_video_nr", i1 false, i1 false}
!56 = !{ptr @video_nr, !57, !"video_nr", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 33, i32 12}
!58 = !{ptr @__param_str_buffer_size, !6, !"__param_str_buffer_size", i1 false, i1 false}
!59 = !{ptr @buffer_size, !60, !"buffer_size", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 37, i32 12}
!61 = !{ptr @__param_str_num_buffers, !11, !"__param_str_num_buffers", i1 false, i1 false}
!62 = !{ptr @num_buffers, !63, !"num_buffers", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 41, i32 12}
!64 = !{ptr @__param_str_alternate, !16, !"__param_str_alternate", i1 false, i1 false}
!65 = !{ptr @alternate, !66, !"alternate", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 46, i32 12}
!67 = !{ptr @__param_str_flicker_mode, !21, !"__param_str_flicker_mode", i1 false, i1 false}
!68 = !{ptr @cpia2_ctrl_ops, !69, !"cpia2_ctrl_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1056, i32 35}
!70 = !{ptr @cpia2_s_ctrl.flicker_table, !71, !"flicker_table", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 603, i32 19}
!72 = !{ptr @cpia2_template, !73, !"cpia2_template", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1038, i32 34}
!74 = !{ptr @cpia2_fops, !75, !"cpia2_fops", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1028, i32 42}
!76 = !{ptr @cpia2_ioctl_ops, !77, !"cpia2_ioctl_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 999, i32 36}
!78 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 213, i32 21}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 215, i32 21}
!82 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 218, i32 20}
!84 = !{ptr @.str.11, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 221, i32 20}
!86 = !{ptr @.str.12, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 224, i32 20}
!88 = !{ptr @.str.13, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 229, i32 20}
!90 = !{ptr @.str.14, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 232, i32 20}
!92 = !{ptr @.str.15, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 235, i32 20}
!94 = !{ptr @.str.16, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 238, i32 20}
!96 = !{ptr @.str.17, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 241, i32 20}
!98 = !{ptr @.str.18, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 244, i32 20}
!100 = !{ptr @.str.19, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/usb.h", i32 912, i32 31}
!102 = !{ptr @.str.20, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 265, i32 19}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 716, i32 4}
!106 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cpia2_s_jpegcomp._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @cpia2_s_jpegcomp._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 730, i32 4}
!111 = !{ptr @cpia2_s_jpegcomp._entry.23, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cpia2_s_jpegcomp._entry_ptr.25, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @framerate_controls, !114, !"framerate_controls", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 474, i32 36}
!115 = !{ptr @cpia2_framesizes, !116, !"cpia2_framesizes", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 537, i32 3}
!117 = !{ptr @.str.26, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1208, i32 2}
!119 = !{ptr @.str.27, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cpia2_init._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @cpia2_init._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1165, i32 3}
!125 = !{ptr @.str.30, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @check_parameters._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @check_parameters._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.32, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1169, i32 3}
!130 = !{ptr @check_parameters._entry.31, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @check_parameters._entry_ptr.33, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.35, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1178, i32 3}
!134 = !{ptr @check_parameters._entry.34, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @check_parameters._entry_ptr.36, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1181, i32 3}
!138 = !{ptr @check_parameters._entry.37, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @check_parameters._entry_ptr.39, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1186, i32 3}
!142 = !{ptr @check_parameters._entry.40, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @check_parameters._entry_ptr.42, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/cpia2/cpia2_v4l.c", i32 1191, i32 3}
!146 = !{ptr @check_parameters._entry.43, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @check_parameters._entry_ptr.45, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{!"sp"}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"branch_weights", i32 2000, i32 1}
