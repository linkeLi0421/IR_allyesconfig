; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-driver.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx18_ext_init\22, \22a\22\09"
module asm "\09.weak\09__crc_cx18_ext_init\09\09\09\09"
module asm "\09.long\09__crc_cx18_ext_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx18_ext_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cx18_ext_init\22\09\09\09\09\09"
module asm "__kstrtabns_cx18_ext_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cx2341x_handler_ops = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.cx18_open_id = type { %struct.v4l2_fh, i32, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }
%struct.cx18_card_pci_info = type { i16, i16, i16 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.110, %union.anon.111, i32, ptr, i32, %struct.anon.112, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { ptr }
%struct.anon.112 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@cx18_ext_init = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cx18_ext_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx18_ext_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cx18_ext_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx18_ext_init to i32), ptr @__kstrtab_cx18_ext_init, ptr @__kstrtabns_cx18_ext_init }, section "___ksymtab+cx18_ext_init", align 4
@__param_str_tuner = internal constant [11 x i8] c"cx18.tuner\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_tuner = internal constant %struct.kparam_array { i32 32, i32 4, ptr @tuner_c, ptr @param_ops_int, ptr @tuner }, align 4
@__param_tuner = internal constant %struct.kernel_param { ptr @__param_str_tuner, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_tuner } }, section "__param", align 4
@__UNIQUE_ID_tunertype385 = internal constant [33 x i8] c"cx18.parmtype=tuner:array of int\00", section ".modinfo", align 1
@__param_str_radio = internal constant [11 x i8] c"cx18.radio\00", align 1
@__param_arr_radio = internal constant %struct.kparam_array { i32 32, i32 4, ptr @radio_c, ptr @param_ops_int, ptr @radio }, align 4
@__param_radio = internal constant %struct.kernel_param { ptr @__param_str_radio, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_radio } }, section "__param", align 4
@__UNIQUE_ID_radiotype386 = internal constant [33 x i8] c"cx18.parmtype=radio:array of int\00", section ".modinfo", align 1
@__param_str_cardtype = internal constant [14 x i8] c"cx18.cardtype\00", align 1
@__param_arr_cardtype = internal constant %struct.kparam_array { i32 32, i32 4, ptr @cardtype_c, ptr @param_ops_int, ptr @cardtype }, align 4
@__param_cardtype = internal constant %struct.kernel_param { ptr @__param_str_cardtype, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_cardtype } }, section "__param", align 4
@__UNIQUE_ID_cardtypetype387 = internal constant [36 x i8] c"cx18.parmtype=cardtype:array of int\00", section ".modinfo", align 1
@__param_str_pal = internal constant [9 x i8] c"cx18.pal\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_pal = internal constant %struct.kparam_string { i32 3, ptr @pal }, align 4
@__param_pal = internal constant %struct.kernel_param { ptr @__param_str_pal, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_string_pal } }, section "__param", align 4
@__UNIQUE_ID_paltype388 = internal constant [25 x i8] c"cx18.parmtype=pal:string\00", section ".modinfo", align 1
@__param_str_secam = internal constant [11 x i8] c"cx18.secam\00", align 1
@__param_string_secam = internal constant %struct.kparam_string { i32 3, ptr @secam }, align 4
@__param_secam = internal constant %struct.kernel_param { ptr @__param_str_secam, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_string_secam } }, section "__param", align 4
@__UNIQUE_ID_secamtype389 = internal constant [27 x i8] c"cx18.parmtype=secam:string\00", section ".modinfo", align 1
@__param_str_ntsc = internal constant [10 x i8] c"cx18.ntsc\00", align 1
@__param_string_ntsc = internal constant %struct.kparam_string { i32 2, ptr @ntsc }, align 4
@__param_ntsc = internal constant %struct.kernel_param { ptr @__param_str_ntsc, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_string_ntsc } }, section "__param", align 4
@__UNIQUE_ID_ntsctype390 = internal constant [26 x i8] c"cx18.parmtype=ntsc:string\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"cx18.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cx18_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @cx18_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype391 = internal constant [24 x i8] c"cx18.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_mmio_ndelay = internal constant [17 x i8] c"cx18.mmio_ndelay\00", align 1
@mmio_ndelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mmio_ndelay = internal constant %struct.kernel_param { ptr @__param_str_mmio_ndelay, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @mmio_ndelay } }, section "__param", align 4
@__UNIQUE_ID_mmio_ndelaytype392 = internal constant [30 x i8] c"cx18.parmtype=mmio_ndelay:int\00", section ".modinfo", align 1
@__param_str_retry_mmio = internal constant [16 x i8] c"cx18.retry_mmio\00", align 1
@retry_mmio = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_retry_mmio = internal constant %struct.kernel_param { ptr @__param_str_retry_mmio, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @retry_mmio } }, section "__param", align 4
@__UNIQUE_ID_retry_mmiotype393 = internal constant [29 x i8] c"cx18.parmtype=retry_mmio:int\00", section ".modinfo", align 1
@__param_str_cx18_pci_latency = internal constant [22 x i8] c"cx18.cx18_pci_latency\00", align 1
@cx18_pci_latency = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cx18_pci_latency = internal constant %struct.kernel_param { ptr @__param_str_cx18_pci_latency, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @cx18_pci_latency } }, section "__param", align 4
@__UNIQUE_ID_cx18_pci_latencytype394 = internal constant [35 x i8] c"cx18.parmtype=cx18_pci_latency:int\00", section ".modinfo", align 1
@__param_str_cx18_first_minor = internal constant [22 x i8] c"cx18.cx18_first_minor\00", align 1
@cx18_first_minor = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cx18_first_minor = internal constant %struct.kernel_param { ptr @__param_str_cx18_first_minor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @cx18_first_minor } }, section "__param", align 4
@__UNIQUE_ID_cx18_first_minortype395 = internal constant [35 x i8] c"cx18.parmtype=cx18_first_minor:int\00", section ".modinfo", align 1
@__param_str_enc_ts_buffers = internal constant [20 x i8] c"cx18.enc_ts_buffers\00", align 1
@enc_ts_buffers = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enc_ts_buffers = internal constant %struct.kernel_param { ptr @__param_str_enc_ts_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_ts_buffers } }, section "__param", align 4
@__UNIQUE_ID_enc_ts_bufferstype396 = internal constant [33 x i8] c"cx18.parmtype=enc_ts_buffers:int\00", section ".modinfo", align 1
@__param_str_enc_mpg_buffers = internal constant [21 x i8] c"cx18.enc_mpg_buffers\00", align 1
@enc_mpg_buffers = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_enc_mpg_buffers = internal constant %struct.kernel_param { ptr @__param_str_enc_mpg_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_mpg_buffers } }, section "__param", align 4
@__UNIQUE_ID_enc_mpg_bufferstype397 = internal constant [34 x i8] c"cx18.parmtype=enc_mpg_buffers:int\00", section ".modinfo", align 1
@__param_str_enc_idx_buffers = internal constant [21 x i8] c"cx18.enc_idx_buffers\00", align 1
@enc_idx_buffers = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enc_idx_buffers = internal constant %struct.kernel_param { ptr @__param_str_enc_idx_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_idx_buffers } }, section "__param", align 4
@__UNIQUE_ID_enc_idx_bufferstype398 = internal constant [34 x i8] c"cx18.parmtype=enc_idx_buffers:int\00", section ".modinfo", align 1
@__param_str_enc_yuv_buffers = internal constant [21 x i8] c"cx18.enc_yuv_buffers\00", align 1
@enc_yuv_buffers = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_enc_yuv_buffers = internal constant %struct.kernel_param { ptr @__param_str_enc_yuv_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_yuv_buffers } }, section "__param", align 4
@__UNIQUE_ID_enc_yuv_bufferstype399 = internal constant [34 x i8] c"cx18.parmtype=enc_yuv_buffers:int\00", section ".modinfo", align 1
@__param_str_enc_vbi_buffers = internal constant [21 x i8] c"cx18.enc_vbi_buffers\00", align 1
@enc_vbi_buffers = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enc_vbi_buffers = internal constant %struct.kernel_param { ptr @__param_str_enc_vbi_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_vbi_buffers } }, section "__param", align 4
@__UNIQUE_ID_enc_vbi_bufferstype400 = internal constant [34 x i8] c"cx18.parmtype=enc_vbi_buffers:int\00", section ".modinfo", align 1
@__param_str_enc_pcm_buffers = internal constant [21 x i8] c"cx18.enc_pcm_buffers\00", align 1
@enc_pcm_buffers = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enc_pcm_buffers = internal constant %struct.kernel_param { ptr @__param_str_enc_pcm_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_pcm_buffers } }, section "__param", align 4
@__UNIQUE_ID_enc_pcm_bufferstype401 = internal constant [34 x i8] c"cx18.parmtype=enc_pcm_buffers:int\00", section ".modinfo", align 1
@__param_str_enc_ts_bufsize = internal constant [20 x i8] c"cx18.enc_ts_bufsize\00", align 1
@enc_ts_bufsize = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_enc_ts_bufsize = internal constant %struct.kernel_param { ptr @__param_str_enc_ts_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_ts_bufsize } }, section "__param", align 4
@__UNIQUE_ID_enc_ts_bufsizetype402 = internal constant [33 x i8] c"cx18.parmtype=enc_ts_bufsize:int\00", section ".modinfo", align 1
@__param_str_enc_mpg_bufsize = internal constant [21 x i8] c"cx18.enc_mpg_bufsize\00", align 1
@enc_mpg_bufsize = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_enc_mpg_bufsize = internal constant %struct.kernel_param { ptr @__param_str_enc_mpg_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_mpg_bufsize } }, section "__param", align 4
@__UNIQUE_ID_enc_mpg_bufsizetype403 = internal constant [34 x i8] c"cx18.parmtype=enc_mpg_bufsize:int\00", section ".modinfo", align 1
@__param_str_enc_idx_bufsize = internal constant [21 x i8] c"cx18.enc_idx_bufsize\00", align 1
@enc_idx_bufsize = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_enc_idx_bufsize = internal constant %struct.kernel_param { ptr @__param_str_enc_idx_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_idx_bufsize } }, section "__param", align 4
@__UNIQUE_ID_enc_idx_bufsizetype404 = internal constant [34 x i8] c"cx18.parmtype=enc_idx_bufsize:int\00", section ".modinfo", align 1
@__param_str_enc_yuv_bufsize = internal constant [21 x i8] c"cx18.enc_yuv_bufsize\00", align 1
@enc_yuv_bufsize = internal global { i32, [28 x i8] } { i32 102, [28 x i8] zeroinitializer }, align 32
@__param_enc_yuv_bufsize = internal constant %struct.kernel_param { ptr @__param_str_enc_yuv_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_yuv_bufsize } }, section "__param", align 4
@__UNIQUE_ID_enc_yuv_bufsizetype405 = internal constant [34 x i8] c"cx18.parmtype=enc_yuv_bufsize:int\00", section ".modinfo", align 1
@__param_str_enc_pcm_bufsize = internal constant [21 x i8] c"cx18.enc_pcm_bufsize\00", align 1
@enc_pcm_bufsize = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_enc_pcm_bufsize = internal constant %struct.kernel_param { ptr @__param_str_enc_pcm_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_pcm_bufsize } }, section "__param", align 4
@__UNIQUE_ID_enc_pcm_bufsizetype406 = internal constant [34 x i8] c"cx18.parmtype=enc_pcm_bufsize:int\00", section ".modinfo", align 1
@__param_str_enc_ts_bufs = internal constant [17 x i8] c"cx18.enc_ts_bufs\00", align 1
@enc_ts_bufs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_enc_ts_bufs = internal constant %struct.kernel_param { ptr @__param_str_enc_ts_bufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_ts_bufs } }, section "__param", align 4
@__UNIQUE_ID_enc_ts_bufstype407 = internal constant [30 x i8] c"cx18.parmtype=enc_ts_bufs:int\00", section ".modinfo", align 1
@__param_str_enc_mpg_bufs = internal constant [18 x i8] c"cx18.enc_mpg_bufs\00", align 1
@enc_mpg_bufs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_enc_mpg_bufs = internal constant %struct.kernel_param { ptr @__param_str_enc_mpg_bufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_mpg_bufs } }, section "__param", align 4
@__UNIQUE_ID_enc_mpg_bufstype408 = internal constant [31 x i8] c"cx18.parmtype=enc_mpg_bufs:int\00", section ".modinfo", align 1
@__param_str_enc_idx_bufs = internal constant [18 x i8] c"cx18.enc_idx_bufs\00", align 1
@enc_idx_bufs = internal global { i32, [28 x i8] } { i32 63, [28 x i8] zeroinitializer }, align 32
@__param_enc_idx_bufs = internal constant %struct.kernel_param { ptr @__param_str_enc_idx_bufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_idx_bufs } }, section "__param", align 4
@__UNIQUE_ID_enc_idx_bufstype409 = internal constant [31 x i8] c"cx18.parmtype=enc_idx_bufs:int\00", section ".modinfo", align 1
@__param_str_enc_yuv_bufs = internal constant [18 x i8] c"cx18.enc_yuv_bufs\00", align 1
@enc_yuv_bufs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_enc_yuv_bufs = internal constant %struct.kernel_param { ptr @__param_str_enc_yuv_bufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_yuv_bufs } }, section "__param", align 4
@__UNIQUE_ID_enc_yuv_bufstype410 = internal constant [31 x i8] c"cx18.parmtype=enc_yuv_bufs:int\00", section ".modinfo", align 1
@__param_str_enc_vbi_bufs = internal constant [18 x i8] c"cx18.enc_vbi_bufs\00", align 1
@enc_vbi_bufs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_enc_vbi_bufs = internal constant %struct.kernel_param { ptr @__param_str_enc_vbi_bufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_vbi_bufs } }, section "__param", align 4
@__UNIQUE_ID_enc_vbi_bufstype411 = internal constant [31 x i8] c"cx18.parmtype=enc_vbi_bufs:int\00", section ".modinfo", align 1
@__param_str_enc_pcm_bufs = internal constant [18 x i8] c"cx18.enc_pcm_bufs\00", align 1
@enc_pcm_bufs = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_enc_pcm_bufs = internal constant %struct.kernel_param { ptr @__param_str_enc_pcm_bufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enc_pcm_bufs } }, section "__param", align 4
@__UNIQUE_ID_enc_pcm_bufstype412 = internal constant [31 x i8] c"cx18.parmtype=enc_pcm_bufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner413 = internal constant [64 x i8] c"cx18.parm=tuner:Tuner type selection,\0A\09\09\09see tuner.h for values\00", section ".modinfo", align 1
@__UNIQUE_ID_radio414 = internal constant [105 x i8] c"cx18.parm=radio:Enable or disable the radio. Use only if autodetection\0A\09\09\09fails. 0 = disable, 1 = enable\00", section ".modinfo", align 1
@__UNIQUE_ID_cardtype415 = internal constant [498 x i8] c"cx18.parm=cardtype:Only use this option if your card is not detected properly.\0A\09\09Specify card type:\0A\09\09\09 1 = Hauppauge HVR 1600 (ESMT memory)\0A\09\09\09 2 = Hauppauge HVR 1600 (Samsung memory)\0A\09\09\09 3 = Compro VideoMate H900\0A\09\09\09 4 = Yuan MPC718\0A\09\09\09 5 = Conexant Raptor PAL/SECAM\0A\09\09\09 6 = Toshiba Qosmio DVB-T/Analog\0A\09\09\09 7 = Leadtek WinFast PVR2100\0A\09\09\09 8 = Leadtek WinFast DVR3100 H\0A\09\09\09 9 = GoTView PCI DVD3 Hybrid\0A\09\09\09 10 = Hauppauge HVR 1600 (S5H1411)\0A\09\09\09 0 = Autodetect (default)\0A\09\09\09-1 = Ignore this card\0A\09\09\00", section ".modinfo", align 1
@__UNIQUE_ID_pal416 = internal constant [63 x i8] c"cx18.parm=pal:Set PAL standard: B, G, H, D, K, I, M, N, Nc, 60\00", section ".modinfo", align 1
@__UNIQUE_ID_secam417 = internal constant [57 x i8] c"cx18.parm=secam:Set SECAM standard: B, G, H, D, K, L, LC\00", section ".modinfo", align 1
@__UNIQUE_ID_ntsc418 = internal constant [42 x i8] c"cx18.parm=ntsc:Set NTSC standard: M, J, K\00", section ".modinfo", align 1
@__UNIQUE_ID_debug419 = internal constant [242 x i8] c"cx18.parm=debug:Debug level (bitmask). Default: 0\0A\09\09\09  1/0x0001: warning\0A\09\09\09  2/0x0002: info\0A\09\09\09  4/0x0004: mailbox\0A\09\09\09  8/0x0008: dma\0A\09\09\09 16/0x0010: ioctl\0A\09\09\09 32/0x0020: file\0A\09\09\09 64/0x0040: i2c\0A\09\09\09128/0x0080: irq\0A\09\09\09256/0x0100: high volume\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_cx18_pci_latency420 = internal constant [99 x i8] c"cx18.parm=cx18_pci_latency:Change the PCI latency to 64 if lower: 0 = No, 1 = Yes,\0A\09\09\09Default: Yes\00", section ".modinfo", align 1
@__UNIQUE_ID_retry_mmio421 = internal constant [105 x i8] c"cx18.parm=retry_mmio:(Deprecated) MMIO writes are now always checked and retried\0A\09\09\09Effectively: 1 [Yes]\00", section ".modinfo", align 1
@__UNIQUE_ID_mmio_ndelay422 = internal constant [102 x i8] c"cx18.parm=mmio_ndelay:(Deprecated) MMIO accesses are now never purposely delayed\0A\09\09\09Effectively: 0 ns\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_ts_buffers423 = internal constant [97 x i8] c"cx18.parm=enc_ts_buffers:Encoder TS buffer memory (MB). (enc_ts_bufs can override)\0A\09\09\09Default: 1\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_ts_bufsize424 = internal constant [74 x i8] c"cx18.parm=enc_ts_bufsize:Size of an encoder TS buffer (kB)\0A\09\09\09Default: 32\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_ts_bufs425 = internal constant [105 x i8] c"cx18.parm=enc_ts_bufs:Number of encoder TS buffers\0A\09\09\09Default is computed from other enc_ts_* parameters\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_mpg_buffers426 = internal constant [100 x i8] c"cx18.parm=enc_mpg_buffers:Encoder MPG buffer memory (MB). (enc_mpg_bufs can override)\0A\09\09\09Default: 2\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_mpg_bufsize427 = internal constant [76 x i8] c"cx18.parm=enc_mpg_bufsize:Size of an encoder MPG buffer (kB)\0A\09\09\09Default: 32\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_mpg_bufs428 = internal constant [108 x i8] c"cx18.parm=enc_mpg_bufs:Number of encoder MPG buffers\0A\09\09\09Default is computed from other enc_mpg_* parameters\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_idx_buffers429 = internal constant [147 x i8] c"cx18.parm=enc_idx_buffers:(Deprecated) Encoder IDX buffer memory (MB)\0A\09\09\09Ignored, except 0 disables IDX buffer allocations\0A\09\09\09Default: 1 [Enabled]\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_idx_bufsize430 = internal constant [181 x i8] c"cx18.parm=enc_idx_bufsize:Size of an encoder IDX buffer (kB)\0A\09\09\09Allowed values are multiples of 1.5 kB rounded up\0A\09\09\09(multiples of size required for 64 index entries)\0A\09\09\09Default: 2\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_idx_bufs431 = internal constant [68 x i8] c"cx18.parm=enc_idx_bufs:Number of encoder IDX buffers\0A\09\09\09Default: 63\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_yuv_buffers432 = internal constant [100 x i8] c"cx18.parm=enc_yuv_buffers:Encoder YUV buffer memory (MB). (enc_yuv_bufs can override)\0A\09\09\09Default: 2\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_yuv_bufsize433 = internal constant [184 x i8] c"cx18.parm=enc_yuv_bufsize:Size of an encoder YUV buffer (kB)\0A\09\09\09Allowed values are multiples of 33.75 kB rounded up\0A\09\09\09(multiples of size required for 32 screen lines)\0A\09\09\09Default: 102\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_yuv_bufs434 = internal constant [108 x i8] c"cx18.parm=enc_yuv_bufs:Number of encoder YUV buffers\0A\09\09\09Default is computed from other enc_yuv_* parameters\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_vbi_buffers435 = internal constant [100 x i8] c"cx18.parm=enc_vbi_buffers:Encoder VBI buffer memory (MB). (enc_vbi_bufs can override)\0A\09\09\09Default: 1\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_vbi_bufs436 = internal constant [97 x i8] c"cx18.parm=enc_vbi_bufs:Number of encoder VBI buffers\0A\09\09\09Default is computed from enc_vbi_buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_pcm_buffers437 = internal constant [100 x i8] c"cx18.parm=enc_pcm_buffers:Encoder PCM buffer memory (MB). (enc_pcm_bufs can override)\0A\09\09\09Default: 1\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_pcm_bufsize438 = internal constant [75 x i8] c"cx18.parm=enc_pcm_bufsize:Size of an encoder PCM buffer (kB)\0A\09\09\09Default: 4\00", section ".modinfo", align 1
@__UNIQUE_ID_enc_pcm_bufs439 = internal constant [108 x i8] c"cx18.parm=enc_pcm_bufs:Number of encoder PCM buffers\0A\09\09\09Default is computed from other enc_pcm_* parameters\00", section ".modinfo", align 1
@__UNIQUE_ID_cx18_first_minor440 = internal constant [73 x i8] c"cx18.parm=cx18_first_minor:Set device node number assigned to first card\00", section ".modinfo", align 1
@__UNIQUE_ID_author441 = internal constant [25 x i8] c"cx18.author=Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_description442 = internal constant [32 x i8] c"cx18.description=CX23418 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file443 = internal constant [38 x i8] c"cx18.file=drivers/media/pci/cx18/cx18\00", section ".modinfo", align 1
@__UNIQUE_ID_license444 = internal constant [17 x i8] c"cx18.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version445 = internal constant [19 x i8] c"cx18.version=1.5.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cx18\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.5.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/pci/cx18/cx18-driver.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx18 tveeprom tmp\00", [46 x i8] zeroinitializer }, align 32
@cx18_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: eeprom PCI ID: %02x%02x:%02x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_read_eeprom\00", [47 x i8] zeroinitializer }, align 32
@cx18_read_eeprom._entry_ptr = internal global ptr @cx18_read_eeprom._entry, section ".printk_index", align 4
@cx18_init_on_first_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Retry loading firmware\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx18_init_on_first_open\00", [40 x i8] zeroinitializer }, align 32
@cx18_init_on_first_open._entry_ptr = internal global ptr @cx18_init_on_first_open._entry, section ".printk_index", align 4
@cx18_init_on_first_open._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_init_on_first_open._entry_ptr.10 = internal global ptr @cx18_init_on_first_open._entry.9, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx18_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cx18_pci_tbl, ptr @cx18_probe, ptr @cx18_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cx18__447_1341_module_start6 = internal global ptr @module_start, section ".initcall6.init", align 4
@__exitcall_module_cleanup = internal global ptr @module_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_firmware448 = internal constant [28 x i8] c"cx18.firmware=xc3028-v27.fw\00", section ".modinfo", align 1
@tuner_c = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@tuner = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@radio_c = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@radio = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cardtype_c = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@cardtype = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@pal = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@secam = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@ntsc = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx18_eeprom_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: eeprom dump:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_eeprom_dump\00", [47 x i8] zeroinitializer }, align 32
@cx18_eeprom_dump._entry_ptr = internal global ptr @cx18_eeprom_dump._entry, section ".printk_index", align 4
@cx18_eeprom_dump._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: eeprom %02x:\00", [45 x i8] zeroinitializer }, align 32
@cx18_eeprom_dump._entry_ptr.15 = internal global ptr @cx18_eeprom_dump._entry.13, section ".printk_index", align 4
@cx18_eeprom_dump._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@cx18_eeprom_dump._entry_ptr.18 = internal global ptr @cx18_eeprom_dump._entry.16, section ".printk_index", align 4
@cx18_eeprom_dump._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@cx18_eeprom_dump._entry_ptr.21 = internal global ptr @cx18_eeprom_dump._entry.19, section ".printk_index", align 4
@cx18_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5361, i32 23418, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cx18_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@cx18_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cx18: cannot manage card %d, driver has a limit of 0 - %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cx18_probe\00", [21 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr = internal global ptr @cx18_probe._entry, section ".printk_index", align 4
@cx18_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cx18: v4l2_device_register of card %d failed\0A\00", [48 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.26 = internal global ptr @cx18_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx18-%d\00", [24 x i8] zeroinitializer }, align 32
@cx18_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.3, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Initializing card %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.30 = internal global ptr @cx18_probe._entry.28, section ".printk_index", align 4
@cx18_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.3, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  info: base addr: 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.33 = internal global ptr @cx18_probe._entry.31, section ".printk_index", align 4
@cx18_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.3, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s:  info: attempting ioremap at 0x%llx len 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.36 = internal global ptr @cx18_probe._entry.34, section ".printk_index", align 4
@cx18_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.3, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s: ioremap failed. Can't get a window into CX23418 memory and register space\0A\00", [47 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.39 = internal global ptr @cx18_probe._entry.37, section ".printk_index", align 4
@cx18_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.23, ptr @.str.3, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013%s: Each capture card with a CX23418 needs 64 MB of vmalloc address space for the window\0A\00", [36 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.42 = internal global ptr @cx18_probe._entry.40, section ".printk_index", align 4
@cx18_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.23, ptr @.str.3, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Check the output of 'grep Vmalloc /proc/meminfo'\0A\00", [40 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.45 = internal global ptr @cx18_probe._entry.43, section ".printk_index", align 4
@cx18_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.23, ptr @.str.3, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013%s: Use the vmalloc= kernel command line option to set VmallocTotal to a larger value\0A\00", [39 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.48 = internal global ptr @cx18_probe._entry.46, section ".printk_index", align 4
@cx18_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.23, ptr @.str.3, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: cx23418 revision %08x (A)\0A\00", [63 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.51 = internal global ptr @cx18_probe._entry.49, section ".printk_index", align 4
@cx18_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.23, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: cx23418 revision %08x (B)\0A\00", [63 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.54 = internal global ptr @cx18_probe._entry.52, section ".printk_index", align 4
@cx18_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.23, ptr @.str.3, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: cx23418 revision %08x (Unknown)\0A\00", [57 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.57 = internal global ptr @cx18_probe._entry.55, section ".printk_index", align 4
@cx18_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.23, ptr @.str.3, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Could not register A/V decoder subdevice\0A\00", [48 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.60 = internal global ptr @cx18_probe._entry.58, section ".printk_index", align 4
@cx18_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.23, ptr @.str.3, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014%s: Could not register GPIO reset controllersubdevice; proceeding anyway.\0A\00", [51 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.63 = internal global ptr @cx18_probe._entry.61, section ".printk_index", align 4
@cx18_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.23, ptr @.str.3, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  info: activating i2c...\0A\00", [32 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.66 = internal global ptr @cx18_probe._entry.64, section ".printk_index", align 4
@cx18_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.23, ptr @.str.3, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Could not initialize i2c\0A\00", [32 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.69 = internal global ptr @cx18_probe._entry.67, section ".printk_index", align 4
@cx18_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.23, ptr @.str.3, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s: %s\00", [23 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.72 = internal global ptr @cx18_probe._entry.70, section ".printk_index", align 4
@cx18_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.23, ptr @.str.3, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Failed to register irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.75 = internal global ptr @cx18_probe._entry.73, section ".printk_index", align 4
@cx18_probe.ctrl = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.76, i32 64, i32 0, i32 0, i8 0, i32 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@cx18_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.23, ptr @.str.3, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error %d setting up streams\0A\00", [61 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.79 = internal global ptr @cx18_probe._entry.77, section ".printk_index", align 4
@cx18_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.23, ptr @.str.3, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error %d registering devices\0A\00", [60 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.82 = internal global ptr @cx18_probe._entry.80, section ".printk_index", align 4
@cx18_probe._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.23, ptr @.str.3, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Initialized card: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.85 = internal global ptr @cx18_probe._entry.83, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@cx18_probe._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.23, ptr @.str.3, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Error %d on initialization\0A\00", [62 x i8] zeroinitializer }, align 32
@cx18_probe._entry_ptr.88 = internal global ptr @cx18_probe._entry.86, section ".printk_index", align 4
@cx18_process_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s:  info: Stream type %d options: %d MB, %d buffers, %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx18_process_options\00", [43 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr = internal global ptr @cx18_process_options._entry, section ".printk_index", align 4
@cx18_process_options._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Ignore card\0A\00", [45 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.93 = internal global ptr @cx18_process_options._entry.91, section ".printk_index", align 4
@cx18_process_options._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.3, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: User specified %s card\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.96 = internal global ptr @cx18_process_options._entry.94, section ".printk_index", align 4
@cx18_process_options._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.3, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Unknown user specified type, trying to autodetect card\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.99 = internal global ptr @cx18_process_options._entry.97, section ".printk_index", align 4
@cx18_process_options._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Autodetected Hauppauge card\0A\00", [61 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.102 = internal global ptr @cx18_process_options._entry.100, section ".printk_index", align 4
@cx18_process_options._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.90, ptr @.str.3, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Autodetected %s card\0A\00", [36 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.105 = internal global ptr @cx18_process_options._entry.103, section ".printk_index", align 4
@cx18_process_options._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.90, ptr @.str.3, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Unknown card: vendor/device: [%04x:%04x]\0A\00", [48 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.108 = internal global ptr @cx18_process_options._entry.106, section ".printk_index", align 4
@cx18_process_options._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.90, ptr @.str.3, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s:               subsystem vendor/device: [%04x:%04x]\0A\00", [38 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.111 = internal global ptr @cx18_process_options._entry.109, section ".printk_index", align 4
@cx18_process_options._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.90, ptr @.str.3, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Defaulting to %s card\0A\00", [35 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.114 = internal global ptr @cx18_process_options._entry.112, section ".printk_index", align 4
@cx18_process_options._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.90, ptr @.str.3, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013%s: Please mail the vendor/device and subsystem vendor/device IDs and what kind of\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.117 = internal global ptr @cx18_process_options._entry.115, section ".printk_index", align 4
@cx18_process_options._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.90, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: card you have to the linux-media mailinglist (www.linuxtv.org)\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.120 = internal global ptr @cx18_process_options._entry.118, section ".printk_index", align 4
@cx18_process_options._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.90, ptr @.str.3, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: Prefix your subject line with [UNKNOWN CX18 CARD].\0A\00", [38 x i8] zeroinitializer }, align 32
@cx18_process_options._entry_ptr.123 = internal global ptr @cx18_process_options._entry.121, section ".printk_index", align 4
@cx18_parse_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: pal= argument not recognised\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_parse_std\00", [17 x i8] zeroinitializer }, align 32
@cx18_parse_std._entry_ptr = internal global ptr @cx18_parse_std._entry, section ".printk_index", align 4
@cx18_parse_std._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: secam= argument not recognised\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_parse_std._entry_ptr.128 = internal global ptr @cx18_parse_std._entry.126, section ".printk_index", align 4
@cx18_parse_std._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.3, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: ntsc= argument not recognised\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_parse_std._entry_ptr.131 = internal global ptr @cx18_parse_std._entry.129, section ".printk_index", align 4
@cx18_init_struct1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cx->serialize_lock\00", [44 x i8] zeroinitializer }, align 32
@cx18_init_struct1.__key.133 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cx->gpio_lock\00", [17 x i8] zeroinitializer }, align 32
@cx18_init_struct1.__key.135 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cx->epu2apu_mb_lock\00", [43 x i8] zeroinitializer }, align 32
@cx18_init_struct1.__key.137 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cx->epu2cpu_mb_lock\00", [43 x i8] zeroinitializer }, align 32
@cx18_cxhdl_ops = external dso_local constant %struct.cx2341x_handler_ops, align 4
@cx18_init_struct1.__key.139 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cx->cap_w\00", [21 x i8] zeroinitializer }, align 32
@cx18_init_struct1.__key.141 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cx->mb_apu_waitq\00", [46 x i8] zeroinitializer }, align 32
@cx18_init_struct1.__key.143 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cx->mb_cpu_waitq\00", [46 x i8] zeroinitializer }, align 32
@cx18_init_struct1.__key.145 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cx->dma_waitq\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-in\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cx18_create_in_workq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Unable to create incoming mailbox handler thread\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx18_create_in_workq\00", [43 x i8] zeroinitializer }, align 32
@cx18_create_in_workq._entry_ptr = internal global ptr @cx18_create_in_workq._entry, section ".printk_index", align 4
@cx18_init_in_work_orders.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&cx->in_work_order[i].work)\00", [50 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: Enabling pci device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_setup_pci\00", [17 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry_ptr = internal global ptr @cx18_setup_pci._entry, section ".printk_index", align 4
@cx18_setup_pci._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.3, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Can't enable device %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry_ptr.156 = internal global ptr @cx18_setup_pci._entry.154, section ".printk_index", align 4
@cx18_setup_pci._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.3, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: No suitable DMA available, card %d\0A\00", [54 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry_ptr.159 = internal global ptr @cx18_setup_pci._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx18 encoder\00", [19 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.153, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: Cannot request encoder memory region, card %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry_ptr.163 = internal global ptr @cx18_setup_pci._entry.161, section ".printk_index", align 4
@cx18_setup_pci._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.153, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: Unreasonably low latency timer, setting to 64 (was %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry_ptr.166 = internal global ptr @cx18_setup_pci._entry.164, section ".printk_index", align 4
@cx18_setup_pci._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.153, ptr @.str.3, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016%s:  info: cx%d (rev %d) at %02x:%02x.%x, irq: %d, latency: %d, memory: 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@cx18_setup_pci._entry_ptr.169 = internal global ptr @cx18_setup_pci._entry.167, section ".printk_index", align 4
@cx18_process_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Unknown EEPROM encoding\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx18_process_eeprom\00", [44 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr = internal global ptr @cx18_process_eeprom._entry, section ".printk_index", align 4
@cx18_process_eeprom._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: Invalid EEPROM\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.174 = internal global ptr @cx18_process_eeprom._entry.172, section ".printk_index", align 4
@cx18_process_eeprom._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: Unknown model %d, defaulting to original HVR-1600 (cardtype=1)\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.177 = internal global ptr @cx18_process_eeprom._entry.175, section ".printk_index", align 4
@cx18_process_eeprom._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Autodetected %s\0A\00", [41 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.180 = internal global ptr @cx18_process_eeprom._entry.178, section ".printk_index", align 4
@cx18_process_eeprom._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.171, ptr @.str.3, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: tveeprom cannot autodetect tuner!\0A\00", [55 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.183 = internal global ptr @cx18_process_eeprom._entry.181, section ".printk_index", align 4
@cx18_process_eeprom._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.171, ptr @.str.3, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s:  info: Worldwide tuner detected\0A\00", [57 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.186 = internal global ptr @cx18_process_eeprom._entry.184, section ".printk_index", align 4
@cx18_process_eeprom._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.171, ptr @.str.3, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  info: PAL tuner detected\0A\00", [63 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.189 = internal global ptr @cx18_process_eeprom._entry.187, section ".printk_index", align 4
@cx18_process_eeprom._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.171, ptr @.str.3, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: NTSC tuner detected\0A\00", [62 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.192 = internal global ptr @cx18_process_eeprom._entry.190, section ".printk_index", align 4
@cx18_process_eeprom._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.171, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:  info: SECAM tuner detected\0A\00", [61 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.195 = internal global ptr @cx18_process_eeprom._entry.193, section ".printk_index", align 4
@cx18_process_eeprom._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.171, ptr @.str.3, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: No tuner detected, default to NTSC-M\0A\00", [52 x i8] zeroinitializer }, align 32
@cx18_process_eeprom._entry_ptr.198 = internal global ptr @cx18_process_eeprom._entry.196, section ".printk_index", align 4
@cx18_iounmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  info: releasing enc_mem\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx18_iounmap\00", [19 x i8] zeroinitializer }, align 32
@cx18_iounmap._entry_ptr = internal global ptr @cx18_iounmap._entry, section ".printk_index", align 4
@cx18_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.3, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:  info: Removing Card\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx18_remove\00", [20 x i8] zeroinitializer }, align 32
@cx18_remove._entry_ptr = internal global ptr @cx18_remove._entry, section ".printk_index", align 4
@cx18_remove._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.3, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:  info: Stopping all streams\0A\00", [61 x i8] zeroinitializer }, align 32
@cx18_remove._entry_ptr.205 = internal global ptr @cx18_remove._entry.203, section ".printk_index", align 4
@cx18_remove._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str.3, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Removed %s\0A\00", [46 x i8] zeroinitializer }, align 32
@cx18_remove._entry_ptr.208 = internal global ptr @cx18_remove._entry.206, section ".printk_index", align 4
@module_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.3, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx18:  Start initialization, version %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"module_start\00", [19 x i8] zeroinitializer }, align 32
@module_start._entry_ptr = internal global ptr @module_start._entry, section ".printk_index", align 4
@module_start._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.3, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cx18:  Exiting, cx18_first_minor must be between 0 and %d\0A\00", [35 x i8] zeroinitializer }, align 32
@module_start._entry_ptr.213 = internal global ptr @module_start._entry.211, section ".printk_index", align 4
@module_start._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.210, ptr @.str.3, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016cx18:   Debug value must be >= 0 and <= 511!\0A\00", [48 x i8] zeroinitializer }, align 32
@module_start._entry_ptr.216 = internal global ptr @module_start._entry.214, section ".printk_index", align 4
@module_start._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.210, ptr @.str.3, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cx18:   Error detecting PCI card\0A\00", [60 x i8] zeroinitializer }, align 32
@module_start._entry_ptr.219 = internal global ptr @module_start._entry.217, section ".printk_index", align 4
@module_start._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.210, ptr @.str.3, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cx18:  End initialization\0A\00", [35 x i8] zeroinitializer }, align 32
@module_start._entry_ptr.222 = internal global ptr @module_start._entry.220, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.224 = internal global [20 x i64] [i64 18, i64 8, i64 45, i64 54, i64 66, i64 68, i64 71, i64 72, i64 73, i64 75, i64 77, i64 78, i64 98, i64 100, i64 103, i64 104, i64 105, i64 107, i64 109, i64 110]
@__sancov_gen_cov_switch_values.225 = internal global [15 x i64] [i64 13, i64 8, i64 45, i64 66, i64 68, i64 71, i64 72, i64 75, i64 76, i64 98, i64 100, i64 103, i64 104, i64 107, i64 108]
@__sancov_gen_cov_switch_values.226 = internal global [9 x i64] [i64 7, i64 8, i64 45, i64 74, i64 75, i64 77, i64 106, i64 107, i64 109]
@__sancov_gen_cov_switch_values.227 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1816, i64 74021, i64 74031, i64 74041, i64 74141, i64 74301, i64 74321, i64 74351, i64 74361, i64 74541, i64 74551, i64 74591, i64 74651, i64 74691, i64 74751, i64 74891, i64 4294967295]
@__sancov_gen_cov_switch_values.228 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 8, i64 16, i64 32, i64 64]
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"cx18_ext_init\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 38, i32 7 }
@___asan_gen_.232 = private unnamed_addr constant [11 x i8] c"cx18_debug\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 96, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant [12 x i8] c"mmio_ndelay\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 93, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant [11 x i8] c"retry_mmio\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 94, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"cx18_pci_latency\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 91, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"cx18_first_minor\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 35, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant [15 x i8] c"enc_ts_buffers\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 70, i32 12 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"enc_mpg_buffers\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 71, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"enc_idx_buffers\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 72, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"enc_yuv_buffers\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 73, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"enc_vbi_buffers\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 74, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"enc_pcm_buffers\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 75, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant [15 x i8] c"enc_ts_bufsize\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 77, i32 12 }
@___asan_gen_.268 = private unnamed_addr constant [16 x i8] c"enc_mpg_bufsize\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 78, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant [16 x i8] c"enc_idx_bufsize\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 79, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant [16 x i8] c"enc_yuv_bufsize\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 80, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant [16 x i8] c"enc_pcm_bufsize\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 81, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"enc_ts_bufs\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 83, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant [13 x i8] c"enc_mpg_bufs\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 84, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant [13 x i8] c"enc_idx_bufs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 85, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant [13 x i8] c"enc_yuv_bufs\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 86, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant [13 x i8] c"enc_vbi_bufs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 87, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"enc_pcm_bufs\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 88, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 237, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 274, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 321, i32 19 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 338, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1155, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1186, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant [16 x i8] c"cx18_pci_driver\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1304, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant [8 x i8] c"tuner_c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 63, i32 17 }
@___asan_gen_.340 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 54, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant [8 x i8] c"radio_c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 64, i32 17 }
@___asan_gen_.346 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 58, i32 12 }
@___asan_gen_.349 = private unnamed_addr constant [11 x i8] c"cardtype_c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 62, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant [9 x i8] c"cardtype\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 53, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 65, i32 13 }
@___asan_gen_.358 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 66, i32 13 }
@___asan_gen_.361 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 67, i32 13 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 299, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 302, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 303, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 305, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant [13 x i8] c"cx18_pci_tbl\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 42, i32 35 }
@___asan_gen_.394 = private unnamed_addr constant [14 x i8] c"cx18_instance\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 50, i32 17 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 897, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 911, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 916, i32 57 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 918, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 930, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 938, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 943, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 944, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 945, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 946, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 954, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 957, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 960, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 975, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 982, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 988, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 991, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1009, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1021, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1079, i32 30 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1080, i32 14 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1099, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1104, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1108, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1127, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 623, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 634, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 639, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 641, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 645, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 662, i32 5 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 671, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 673, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 676, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 677, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 678, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 679, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 474, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 499, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 516, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 719, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 720, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 721, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 722, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 750, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 751, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 752, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 753, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 688, i32 57 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 690, i32 22 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 692, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 704, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 801, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 804, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 808, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 811, i32 7 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 812, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 826, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 832, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 387, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 390, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 393, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 403, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 406, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 425, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 428, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 431, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 434, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 437, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 289, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1255, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1260, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1296, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1313, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1318, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1325, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1329, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.872 = private constant [40 x i8] c"../drivers/media/pci/cx18/cx18-driver.c\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.872, i32 1332, i32 2 }
@llvm.compiler.used = appending global [380 x ptr] [ptr @__UNIQUE_ID_author441, ptr @__UNIQUE_ID_cardtype415, ptr @__UNIQUE_ID_cardtypetype387, ptr @__UNIQUE_ID_cx18_first_minor440, ptr @__UNIQUE_ID_cx18_first_minortype395, ptr @__UNIQUE_ID_cx18_pci_latency420, ptr @__UNIQUE_ID_cx18_pci_latencytype394, ptr @__UNIQUE_ID_debug419, ptr @__UNIQUE_ID_debugtype391, ptr @__UNIQUE_ID_description442, ptr @__UNIQUE_ID_enc_idx_buffers429, ptr @__UNIQUE_ID_enc_idx_bufferstype398, ptr @__UNIQUE_ID_enc_idx_bufs431, ptr @__UNIQUE_ID_enc_idx_bufsize430, ptr @__UNIQUE_ID_enc_idx_bufsizetype404, ptr @__UNIQUE_ID_enc_idx_bufstype409, ptr @__UNIQUE_ID_enc_mpg_buffers426, ptr @__UNIQUE_ID_enc_mpg_bufferstype397, ptr @__UNIQUE_ID_enc_mpg_bufs428, ptr @__UNIQUE_ID_enc_mpg_bufsize427, ptr @__UNIQUE_ID_enc_mpg_bufsizetype403, ptr @__UNIQUE_ID_enc_mpg_bufstype408, ptr @__UNIQUE_ID_enc_pcm_buffers437, ptr @__UNIQUE_ID_enc_pcm_bufferstype401, ptr @__UNIQUE_ID_enc_pcm_bufs439, ptr @__UNIQUE_ID_enc_pcm_bufsize438, ptr @__UNIQUE_ID_enc_pcm_bufsizetype406, ptr @__UNIQUE_ID_enc_pcm_bufstype412, ptr @__UNIQUE_ID_enc_ts_buffers423, ptr @__UNIQUE_ID_enc_ts_bufferstype396, ptr @__UNIQUE_ID_enc_ts_bufs425, ptr @__UNIQUE_ID_enc_ts_bufsize424, ptr @__UNIQUE_ID_enc_ts_bufsizetype402, ptr @__UNIQUE_ID_enc_ts_bufstype407, ptr @__UNIQUE_ID_enc_vbi_buffers435, ptr @__UNIQUE_ID_enc_vbi_bufferstype400, ptr @__UNIQUE_ID_enc_vbi_bufs436, ptr @__UNIQUE_ID_enc_vbi_bufstype411, ptr @__UNIQUE_ID_enc_yuv_buffers432, ptr @__UNIQUE_ID_enc_yuv_bufferstype399, ptr @__UNIQUE_ID_enc_yuv_bufs434, ptr @__UNIQUE_ID_enc_yuv_bufsize433, ptr @__UNIQUE_ID_enc_yuv_bufsizetype405, ptr @__UNIQUE_ID_enc_yuv_bufstype410, ptr @__UNIQUE_ID_file443, ptr @__UNIQUE_ID_firmware448, ptr @__UNIQUE_ID_license444, ptr @__UNIQUE_ID_mmio_ndelay422, ptr @__UNIQUE_ID_mmio_ndelaytype392, ptr @__UNIQUE_ID_ntsc418, ptr @__UNIQUE_ID_ntsctype390, ptr @__UNIQUE_ID_pal416, ptr @__UNIQUE_ID_paltype388, ptr @__UNIQUE_ID_radio414, ptr @__UNIQUE_ID_radiotype386, ptr @__UNIQUE_ID_retry_mmio421, ptr @__UNIQUE_ID_retry_mmiotype393, ptr @__UNIQUE_ID_secam417, ptr @__UNIQUE_ID_secamtype389, ptr @__UNIQUE_ID_tuner413, ptr @__UNIQUE_ID_tunertype385, ptr @__UNIQUE_ID_version445, ptr @__exitcall_module_cleanup, ptr @__initcall__kmod_cx18__447_1341_module_start6, ptr @__ksymtab_cx18_ext_init, ptr @__modver_attr, ptr @__param_cardtype, ptr @__param_cx18_first_minor, ptr @__param_cx18_pci_latency, ptr @__param_debug, ptr @__param_enc_idx_buffers, ptr @__param_enc_idx_bufs, ptr @__param_enc_idx_bufsize, ptr @__param_enc_mpg_buffers, ptr @__param_enc_mpg_bufs, ptr @__param_enc_mpg_bufsize, ptr @__param_enc_pcm_buffers, ptr @__param_enc_pcm_bufs, ptr @__param_enc_pcm_bufsize, ptr @__param_enc_ts_buffers, ptr @__param_enc_ts_bufs, ptr @__param_enc_ts_bufsize, ptr @__param_enc_vbi_buffers, ptr @__param_enc_vbi_bufs, ptr @__param_enc_yuv_buffers, ptr @__param_enc_yuv_bufs, ptr @__param_enc_yuv_bufsize, ptr @__param_mmio_ndelay, ptr @__param_ntsc, ptr @__param_pal, ptr @__param_radio, ptr @__param_retry_mmio, ptr @__param_secam, ptr @__param_tuner, ptr @cx18_create_in_workq._entry, ptr @cx18_create_in_workq._entry_ptr, ptr @cx18_eeprom_dump._entry, ptr @cx18_eeprom_dump._entry.13, ptr @cx18_eeprom_dump._entry.16, ptr @cx18_eeprom_dump._entry.19, ptr @cx18_eeprom_dump._entry_ptr, ptr @cx18_eeprom_dump._entry_ptr.15, ptr @cx18_eeprom_dump._entry_ptr.18, ptr @cx18_eeprom_dump._entry_ptr.21, ptr @cx18_init_on_first_open._entry, ptr @cx18_init_on_first_open._entry.9, ptr @cx18_init_on_first_open._entry_ptr, ptr @cx18_init_on_first_open._entry_ptr.10, ptr @cx18_iounmap._entry, ptr @cx18_iounmap._entry_ptr, ptr @cx18_parse_std._entry, ptr @cx18_parse_std._entry.126, ptr @cx18_parse_std._entry.129, ptr @cx18_parse_std._entry_ptr, ptr @cx18_parse_std._entry_ptr.128, ptr @cx18_parse_std._entry_ptr.131, ptr @cx18_probe._entry, ptr @cx18_probe._entry.24, ptr @cx18_probe._entry.28, ptr @cx18_probe._entry.31, ptr @cx18_probe._entry.34, ptr @cx18_probe._entry.37, ptr @cx18_probe._entry.40, ptr @cx18_probe._entry.43, ptr @cx18_probe._entry.46, ptr @cx18_probe._entry.49, ptr @cx18_probe._entry.52, ptr @cx18_probe._entry.55, ptr @cx18_probe._entry.58, ptr @cx18_probe._entry.61, ptr @cx18_probe._entry.64, ptr @cx18_probe._entry.67, ptr @cx18_probe._entry.70, ptr @cx18_probe._entry.73, ptr @cx18_probe._entry.77, ptr @cx18_probe._entry.80, ptr @cx18_probe._entry.83, ptr @cx18_probe._entry.86, ptr @cx18_probe._entry_ptr, ptr @cx18_probe._entry_ptr.26, ptr @cx18_probe._entry_ptr.30, ptr @cx18_probe._entry_ptr.33, ptr @cx18_probe._entry_ptr.36, ptr @cx18_probe._entry_ptr.39, ptr @cx18_probe._entry_ptr.42, ptr @cx18_probe._entry_ptr.45, ptr @cx18_probe._entry_ptr.48, ptr @cx18_probe._entry_ptr.51, ptr @cx18_probe._entry_ptr.54, ptr @cx18_probe._entry_ptr.57, ptr @cx18_probe._entry_ptr.60, ptr @cx18_probe._entry_ptr.63, ptr @cx18_probe._entry_ptr.66, ptr @cx18_probe._entry_ptr.69, ptr @cx18_probe._entry_ptr.72, ptr @cx18_probe._entry_ptr.75, ptr @cx18_probe._entry_ptr.79, ptr @cx18_probe._entry_ptr.82, ptr @cx18_probe._entry_ptr.85, ptr @cx18_probe._entry_ptr.88, ptr @cx18_process_eeprom._entry, ptr @cx18_process_eeprom._entry.172, ptr @cx18_process_eeprom._entry.175, ptr @cx18_process_eeprom._entry.178, ptr @cx18_process_eeprom._entry.181, ptr @cx18_process_eeprom._entry.184, ptr @cx18_process_eeprom._entry.187, ptr @cx18_process_eeprom._entry.190, ptr @cx18_process_eeprom._entry.193, ptr @cx18_process_eeprom._entry.196, ptr @cx18_process_eeprom._entry_ptr, ptr @cx18_process_eeprom._entry_ptr.174, ptr @cx18_process_eeprom._entry_ptr.177, ptr @cx18_process_eeprom._entry_ptr.180, ptr @cx18_process_eeprom._entry_ptr.183, ptr @cx18_process_eeprom._entry_ptr.186, ptr @cx18_process_eeprom._entry_ptr.189, ptr @cx18_process_eeprom._entry_ptr.192, ptr @cx18_process_eeprom._entry_ptr.195, ptr @cx18_process_eeprom._entry_ptr.198, ptr @cx18_process_options._entry, ptr @cx18_process_options._entry.100, ptr @cx18_process_options._entry.103, ptr @cx18_process_options._entry.106, ptr @cx18_process_options._entry.109, ptr @cx18_process_options._entry.112, ptr @cx18_process_options._entry.115, ptr @cx18_process_options._entry.118, ptr @cx18_process_options._entry.121, ptr @cx18_process_options._entry.91, ptr @cx18_process_options._entry.94, ptr @cx18_process_options._entry.97, ptr @cx18_process_options._entry_ptr, ptr @cx18_process_options._entry_ptr.102, ptr @cx18_process_options._entry_ptr.105, ptr @cx18_process_options._entry_ptr.108, ptr @cx18_process_options._entry_ptr.111, ptr @cx18_process_options._entry_ptr.114, ptr @cx18_process_options._entry_ptr.117, ptr @cx18_process_options._entry_ptr.120, ptr @cx18_process_options._entry_ptr.123, ptr @cx18_process_options._entry_ptr.93, ptr @cx18_process_options._entry_ptr.96, ptr @cx18_process_options._entry_ptr.99, ptr @cx18_read_eeprom._entry, ptr @cx18_read_eeprom._entry_ptr, ptr @cx18_remove._entry, ptr @cx18_remove._entry.203, ptr @cx18_remove._entry.206, ptr @cx18_remove._entry_ptr, ptr @cx18_remove._entry_ptr.205, ptr @cx18_remove._entry_ptr.208, ptr @cx18_setup_pci._entry, ptr @cx18_setup_pci._entry.154, ptr @cx18_setup_pci._entry.157, ptr @cx18_setup_pci._entry.161, ptr @cx18_setup_pci._entry.164, ptr @cx18_setup_pci._entry.167, ptr @cx18_setup_pci._entry_ptr, ptr @cx18_setup_pci._entry_ptr.156, ptr @cx18_setup_pci._entry_ptr.159, ptr @cx18_setup_pci._entry_ptr.163, ptr @cx18_setup_pci._entry_ptr.166, ptr @cx18_setup_pci._entry_ptr.169, ptr @module_cleanup, ptr @module_start._entry, ptr @module_start._entry.211, ptr @module_start._entry.214, ptr @module_start._entry.217, ptr @module_start._entry.220, ptr @module_start._entry_ptr, ptr @module_start._entry_ptr.213, ptr @module_start._entry_ptr.216, ptr @module_start._entry_ptr.219, ptr @module_start._entry_ptr.222, ptr @cx18_ext_init, ptr @cx18_debug, ptr @mmio_ndelay, ptr @retry_mmio, ptr @cx18_pci_latency, ptr @cx18_first_minor, ptr @enc_ts_buffers, ptr @enc_mpg_buffers, ptr @enc_idx_buffers, ptr @enc_yuv_buffers, ptr @enc_vbi_buffers, ptr @enc_pcm_buffers, ptr @enc_ts_bufsize, ptr @enc_mpg_bufsize, ptr @enc_idx_bufsize, ptr @enc_yuv_bufsize, ptr @enc_pcm_bufsize, ptr @enc_ts_bufs, ptr @enc_mpg_bufs, ptr @enc_idx_bufs, ptr @enc_yuv_bufs, ptr @enc_vbi_bufs, ptr @enc_pcm_bufs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cx18_pci_driver, ptr @tuner_c, ptr @tuner, ptr @radio_c, ptr @radio, ptr @cardtype_c, ptr @cardtype, ptr @pal, ptr @secam, ptr @ntsc, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @cx18_pci_tbl, ptr @cx18_instance, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @cx18_probe.ctrl, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @cx18_init_struct1.__key, ptr @.str.132, ptr @cx18_init_struct1.__key.133, ptr @.str.134, ptr @cx18_init_struct1.__key.135, ptr @.str.136, ptr @cx18_init_struct1.__key.137, ptr @.str.138, ptr @cx18_init_struct1.__key.139, ptr @.str.140, ptr @cx18_init_struct1.__key.141, ptr @.str.142, ptr @cx18_init_struct1.__key.143, ptr @.str.144, ptr @cx18_init_struct1.__key.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @cx18_init_in_work_orders.__key, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.221], section "llvm.metadata"
@0 = internal global [215 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_ext_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmio_ndelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retry_mmio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_first_minor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_ts_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_mpg_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_idx_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_yuv_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_vbi_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_pcm_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_ts_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_mpg_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_idx_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_yuv_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_pcm_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_ts_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_mpg_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_idx_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_yuv_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_vbi_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_pcm_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_on_first_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_on_first_open._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardtype_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardtype to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secam to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_eeprom_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_eeprom_dump._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_eeprom_dump._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_eeprom_dump._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe.ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_probe._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_options._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_parse_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_parse_std._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_parse_std._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_struct1.__key.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_create_in_workq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_init_in_work_orders.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_setup_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_setup_pci._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_setup_pci._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_setup_pci._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_setup_pci._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_setup_pci._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_process_eeprom._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_iounmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_remove._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_remove._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_start._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_start._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_start._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_start._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_msleep_timeout(i32 noundef %msecs, i32 noundef %intr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %msecs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr)
  %tobool.not = icmp eq i32 %intr, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  br label %__here

__here:                                           ; preds = %cond.end.__here_crit_edge, %entry
  %timeout.0 = phi i32 [ %call2.i, %entry ], [ %call68, %cond.end.__here_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !600) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@cx18_msleep_timeout, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %cond, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !610
  %call68 = tail call i32 @schedule_timeout(i32 noundef %timeout.0) #12
  br i1 %tobool.not, label %__here.cond.end_crit_edge, label %cond.true

__here.cond.end_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %__here
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
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i86, label %cond.true.do.end79_crit_edge, !prof !611

cond.true.do.end79_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end79

if.end.i86:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  br label %cond.end

cond.end:                                         ; preds = %if.end.i86, %__here.cond.end_crit_edge
  %cond73 = phi i32 [ 0, %__here.cond.end_crit_edge ], [ %and1.i.i.i.i.i, %if.end.i86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond73)
  %tobool75.not = icmp ne i32 %cond73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool77.not = icmp eq i32 %call68, 0
  %or.cond = select i1 %tobool75.not, i1 true, i1 %tobool77.not
  br i1 %or.cond, label %cond.end.do.end79_crit_edge, label %cond.end.__here_crit_edge

cond.end.__here_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

cond.end.do.end79_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end79

do.end79:                                         ; preds = %cond.end.do.end79_crit_edge, %cond.true.do.end79_crit_edge
  %cond7392 = phi i32 [ %cond73, %cond.end.do.end79_crit_edge ], [ 1, %cond.true.do.end79_crit_edge ]
  ret i32 %cond7392
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_read_eeprom(ptr noundef %cx, ptr noundef %tv) local_unnamed_addr #1 align 64 {
entry:
  %eedata = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %eedata) #12
  %0 = call ptr @memset(ptr %eedata, i32 255, i32 256)
  %1 = call ptr @memset(ptr %tv, i32 0, i32 68)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 984) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i, i32 0, i32 2
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.4, i32 noundef 20) #12
  %i2c_adap = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 55
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c_adap, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 80, ptr %addr, align 2
  %call3 = call i32 @tveeprom_read(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %eedata, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.ret_crit_edge

if.end.ret_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret

if.end6:                                          ; preds = %if.end
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 0, label %if.end6.sw.bb_crit_edge
    i32 1, label %if.end6.sw.bb_crit_edge35
    i32 9, label %if.end6.sw.bb_crit_edge36
    i32 3, label %if.end6.sw.bb8_crit_edge
    i32 8, label %if.end6.sw.bb8_crit_edge37
  ]

if.end6.sw.bb8_crit_edge37:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

if.end6.sw.bb8_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

if.end6.sw.bb_crit_edge36:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end6.sw.bb_crit_edge35:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge35, %if.end6.sw.bb_crit_edge36
  call void @tveeprom_hauppauge_analog(ptr noundef %tv, ptr noundef nonnull %eedata) #12
  br label %ret

sw.bb8:                                           ; preds = %if.end6.sw.bb8_crit_edge, %if.end6.sw.bb8_crit_edge37
  %model = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 11
  %10 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1816, ptr %model, align 4
  call fastcc void @cx18_eeprom_dump(ptr noundef %cx, ptr noundef nonnull %eedata)
  %name10 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %eedata, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %12 to i32
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr %eedata, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr %eedata, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %eedata, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name10, i32 noundef %conv, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18) #16
  br label %ret

sw.default:                                       ; preds = %if.end6
  %model20 = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 11
  %19 = ptrtoint ptr %model20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %model20, align 4
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.default
  %i.05.i = phi i32 [ 0, %sw.default ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.i = and i32 %i.05.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %do.end12.thread.i, label %do.end12.i

do.end12.thread.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %i.05.i) #16
  %arrayidx1.i = getelementptr i8, ptr %eedata, i32 %i.05.i
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %21 to i32
  %call143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv2.i) #16
  br label %for.inc.i

do.end12.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %eedata, i32 %i.05.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem.i)
  %cmp16.i = icmp eq i32 %rem.i, 15
  br i1 %cmp16.i, label %do.end21.i, label %do.end12.i.for.inc.i_crit_edge

do.end12.i.for.inc.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end21.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end21.i, %do.end12.i.for.inc.i_crit_edge, %do.end12.thread.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.ret_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.ret_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret

ret:                                              ; preds = %for.inc.i.ret_crit_edge, %sw.bb8, %sw.bb, %if.end.ret_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ret, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eedata) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tveeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_eeprom_dump(ptr noundef %cx, ptr nocapture noundef readonly %eedata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = and i32 %i.05, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %do.end12.thread, label %do.end12

do.end12.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %i.05) #16
  %arrayidx1 = getelementptr i8, ptr %eedata, i32 %i.05
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv2) #16
  br label %for.inc

do.end12:                                         ; preds = %for.body
  %arrayidx = getelementptr i8, ptr %eedata, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem)
  %cmp16 = icmp eq i32 %rem, 15
  br i1 %cmp16, label %do.end21, label %do.end12.for.inc_crit_edge

do.end12.for.inc_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end21:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %do.end12.for.inc_crit_edge, %do.end12.thread
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_init_on_first_open(ptr noundef %cx) local_unnamed_addr #1 align 64 {
entry:
  %vf = alloca %struct.v4l2_frequency, align 4
  %fh = alloca %struct.cx18_open_id, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %vf) #12
  %0 = call ptr @memset(ptr %vf, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %fh) #12
  %1 = call ptr @memset(ptr %fh, i32 255, i32 200)
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cx, ptr %cx1, align 4
  %i_flags = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 32
  %3 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_flags, align 4
  %5 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %i_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call7 = tail call i32 @cx18_firmware_init(ptr noundef %cx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %while.cond.preheader.if.end18_crit_edge, label %if.end14

while.cond.preheader.if.end18_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end14:                                         ; preds = %while.cond.preheader
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #16
  %call7.1 = tail call i32 @cx18_firmware_init(ptr noundef %cx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %cmp8.1 = icmp eq i32 %call7.1, 0
  br i1 %cmp8.1, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 22, ptr noundef %i_flags) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14.if.end18_crit_edge, %while.cond.preheader.if.end18_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %i_flags) #12
  %call20 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 268435457, i32 noundef 2, i32 noundef 185, i32 noundef 0) #12
  %call21 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 268435461, i32 noundef 0) #12
  %call22 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 268435458, i32 noundef 1, i32 noundef 0) #12
  %call27 = tail call i32 @cx18_firmware_init(ptr noundef %cx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end18.if.end46_crit_edge, label %if.end41

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end41:                                         ; preds = %if.end18
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #16
  %call27.1 = tail call i32 @cx18_firmware_init(ptr noundef %cx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1)
  %cmp28.1 = icmp eq i32 %call27.1, 0
  br i1 %cmp28.1, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 22, ptr noundef %i_flags) #12
  br label %cleanup

if.end46:                                         ; preds = %if.end41.if.end46_crit_edge, %if.end18.if.end46_crit_edge
  %call47 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 268435457, i32 noundef 2, i32 noundef 185, i32 noundef 0) #12
  %call48 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 268435461, i32 noundef 0) #12
  %call49 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %cx, i32 noundef 268435458, i32 noundef 1, i32 noundef 0) #12
  %sd_av = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 3
  %6 = ptrtoint ptr %sd_av to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_av, align 8
  %tobool50.not = icmp eq ptr %7, null
  br i1 %tobool50.not, label %if.end46.if.end72_crit_edge, label %if.else

if.end46.if.end72_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.else:                                          ; preds = %if.end46
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool52.not = icmp eq ptr %11, null
  br i1 %tobool52.not, label %if.else.if.end72_crit_edge, label %land.lhs.true

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true:                                    ; preds = %if.else
  %load_fw = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %load_fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %load_fw, align 4
  %tobool55.not = icmp eq ptr %13, null
  br i1 %tobool55.not, label %land.lhs.true.if.end72_crit_edge, label %if.else57

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.else57:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %14 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool58.not = icmp eq ptr %14, null
  br i1 %tobool58.not, label %if.else57.if.else65_crit_edge, label %land.lhs.true59

if.else57.if.else65_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

land.lhs.true59:                                  ; preds = %if.else57
  %load_fw60 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %load_fw60 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %load_fw60, align 4
  %tobool61.not = icmp eq ptr %16, null
  br i1 %tobool61.not, label %land.lhs.true59.if.else65_crit_edge, label %land.lhs.true59.if.end72.sink.split_crit_edge

land.lhs.true59.if.end72.sink.split_crit_edge:    ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.sink.split

land.lhs.true59.if.else65_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

if.else65:                                        ; preds = %land.lhs.true59.if.else65_crit_edge, %if.else57.if.else65_crit_edge
  br label %if.end72.sink.split

if.end72.sink.split:                              ; preds = %if.else65, %land.lhs.true59.if.end72.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.else65 ], [ %16, %land.lhs.true59.if.end72.sink.split_crit_edge ]
  %call69 = tail call i32 %.sink(ptr noundef nonnull %7) #12
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %land.lhs.true.if.end72_crit_edge, %if.else.if.end72_crit_edge, %if.end46.if.end72_crit_edge
  %17 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %vf, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %19 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6400, ptr %frequency, align 4
  %std74 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 66
  %20 = ptrtoint ptr %std74 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %std74, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %21)
  %cmp75 = icmp eq i64 %21, 8192
  br i1 %cmp75, label %if.end72.if.end84.sink.split_crit_edge, label %if.else78

if.end72.if.end84.sink.split_crit_edge:           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84.sink.split

if.else78:                                        ; preds = %if.end72
  %and = and i64 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool80.not = icmp eq i64 %and, 0
  br i1 %tobool80.not, label %if.else78.if.end84_crit_edge, label %if.else78.if.end84.sink.split_crit_edge

if.else78.if.end84.sink.split_crit_edge:          ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84.sink.split

if.else78.if.end84_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.end84.sink.split:                              ; preds = %if.else78.if.end84.sink.split_crit_edge, %if.end72.if.end84.sink.split_crit_edge
  %.sink141 = phi i32 [ 1460, %if.end72.if.end84.sink.split_crit_edge ], [ 1076, %if.else78.if.end84.sink.split_crit_edge ]
  %22 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink141, ptr %frequency, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.else78.if.end84_crit_edge
  %active_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 65
  %23 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active_input, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %active_input, align 8
  %call86 = call i32 @cx18_s_input(ptr noundef null, ptr noundef nonnull %fh, i32 noundef %24) #12
  %25 = ptrtoint ptr %std74 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %std74, align 8
  %inc88 = add i64 %26, 1
  store i64 %inc88, ptr %std74, align 8
  %tuner_std = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 67
  %27 = ptrtoint ptr %tuner_std to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tuner_std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %28)
  %cmp89 = icmp eq i64 %28, 16777215
  %spec.select = select i1 %cmp89, i64 4096, i64 %28
  %call91 = call i32 @cx18_s_std(ptr noundef null, ptr noundef nonnull %fh, i64 noundef %spec.select) #12
  %call92 = call i32 @cx18_s_frequency(ptr noundef null, ptr noundef nonnull %fh, ptr noundef nonnull %vf) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then44, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.then16 ], [ -6, %if.then44 ], [ 0, %if.end84 ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %fh) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %vf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_firmware_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_s_input(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_s_std(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @module_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @cx18_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @module_start() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.2) #16
  %0 = load i32, ptr @cx18_first_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %1 = icmp ugt i32 %0, 31
  br i1 %1, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef 31) #16
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @cx18_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %2)
  %3 = icmp ugt i32 %2, 511
  br i1 %3, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @cx18_debug, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @__pci_register_driver(ptr noundef nonnull @cx18_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %do.end23, label %do.end18

do.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #16
  br label %return

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #16
  br label %return

return:                                           ; preds = %do.end23, %do.end18, %do.end3
  %retval.0 = phi i32 [ -1, %do.end3 ], [ -19, %do.end18 ], [ 0, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #1 align 64 {
entry:
  %setup = alloca %struct.tuner_setup, align 4
  %cfg = alloca %struct.v4l2_priv_tun_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cx18_instance, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !612
  tail call void @llvm.prefetch.p0(ptr nonnull @cx18_instance, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cx18_instance, ptr nonnull @cx18_instance, i32 1, ptr nonnull elementtype(i32) @cx18_instance) #12, !srcloc !613
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !614
  %sub = add i32 %asmresult.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp = icmp sgt i32 %sub, 31
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %sub, i32 noundef 31) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 33984, i32 noundef 2848, i32 noundef 4) #17
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pci_dev6 = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pci_dev, ptr %pci_dev6, align 4
  %2 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %call1.i.i.i, align 4096
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 2
  %call7 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1.i.i.i, align 4096
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %4) #16
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %name = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1.i.i.i, align 4096
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 36, ptr noundef nonnull @.str.27, i32 noundef %6)
  %7 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call1.i.i.i, align 4096
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %8) #16
  %9 = load i32, ptr @enc_ts_buffers, align 4
  %options.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26
  %arrayidx.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx.i, align 8
  %11 = load i32, ptr @enc_mpg_buffers, align 4
  %12 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %options.i, align 4
  %13 = load i32, ptr @enc_idx_buffers, align 4
  %arrayidx6.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx6.i, align 8
  %15 = load i32, ptr @enc_yuv_buffers, align 4
  %arrayidx9.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx9.i, align 4
  %17 = load i32, ptr @enc_vbi_buffers, align 4
  %arrayidx12.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx12.i, align 32
  %19 = load i32, ptr @enc_pcm_buffers, align 4
  %arrayidx15.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx15.i, align 4
  %arrayidx18.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx18.i, align 4
  %22 = load i32, ptr @enc_ts_bufs, align 4
  %stream_buffers.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27
  %arrayidx19.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 1
  %23 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx19.i, align 256
  %24 = load i32, ptr @enc_mpg_bufs, align 4
  %25 = ptrtoint ptr %stream_buffers.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %stream_buffers.i, align 4
  %26 = load i32, ptr @enc_idx_bufs, align 4
  %arrayidx23.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 5
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx23.i, align 16
  %28 = load i32, ptr @enc_yuv_bufs, align 4
  %arrayidx25.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 2
  %29 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx25.i, align 4
  %30 = load i32, ptr @enc_vbi_bufs, align 4
  %arrayidx27.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 3
  %31 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx27.i, align 8
  %32 = load i32, ptr @enc_pcm_bufs, align 4
  %arrayidx29.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 4
  %33 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx29.i, align 4
  %arrayidx31.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 6
  %34 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx31.i, align 4
  %35 = load i32, ptr @enc_ts_bufsize, align 4
  %stream_buf_size.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28
  %arrayidx32.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 1
  %36 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx32.i, align 4
  %37 = load i32, ptr @enc_mpg_bufsize, align 4
  %38 = ptrtoint ptr %stream_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %stream_buf_size.i, align 8
  %39 = load i32, ptr @enc_idx_bufsize, align 4
  %arrayidx36.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 5
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx36.i, align 4
  %41 = load i32, ptr @enc_yuv_bufsize, align 4
  %arrayidx38.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 2
  %42 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx38.i, align 32
  %arrayidx40.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 3
  %43 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 51984, ptr %arrayidx40.i, align 4
  %44 = load i32, ptr @enc_pcm_bufsize, align 4
  %arrayidx42.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 4
  %45 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx42.i, align 8
  %arrayidx44.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 6
  %46 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx44.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.0553.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx46.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 27, i32 %i.0553.i
  %47 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp47.i = icmp eq i32 %48, 0
  br i1 %cmp47.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx50.i = getelementptr [7 x i32], ptr %options.i, i32 0, i32 %i.0553.i
  %49 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp51.i = icmp slt i32 %50, 1
  br i1 %cmp51.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false52.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false52.i:                                ; preds = %lor.lhs.false.i
  %arrayidx54.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 %i.0553.i
  %51 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp55.i = icmp slt i32 %52, 1
  br i1 %cmp55.i, label %lor.lhs.false52.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false52.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false52.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %arrayidx58.i = getelementptr [7 x i32], ptr %options.i, i32 0, i32 %i.0553.i
  %53 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx58.i, align 4
  %54 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx46.i, align 4
  %arrayidx62.i = getelementptr %struct.cx18, ptr %call1.i.i.i, i32 0, i32 28, i32 %i.0553.i
  %55 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx62.i, align 4
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false52.i
  %56 = zext i32 %i.0553.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %i.0553.i, label %if.else128.i [
    i32 2, label %if.then64.i
    i32 5, label %if.then79.i
    i32 3, label %if.end.i.if.then103.i_crit_edge
  ]

if.end.i.if.then103.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.i

if.then64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = shl i32 %52, 10
  %rem.i = srem i32 %mul.i, 34560
  %sub.i = sub i32 %mul.i, %rem.i
  %57 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 34560) #12
  br label %if.then103.sink.split.i

if.then79.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul82.i = shl i32 %52, 10
  %rem85.i = urem i32 %mul82.i, 1536
  %sub88.i = sub i32 %mul82.i, %rem85.i
  %58 = tail call i32 @llvm.umax.i32(i32 %sub88.i, i32 1536) #12
  br label %if.then103.sink.split.i

if.then103.sink.split.i:                          ; preds = %if.then79.i, %if.then64.i
  %.sink.i = phi i32 [ %57, %if.then64.i ], [ %58, %if.then79.i ]
  %59 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink.i, ptr %arrayidx54.i, align 4
  br label %if.then103.i

if.then103.i:                                     ; preds = %if.then103.sink.split.i, %if.end.i.if.then103.i_crit_edge
  %60 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp106.i = icmp slt i32 %61, 0
  br i1 %cmp106.i, label %if.then107.i, label %if.else117.i

if.then107.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx50.i, align 4
  %mul112.i = shl i32 %63, 20
  %64 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx54.i, align 4
  %div.i = sdiv i32 %mul112.i, %65
  %66 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div.i, ptr %arrayidx46.i, align 4
  br label %do.body.i

if.else117.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx54.i, align 4
  %mul122.i = mul i32 %68, %61
  %div123.i = sdiv i32 %mul122.i, 1048576
  %69 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div123.i, ptr %arrayidx50.i, align 4
  br label %do.body.i

if.else128.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp131.i = icmp slt i32 %48, 0
  br i1 %cmp131.i, label %if.then132.i, label %if.else142.i

if.then132.i:                                     ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul136.i = shl i32 %50, 10
  %div139.i = sdiv i32 %mul136.i, %52
  %70 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div139.i, ptr %arrayidx46.i, align 4
  br label %if.end152.i

if.else142.i:                                     ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul147.i = mul i32 %52, %48
  %div148.i = sdiv i32 %mul147.i, 1024
  %71 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div148.i, ptr %arrayidx50.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.else142.i, %if.then132.i
  %72 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx54.i, align 4
  %mul155.i = shl i32 %73, 10
  store i32 %mul155.i, ptr %arrayidx54.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end152.i, %if.else117.i, %if.then107.i
  %74 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.for.inc.i_crit_edge, label %do.end.i

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx50.i, align 4
  %77 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx46.i, align 4
  %79 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx54.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %i.0553.i, i32 noundef %76, i32 noundef %78, i32 noundef %80) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %do.body.i.for.inc.i_crit_edge, %if.then.i
  %inc.i = add nuw nsw i32 %i.0553.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %81 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call1.i.i.i, align 4096
  %arrayidx169.i = getelementptr [32 x i32], ptr @cardtype, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx169.i, align 4
  %cardtype.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 1
  %85 = ptrtoint ptr %cardtype.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %cardtype.i, align 16
  %arrayidx172.i = getelementptr [32 x i32], ptr @tuner, i32 0, i32 %82
  %86 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx172.i, align 4
  %tuner.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 2
  %88 = ptrtoint ptr %tuner.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %tuner.i, align 4
  %arrayidx175.i = getelementptr [32 x i32], ptr @radio, i32 0, i32 %82
  %89 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx175.i, align 4
  %radio.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 26, i32 3
  %91 = ptrtoint ptr %radio.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %radio.i, align 8
  %92 = load i8, ptr @pal, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %92, label %do.end.i.i [
    i8 54, label %for.end.i.cx18_parse_std.exit.i_crit_edge
    i8 98, label %for.end.i.sw.bb1.i.i_crit_edge
    i8 66, label %for.end.i.sw.bb1.i.i_crit_edge740
    i8 103, label %for.end.i.sw.bb1.i.i_crit_edge741
    i8 71, label %for.end.i.sw.bb1.i.i_crit_edge742
    i8 104, label %for.end.i.sw.bb2.i.i_crit_edge
    i8 72, label %for.end.i.sw.bb2.i.i_crit_edge743
    i8 110, label %for.end.i.sw.bb3.i.i_crit_edge
    i8 78, label %for.end.i.sw.bb3.i.i_crit_edge744
    i8 105, label %for.end.i.sw.bb9.i.i_crit_edge
    i8 73, label %for.end.i.sw.bb9.i.i_crit_edge745
    i8 100, label %for.end.i.sw.bb10.i.i_crit_edge
    i8 68, label %for.end.i.sw.bb10.i.i_crit_edge746
    i8 107, label %for.end.i.sw.bb10.i.i_crit_edge747
    i8 75, label %for.end.i.sw.bb10.i.i_crit_edge748
    i8 77, label %for.end.i.sw.bb11.i.i_crit_edge
    i8 109, label %for.end.i.sw.bb11.i.i_crit_edge749
    i8 45, label %sw.epilog.i.i
  ]

for.end.i.sw.bb11.i.i_crit_edge749:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11.i.i

for.end.i.sw.bb11.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11.i.i

for.end.i.sw.bb10.i.i_crit_edge748:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i.i

for.end.i.sw.bb10.i.i_crit_edge747:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i.i

for.end.i.sw.bb10.i.i_crit_edge746:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i.i

for.end.i.sw.bb10.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i.i

for.end.i.sw.bb9.i.i_crit_edge745:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i.i

for.end.i.sw.bb9.i.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i.i

for.end.i.sw.bb3.i.i_crit_edge744:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

for.end.i.sw.bb3.i.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

for.end.i.sw.bb2.i.i_crit_edge743:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i.i

for.end.i.sw.bb2.i.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i.i

for.end.i.sw.bb1.i.i_crit_edge742:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

for.end.i.sw.bb1.i.i_crit_edge741:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

for.end.i.sw.bb1.i.i_crit_edge740:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

for.end.i.sw.bb1.i.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

for.end.i.cx18_parse_std.exit.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.bb1.i.i:                                       ; preds = %for.end.i.sw.bb1.i.i_crit_edge, %for.end.i.sw.bb1.i.i_crit_edge740, %for.end.i.sw.bb1.i.i_crit_edge741, %for.end.i.sw.bb1.i.i_crit_edge742
  br label %cx18_parse_std.exit.i

sw.bb2.i.i:                                       ; preds = %for.end.i.sw.bb2.i.i_crit_edge, %for.end.i.sw.bb2.i.i_crit_edge743
  br label %cx18_parse_std.exit.i

sw.bb3.i.i:                                       ; preds = %for.end.i.sw.bb3.i.i_crit_edge, %for.end.i.sw.bb3.i.i_crit_edge744
  %94 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @pal, i32 0, i32 1), align 1
  %95 = add i8 %94, -67
  %switch.and.i.i = and i8 %95, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  %96 = select i1 %switch.selectcmp.i.i, i64 1024, i64 512
  br label %cx18_parse_std.exit.i

sw.bb9.i.i:                                       ; preds = %for.end.i.sw.bb9.i.i_crit_edge, %for.end.i.sw.bb9.i.i_crit_edge745
  br label %cx18_parse_std.exit.i

sw.bb10.i.i:                                      ; preds = %for.end.i.sw.bb10.i.i_crit_edge, %for.end.i.sw.bb10.i.i_crit_edge746, %for.end.i.sw.bb10.i.i_crit_edge747, %for.end.i.sw.bb10.i.i_crit_edge748
  br label %cx18_parse_std.exit.i

sw.bb11.i.i:                                      ; preds = %for.end.i.sw.bb11.i.i_crit_edge, %for.end.i.sw.bb11.i.i_crit_edge749
  br label %cx18_parse_std.exit.i

do.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i711 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name) #16
  br label %cx18_parse_std.exit.i

sw.epilog.i.i:                                    ; preds = %for.end.i
  %97 = load i8, ptr @secam, align 1
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %97, label %do.end27.i.i [
    i8 98, label %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge
    i8 66, label %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge750
    i8 103, label %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge751
    i8 71, label %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge752
    i8 104, label %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge753
    i8 72, label %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge754
    i8 100, label %sw.epilog.i.i.sw.bb14.i.i_crit_edge
    i8 68, label %sw.epilog.i.i.sw.bb14.i.i_crit_edge755
    i8 107, label %sw.epilog.i.i.sw.bb14.i.i_crit_edge756
    i8 75, label %sw.epilog.i.i.sw.bb14.i.i_crit_edge757
    i8 108, label %sw.epilog.i.i.sw.bb15.i.i_crit_edge
    i8 76, label %sw.epilog.i.i.sw.bb15.i.i_crit_edge758
    i8 45, label %sw.epilog33.i.i
  ]

sw.epilog.i.i.sw.bb15.i.i_crit_edge758:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15.i.i

sw.epilog.i.i.sw.bb15.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15.i.i

sw.epilog.i.i.sw.bb14.i.i_crit_edge757:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14.i.i

sw.epilog.i.i.sw.bb14.i.i_crit_edge756:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14.i.i

sw.epilog.i.i.sw.bb14.i.i_crit_edge755:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14.i.i

sw.epilog.i.i.sw.bb14.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14.i.i

sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge754: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge753: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge752: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge751: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge750: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge:    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.bb14.i.i:                                      ; preds = %sw.epilog.i.i.sw.bb14.i.i_crit_edge, %sw.epilog.i.i.sw.bb14.i.i_crit_edge755, %sw.epilog.i.i.sw.bb14.i.i_crit_edge756, %sw.epilog.i.i.sw.bb14.i.i_crit_edge757
  br label %cx18_parse_std.exit.i

sw.bb15.i.i:                                      ; preds = %sw.epilog.i.i.sw.bb15.i.i_crit_edge, %sw.epilog.i.i.sw.bb15.i.i_crit_edge758
  %99 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @secam, i32 0, i32 1), align 1
  %100 = add i8 %99, -67
  %switch.and49.i.i = and i8 %100, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and49.i.i)
  %switch.selectcmp50.i.i = icmp eq i8 %switch.and49.i.i, 0
  %101 = select i1 %switch.selectcmp50.i.i, i64 8388608, i64 4194304
  br label %cx18_parse_std.exit.i

do.end27.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name) #16
  br label %cx18_parse_std.exit.i

sw.epilog33.i.i:                                  ; preds = %sw.epilog.i.i
  %102 = load i8, ptr @ntsc, align 1
  %103 = zext i8 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %102, label %do.end40.i.i [
    i8 109, label %sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge
    i8 77, label %sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge759
    i8 106, label %sw.epilog33.i.i.sw.bb36.i.i_crit_edge
    i8 74, label %sw.epilog33.i.i.sw.bb36.i.i_crit_edge760
    i8 107, label %sw.epilog33.i.i.sw.bb37.i.i_crit_edge
    i8 75, label %sw.epilog33.i.i.sw.bb37.i.i_crit_edge761
    i8 45, label %sw.epilog46.i.i
  ]

sw.epilog33.i.i.sw.bb37.i.i_crit_edge761:         ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37.i.i

sw.epilog33.i.i.sw.bb37.i.i_crit_edge:            ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37.i.i

sw.epilog33.i.i.sw.bb36.i.i_crit_edge760:         ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36.i.i

sw.epilog33.i.i.sw.bb36.i.i_crit_edge:            ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36.i.i

sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge759: ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge:  ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

sw.bb36.i.i:                                      ; preds = %sw.epilog33.i.i.sw.bb36.i.i_crit_edge, %sw.epilog33.i.i.sw.bb36.i.i_crit_edge760
  br label %cx18_parse_std.exit.i

sw.bb37.i.i:                                      ; preds = %sw.epilog33.i.i.sw.bb37.i.i_crit_edge, %sw.epilog33.i.i.sw.bb37.i.i_crit_edge761
  br label %cx18_parse_std.exit.i

do.end40.i.i:                                     ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name) #16
  br label %cx18_parse_std.exit.i

sw.epilog46.i.i:                                  ; preds = %sw.epilog33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_parse_std.exit.i

cx18_parse_std.exit.i:                            ; preds = %sw.epilog46.i.i, %do.end40.i.i, %sw.bb37.i.i, %sw.bb36.i.i, %sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge, %sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge759, %do.end27.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge750, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge751, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge752, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge753, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge754, %do.end.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.end.i.cx18_parse_std.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ 0, %do.end.i.i ], [ 0, %do.end27.i.i ], [ 0, %do.end40.i.i ], [ 0, %sw.epilog46.i.i ], [ 32768, %sw.bb37.i.i ], [ 8192, %sw.bb36.i.i ], [ 3276800, %sw.bb14.i.i ], [ 256, %sw.bb11.i.i ], [ 224, %sw.bb10.i.i ], [ 16, %sw.bb9.i.i ], [ 8, %sw.bb2.i.i ], [ 7, %sw.bb1.i.i ], [ 2048, %for.end.i.cx18_parse_std.exit.i_crit_edge ], [ 851968, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge ], [ 851968, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge750 ], [ 851968, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge751 ], [ 851968, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge752 ], [ 851968, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge753 ], [ 851968, %sw.epilog.i.i.cx18_parse_std.exit.i_crit_edge754 ], [ 4096, %sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge ], [ 4096, %sw.epilog33.i.i.cx18_parse_std.exit.i_crit_edge759 ], [ %96, %sw.bb3.i.i ], [ %101, %sw.bb15.i.i ]
  %std.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 66
  %104 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %retval.0.i.i, ptr %std.i, align 128
  %105 = ptrtoint ptr %cardtype.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cardtype.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp180.i = icmp eq i32 %106, -1
  br i1 %cmp180.i, label %do.end184.i, label %if.end190.i

do.end184.i:                                      ; preds = %cx18_parse_std.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name) #16
  br label %cx18_process_options.exit

if.end190.i:                                      ; preds = %cx18_parse_std.exit.i
  %107 = trunc i32 %106 to i16
  %conv.i = add i16 %107, -1
  %call194.i = tail call ptr @cx18_get_card(i16 noundef zeroext %conv.i) #12
  %card.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 5
  %108 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call194.i, ptr %card.i, align 16
  %tobool196.not.i = icmp eq ptr %call194.i, null
  br i1 %tobool196.not.i, label %if.else208.i, label %do.end200.i

do.end200.i:                                      ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  %name206.i = getelementptr inbounds %struct.cx18_card, ptr %call194.i, i32 0, i32 1
  %109 = ptrtoint ptr %name206.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name206.i, align 4
  %call207.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name, ptr noundef %110) #16
  br label %if.end223.i

if.else208.i:                                     ; preds = %if.end190.i
  %111 = ptrtoint ptr %cardtype.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cardtype.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp211.not.i = icmp eq i32 %112, 0
  br i1 %cmp211.not.i, label %if.else208.i.if.then226.i_crit_edge, label %do.end216.i

if.else208.i.if.then226.i_crit_edge:              ; preds = %if.else208.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then226.i

do.end216.i:                                      ; preds = %if.else208.i
  call void @__sanitizer_cov_trace_pc() #14
  %call221.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name) #16
  br label %if.end223.i

if.end223.i:                                      ; preds = %do.end216.i, %do.end200.i
  %113 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr.i = load ptr, ptr %card.i, align 16
  %tobool225.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool225.not.i, label %if.end223.i.if.then226.i_crit_edge, label %if.end223.i.if.end380.i_crit_edge

if.end223.i.if.end380.i_crit_edge:                ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380.i

if.end223.i.if.then226.i_crit_edge:               ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then226.i

if.then226.i:                                     ; preds = %if.end223.i.if.then226.i_crit_edge, %if.else208.i.if.then226.i_crit_edge
  %114 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pci_dev6, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 9
  %116 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %117)
  %cmp228.i = icmp eq i16 %117, 112
  br i1 %cmp228.i, label %if.then230.i, label %if.then226.i.if.end242.i_crit_edge

if.then226.i.if.end242.i_crit_edge:               ; preds = %if.then226.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242.i

if.then230.i:                                     ; preds = %if.then226.i
  call void @__sanitizer_cov_trace_pc() #14
  %call231.i = tail call ptr @cx18_get_card(i16 noundef zeroext 0) #12
  %118 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call231.i, ptr %card.i, align 16
  %call240.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name) #16
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.then230.i, %if.then226.i.if.end242.i_crit_edge
  %119 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr546.i = load ptr, ptr %card.i, align 16
  %tobool244.not.i = icmp eq ptr %.pr546.i, null
  br i1 %tobool244.not.i, label %for.cond246.preheader.i, label %if.end242.i.if.end380.i_crit_edge

if.end242.i.if.end380.i_crit_edge:                ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380.i

for.cond246.preheader.i:                          ; preds = %if.end242.i
  %call248560.i = tail call ptr @cx18_get_card(i16 noundef zeroext 0) #12
  %120 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call248560.i, ptr %card.i, align 16
  %tobool250.not561.i = icmp eq ptr %call248560.i, null
  br i1 %tobool250.not561.i, label %for.cond246.preheader.i.if.then316.i_crit_edge, label %for.cond246.preheader.i.for.body251.i_crit_edge

for.cond246.preheader.i.for.body251.i_crit_edge:  ; preds = %for.cond246.preheader.i
  br label %for.body251.i

for.cond246.preheader.i.if.then316.i_crit_edge:   ; preds = %for.cond246.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then316.i

for.body251.i:                                    ; preds = %for.inc310.i.for.body251.i_crit_edge, %for.cond246.preheader.i.for.body251.i_crit_edge
  %call248563.i = phi ptr [ %call248.i, %for.inc310.i.for.body251.i_crit_edge ], [ %call248560.i, %for.cond246.preheader.i.for.body251.i_crit_edge ]
  %i.1562.i = phi i32 [ %inc311.i, %for.inc310.i.for.body251.i_crit_edge ], [ 0, %for.cond246.preheader.i.for.body251.i_crit_edge ]
  %pci_list.i = getelementptr inbounds %struct.cx18_card, ptr %call248563.i, i32 0, i32 17
  %121 = ptrtoint ptr %pci_list.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pci_list.i, align 4
  %tobool253.not.i = icmp eq ptr %122, null
  br i1 %tobool253.not.i, label %for.body251.i.for.inc310.i_crit_edge, label %for.cond256.preheader.i

for.body251.i.for.inc310.i_crit_edge:             ; preds = %for.body251.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc310.i

for.cond256.preheader.i:                          ; preds = %for.body251.i
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %122, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool260.not557.i = icmp eq i16 %124, 0
  br i1 %tobool260.not557.i, label %for.cond256.preheader.i.for.inc310.i_crit_edge, label %for.body261.lr.ph.i

for.cond256.preheader.i.for.inc310.i_crit_edge:   ; preds = %for.cond256.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc310.i

for.body261.lr.ph.i:                              ; preds = %for.cond256.preheader.i
  %125 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pci_dev6, align 4
  %device263.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %device263.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %device263.i, align 2
  %subsystem_vendor275.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 9
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 10
  br label %for.body261.i

for.body261.i:                                    ; preds = %for.inc307.i.for.body261.i_crit_edge, %for.body261.lr.ph.i
  %129 = phi i16 [ %124, %for.body261.lr.ph.i ], [ %139, %for.inc307.i.for.body261.i_crit_edge ]
  %j.0558.i = phi i32 [ 0, %for.body261.lr.ph.i ], [ %inc308.i, %for.inc307.i.for.body261.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %129)
  %cmp270.not.i = icmp eq i16 %128, %129
  br i1 %cmp270.not.i, label %if.end273.i, label %for.body261.i.for.inc307.i_crit_edge

for.body261.i.for.inc307.i_crit_edge:             ; preds = %for.body261.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc307.i

if.end273.i:                                      ; preds = %for.body261.i
  %130 = ptrtoint ptr %subsystem_vendor275.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %subsystem_vendor275.i, align 4
  %subsystem_vendor280.i = getelementptr %struct.cx18_card_pci_info, ptr %122, i32 %j.0558.i, i32 1
  %132 = ptrtoint ptr %subsystem_vendor280.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %subsystem_vendor280.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %131, i16 %133)
  %cmp282.not.i = icmp eq i16 %131, %133
  br i1 %cmp282.not.i, label %if.end285.i, label %if.end273.i.for.inc307.i_crit_edge

if.end273.i.for.inc307.i_crit_edge:               ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc307.i

if.end285.i:                                      ; preds = %if.end273.i
  %134 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_device291.i = getelementptr %struct.cx18_card_pci_info, ptr %122, i32 %j.0558.i, i32 2
  %136 = ptrtoint ptr %subsystem_device291.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %subsystem_device291.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %135, i16 %137)
  %cmp293.not.i = icmp eq i16 %135, %137
  br i1 %cmp293.not.i, label %done.i, label %if.end285.i.for.inc307.i_crit_edge

if.end285.i.for.inc307.i_crit_edge:               ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc307.i

for.inc307.i:                                     ; preds = %if.end285.i.for.inc307.i_crit_edge, %if.end273.i.for.inc307.i_crit_edge, %for.body261.i.for.inc307.i_crit_edge
  %inc308.i = add i32 %j.0558.i, 1
  %arrayidx259.i = getelementptr %struct.cx18_card_pci_info, ptr %122, i32 %inc308.i
  %138 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx259.i, align 2
  %tobool260.not.i = icmp eq i16 %139, 0
  br i1 %tobool260.not.i, label %for.inc307.i.for.inc310.i_crit_edge, label %for.inc307.i.for.body261.i_crit_edge

for.inc307.i.for.body261.i_crit_edge:             ; preds = %for.inc307.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body261.i

for.inc307.i.for.inc310.i_crit_edge:              ; preds = %for.inc307.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc310.i

for.inc310.i:                                     ; preds = %for.inc307.i.for.inc310.i_crit_edge, %for.cond256.preheader.i.for.inc310.i_crit_edge, %for.body251.i.for.inc310.i_crit_edge
  %inc311.i = add i32 %i.1562.i, 1
  %conv247.i = trunc i32 %inc311.i to i16
  %call248.i = tail call ptr @cx18_get_card(i16 noundef zeroext %conv247.i) #12
  %140 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call248.i, ptr %card.i, align 16
  %tobool250.not.i = icmp eq ptr %call248.i, null
  br i1 %tobool250.not.i, label %for.inc310.i.if.then316.i_crit_edge, label %for.inc310.i.for.body251.i_crit_edge

for.inc310.i.for.body251.i_crit_edge:             ; preds = %for.inc310.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body251.i

for.inc310.i.if.then316.i_crit_edge:              ; preds = %for.inc310.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then316.i

done.i:                                           ; preds = %if.end285.i
  %name305.i = getelementptr inbounds %struct.cx18_card, ptr %call248563.i, i32 0, i32 1
  %141 = ptrtoint ptr %name305.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name305.i, align 4
  %call306.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name, ptr noundef %142) #16
  %143 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr548.i = load ptr, ptr %card.i, align 16
  %tobool315.not.i = icmp eq ptr %.pr548.i, null
  br i1 %tobool315.not.i, label %done.i.if.then316.i_crit_edge, label %done.i.if.end380.i_crit_edge

done.i.if.end380.i_crit_edge:                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380.i

done.i.if.then316.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then316.i

if.then316.i:                                     ; preds = %done.i.if.then316.i_crit_edge, %for.inc310.i.if.then316.i_crit_edge, %for.cond246.preheader.i.if.then316.i_crit_edge
  %call317.i = tail call ptr @cx18_get_card(i16 noundef zeroext 0) #12
  %144 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call317.i, ptr %card.i, align 16
  %145 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pci_dev6, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 7
  %147 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vendor.i, align 8
  %conv327.i = zext i16 %148 to i32
  %device329.i = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 8
  %149 = ptrtoint ptr %device329.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %device329.i, align 2
  %conv330.i = zext i16 %150 to i32
  %call331.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name, i32 noundef %conv327.i, i32 noundef %conv330.i) #16
  %151 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pci_dev6, align 4
  %subsystem_vendor340.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 9
  %153 = ptrtoint ptr %subsystem_vendor340.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %subsystem_vendor340.i, align 4
  %conv341.i = zext i16 %154 to i32
  %subsystem_device343.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 10
  %155 = ptrtoint ptr %subsystem_device343.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %subsystem_device343.i, align 2
  %conv344.i = zext i16 %156 to i32
  %call345.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name, i32 noundef %conv341.i, i32 noundef %conv344.i) #16
  %157 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %card.i, align 16
  %name354.i = getelementptr inbounds %struct.cx18_card, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %name354.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %name354.i, align 4
  %call355.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name, ptr noundef %160) #16
  %call363.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name) #16
  %call371.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name) #16
  %call379.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name) #16
  br label %if.end380.i

if.end380.i:                                      ; preds = %if.then316.i, %done.i.if.end380.i_crit_edge, %if.end242.i.if.end380.i_crit_edge, %if.end223.i.if.end380.i_crit_edge
  %161 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %card.i, align 16
  %v4l2_capabilities.i = getelementptr inbounds %struct.cx18_card, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %v4l2_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %v4l2_capabilities.i, align 4
  %v4l2_cap.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 12
  %165 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %v4l2_cap.i, align 32
  %name383.i = getelementptr inbounds %struct.cx18_card, ptr %162, i32 0, i32 1
  %166 = ptrtoint ptr %name383.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name383.i, align 4
  %card_name.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 6
  %168 = ptrtoint ptr %card_name.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %card_name.i, align 4
  %i2c.i = getelementptr inbounds %struct.cx18_card, ptr %162, i32 0, i32 15
  %169 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i2c.i, align 8
  %card_i2c.i = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 7
  %171 = ptrtoint ptr %card_i2c.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %card_i2c.i, align 8
  br label %cx18_process_options.exit

cx18_process_options.exit:                        ; preds = %if.end380.i, %do.end184.i
  %172 = ptrtoint ptr %cardtype.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cardtype.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %173)
  %cmp29 = icmp eq i32 %173, -1
  br i1 %cmp29, label %cx18_process_options.exit.do.end531_crit_edge, label %if.end31

cx18_process_options.exit.do.end531_crit_edge:    ; preds = %cx18_process_options.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end531

if.end31:                                         ; preds = %cx18_process_options.exit
  %call32 = tail call fastcc i32 @cx18_init_struct1(ptr noundef %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body36, label %if.end31.do.end531_crit_edge

if.end31.do.end531_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end531

do.body36:                                        ; preds = %if.end31
  %174 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %174, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.body36.do.end49_crit_edge, label %do.end41

do.body36.do.end49_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %base_addr = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 37
  %175 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %base_addr, align 4
  %conv = zext i32 %176 to i64
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i64 noundef %conv) #16
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.body36.do.end49_crit_edge
  %call50 = tail call fastcc i32 @cx18_setup_pci(ptr noundef %call1.i.i.i, ptr noundef %pci_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %do.body55, label %do.end49.free_workqueues_crit_edge

do.end49.free_workqueues_crit_edge:               ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_workqueues

do.body55:                                        ; preds = %do.end49
  %177 = load i32, ptr @cx18_debug, align 4
  %and56 = and i32 %177, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.end71_crit_edge, label %do.end61

do.body55.do.end71_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end71

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %base_addr66 = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 37
  %178 = ptrtoint ptr %base_addr66 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %base_addr66, align 4
  %conv67 = zext i32 %179 to i64
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, i64 noundef %conv67, i32 noundef 67108864) #16
  br label %do.end71

do.end71:                                         ; preds = %do.end61, %do.body55.do.end71_crit_edge
  %base_addr72 = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 37
  %180 = ptrtoint ptr %base_addr72 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %base_addr72, align 4
  %call74 = tail call ptr @ioremap(i32 noundef %181, i32 noundef 67108864) #12
  %enc_mem = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 39
  %182 = ptrtoint ptr %enc_mem to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call74, ptr %enc_mem, align 4
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %do.end80, label %if.end110

do.end80:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #16
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name) #16
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name) #16
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name) #16
  br label %free_mem

if.end110:                                        ; preds = %do.end71
  %add.ptr = getelementptr i8, ptr %call74, i32 33554432
  %reg_mem = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 40
  %183 = ptrtoint ptr %reg_mem to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %add.ptr, ptr %reg_mem, align 8
  %add.ptr.i = getelementptr i8, ptr %call74, i32 46604328
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !615
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !616
  %and113 = and i32 %185, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and113)
  %switch.selectcmp = icmp eq i32 %and113, 16777216
  %switch.select = select i1 %switch.selectcmp, ptr @.str.53, ptr @.str.56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %185)
  %switch.selectcmp735 = icmp ugt i32 %185, -16777217
  %switch.select736 = select i1 %switch.selectcmp735, ptr @.str.50, ptr %switch.select
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.select736, ptr noundef %name, i32 noundef %185) #16
  tail call void @cx18_init_power(ptr noundef %call1.i.i.i, i32 noundef 1) #12
  tail call void @cx18_init_memory(ptr noundef %call1.i.i.i) #12
  %186 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %enc_mem, align 4
  %add.ptr140 = getelementptr i8, ptr %187, i32 14417920
  %scb = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 15
  %188 = ptrtoint ptr %scb to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %add.ptr140, ptr %scb, align 4
  tail call void @cx18_init_scb(ptr noundef %call1.i.i.i) #12
  tail call void @cx18_gpio_init(ptr noundef %call1.i.i.i) #12
  %call141 = tail call i32 @cx18_av_probe(ptr noundef %call1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end152, label %do.end146

do.end146:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name) #16
  br label %free_map

if.end152:                                        ; preds = %if.end110
  %card = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 5
  %189 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %card, align 16
  %hw_all = getelementptr inbounds %struct.cx18_card, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %hw_all to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hw_all, align 8
  %and153 = and i32 %192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.do.body170_crit_edge, label %if.then155

if.end152.do.body170_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

if.then155:                                       ; preds = %if.end152
  %call156 = tail call i32 @cx18_gpio_register(ptr noundef %call1.i.i.i, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157.not = icmp eq i32 %call156, 0
  br i1 %cmp157.not, label %if.else, label %do.end162

do.end162:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name) #16
  br label %do.body170

if.else:                                          ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  %hw_flags = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 13
  %193 = ptrtoint ptr %hw_flags to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %hw_flags, align 4
  %or = or i32 %194, 64
  store i32 %or, ptr %hw_flags, align 4
  br label %do.body170

do.body170:                                       ; preds = %if.else, %do.end162, %if.end152.do.body170_crit_edge
  %195 = load i32, ptr @cx18_debug, align 4
  %and171 = and i32 %195, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %do.body170.do.end184_crit_edge, label %do.end176

do.body170.do.end184_crit_edge:                   ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end184

do.end176:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name) #16
  br label %do.end184

do.end184:                                        ; preds = %do.end176, %do.body170.do.end184_crit_edge
  %call185 = tail call i32 @init_cx18_i2c(ptr noundef %call1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end196, label %do.end190

do.end190:                                        ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #14
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name) #16
  br label %free_map

if.end196:                                        ; preds = %do.end184
  %196 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %card, align 16
  %hw_all198 = getelementptr inbounds %struct.cx18_card, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %hw_all198 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %hw_all198, align 8
  %and199 = and i32 %199, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end196.if.end239_crit_edge, label %if.then201

if.end196.if.end239_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.then201:                                       ; preds = %if.end196
  tail call fastcc void @cx18_process_eeprom(ptr noundef %call1.i.i.i)
  %200 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %card, align 16
  %cmp204.not = icmp eq ptr %201, %197
  br i1 %cmp204.not, label %if.then201.if.end239_crit_edge, label %if.then206

if.then201.if.end239_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.then206:                                       ; preds = %if.then201
  tail call void @cx18_gpio_init(ptr noundef %call1.i.i.i) #12
  %subdevs = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 2, i32 2
  %202 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pn710716 = load ptr, ptr %subdevs, align 16
  %cmp214.not718 = icmp eq ptr %.pn710716, %subdevs
  br i1 %cmp214.not718, label %if.then206.if.end239_crit_edge, label %if.then206.for.body_crit_edge

if.then206.for.body_crit_edge:                    ; preds = %if.then206
  br label %for.body

if.then206.if.end239_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then206.for.body_crit_edge
  %.pn710719 = phi ptr [ %.pn710, %for.inc.for.body_crit_edge ], [ %.pn710716, %if.then206.for.body_crit_edge ]
  %__sd.0720 = getelementptr i8, ptr %.pn710719, i32 -80
  %grp_id = getelementptr i8, ptr %.pn710719, i32 68
  %203 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %grp_id, align 4
  %and216 = and i32 %204, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn710719, i32 24
  %205 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ops, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %tobool218.not = icmp eq ptr %208, null
  br i1 %tobool218.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true219

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true219:                                 ; preds = %land.lhs.true
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reset, align 4
  %tobool222.not = icmp eq ptr %210, null
  br i1 %tobool222.not, label %land.lhs.true219.for.inc_crit_edge, label %if.then223

land.lhs.true219.for.inc_crit_edge:               ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then223:                                       ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #14
  %call227 = tail call i32 %210(ptr noundef %__sd.0720, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then223, %land.lhs.true219.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %211 = ptrtoint ptr %.pn710719 to i32
  call void @__asan_load4_noabort(i32 %211)
  %.pn710 = load ptr, ptr %.pn710719, align 4
  %cmp214.not = icmp eq ptr %.pn710, %subdevs
  br i1 %cmp214.not, label %for.inc.if.end239_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end239_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.end239:                                        ; preds = %for.inc.if.end239_crit_edge, %if.then206.if.end239_crit_edge, %if.then201.if.end239_crit_edge, %if.end196.if.end239_crit_edge
  %212 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %card, align 16
  %comment = getelementptr inbounds %struct.cx18_card, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %comment to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %comment, align 8
  %tobool241.not = icmp eq ptr %215, null
  br i1 %tobool241.not, label %if.end239.if.end253_crit_edge, label %do.end245

if.end239.if.end253_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end253

do.end245:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef nonnull %215) #16
  br label %if.end253

if.end253:                                        ; preds = %do.end245, %if.end239.if.end253_crit_edge
  %216 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %card, align 16
  %v4l2_capabilities = getelementptr inbounds %struct.cx18_card, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %v4l2_capabilities to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %v4l2_capabilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp255 = icmp eq i32 %219, 0
  br i1 %cmp255, label %if.end253.free_i2c_crit_edge, label %if.end258

if.end253.free_i2c_crit_edge:                     ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_i2c

if.end258:                                        ; preds = %if.end253
  tail call void @cx18_init_memory(ptr noundef %call1.i.i.i) #12
  tail call void @cx18_init_scb(ptr noundef %call1.i.i.i) #12
  %220 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pci_dev6, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %221, i32 0, i32 46
  %222 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %irq, align 4
  %call.i712 = tail call i32 @request_threaded_irq(i32 noundef %223, ptr noundef nonnull @cx18_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %call1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i712)
  %tobool264.not = icmp eq i32 %call.i712, 0
  br i1 %tobool264.not, label %if.end274, label %do.end268

do.end268:                                        ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #14
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, i32 noundef %call.i712) #16
  br label %free_i2c

if.end274:                                        ; preds = %if.end258
  %224 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %std.i, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %225)
  %cmp275 = icmp eq i64 %225, 0
  br i1 %cmp275, label %if.then277, label %if.end274.if.end279_crit_edge

if.end274.if.end279_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.then277:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #14
  %226 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 4096, ptr %std.i, align 128
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end274.if.end279_crit_edge
  %227 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tuner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %228)
  %cmp281 = icmp eq i32 %228, -1
  br i1 %cmp281, label %for.cond284.preheader, label %if.end279.if.end347_crit_edge

if.end279.if.end347_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end347

for.cond284.preheader:                            ; preds = %if.end279
  %229 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %std.i, align 128
  %231 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %card, align 16
  %arrayidx = getelementptr %struct.cx18_card, ptr %232, i32 0, i32 14, i32 0
  %233 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %arrayidx, align 8
  %and291 = and i64 %234, %230
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and291)
  %cmp292 = icmp eq i64 %and291, 0
  br i1 %cmp292, label %for.inc302, label %for.cond284.preheader.if.end295_crit_edge

for.cond284.preheader.if.end295_crit_edge:        ; preds = %for.cond284.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

if.end295:                                        ; preds = %for.inc302.if.end295_crit_edge, %for.cond284.preheader.if.end295_crit_edge
  %i.0721.lcssa = phi i32 [ 0, %for.cond284.preheader.if.end295_crit_edge ], [ 1, %for.inc302.if.end295_crit_edge ]
  %tuner299 = getelementptr %struct.cx18_card, ptr %232, i32 0, i32 14, i32 %i.0721.lcssa, i32 1
  %235 = ptrtoint ptr %tuner299 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tuner299, align 8
  %237 = ptrtoint ptr %tuner.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %tuner.i, align 4
  br label %if.end304

for.inc302:                                       ; preds = %for.cond284.preheader
  %arrayidx.1 = getelementptr %struct.cx18_card, ptr %232, i32 0, i32 14, i32 1
  %238 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %arrayidx.1, align 8
  %and291.1 = and i64 %239, %230
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and291.1)
  %cmp292.1 = icmp eq i64 %and291.1, 0
  br i1 %cmp292.1, label %for.inc302.1, label %for.inc302.if.end295_crit_edge

for.inc302.if.end295_crit_edge:                   ; preds = %for.inc302
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

for.inc302.1:                                     ; preds = %for.inc302
  call void @__sanitizer_cov_trace_pc() #14
  %240 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %.pr = load i32, ptr %tuner.i, align 4
  br label %if.end304

if.end304:                                        ; preds = %for.inc302.1, %if.end295
  %241 = phi i32 [ %.pr, %for.inc302.1 ], [ %236, %if.end295 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %241)
  %cmp307 = icmp eq i32 %241, -1
  br i1 %cmp307, label %land.lhs.true309, label %if.end304.if.end347_crit_edge

if.end304.if.end347_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end347

land.lhs.true309:                                 ; preds = %if.end304
  %242 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %card, align 16
  %tuners311 = getelementptr inbounds %struct.cx18_card, ptr %243, i32 0, i32 14
  %244 = ptrtoint ptr %tuners311 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %tuners311, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %245)
  %tobool314.not = icmp eq i64 %245, 0
  br i1 %tobool314.not, label %land.lhs.true309.if.end347_crit_edge, label %if.then315

land.lhs.true309.if.end347_crit_edge:             ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end347

if.then315:                                       ; preds = %land.lhs.true309
  %246 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %std.i, align 128
  %and322 = and i64 %245, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and322)
  %tobool323.not = icmp eq i64 %and322, 0
  br i1 %tobool323.not, label %if.else326, label %if.then315.if.end340.sink.split_crit_edge

if.then315.if.end340.sink.split_crit_edge:        ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end340.sink.split

if.else326:                                       ; preds = %if.then315
  %and328 = and i64 %245, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and328)
  %tobool329.not = icmp eq i64 %and328, 0
  br i1 %tobool329.not, label %if.else332, label %if.else326.if.end340.sink.split_crit_edge

if.else326.if.end340.sink.split_crit_edge:        ; preds = %if.else326
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end340.sink.split

if.else332:                                       ; preds = %if.else326
  %and334 = and i64 %245, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and334)
  %tobool335.not = icmp eq i64 %and334, 0
  br i1 %tobool335.not, label %if.else332.if.end340_crit_edge, label %if.else332.if.end340.sink.split_crit_edge

if.else332.if.end340.sink.split_crit_edge:        ; preds = %if.else332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end340.sink.split

if.else332.if.end340_crit_edge:                   ; preds = %if.else332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end340

if.end340.sink.split:                             ; preds = %if.else332.if.end340.sink.split_crit_edge, %if.else326.if.end340.sink.split_crit_edge, %if.then315.if.end340.sink.split_crit_edge
  %.sink = phi i64 [ 15, %if.then315.if.end340.sink.split_crit_edge ], [ 4096, %if.else326.if.end340.sink.split_crit_edge ], [ 4194304, %if.else332.if.end340.sink.split_crit_edge ]
  %247 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %.sink, ptr %std.i, align 128
  br label %if.end340

if.end340:                                        ; preds = %if.end340.sink.split, %if.else332.if.end340_crit_edge
  %248 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %card, align 16
  %tuner344 = getelementptr inbounds %struct.cx18_card, ptr %249, i32 0, i32 14, i32 0, i32 1
  %250 = ptrtoint ptr %tuner344 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tuner344, align 8
  %252 = ptrtoint ptr %tuner.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %tuner.i, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.end340, %land.lhs.true309.if.end347_crit_edge, %if.end304.if.end347_crit_edge, %if.end279.if.end347_crit_edge
  %253 = ptrtoint ptr %radio.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %254)
  %cmp349 = icmp eq i32 %254, -1
  br i1 %cmp349, label %if.then351, label %if.end347.if.end358_crit_edge

if.end347.if.end358_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end358

if.then351:                                       ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #14
  %255 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %card, align 16
  %radio_input = getelementptr inbounds %struct.cx18_card, ptr %256, i32 0, i32 9
  %257 = ptrtoint ptr %radio_input to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %radio_input, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %cmp354 = icmp ne i8 %258, 0
  %conv355 = zext i1 %cmp354 to i32
  %259 = ptrtoint ptr %radio.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %conv355, ptr %radio.i, align 8
  br label %if.end358

if.end358:                                        ; preds = %if.then351, %if.end347.if.end358_crit_edge
  tail call fastcc void @cx18_init_struct2(ptr noundef %call1.i.i.i)
  tail call fastcc void @cx18_init_subdevs(ptr noundef %call1.i.i.i)
  %260 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %std.i, align 128
  %and360 = and i64 %261, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and360)
  %tobool361.not = icmp eq i64 %and360, 0
  br i1 %tobool361.not, label %if.else363, label %if.then362

if.then362:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #14
  %is_60hz = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 9
  %262 = ptrtoint ptr %is_60hz to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 1, ptr %is_60hz, align 1
  br label %if.end364

if.else363:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #14
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 8
  %263 = ptrtoint ptr %is_50hz to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %is_50hz, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.else363, %if.then362
  %cxhdl = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 19
  %is_60hz365 = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 9
  %264 = ptrtoint ptr %is_60hz365 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %is_60hz365, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool366.not = icmp eq i8 %265, 0
  %lnot.ext = zext i1 %tobool366.not to i32
  tail call void @cx2341x_handler_set_50hz(ptr noundef %cxhdl, i32 noundef %lnot.ext) #12
  %266 = ptrtoint ptr %radio.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %cmp370 = icmp sgt i32 %267, 0
  br i1 %cmp370, label %if.then372, label %if.end364.if.end374_crit_edge

if.end364.if.end374_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end374

if.then372:                                       ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #14
  %v4l2_cap = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 12
  %268 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %v4l2_cap, align 32
  %or373 = or i32 %269, 262144
  store i32 %or373, ptr %v4l2_cap, align 32
  br label %if.end374

if.end374:                                        ; preds = %if.then372, %if.end364.if.end374_crit_edge
  %270 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %tuner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %271)
  %cmp377 = icmp sgt i32 %271, -1
  br i1 %cmp377, label %if.then379, label %if.end374.if.end485_crit_edge

if.end374.if.end485_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end485

if.then379:                                       ; preds = %if.end374
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %setup) #12
  %272 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %setup, align 4
  store i16 255, ptr %setup, align 4
  %type = getelementptr inbounds %struct.tuner_setup, ptr %setup, i32 0, i32 1
  %273 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %271, ptr %type, align 4
  %mode_mask = getelementptr inbounds %struct.tuner_setup, ptr %setup, i32 0, i32 2
  %274 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 4, ptr %mode_mask, align 4
  %config = getelementptr inbounds %struct.tuner_setup, ptr %setup, i32 0, i32 3
  %275 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %config, align 4
  %276 = ptrtoint ptr %radio.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %cmp384 = icmp sgt i32 %277, 0
  br i1 %cmp384, label %if.then386, label %if.then379.if.end389_crit_edge

if.then379.if.end389_crit_edge:                   ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end389

if.then386:                                       ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #14
  %278 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 6, ptr %mode_mask, align 4
  br label %if.end389

if.end389:                                        ; preds = %if.then386, %if.then379.if.end389_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %271)
  %cmp391 = icmp eq i32 %271, 71
  %cond = select i1 %cmp391, ptr @cx18_reset_tuner_gpio, ptr null
  %tuner_callback = getelementptr inbounds %struct.tuner_setup, ptr %setup, i32 0, i32 4
  %279 = ptrtoint ptr %tuner_callback to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %cond, ptr %tuner_callback, align 4
  %subdevs398 = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 2, i32 2
  %280 = ptrtoint ptr %subdevs398 to i32
  call void @__asan_load4_noabort(i32 %280)
  %.pn722 = load ptr, ptr %subdevs398, align 16
  %cmp406.not724 = icmp eq ptr %.pn722, %subdevs398
  br i1 %cmp406.not724, label %if.end389.do.end432_crit_edge, label %if.end389.for.body410_crit_edge

if.end389.for.body410_crit_edge:                  ; preds = %if.end389
  br label %for.body410

if.end389.do.end432_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end432

for.body410:                                      ; preds = %for.inc424.for.body410_crit_edge, %if.end389.for.body410_crit_edge
  %.pn725 = phi ptr [ %.pn, %for.inc424.for.body410_crit_edge ], [ %.pn722, %if.end389.for.body410_crit_edge ]
  %__sd394.0726 = getelementptr i8, ptr %.pn725, i32 -80
  %ops411 = getelementptr i8, ptr %.pn725, i32 24
  %281 = ptrtoint ptr %ops411 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ops411, align 4
  %tuner412 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %tuner412 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %tuner412, align 4
  %tobool413.not = icmp eq ptr %284, null
  br i1 %tobool413.not, label %for.body410.for.inc424_crit_edge, label %land.lhs.true414

for.body410.for.inc424_crit_edge:                 ; preds = %for.body410
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc424

land.lhs.true414:                                 ; preds = %for.body410
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %284, i32 0, i32 9
  %285 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %s_type_addr, align 4
  %tobool417.not = icmp eq ptr %286, null
  br i1 %tobool417.not, label %land.lhs.true414.for.inc424_crit_edge, label %if.then418

land.lhs.true414.for.inc424_crit_edge:            ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc424

if.then418:                                       ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #14
  %call422 = call i32 %286(ptr noundef %__sd394.0726, ptr noundef nonnull %setup) #12
  br label %for.inc424

for.inc424:                                       ; preds = %if.then418, %land.lhs.true414.for.inc424_crit_edge, %for.body410.for.inc424_crit_edge
  %287 = ptrtoint ptr %.pn725 to i32
  call void @__asan_load4_noabort(i32 %287)
  %.pn = load ptr, ptr %.pn725, align 4
  %cmp406.not = icmp eq ptr %.pn, %subdevs398
  br i1 %cmp406.not, label %for.inc424.do.end432_crit_edge, label %for.inc424.for.body410_crit_edge

for.inc424.for.body410_crit_edge:                 ; preds = %for.inc424
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body410

for.inc424.do.end432_crit_edge:                   ; preds = %for.inc424
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end432

do.end432:                                        ; preds = %for.inc424.do.end432_crit_edge, %if.end389.do.end432_crit_edge
  %288 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %289)
  %cmp436 = icmp eq i32 %289, 71
  br i1 %cmp436, label %if.then438, label %do.end432.if.end484_crit_edge

do.end432.if.end484_crit_edge:                    ; preds = %do.end432
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end484

if.then438:                                       ; preds = %do.end432
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #12
  %290 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %cfg, i32 0, i32 1
  %291 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %tuner.i, align 4
  %293 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %cfg, align 4
  %294 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr @cx18_probe.ctrl, ptr %290, align 4
  %295 = ptrtoint ptr %subdevs398 to i32
  call void @__asan_load4_noabort(i32 %295)
  %.pn709727 = load ptr, ptr %subdevs398, align 16
  %cmp455.not729 = icmp eq ptr %.pn709727, %subdevs398
  br i1 %cmp455.not729, label %if.then438.do.end481_crit_edge, label %if.then438.for.body459_crit_edge

if.then438.for.body459_crit_edge:                 ; preds = %if.then438
  br label %for.body459

if.then438.do.end481_crit_edge:                   ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end481

for.body459:                                      ; preds = %for.inc473.for.body459_crit_edge, %if.then438.for.body459_crit_edge
  %.pn709730 = phi ptr [ %.pn709, %for.inc473.for.body459_crit_edge ], [ %.pn709727, %if.then438.for.body459_crit_edge ]
  %__sd443.0731 = getelementptr i8, ptr %.pn709730, i32 -80
  %ops460 = getelementptr i8, ptr %.pn709730, i32 24
  %296 = ptrtoint ptr %ops460 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops460, align 4
  %tuner461 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %tuner461 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %tuner461, align 4
  %tobool462.not = icmp eq ptr %299, null
  br i1 %tobool462.not, label %for.body459.for.inc473_crit_edge, label %land.lhs.true463

for.body459.for.inc473_crit_edge:                 ; preds = %for.body459
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc473

land.lhs.true463:                                 ; preds = %for.body459
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %299, i32 0, i32 10
  %300 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %s_config, align 4
  %tobool466.not = icmp eq ptr %301, null
  br i1 %tobool466.not, label %land.lhs.true463.for.inc473_crit_edge, label %if.then467

land.lhs.true463.for.inc473_crit_edge:            ; preds = %land.lhs.true463
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc473

if.then467:                                       ; preds = %land.lhs.true463
  call void @__sanitizer_cov_trace_pc() #14
  %call471 = call i32 %301(ptr noundef %__sd443.0731, ptr noundef nonnull %cfg) #12
  br label %for.inc473

for.inc473:                                       ; preds = %if.then467, %land.lhs.true463.for.inc473_crit_edge, %for.body459.for.inc473_crit_edge
  %302 = ptrtoint ptr %.pn709730 to i32
  call void @__asan_load4_noabort(i32 %302)
  %.pn709 = load ptr, ptr %.pn709730, align 4
  %cmp455.not = icmp eq ptr %.pn709, %subdevs398
  br i1 %cmp455.not, label %for.inc473.do.end481_crit_edge, label %for.inc473.for.body459_crit_edge

for.inc473.for.body459_crit_edge:                 ; preds = %for.inc473
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body459

for.inc473.do.end481_crit_edge:                   ; preds = %for.inc473
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end481

do.end481:                                        ; preds = %for.inc473.do.end481_crit_edge, %if.then438.do.end481_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #12
  br label %if.end484

if.end484:                                        ; preds = %do.end481, %do.end432.if.end484_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %setup) #12
  br label %if.end485

if.end485:                                        ; preds = %if.end484, %if.end374.if.end485_crit_edge
  %303 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %std.i, align 128
  %tuner_std = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 67
  %305 = ptrtoint ptr %tuner_std to i32
  call void @__asan_store8_noabort(i32 %305)
  store i64 %304, ptr %tuner_std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %304)
  %cmp488 = icmp eq i64 %304, 16777215
  br i1 %cmp488, label %if.then490, label %if.end485.if.end492_crit_edge

if.end485.if.end492_crit_edge:                    ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end492

if.then490:                                       ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #14
  %306 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 4096, ptr %std.i, align 128
  br label %if.end492

if.end492:                                        ; preds = %if.then490, %if.end485.if.end492_crit_edge
  %call493 = call i32 @cx18_streams_setup(ptr noundef %call1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call493)
  %tobool494.not = icmp eq i32 %call493, 0
  br i1 %tobool494.not, label %if.end504, label %do.end498

do.end498:                                        ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #14
  %call503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name, i32 noundef %call493) #16
  br label %free_irq

if.end504:                                        ; preds = %if.end492
  %call505 = call i32 @cx18_streams_register(ptr noundef %call1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call505)
  %tobool506.not = icmp eq i32 %call505, 0
  br i1 %tobool506.not, label %do.end519, label %do.end510

do.end510:                                        ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #14
  %call515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name, i32 noundef %call505) #16
  call void @cx18_streams_cleanup(ptr noundef %call1.i.i.i, i32 noundef 1) #12
  br label %free_irq

do.end519:                                        ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #14
  %card_name = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 6
  %307 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %card_name, align 4
  %call524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name, ptr noundef %308) #16
  br label %cleanup

free_irq:                                         ; preds = %do.end510, %do.end498
  %retval1.0 = phi i32 [ %call493, %do.end498 ], [ %call505, %do.end510 ]
  %309 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pci_dev6, align 4
  %irq526 = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 46
  %311 = ptrtoint ptr %irq526 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %irq526, align 4
  %call527 = call ptr @free_irq(i32 noundef %312, ptr noundef %call1.i.i.i) #12
  br label %free_i2c

free_i2c:                                         ; preds = %free_irq, %do.end268, %if.end253.free_i2c_crit_edge
  %retval1.1 = phi i32 [ %call.i712, %do.end268 ], [ %retval1.0, %free_irq ], [ -19, %if.end253.free_i2c_crit_edge ]
  call void @exit_cx18_i2c(ptr noundef %call1.i.i.i) #12
  br label %free_map

free_map:                                         ; preds = %free_i2c, %do.end190, %do.end146
  %retval1.2 = phi i32 [ %call141, %do.end146 ], [ %call185, %do.end190 ], [ %retval1.1, %free_i2c ]
  call fastcc void @cx18_iounmap(ptr noundef %call1.i.i.i)
  br label %free_mem

free_mem:                                         ; preds = %free_map, %do.end80
  %retval1.3 = phi i32 [ %retval1.2, %free_map ], [ -12, %do.end80 ]
  %313 = ptrtoint ptr %base_addr72 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %base_addr72, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %314, i32 noundef 67108864) #12
  br label %free_workqueues

free_workqueues:                                  ; preds = %free_mem, %do.end49.free_workqueues_crit_edge
  %retval1.4 = phi i32 [ %call50, %do.end49.free_workqueues_crit_edge ], [ %retval1.3, %free_mem ]
  %in_work_queue = getelementptr inbounds %struct.cx18, ptr %call1.i.i.i, i32 0, i32 51
  %315 = ptrtoint ptr %in_work_queue to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %in_work_queue, align 4
  call void @destroy_workqueue(ptr noundef %316) #12
  br label %do.end531

do.end531:                                        ; preds = %free_workqueues, %if.end31.do.end531_crit_edge, %cx18_process_options.exit.do.end531_crit_edge
  %retval1.5 = phi i32 [ %call32, %if.end31.do.end531_crit_edge ], [ %retval1.4, %free_workqueues ], [ -19, %cx18_process_options.exit.do.end531_crit_edge ]
  %call536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %retval1.5) #16
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  call void @kfree(ptr noundef %call1.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end531, %do.end519, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call7, %do.end12 ], [ %retval1.5, %do.end531 ], [ 0, %do.end519 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx18_remove(ptr nocapture noundef readonly %pci_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %2 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %do.end

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr i8, ptr %1, i32 60
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %name) #16
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %3 = load i32, ptr @cx18_debug, align 4
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end21_crit_edge, label %do.end13

do.body7.do.end21_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %name16 = getelementptr i8, ptr %1, i32 60
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %name16) #16
  br label %do.end21

do.end21:                                         ; preds = %do.end13, %do.body7.do.end21_crit_edge
  %tot_capturing = getelementptr i8, ptr %1, i32 17080
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tot_capturing, i32 noundef 4) #12
  %4 = ptrtoint ptr %tot_capturing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tot_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then23, label %do.end21.if.end24_crit_edge

do.end21.if.end24_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cx18_stop_all_captures(ptr noundef %add.ptr.i) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.end21.if.end24_crit_edge
  tail call void @cx18_sw1_irq_disable(ptr noundef %add.ptr.i, i32 noundef 196608) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end24
  %i.03.i = phi i32 [ 0, %if.end24 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cx18, ptr %add.ptr.i, i32 0, i32 53, i32 %i.03.i
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %arrayidx.i) #12
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 70
  br i1 %exitcond.not.i, label %cx18_cancel_in_work_orders.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cx18_cancel_in_work_orders.exit:                  ; preds = %for.body.i
  %v4l2_dev.i = getelementptr i8, ptr %1, i32 2500
  %6 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %cx18_cancel_in_work_orders.exit.for.inc.i_crit_edge, label %if.then.i

cx18_cancel_in_work_orders.exit.for.inc.i_crit_edge: ; preds = %cx18_cancel_in_work_orders.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %cx18_cancel_in_work_orders.exit
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.i = getelementptr i8, ptr %1, i32 3036
  %call.i68 = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %cx18_cancel_in_work_orders.exit.for.inc.i_crit_edge
  %v4l2_dev.1.i = getelementptr i8, ptr %1, i32 4748
  %8 = ptrtoint ptr %v4l2_dev.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_dev.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %9, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.1.i = getelementptr i8, ptr %1, i32 5284
  %call.1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.1.i) #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %v4l2_dev.2.i = getelementptr i8, ptr %1, i32 6996
  %10 = ptrtoint ptr %v4l2_dev.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v4l2_dev.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %11, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.2.i = getelementptr i8, ptr %1, i32 7532
  %call.2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.2.i) #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %v4l2_dev.3.i = getelementptr i8, ptr %1, i32 9244
  %12 = ptrtoint ptr %v4l2_dev.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_dev.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %13, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.3.i = getelementptr i8, ptr %1, i32 9780
  %call.3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.3.i) #12
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %v4l2_dev.4.i = getelementptr i8, ptr %1, i32 11492
  %14 = ptrtoint ptr %v4l2_dev.4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2_dev.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %15, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.4.i = getelementptr i8, ptr %1, i32 12028
  %call.4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.4.i) #12
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %v4l2_dev.5.i = getelementptr i8, ptr %1, i32 13740
  %16 = ptrtoint ptr %v4l2_dev.5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_dev.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %17, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.5.i = getelementptr i8, ptr %1, i32 14276
  %call.5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.5.i) #12
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %v4l2_dev.6.i = getelementptr i8, ptr %1, i32 15988
  %18 = ptrtoint ptr %v4l2_dev.6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v4l2_dev.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %19, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.cx18_cancel_out_work_orders.exit_crit_edge, label %if.then.6.i

for.inc.5.i.cx18_cancel_out_work_orders.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_cancel_out_work_orders.exit

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_work_order.6.i = getelementptr i8, ptr %1, i32 16524
  %call.6.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work_order.6.i) #12
  br label %cx18_cancel_out_work_orders.exit

cx18_cancel_out_work_orders.exit:                 ; preds = %if.then.6.i, %for.inc.5.i.cx18_cancel_out_work_orders.exit_crit_edge
  tail call void @cx18_sw2_irq_disable(ptr noundef %add.ptr.i, i32 noundef 136) #12
  tail call void @cx18_halt_firmware(ptr noundef %add.ptr.i) #12
  %in_work_queue = getelementptr i8, ptr %1, i32 20204
  %20 = ptrtoint ptr %in_work_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %21) #12
  tail call void @cx18_streams_cleanup(ptr noundef %add.ptr.i, i32 noundef 1) #12
  tail call void @exit_cx18_i2c(ptr noundef %add.ptr.i) #12
  %pci_dev25 = getelementptr i8, ptr %1, i32 -4
  %22 = ptrtoint ptr %pci_dev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev25, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call26 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %add.ptr.i) #12
  %tobool.not.i69 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i69, label %cx18_cancel_out_work_orders.exit.cx18_iounmap.exit_crit_edge, label %if.end.i

cx18_cancel_out_work_orders.exit.cx18_iounmap.exit_crit_edge: ; preds = %cx18_cancel_out_work_orders.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_iounmap.exit

if.end.i:                                         ; preds = %cx18_cancel_out_work_orders.exit
  %enc_mem.i = getelementptr i8, ptr %1, i32 17100
  %26 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enc_mem.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.end.i.cx18_iounmap.exit_crit_edge, label %do.body.i

if.end.i.cx18_iounmap.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_iounmap.exit

do.body.i:                                        ; preds = %if.end.i
  %28 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr i8, ptr %1, i32 60
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name.i) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %29 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %enc_mem.i, align 4
  tail call void @iounmap(ptr noundef %30) #12
  %31 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %enc_mem.i, align 4
  br label %cx18_iounmap.exit

cx18_iounmap.exit:                                ; preds = %do.end7.i, %if.end.i.cx18_iounmap.exit_crit_edge, %cx18_cancel_out_work_orders.exit.cx18_iounmap.exit_crit_edge
  %base_addr = getelementptr i8, ptr %1, i32 17092
  %32 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %33, i32 noundef 67108864) #12
  %34 = ptrtoint ptr %pci_dev25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev25, align 4
  tail call void @pci_disable_device(ptr noundef %35) #12
  %sliced_mpeg_data = getelementptr i8, ptr %1, i32 19640
  %36 = ptrtoint ptr %sliced_mpeg_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sliced_mpeg_data, align 4
  %tobool28.not = icmp eq ptr %37, null
  br i1 %tobool28.not, label %cx18_iounmap.exit.if.end34_crit_edge, label %cx18_iounmap.exit.for.body_crit_edge

cx18_iounmap.exit.for.body_crit_edge:             ; preds = %cx18_iounmap.exit
  br label %for.body

cx18_iounmap.exit.if.end34_crit_edge:             ; preds = %cx18_iounmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cx18_iounmap.exit.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %cx18_iounmap.exit.for.body_crit_edge ]
  %arrayidx33 = getelementptr %struct.cx18, ptr %add.ptr.i, i32 0, i32 41, i32 7, i32 %i.071
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx33, align 4
  tail call void @kfree(ptr noundef %39) #12
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.if.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34:                                         ; preds = %for.body.if.end34_crit_edge, %cx18_iounmap.exit.if.end34_crit_edge
  %hdl = getelementptr i8, ptr %1, i32 548
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #12
  %name40 = getelementptr i8, ptr %1, i32 60
  %card_name = getelementptr i8, ptr %1, i32 140
  %40 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card_name, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name40, ptr noundef %41) #16
  tail call void @v4l2_device_unregister(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx18_init_struct1(ptr noundef %cx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %base_addr = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 37
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %base_addr, align 4
  %serialize_lock = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %serialize_lock, ptr noundef nonnull @.str.132, ptr noundef nonnull @cx18_init_struct1.__key) #12
  %gpio_lock = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 61
  tail call void @__mutex_init(ptr noundef %gpio_lock, ptr noundef nonnull @.str.134, ptr noundef nonnull @cx18_init_struct1.__key.133) #12
  %epu2apu_mb_lock = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %epu2apu_mb_lock, ptr noundef nonnull @.str.136, ptr noundef nonnull @cx18_init_struct1.__key.135) #12
  %epu2cpu_mb_lock = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %epu2cpu_mb_lock, ptr noundef nonnull @.str.138, ptr noundef nonnull @cx18_init_struct1.__key.137) #12
  %in_workq_name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 52
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %in_workq_name.i, i32 noundef 11, ptr noundef nonnull @.str.147, ptr noundef %name.i) #12
  %call4.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.148, i32 noundef 655362, i32 noundef 1, ptr noundef %in_workq_name.i) #12
  %in_work_queue.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 51
  %5 = ptrtoint ptr %in_work_queue.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4.i, ptr %in_work_queue.i, align 4
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %cx18_create_in_workq.exit, label %if.end

cx18_create_in_workq.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %epu_debug_str.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 54
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.035.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.035.i
  %cx1.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.035.i, i32 2
  %6 = ptrtoint ptr %cx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cx, ptr %cx1.i, align 4
  %str.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.035.i, i32 7
  %7 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %epu_debug_str.i, ptr %str.i, align 4
  tail call void @__init_work(ptr noundef %arrayidx.i, i32 noundef 0) #12
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %arrayidx.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @cx18_init_in_work_orders.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry15.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 1
  %9 = ptrtoint ptr %entry15.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry15.i, ptr %entry15.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry15.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cx18_in_work_handler, ptr %func.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 70
  br i1 %exitcond.not.i, label %cx18_init_in_work_orders.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cx18_init_in_work_orders.exit:                    ; preds = %for.body.i
  %open_id = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 36
  %12 = ptrtoint ptr %open_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %open_id, align 8
  %cxhdl = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19
  %port = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %port, align 4
  %14 = ptrtoint ptr %cxhdl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %cxhdl, align 8
  %ops = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cx18_cxhdl_ops, ptr %ops, align 4
  %func = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 8
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cx18_api_func, ptr %func, align 8
  %streams = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 29
  %priv = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 7
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %streams, ptr %priv, align 4
  %call16 = tail call i32 @cx2341x_handler_init(ptr noundef %cxhdl, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cx18_init_in_work_orders.exit.cleanup_crit_edge

cx18_init_in_work_orders.exit.cleanup_crit_edge:  ; preds = %cx18_init_in_work_orders.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %cx18_init_in_work_orders.exit
  %hdl = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 6
  %ctrl_handler = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %19 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 17
  %video_temporal_filter = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 17, i32 1
  %20 = ptrtoint ptr %video_temporal_filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %video_temporal_filter, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur, align 8
  %temporal_strength = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 21
  %24 = ptrtoint ptr %temporal_strength to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %temporal_strength, align 8
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %cur23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 23
  %27 = ptrtoint ptr %cur23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur23, align 8
  %spatial_strength = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 22
  %29 = ptrtoint ptr %spatial_strength to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %spatial_strength, align 4
  %30 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 15
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %cur26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %cur26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur26, align 8
  %video_temporal_filter_mode = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 15, i32 1
  %35 = ptrtoint ptr %video_temporal_filter_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %video_temporal_filter_mode, align 4
  %cur29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %cur29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur29, align 8
  %shl = shl i32 %38, 1
  %or = or i32 %shl, %34
  %video_median_filter_type = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 15, i32 2
  %39 = ptrtoint ptr %video_median_filter_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video_median_filter_type, align 8
  %cur32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %cur32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur32, align 8
  %shl34 = shl i32 %42, 2
  %or35 = or i32 %or, %shl34
  %filter_mode = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 20
  %43 = ptrtoint ptr %filter_mode to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or35, ptr %filter_mode, align 4
  %cap_w = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 46
  tail call void @__init_waitqueue_head(ptr noundef %cap_w, ptr noundef nonnull @.str.140, ptr noundef nonnull @cx18_init_struct1.__key.139) #12
  %mb_apu_waitq = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 44
  tail call void @__init_waitqueue_head(ptr noundef %mb_apu_waitq, ptr noundef nonnull @.str.142, ptr noundef nonnull @cx18_init_struct1.__key.141) #12
  %mb_cpu_waitq = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 45
  tail call void @__init_waitqueue_head(ptr noundef %mb_cpu_waitq, ptr noundef nonnull @.str.144, ptr noundef nonnull @cx18_init_struct1.__key.143) #12
  %dma_waitq = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 47
  tail call void @__init_waitqueue_head(ptr noundef %dma_waitq, ptr noundef nonnull @.str.146, ptr noundef nonnull @cx18_init_struct1.__key.145) #12
  %vbi = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41
  %44 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %vbi, align 4
  %fmt = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 0, i32 1
  %sliced_in = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 1
  %45 = ptrtoint ptr %sliced_in to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %fmt, ptr %sliced_in, align 4
  %sliced_mpeg_buf = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 11
  %46 = ptrtoint ptr %sliced_mpeg_buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %sliced_mpeg_buf, ptr %sliced_mpeg_buf, align 4
  %prev.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 11, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sliced_mpeg_buf, ptr %prev.i, align 4
  %sliced_mpeg_mdl = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 10
  %48 = ptrtoint ptr %sliced_mpeg_mdl to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %sliced_mpeg_mdl, ptr %sliced_mpeg_mdl, align 4
  %prev.i102 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 10, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sliced_mpeg_mdl, ptr %prev.i102, align 4
  %buf_list = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 10, i32 4
  %50 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i103 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 41, i32 10, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf_list, ptr %prev.i103, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sliced_mpeg_buf, ptr noundef %buf_list, ptr noundef %buf_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %sliced_mpeg_buf, ptr %prev.i103, align 4
  %53 = ptrtoint ptr %sliced_mpeg_buf to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf_list, ptr %sliced_mpeg_buf, align 4
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf_list, ptr %prev.i, align 4
  %55 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %sliced_mpeg_buf, ptr %buf_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end19.cleanup_crit_edge, %cx18_init_in_work_orders.exit.cleanup_crit_edge, %cx18_create_in_workq.exit
  %retval.0 = phi i32 [ -12, %cx18_create_in_workq.exit ], [ %call16, %cx18_init_in_work_orders.exit.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx18_setup_pci(ptr noundef %cx, ptr noundef %pci_dev) unnamed_addr #1 align 64 {
entry:
  %cmd = alloca i16, align 2
  %pci_latency = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #12
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd, align 2, !annotation !617
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_latency) #12
  %1 = ptrtoint ptr %pci_latency to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %pci_latency, align 1, !annotation !617
  %2 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  %name12 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cx, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %name12, i32 noundef %4) #16
  br label %cleanup

if.end15:                                         ; preds = %do.end3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call16 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end28, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %name24 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cx, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name24, i32 noundef %6) #16
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %base_addr = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 37
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 4
  %call29 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 67108864, ptr noundef nonnull @.str.160, i32 noundef 0) #12
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end41

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %name37 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cx, align 8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %name37, i32 noundef %10) #16
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %call42 = call i32 @pci_read_config_word(ptr noundef %pci_dev, i32 noundef 4, ptr noundef nonnull %cmd) #12
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cmd, align 2
  %13 = or i16 %12, 6
  store i16 %13, ptr %cmd, align 2
  %call44 = call i32 @pci_write_config_word(ptr noundef %pci_dev, i32 noundef 4, i16 noundef zeroext %13) #12
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 12
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  %card_rev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 38
  %16 = ptrtoint ptr %card_rev to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %card_rev, align 8
  %call45 = call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 13, ptr noundef nonnull %pci_latency) #12
  %17 = ptrtoint ptr %pci_latency to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pci_latency, align 1
  %conv46 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp = icmp ult i8 %18, 64
  br i1 %cmp, label %land.lhs.true, label %if.end41.do.body62_crit_edge

if.end41.do.body62_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

land.lhs.true:                                    ; preds = %if.end41
  %19 = load i32, ptr @cx18_pci_latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %land.lhs.true.do.body62_crit_edge, label %do.end52

land.lhs.true.do.body62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

do.end52:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %name55 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name55, i32 noundef %conv46) #16
  %call59 = call i32 @pci_write_config_byte(ptr noundef %pci_dev, i32 noundef 13, i8 noundef zeroext 64) #12
  %call60 = call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 13, ptr noundef nonnull %pci_latency) #12
  br label %do.body62

do.body62:                                        ; preds = %do.end52, %land.lhs.true.do.body62_crit_edge, %if.end41.do.body62_crit_edge
  %20 = load i32, ptr @cx18_debug, align 4
  %and63 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.cleanup_crit_edge, label %do.end68

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %name71 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %pci_dev73 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 1
  %21 = ptrtoint ptr %pci_dev73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev73, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device, align 2
  %conv74 = zext i16 %24 to i32
  %25 = ptrtoint ptr %card_rev to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %card_rev, align 8
  %conv76 = zext i8 %26 to i32
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 1
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %number, align 4
  %conv77 = zext i8 %30 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 6
  %31 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %32, 3
  %and78 = and i32 %shr, 31
  %and80 = and i32 %32, 7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %35 = ptrtoint ptr %pci_latency to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pci_latency, align 1
  %conv82 = zext i8 %36 to i32
  %37 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_addr, align 4
  %conv84 = zext i32 %38 to i64
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %name71, i32 noundef %conv74, i32 noundef %conv76, i32 noundef %conv77, i32 noundef %and78, i32 noundef %and80, i32 noundef %34, i32 noundef %conv82, i64 noundef %conv84) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.body62.cleanup_crit_edge, %do.end34, %do.end21, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ -5, %do.end21 ], [ -5, %do.end34 ], [ 0, %do.end68 ], [ 0, %do.body62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_latency) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_init_power(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_init_memory(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_init_scb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_gpio_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_probe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_gpio_register(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_cx18_i2c(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_process_eeprom(ptr noundef %cx) unnamed_addr #1 align 64 {
entry:
  %tv = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv) #12
  %0 = call ptr @memset(ptr %tv, i32 255, i32 68)
  call void @cx18_read_eeprom(ptr noundef %cx, ptr noundef nonnull %tv)
  %model = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 11
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %model, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %2, label %do.end18 [
    i32 74301, label %entry.sw.epilog_crit_edge
    i32 74321, label %entry.sw.epilog_crit_edge196
    i32 74351, label %entry.sw.epilog_crit_edge197
    i32 74361, label %entry.sw.epilog_crit_edge198
    i32 74021, label %entry.sw.bb1_crit_edge
    i32 74031, label %entry.sw.bb1_crit_edge199
    i32 74041, label %entry.sw.bb1_crit_edge200
    i32 74141, label %entry.sw.bb1_crit_edge201
    i32 74541, label %entry.sw.bb1_crit_edge202
    i32 74551, label %entry.sw.bb1_crit_edge203
    i32 74591, label %entry.sw.bb1_crit_edge204
    i32 74651, label %entry.sw.bb1_crit_edge205
    i32 74691, label %entry.sw.bb1_crit_edge206
    i32 74751, label %entry.sw.bb1_crit_edge207
    i32 74891, label %entry.sw.bb1_crit_edge208
    i32 1816, label %entry.cleanup_crit_edge
    i32 -1, label %do.end
    i32 0, label %do.end10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.sw.bb1_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.epilog_crit_edge198:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge197:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge196:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge199, %entry.sw.bb1_crit_edge200, %entry.sw.bb1_crit_edge201, %entry.sw.bb1_crit_edge202, %entry.sw.bb1_crit_edge203, %entry.sw.bb1_crit_edge204, %entry.sw.bb1_crit_edge205, %entry.sw.bb1_crit_edge206, %entry.sw.bb1_crit_edge207, %entry.sw.bb1_crit_edge208
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name) #16
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name13 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name13) #16
  br label %cleanup

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name21 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name21, i32 noundef %2) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge196, %entry.sw.epilog_crit_edge197, %entry.sw.epilog_crit_edge198
  %.sink = phi i16 [ 0, %do.end18 ], [ 0, %sw.bb1 ], [ 9, %entry.sw.epilog_crit_edge ], [ 9, %entry.sw.epilog_crit_edge196 ], [ 9, %entry.sw.epilog_crit_edge197 ], [ 9, %entry.sw.epilog_crit_edge198 ]
  %call25 = call ptr @cx18_get_card(i16 noundef zeroext %.sink) #12
  %card26 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %4 = ptrtoint ptr %card26 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call25, ptr %card26, align 8
  %v4l2_capabilities = getelementptr inbounds %struct.cx18_card, ptr %call25, i32 0, i32 3
  %5 = ptrtoint ptr %v4l2_capabilities to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v4l2_capabilities, align 4
  %v4l2_cap = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 12
  %7 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %v4l2_cap, align 8
  %name29 = getelementptr inbounds %struct.cx18_card, ptr %call25, i32 0, i32 1
  %8 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name29, align 4
  %card_name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 6
  %10 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %card_name, align 4
  %i2c = getelementptr inbounds %struct.cx18_card, ptr %call25, i32 0, i32 15
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 8
  %card_i2c = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 7
  %13 = ptrtoint ptr %card_i2c to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %card_i2c, align 8
  %name36 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name36, ptr noundef %9) #16
  %tuner_type = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 3
  %14 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp = icmp eq i32 %15, 4
  br i1 %cmp, label %do.end42, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end42:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name36) #16
  br label %if.end

if.end:                                           ; preds = %do.end42, %sw.epilog.if.end_crit_edge
  %tuner = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 26, i32 2
  %16 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp48 = icmp eq i32 %17, -1
  br i1 %cmp48, label %if.then49, label %if.end.if.end53_crit_edge

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tuner_type, align 4
  %20 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tuner, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end.if.end53_crit_edge
  %radio = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 26, i32 3
  %21 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp55 = icmp eq i32 %22, -1
  br i1 %cmp55, label %if.then56, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp57 = icmp ne i32 %24, 0
  %conv = zext i1 %cmp57 to i32
  %25 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %radio, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end53.if.end60_crit_edge
  %std = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 66
  %26 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp61.not = icmp eq i64 %27, 0
  br i1 %cmp61.not, label %if.end64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %tuner_formats = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 4
  %28 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tuner_formats, align 4
  %conv65 = zext i32 %29 to i64
  %and = and i64 %conv65, 16758783
  call void @__sanitizer_cov_trace_const_cmp8(i64 16758783, i64 %and)
  %cmp66 = icmp eq i64 %and, 16758783
  br i1 %cmp66, label %do.body69, label %if.else

do.body69:                                        ; preds = %if.end64
  %30 = load i32, ptr @cx18_debug, align 4
  %and70 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool.not = icmp eq i32 %and70, 0
  br i1 %tobool.not, label %do.body69.do.end82_crit_edge, label %do.end74

do.body69.do.end82_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

do.end74:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef %name36) #16
  br label %do.end82

do.end82:                                         ; preds = %do.end74, %do.body69.do.end82_crit_edge
  %31 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 16777215, ptr %std, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end64
  %and86 = and i64 %conv65, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86)
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %if.else105, label %do.body89

do.body89:                                        ; preds = %if.else
  %32 = load i32, ptr @cx18_debug, align 4
  %and90 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.do.end103_crit_edge, label %do.end95

do.body89.do.end103_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #14
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name36) #16
  br label %do.end103

do.end103:                                        ; preds = %do.end95, %do.body89.do.end103_crit_edge
  %33 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %std, align 8
  %or = or i64 %34, 15
  store i64 %or, ptr %std, align 8
  br label %cleanup

if.else105:                                       ; preds = %if.else
  %and108 = and i64 %conv65, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and108)
  %tobool109.not = icmp eq i64 %and108, 0
  br i1 %tobool109.not, label %if.else128, label %do.body111

do.body111:                                       ; preds = %if.else105
  %35 = load i32, ptr @cx18_debug, align 4
  %and112 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body111.do.end125_crit_edge, label %do.end117

do.body111.do.end125_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

do.end117:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #14
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef %name36) #16
  br label %do.end125

do.end125:                                        ; preds = %do.end117, %do.body111.do.end125_crit_edge
  %36 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %std, align 8
  %or127 = or i64 %37, 4096
  store i64 %or127, ptr %std, align 8
  br label %cleanup

if.else128:                                       ; preds = %if.else105
  %and131 = and i64 %conv65, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and131)
  %tobool132.not = icmp eq i64 %and131, 0
  br i1 %tobool132.not, label %do.end154, label %do.body134

do.body134:                                       ; preds = %if.else128
  %38 = load i32, ptr @cx18_debug, align 4
  %and135 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body134.do.end148_crit_edge, label %do.end140

do.body134.do.end148_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end148

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #14
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %name36) #16
  br label %do.end148

do.end148:                                        ; preds = %do.end140, %do.body134.do.end148_crit_edge
  %39 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %std, align 8
  %or150 = or i64 %40, 4194304
  store i64 %or150, ptr %std, align 8
  br label %cleanup

do.end154:                                        ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #14
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %name36) #16
  %41 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %std, align 8
  %or161 = or i64 %42, 4096
  store i64 %or161, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end154, %do.end148, %do.end125, %do.end103, %do.end82, %if.end60.cleanup_crit_edge, %do.end10, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_irq_handler(i32 noundef, ptr noundef) #0

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_init_struct2(ptr nocapture noundef %cx) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %arrayidx = getelementptr %struct.cx18_card, ptr %1, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.cx18_card, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.1 = icmp eq i8 %5, 0
  br i1 %cmp1.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.cx18_card, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1.2 = icmp eq i8 %7, 0
  br i1 %cmp1.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.cx18_card, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.3 = icmp eq i8 %9, 0
  br i1 %cmp1.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.4 = getelementptr %struct.cx18_card, ptr %1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.4 = icmp eq i8 %11, 0
  %spec.select76 = select i1 %cmp1.4, i32 4, i32 5
  br label %for.end

for.end:                                          ; preds = %for.inc.3, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ %spec.select76, %for.inc.3 ]
  %conv3 = trunc i32 %i.0.lcssa to i8
  %nof_inputs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 10
  %12 = ptrtoint ptr %nof_inputs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %nof_inputs, align 2
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 8
  %arrayidx9 = getelementptr %struct.cx18_card, ptr %14, i32 0, i32 8, i32 0
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp11 = icmp eq i8 %16, 0
  br i1 %cmp11, label %for.end.for.end17_crit_edge, label %for.inc15

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.inc15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx9.1 = getelementptr %struct.cx18_card, ptr %14, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp11.1 = icmp eq i8 %18, 0
  %spec.select77 = select i1 %cmp11.1, i8 1, i8 2
  br label %for.end17

for.end17:                                        ; preds = %for.inc15, %for.end.for.end17_crit_edge
  %i.1.lcssa = phi i8 [ 0, %for.end.for.end17_crit_edge ], [ %spec.select77, %for.inc15 ]
  %nof_audio_inputs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 11
  %19 = ptrtoint ptr %nof_audio_inputs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %i.1.lcssa, ptr %nof_audio_inputs, align 1
  br i1 %cmp1, label %for.end17.for.end36_crit_edge, label %for.body24.lr.ph

for.end17.for.end36_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.body24.lr.ph:                                 ; preds = %for.end17
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 8
  br label %for.body24

for.body24:                                       ; preds = %for.inc34.for.body24_crit_edge, %for.body24.lr.ph
  %i.272 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc35, %for.inc34.for.body24_crit_edge ]
  %arrayidx27 = getelementptr %struct.cx18_card, ptr %21, i32 0, i32 7, i32 %i.272
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp30 = icmp eq i8 %23, 1
  br i1 %cmp30, label %for.body24.for.end36_crit_edge, label %for.inc34

for.body24.for.end36_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.inc34:                                        ; preds = %for.body24
  %inc35 = add nuw nsw i32 %i.272, 1
  %exitcond.not = icmp eq i32 %inc35, %i.0.lcssa
  br i1 %exitcond.not, label %for.inc34.for.end36_crit_edge, label %for.inc34.for.body24_crit_edge

for.inc34.for.body24_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %for.body24.for.end36_crit_edge, %for.end17.for.end36_crit_edge
  %i.2.lcssa = phi i32 [ 0, %for.end17.for.end36_crit_edge ], [ %i.272, %for.body24.for.end36_crit_edge ], [ %i.0.lcssa, %for.inc34.for.end36_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa, i32 %i.0.lcssa)
  %cmp39 = icmp eq i32 %i.2.lcssa, %i.0.lcssa
  %spec.select = select i1 %cmp39, i32 0, i32 %i.2.lcssa
  %active_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 65
  %24 = ptrtoint ptr %active_input to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %active_input, align 8
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 8
  %audio_index = getelementptr %struct.cx18_card, ptr %26, i32 0, i32 7, i32 %spec.select, i32 1
  %27 = ptrtoint ptr %audio_index to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %audio_index, align 1
  %conv46 = zext i8 %28 to i32
  %audio_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 64
  %29 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv46, ptr %audio_input, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_init_subdevs(ptr noundef %cx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %hw_all = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hw_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_all, align 8
  %hw_flags7 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %device.051 = phi i32 [ 1, %entry ], [ %shl, %for.inc.for.body_crit_edge ]
  %and = and i32 %device.051, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = zext i32 %device.051 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %device.051, label %sw.default [
    i32 8, label %if.end.for.inc.sink.split_crit_edge
    i32 2, label %if.end.for.inc.sink.split_crit_edge55
    i32 16, label %sw.bb1
    i32 64, label %if.end.for.inc_crit_edge
    i32 32, label %sw.bb4
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.for.inc.sink.split_crit_edge55:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

sw.bb4:                                           ; preds = %if.end
  %call = tail call i32 @cx18_gpio_register(ptr noundef %cx, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %sw.bb4.for.inc.sink.split_crit_edge, label %sw.bb4.for.inc_crit_edge

sw.bb4.for.inc_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb4.for.inc.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

sw.default:                                       ; preds = %if.end
  %call10 = tail call i32 @cx18_i2c_register(ptr noundef %cx, i32 noundef %i.053) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %sw.default.for.inc.sink.split_crit_edge, label %sw.default.for.inc_crit_edge

sw.default.for.inc_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.default.for.inc.sink.split_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.default.for.inc.sink.split_crit_edge, %sw.bb4.for.inc.sink.split_crit_edge, %sw.bb1, %if.end.for.inc.sink.split_crit_edge, %if.end.for.inc.sink.split_crit_edge55
  %device.051.sink = phi i32 [ 16, %sw.bb1 ], [ %device.051, %if.end.for.inc.sink.split_crit_edge ], [ %device.051, %if.end.for.inc.sink.split_crit_edge55 ], [ 32, %sw.bb4.for.inc.sink.split_crit_edge ], [ %device.051, %sw.default.for.inc.sink.split_crit_edge ]
  %5 = ptrtoint ptr %hw_flags7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_flags7, align 4
  %or = or i32 %6, %device.051.sink
  store i32 %or, ptr %hw_flags7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.default.for.inc_crit_edge, %sw.bb4.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %shl = shl i32 %device.051, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %7 = ptrtoint ptr %hw_flags7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_flags7, align 4
  %and17 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.end.if.end21_crit_edge, label %if.then19

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call ptr @cx18_find_hw(ptr noundef %cx, i32 noundef 16) #12
  %sd_av = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 3
  %9 = ptrtoint ptr %sd_av to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %sd_av, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end.if.end21_crit_edge
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 8
  %hw_muxer = getelementptr inbounds %struct.cx18_card, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %hw_muxer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_muxer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23.not = icmp eq i32 %13, 0
  br i1 %cmp23.not, label %if.end21.if.end28_crit_edge, label %if.then24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call ptr @cx18_find_hw(ptr noundef %cx, i32 noundef %13) #12
  %sd_extmux = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 4
  %14 = ptrtoint ptr %sd_extmux to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call27, ptr %sd_extmux, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_50hz(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_reset_tuner_gpio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_streams_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_streams_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_streams_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_cx18_i2c(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_iounmap(ptr noundef %cx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cx, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.end

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end:                                           ; preds = %entry
  %enc_mem = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 39
  %0 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_mem, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %do.body

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %if.end
  %2 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %3 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enc_mem, align 4
  tail call void @iounmap(ptr noundef %4) #12
  %5 = ptrtoint ptr %enc_mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %enc_mem, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_get_card(i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_api_func(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_in_work_handler(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_i2c_register(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_find_hw(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_stop_all_captures(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_sw1_irq_disable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_sw2_irq_disable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_halt_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !151, !152, !153, !154, !155, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !191, !193, !194, !195, !197, !199, !200, !201, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !298, !300, !301, !302, !303, !305, !306, !307, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !397, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !471, !472, !474, !475, !477, !478, !480, !481, !483, !485, !487, !488, !489, !490, !492, !493, !495, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !510, !511, !512, !514, !515, !516, !518, !519, !520, !522, !523, !524, !525, !527, !528, !529, !531, !532, !533, !535, !536, !537, !539, !540, !541, !543, !544, !545, !547, !548, !549, !551, !552, !553, !555, !556, !557, !559, !560, !561, !563, !564, !565, !566, !568, !569, !570, !571, !573, !574, !575, !577, !578, !579, !581, !582, !583, !584, !586, !587, !588, !590, !591, !592, !594, !595, !596, !598, !599}
!llvm.named.register.sp = !{!600}
!llvm.module.flags = !{!601, !602, !603, !604, !605, !606, !607, !608}
!llvm.ident = !{!609}

!0 = !{ptr @__ksymtab_cx18_ext_init, !1, !"__ksymtab_cx18_ext_init", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 39, i32 1}
!2 = !{ptr @__param_tuner, !3, !"__param_tuner", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 98, i32 1}
!4 = !{ptr @__UNIQUE_ID_tunertype385, !3, !"__UNIQUE_ID_tunertype385", i1 false, i1 false}
!5 = !{ptr @__param_radio, !6, !"__param_radio", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 99, i32 1}
!7 = !{ptr @__UNIQUE_ID_radiotype386, !6, !"__UNIQUE_ID_radiotype386", i1 false, i1 false}
!8 = !{ptr @__param_cardtype, !9, !"__param_cardtype", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 100, i32 1}
!10 = !{ptr @__UNIQUE_ID_cardtypetype387, !9, !"__UNIQUE_ID_cardtypetype387", i1 false, i1 false}
!11 = !{ptr @__param_pal, !12, !"__param_pal", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 101, i32 1}
!13 = !{ptr @__UNIQUE_ID_paltype388, !12, !"__UNIQUE_ID_paltype388", i1 false, i1 false}
!14 = !{ptr @__param_secam, !15, !"__param_secam", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 102, i32 1}
!16 = !{ptr @__UNIQUE_ID_secamtype389, !15, !"__UNIQUE_ID_secamtype389", i1 false, i1 false}
!17 = !{ptr @__param_ntsc, !18, !"__param_ntsc", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 103, i32 1}
!19 = !{ptr @__UNIQUE_ID_ntsctype390, !18, !"__UNIQUE_ID_ntsctype390", i1 false, i1 false}
!20 = !{ptr @__param_debug, !21, !"__param_debug", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 104, i32 1}
!22 = !{ptr @__UNIQUE_ID_debugtype391, !21, !"__UNIQUE_ID_debugtype391", i1 false, i1 false}
!23 = !{ptr @__param_mmio_ndelay, !24, !"__param_mmio_ndelay", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 105, i32 1}
!25 = !{ptr @__UNIQUE_ID_mmio_ndelaytype392, !24, !"__UNIQUE_ID_mmio_ndelaytype392", i1 false, i1 false}
!26 = !{ptr @__param_retry_mmio, !27, !"__param_retry_mmio", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 106, i32 1}
!28 = !{ptr @__UNIQUE_ID_retry_mmiotype393, !27, !"__UNIQUE_ID_retry_mmiotype393", i1 false, i1 false}
!29 = !{ptr @__param_cx18_pci_latency, !30, !"__param_cx18_pci_latency", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 107, i32 1}
!31 = !{ptr @__UNIQUE_ID_cx18_pci_latencytype394, !30, !"__UNIQUE_ID_cx18_pci_latencytype394", i1 false, i1 false}
!32 = !{ptr @__param_cx18_first_minor, !33, !"__param_cx18_first_minor", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 108, i32 1}
!34 = !{ptr @__UNIQUE_ID_cx18_first_minortype395, !33, !"__UNIQUE_ID_cx18_first_minortype395", i1 false, i1 false}
!35 = !{ptr @__param_enc_ts_buffers, !36, !"__param_enc_ts_buffers", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 110, i32 1}
!37 = !{ptr @__UNIQUE_ID_enc_ts_bufferstype396, !36, !"__UNIQUE_ID_enc_ts_bufferstype396", i1 false, i1 false}
!38 = !{ptr @__param_enc_mpg_buffers, !39, !"__param_enc_mpg_buffers", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 111, i32 1}
!40 = !{ptr @__UNIQUE_ID_enc_mpg_bufferstype397, !39, !"__UNIQUE_ID_enc_mpg_bufferstype397", i1 false, i1 false}
!41 = !{ptr @__param_enc_idx_buffers, !42, !"__param_enc_idx_buffers", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 112, i32 1}
!43 = !{ptr @__UNIQUE_ID_enc_idx_bufferstype398, !42, !"__UNIQUE_ID_enc_idx_bufferstype398", i1 false, i1 false}
!44 = !{ptr @__param_enc_yuv_buffers, !45, !"__param_enc_yuv_buffers", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 113, i32 1}
!46 = !{ptr @__UNIQUE_ID_enc_yuv_bufferstype399, !45, !"__UNIQUE_ID_enc_yuv_bufferstype399", i1 false, i1 false}
!47 = !{ptr @__param_enc_vbi_buffers, !48, !"__param_enc_vbi_buffers", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 114, i32 1}
!49 = !{ptr @__UNIQUE_ID_enc_vbi_bufferstype400, !48, !"__UNIQUE_ID_enc_vbi_bufferstype400", i1 false, i1 false}
!50 = !{ptr @__param_enc_pcm_buffers, !51, !"__param_enc_pcm_buffers", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 115, i32 1}
!52 = !{ptr @__UNIQUE_ID_enc_pcm_bufferstype401, !51, !"__UNIQUE_ID_enc_pcm_bufferstype401", i1 false, i1 false}
!53 = !{ptr @__param_enc_ts_bufsize, !54, !"__param_enc_ts_bufsize", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 117, i32 1}
!55 = !{ptr @__UNIQUE_ID_enc_ts_bufsizetype402, !54, !"__UNIQUE_ID_enc_ts_bufsizetype402", i1 false, i1 false}
!56 = !{ptr @__param_enc_mpg_bufsize, !57, !"__param_enc_mpg_bufsize", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 118, i32 1}
!58 = !{ptr @__UNIQUE_ID_enc_mpg_bufsizetype403, !57, !"__UNIQUE_ID_enc_mpg_bufsizetype403", i1 false, i1 false}
!59 = !{ptr @__param_enc_idx_bufsize, !60, !"__param_enc_idx_bufsize", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 119, i32 1}
!61 = !{ptr @__UNIQUE_ID_enc_idx_bufsizetype404, !60, !"__UNIQUE_ID_enc_idx_bufsizetype404", i1 false, i1 false}
!62 = !{ptr @__param_enc_yuv_bufsize, !63, !"__param_enc_yuv_bufsize", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 120, i32 1}
!64 = !{ptr @__UNIQUE_ID_enc_yuv_bufsizetype405, !63, !"__UNIQUE_ID_enc_yuv_bufsizetype405", i1 false, i1 false}
!65 = !{ptr @__param_enc_pcm_bufsize, !66, !"__param_enc_pcm_bufsize", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 121, i32 1}
!67 = !{ptr @__UNIQUE_ID_enc_pcm_bufsizetype406, !66, !"__UNIQUE_ID_enc_pcm_bufsizetype406", i1 false, i1 false}
!68 = !{ptr @__param_enc_ts_bufs, !69, !"__param_enc_ts_bufs", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 123, i32 1}
!70 = !{ptr @__UNIQUE_ID_enc_ts_bufstype407, !69, !"__UNIQUE_ID_enc_ts_bufstype407", i1 false, i1 false}
!71 = !{ptr @__param_enc_mpg_bufs, !72, !"__param_enc_mpg_bufs", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 124, i32 1}
!73 = !{ptr @__UNIQUE_ID_enc_mpg_bufstype408, !72, !"__UNIQUE_ID_enc_mpg_bufstype408", i1 false, i1 false}
!74 = !{ptr @__param_enc_idx_bufs, !75, !"__param_enc_idx_bufs", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 125, i32 1}
!76 = !{ptr @__UNIQUE_ID_enc_idx_bufstype409, !75, !"__UNIQUE_ID_enc_idx_bufstype409", i1 false, i1 false}
!77 = !{ptr @__param_enc_yuv_bufs, !78, !"__param_enc_yuv_bufs", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 126, i32 1}
!79 = !{ptr @__UNIQUE_ID_enc_yuv_bufstype410, !78, !"__UNIQUE_ID_enc_yuv_bufstype410", i1 false, i1 false}
!80 = !{ptr @__param_enc_vbi_bufs, !81, !"__param_enc_vbi_bufs", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 127, i32 1}
!82 = !{ptr @__UNIQUE_ID_enc_vbi_bufstype411, !81, !"__UNIQUE_ID_enc_vbi_bufstype411", i1 false, i1 false}
!83 = !{ptr @__param_enc_pcm_bufs, !84, !"__param_enc_pcm_bufs", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 128, i32 1}
!85 = !{ptr @__UNIQUE_ID_enc_pcm_bufstype412, !84, !"__UNIQUE_ID_enc_pcm_bufstype412", i1 false, i1 false}
!86 = !{ptr @__UNIQUE_ID_tuner413, !87, !"__UNIQUE_ID_tuner413", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 130, i32 1}
!88 = !{ptr @__UNIQUE_ID_radio414, !89, !"__UNIQUE_ID_radio414", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 132, i32 1}
!90 = !{ptr @__UNIQUE_ID_cardtype415, !91, !"__UNIQUE_ID_cardtype415", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 135, i32 1}
!92 = !{ptr @__UNIQUE_ID_pal416, !93, !"__UNIQUE_ID_pal416", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 150, i32 1}
!94 = !{ptr @__UNIQUE_ID_secam417, !95, !"__UNIQUE_ID_secam417", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 151, i32 1}
!96 = !{ptr @__UNIQUE_ID_ntsc418, !97, !"__UNIQUE_ID_ntsc418", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 152, i32 1}
!98 = !{ptr @__UNIQUE_ID_debug419, !99, !"__UNIQUE_ID_debug419", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 153, i32 1}
!100 = !{ptr @__UNIQUE_ID_cx18_pci_latency420, !101, !"__UNIQUE_ID_cx18_pci_latency420", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 164, i32 1}
!102 = !{ptr @__UNIQUE_ID_retry_mmio421, !103, !"__UNIQUE_ID_retry_mmio421", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 167, i32 1}
!104 = !{ptr @__UNIQUE_ID_mmio_ndelay422, !105, !"__UNIQUE_ID_mmio_ndelay422", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 170, i32 1}
!106 = !{ptr @__UNIQUE_ID_enc_ts_buffers423, !107, !"__UNIQUE_ID_enc_ts_buffers423", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 173, i32 1}
!108 = !{ptr @__UNIQUE_ID_enc_ts_bufsize424, !109, !"__UNIQUE_ID_enc_ts_bufsize424", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 176, i32 1}
!110 = !{ptr @__UNIQUE_ID_enc_ts_bufs425, !111, !"__UNIQUE_ID_enc_ts_bufs425", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 179, i32 1}
!112 = !{ptr @__UNIQUE_ID_enc_mpg_buffers426, !113, !"__UNIQUE_ID_enc_mpg_buffers426", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 182, i32 1}
!114 = !{ptr @__UNIQUE_ID_enc_mpg_bufsize427, !115, !"__UNIQUE_ID_enc_mpg_bufsize427", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 185, i32 1}
!116 = !{ptr @__UNIQUE_ID_enc_mpg_bufs428, !117, !"__UNIQUE_ID_enc_mpg_bufs428", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 188, i32 1}
!118 = !{ptr @__UNIQUE_ID_enc_idx_buffers429, !119, !"__UNIQUE_ID_enc_idx_buffers429", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 191, i32 1}
!120 = !{ptr @__UNIQUE_ID_enc_idx_bufsize430, !121, !"__UNIQUE_ID_enc_idx_bufsize430", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 195, i32 1}
!122 = !{ptr @__UNIQUE_ID_enc_idx_bufs431, !123, !"__UNIQUE_ID_enc_idx_bufs431", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 200, i32 1}
!124 = !{ptr @__UNIQUE_ID_enc_yuv_buffers432, !125, !"__UNIQUE_ID_enc_yuv_buffers432", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 203, i32 1}
!126 = !{ptr @__UNIQUE_ID_enc_yuv_bufsize433, !127, !"__UNIQUE_ID_enc_yuv_bufsize433", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 206, i32 1}
!128 = !{ptr @__UNIQUE_ID_enc_yuv_bufs434, !129, !"__UNIQUE_ID_enc_yuv_bufs434", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 211, i32 1}
!130 = !{ptr @__UNIQUE_ID_enc_vbi_buffers435, !131, !"__UNIQUE_ID_enc_vbi_buffers435", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 214, i32 1}
!132 = !{ptr @__UNIQUE_ID_enc_vbi_bufs436, !133, !"__UNIQUE_ID_enc_vbi_bufs436", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 217, i32 1}
!134 = !{ptr @__UNIQUE_ID_enc_pcm_buffers437, !135, !"__UNIQUE_ID_enc_pcm_buffers437", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 220, i32 1}
!136 = !{ptr @__UNIQUE_ID_enc_pcm_bufsize438, !137, !"__UNIQUE_ID_enc_pcm_bufsize438", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 223, i32 1}
!138 = !{ptr @__UNIQUE_ID_enc_pcm_bufs439, !139, !"__UNIQUE_ID_enc_pcm_bufs439", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 226, i32 1}
!140 = !{ptr @__UNIQUE_ID_cx18_first_minor440, !141, !"__UNIQUE_ID_cx18_first_minor440", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 230, i32 1}
!142 = !{ptr @__UNIQUE_ID_author441, !143, !"__UNIQUE_ID_author441", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 233, i32 1}
!144 = !{ptr @__UNIQUE_ID_description442, !145, !"__UNIQUE_ID_description442", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 234, i32 1}
!146 = !{ptr @__UNIQUE_ID_file443, !147, !"__UNIQUE_ID_file443", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 235, i32 1}
!148 = !{ptr @__UNIQUE_ID_license444, !147, !"__UNIQUE_ID_license444", i1 false, i1 false}
!149 = !{ptr @__UNIQUE_ID_version445, !150, !"__UNIQUE_ID_version445", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 237, i32 1}
!151 = !{ptr @.str, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.1, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.2, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @__modver_attr, !150, !"__modver_attr", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 274, i32 3}
!157 = !{ptr @.str.3, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.4, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 321, i32 19}
!160 = !{ptr @.str.5, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 338, i32 3}
!162 = !{ptr @.str.6, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @cx18_read_eeprom._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @cx18_read_eeprom._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.7, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1155, i32 4}
!167 = !{ptr @.str.8, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @cx18_init_on_first_open._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @cx18_init_on_first_open._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @cx18_init_on_first_open._entry.9, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1186, i32 4}
!172 = !{ptr @cx18_init_on_first_open._entry_ptr.10, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @__initcall__kmod_cx18__447_1341_module_start6, !174, !"__initcall__kmod_cx18__447_1341_module_start6", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1341, i32 1}
!175 = !{ptr @__exitcall_module_cleanup, !176, !"__exitcall_module_cleanup", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1342, i32 1}
!177 = !{ptr @__UNIQUE_ID_firmware448, !178, !"__UNIQUE_ID_firmware448", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1343, i32 1}
!179 = !{ptr @cx18_first_minor, !180, !"cx18_first_minor", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 35, i32 5}
!181 = !{ptr @cx18_ext_init, !182, !"cx18_ext_init", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 38, i32 7}
!183 = !{ptr @mmio_ndelay, !184, !"mmio_ndelay", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 93, i32 12}
!185 = !{ptr @cx18_debug, !186, !"cx18_debug", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 96, i32 5}
!187 = !{ptr @__param_str_tuner, !3, !"__param_str_tuner", i1 false, i1 false}
!188 = !{ptr @__param_arr_tuner, !3, !"__param_arr_tuner", i1 false, i1 false}
!189 = !{ptr @tuner_c, !190, !"tuner_c", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 63, i32 17}
!191 = !{ptr @tuner, !192, !"tuner", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 54, i32 12}
!193 = !{ptr @__param_str_radio, !6, !"__param_str_radio", i1 false, i1 false}
!194 = !{ptr @__param_arr_radio, !6, !"__param_arr_radio", i1 false, i1 false}
!195 = !{ptr @radio_c, !196, !"radio_c", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 64, i32 17}
!197 = !{ptr @radio, !198, !"radio", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 58, i32 12}
!199 = !{ptr @__param_str_cardtype, !9, !"__param_str_cardtype", i1 false, i1 false}
!200 = !{ptr @__param_arr_cardtype, !9, !"__param_arr_cardtype", i1 false, i1 false}
!201 = !{ptr @cardtype_c, !202, !"cardtype_c", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 62, i32 17}
!203 = !{ptr @cardtype, !204, !"cardtype", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 53, i32 12}
!205 = !{ptr @__param_str_pal, !12, !"__param_str_pal", i1 false, i1 false}
!206 = !{ptr @__param_string_pal, !12, !"__param_string_pal", i1 false, i1 false}
!207 = !{ptr @pal, !208, !"pal", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 65, i32 13}
!209 = !{ptr @__param_str_secam, !15, !"__param_str_secam", i1 false, i1 false}
!210 = !{ptr @__param_string_secam, !15, !"__param_string_secam", i1 false, i1 false}
!211 = !{ptr @secam, !212, !"secam", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 66, i32 13}
!213 = !{ptr @__param_str_ntsc, !18, !"__param_str_ntsc", i1 false, i1 false}
!214 = !{ptr @__param_string_ntsc, !18, !"__param_string_ntsc", i1 false, i1 false}
!215 = !{ptr @ntsc, !216, !"ntsc", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 67, i32 13}
!217 = !{ptr @__param_str_debug, !21, !"__param_str_debug", i1 false, i1 false}
!218 = !{ptr @__param_str_mmio_ndelay, !24, !"__param_str_mmio_ndelay", i1 false, i1 false}
!219 = !{ptr @__param_str_retry_mmio, !27, !"__param_str_retry_mmio", i1 false, i1 false}
!220 = !{ptr @retry_mmio, !221, !"retry_mmio", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 94, i32 12}
!222 = !{ptr @__param_str_cx18_pci_latency, !30, !"__param_str_cx18_pci_latency", i1 false, i1 false}
!223 = !{ptr @cx18_pci_latency, !224, !"cx18_pci_latency", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 91, i32 12}
!225 = !{ptr @__param_str_cx18_first_minor, !33, !"__param_str_cx18_first_minor", i1 false, i1 false}
!226 = !{ptr @__param_str_enc_ts_buffers, !36, !"__param_str_enc_ts_buffers", i1 false, i1 false}
!227 = !{ptr @enc_ts_buffers, !228, !"enc_ts_buffers", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 70, i32 12}
!229 = !{ptr @__param_str_enc_mpg_buffers, !39, !"__param_str_enc_mpg_buffers", i1 false, i1 false}
!230 = !{ptr @enc_mpg_buffers, !231, !"enc_mpg_buffers", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 71, i32 12}
!232 = !{ptr @__param_str_enc_idx_buffers, !42, !"__param_str_enc_idx_buffers", i1 false, i1 false}
!233 = !{ptr @enc_idx_buffers, !234, !"enc_idx_buffers", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 72, i32 12}
!235 = !{ptr @__param_str_enc_yuv_buffers, !45, !"__param_str_enc_yuv_buffers", i1 false, i1 false}
!236 = !{ptr @enc_yuv_buffers, !237, !"enc_yuv_buffers", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 73, i32 12}
!238 = !{ptr @__param_str_enc_vbi_buffers, !48, !"__param_str_enc_vbi_buffers", i1 false, i1 false}
!239 = !{ptr @enc_vbi_buffers, !240, !"enc_vbi_buffers", i1 false, i1 false}
!240 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 74, i32 12}
!241 = !{ptr @__param_str_enc_pcm_buffers, !51, !"__param_str_enc_pcm_buffers", i1 false, i1 false}
!242 = !{ptr @enc_pcm_buffers, !243, !"enc_pcm_buffers", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 75, i32 12}
!244 = !{ptr @__param_str_enc_ts_bufsize, !54, !"__param_str_enc_ts_bufsize", i1 false, i1 false}
!245 = !{ptr @enc_ts_bufsize, !246, !"enc_ts_bufsize", i1 false, i1 false}
!246 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 77, i32 12}
!247 = !{ptr @__param_str_enc_mpg_bufsize, !57, !"__param_str_enc_mpg_bufsize", i1 false, i1 false}
!248 = !{ptr @enc_mpg_bufsize, !249, !"enc_mpg_bufsize", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 78, i32 12}
!250 = !{ptr @__param_str_enc_idx_bufsize, !60, !"__param_str_enc_idx_bufsize", i1 false, i1 false}
!251 = !{ptr @enc_idx_bufsize, !252, !"enc_idx_bufsize", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 79, i32 12}
!253 = !{ptr @__param_str_enc_yuv_bufsize, !63, !"__param_str_enc_yuv_bufsize", i1 false, i1 false}
!254 = !{ptr @enc_yuv_bufsize, !255, !"enc_yuv_bufsize", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 80, i32 12}
!256 = !{ptr @__param_str_enc_pcm_bufsize, !66, !"__param_str_enc_pcm_bufsize", i1 false, i1 false}
!257 = !{ptr @enc_pcm_bufsize, !258, !"enc_pcm_bufsize", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 81, i32 12}
!259 = !{ptr @__param_str_enc_ts_bufs, !69, !"__param_str_enc_ts_bufs", i1 false, i1 false}
!260 = !{ptr @enc_ts_bufs, !261, !"enc_ts_bufs", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 83, i32 12}
!262 = !{ptr @__param_str_enc_mpg_bufs, !72, !"__param_str_enc_mpg_bufs", i1 false, i1 false}
!263 = !{ptr @enc_mpg_bufs, !264, !"enc_mpg_bufs", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 84, i32 12}
!265 = !{ptr @__param_str_enc_idx_bufs, !75, !"__param_str_enc_idx_bufs", i1 false, i1 false}
!266 = !{ptr @enc_idx_bufs, !267, !"enc_idx_bufs", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 85, i32 12}
!268 = !{ptr @__param_str_enc_yuv_bufs, !78, !"__param_str_enc_yuv_bufs", i1 false, i1 false}
!269 = !{ptr @enc_yuv_bufs, !270, !"enc_yuv_bufs", i1 false, i1 false}
!270 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 86, i32 12}
!271 = !{ptr @__param_str_enc_vbi_bufs, !81, !"__param_str_enc_vbi_bufs", i1 false, i1 false}
!272 = !{ptr @enc_vbi_bufs, !273, !"enc_vbi_bufs", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 87, i32 12}
!274 = !{ptr @__param_str_enc_pcm_bufs, !84, !"__param_str_enc_pcm_bufs", i1 false, i1 false}
!275 = !{ptr @enc_pcm_bufs, !276, !"enc_pcm_bufs", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 88, i32 12}
!277 = !{ptr @.str.11, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 299, i32 2}
!279 = !{ptr @.str.12, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @cx18_eeprom_dump._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @cx18_eeprom_dump._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.14, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 302, i32 4}
!284 = !{ptr @cx18_eeprom_dump._entry.13, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @cx18_eeprom_dump._entry_ptr.15, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.17, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 303, i32 3}
!288 = !{ptr @cx18_eeprom_dump._entry.16, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @cx18_eeprom_dump._entry_ptr.18, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.20, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 305, i32 4}
!292 = !{ptr @cx18_eeprom_dump._entry.19, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @cx18_eeprom_dump._entry_ptr.21, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @cx18_pci_driver, !295, !"cx18_pci_driver", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1304, i32 26}
!296 = !{ptr @cx18_pci_tbl, !297, !"cx18_pci_tbl", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 42, i32 35}
!298 = !{ptr @.str.22, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 897, i32 3}
!300 = !{ptr @.str.23, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @cx18_probe._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @cx18_probe._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.25, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 911, i32 3}
!305 = !{ptr @cx18_probe._entry.24, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @cx18_probe._entry_ptr.26, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.27, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 916, i32 57}
!309 = !{ptr @.str.29, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 918, i32 2}
!311 = !{ptr @cx18_probe._entry.28, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @cx18_probe._entry_ptr.30, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.32, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 930, i32 2}
!315 = !{ptr @cx18_probe._entry.31, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @cx18_probe._entry_ptr.33, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.35, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 938, i32 2}
!319 = !{ptr @cx18_probe._entry.34, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @cx18_probe._entry_ptr.36, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.38, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 943, i32 3}
!323 = !{ptr @cx18_probe._entry.37, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @cx18_probe._entry_ptr.39, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.41, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 944, i32 3}
!327 = !{ptr @cx18_probe._entry.40, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @cx18_probe._entry_ptr.42, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.44, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 945, i32 3}
!331 = !{ptr @cx18_probe._entry.43, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @cx18_probe._entry_ptr.45, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.47, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 946, i32 3}
!335 = !{ptr @cx18_probe._entry.46, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @cx18_probe._entry_ptr.48, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.50, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 954, i32 3}
!339 = !{ptr @cx18_probe._entry.49, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @cx18_probe._entry_ptr.51, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.53, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 957, i32 3}
!343 = !{ptr @cx18_probe._entry.52, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @cx18_probe._entry_ptr.54, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.56, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 960, i32 3}
!347 = !{ptr @cx18_probe._entry.55, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @cx18_probe._entry_ptr.57, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.59, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 975, i32 3}
!351 = !{ptr @cx18_probe._entry.58, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @cx18_probe._entry_ptr.60, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.62, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 982, i32 4}
!355 = !{ptr @cx18_probe._entry.61, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @cx18_probe._entry_ptr.63, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.65, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 988, i32 2}
!359 = !{ptr @cx18_probe._entry.64, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @cx18_probe._entry_ptr.66, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.68, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 991, i32 3}
!363 = !{ptr @cx18_probe._entry.67, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @cx18_probe._entry_ptr.69, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.71, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1009, i32 3}
!367 = !{ptr @cx18_probe._entry.70, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @cx18_probe._entry_ptr.72, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.74, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1021, i32 3}
!371 = !{ptr @cx18_probe._entry.73, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @cx18_probe._entry_ptr.75, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.76, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1080, i32 14}
!375 = !{ptr @cx18_probe.ctrl, !376, !"ctrl", i1 false, i1 false}
!376 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1079, i32 30}
!377 = !{ptr @.str.78, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1099, i32 3}
!379 = !{ptr @cx18_probe._entry.77, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @cx18_probe._entry_ptr.79, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.81, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1104, i32 3}
!383 = !{ptr @cx18_probe._entry.80, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @cx18_probe._entry_ptr.82, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.84, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1108, i32 2}
!387 = !{ptr @cx18_probe._entry.83, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @cx18_probe._entry_ptr.85, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.87, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1127, i32 2}
!391 = !{ptr @cx18_probe._entry.86, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @cx18_probe._entry_ptr.88, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @cx18_instance, !394, !"cx18_instance", i1 false, i1 false}
!394 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 50, i32 17}
!395 = !{ptr @.str.89, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 623, i32 3}
!397 = !{ptr @.str.90, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @cx18_process_options._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @cx18_process_options._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.92, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 634, i32 3}
!402 = !{ptr @cx18_process_options._entry.91, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @cx18_process_options._entry_ptr.93, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.95, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 639, i32 3}
!406 = !{ptr @cx18_process_options._entry.94, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @cx18_process_options._entry_ptr.96, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.98, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 641, i32 3}
!410 = !{ptr @cx18_process_options._entry.97, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @cx18_process_options._entry_ptr.99, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.101, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 645, i32 4}
!414 = !{ptr @cx18_process_options._entry.100, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @cx18_process_options._entry_ptr.102, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.104, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 662, i32 5}
!418 = !{ptr @cx18_process_options._entry.103, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @cx18_process_options._entry_ptr.105, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.107, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 671, i32 3}
!422 = !{ptr @cx18_process_options._entry.106, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @cx18_process_options._entry_ptr.108, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.110, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 673, i32 3}
!426 = !{ptr @cx18_process_options._entry.109, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @cx18_process_options._entry_ptr.111, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.113, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 676, i32 3}
!430 = !{ptr @cx18_process_options._entry.112, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @cx18_process_options._entry_ptr.114, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.116, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 677, i32 3}
!434 = !{ptr @cx18_process_options._entry.115, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @cx18_process_options._entry_ptr.117, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.119, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 678, i32 3}
!438 = !{ptr @cx18_process_options._entry.118, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @cx18_process_options._entry_ptr.120, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.122, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 679, i32 3}
!442 = !{ptr @cx18_process_options._entry.121, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @cx18_process_options._entry_ptr.123, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.124, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 474, i32 3}
!446 = !{ptr @.str.125, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @cx18_parse_std._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @cx18_parse_std._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.127, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 499, i32 3}
!451 = !{ptr @cx18_parse_std._entry.126, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @cx18_parse_std._entry_ptr.128, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.130, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 516, i32 3}
!455 = !{ptr @cx18_parse_std._entry.129, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @cx18_parse_std._entry_ptr.131, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @cx18_init_struct1.__key, !458, !"__key", i1 false, i1 false}
!458 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 719, i32 2}
!459 = !{ptr @.str.132, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @cx18_init_struct1.__key.133, !461, !"__key", i1 false, i1 false}
!461 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 720, i32 2}
!462 = !{ptr @.str.134, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @cx18_init_struct1.__key.135, !464, !"__key", i1 false, i1 false}
!464 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 721, i32 2}
!465 = !{ptr @.str.136, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @cx18_init_struct1.__key.137, !467, !"__key", i1 false, i1 false}
!467 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 722, i32 2}
!468 = !{ptr @.str.138, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @cx18_init_struct1.__key.139, !470, !"__key", i1 false, i1 false}
!470 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 750, i32 2}
!471 = !{ptr @.str.140, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @cx18_init_struct1.__key.141, !473, !"__key", i1 false, i1 false}
!473 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 751, i32 2}
!474 = !{ptr @.str.142, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @cx18_init_struct1.__key.143, !476, !"__key", i1 false, i1 false}
!476 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 752, i32 2}
!477 = !{ptr @.str.144, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @cx18_init_struct1.__key.145, !479, !"__key", i1 false, i1 false}
!479 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 753, i32 2}
!480 = !{ptr @.str.146, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.147, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 688, i32 57}
!483 = !{ptr @.str.148, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 690, i32 22}
!485 = !{ptr @.str.149, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 692, i32 3}
!487 = !{ptr @.str.150, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @cx18_create_in_workq._entry, !486, !"_entry", i1 false, i1 false}
!489 = !{ptr @cx18_create_in_workq._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @cx18_init_in_work_orders.__key, !491, !"__key", i1 false, i1 false}
!491 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 704, i32 3}
!492 = !{ptr @.str.151, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @.str.152, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 801, i32 2}
!495 = !{ptr @.str.153, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @cx18_setup_pci._entry, !494, !"_entry", i1 false, i1 false}
!497 = !{ptr @cx18_setup_pci._entry_ptr, !494, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.155, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 804, i32 3}
!500 = !{ptr @cx18_setup_pci._entry.154, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @cx18_setup_pci._entry_ptr.156, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.158, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 808, i32 3}
!504 = !{ptr @cx18_setup_pci._entry.157, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @cx18_setup_pci._entry_ptr.159, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.160, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 811, i32 7}
!508 = !{ptr @.str.162, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 812, i32 3}
!510 = !{ptr @cx18_setup_pci._entry.161, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @cx18_setup_pci._entry_ptr.163, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.165, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 826, i32 3}
!514 = !{ptr @cx18_setup_pci._entry.164, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @cx18_setup_pci._entry_ptr.166, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.168, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 832, i32 2}
!518 = !{ptr @cx18_setup_pci._entry.167, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @cx18_setup_pci._entry_ptr.169, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.170, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 387, i32 3}
!522 = !{ptr @.str.171, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @cx18_process_eeprom._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @cx18_process_eeprom._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.173, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 390, i32 3}
!527 = !{ptr @cx18_process_eeprom._entry.172, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @cx18_process_eeprom._entry_ptr.174, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.176, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 393, i32 3}
!531 = !{ptr @cx18_process_eeprom._entry.175, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @cx18_process_eeprom._entry_ptr.177, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.179, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 403, i32 2}
!535 = !{ptr @cx18_process_eeprom._entry.178, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @cx18_process_eeprom._entry_ptr.180, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.182, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 406, i32 3}
!539 = !{ptr @cx18_process_eeprom._entry.181, !538, !"_entry", i1 false, i1 false}
!540 = !{ptr @cx18_process_eeprom._entry_ptr.183, !538, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.185, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 425, i32 3}
!543 = !{ptr @cx18_process_eeprom._entry.184, !542, !"_entry", i1 false, i1 false}
!544 = !{ptr @cx18_process_eeprom._entry_ptr.186, !542, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.188, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 428, i32 3}
!547 = !{ptr @cx18_process_eeprom._entry.187, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @cx18_process_eeprom._entry_ptr.189, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.191, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 431, i32 3}
!551 = !{ptr @cx18_process_eeprom._entry.190, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @cx18_process_eeprom._entry_ptr.192, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.194, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 434, i32 3}
!555 = !{ptr @cx18_process_eeprom._entry.193, !554, !"_entry", i1 false, i1 false}
!556 = !{ptr @cx18_process_eeprom._entry_ptr.195, !554, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.197, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 437, i32 3}
!559 = !{ptr @cx18_process_eeprom._entry.196, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @cx18_process_eeprom._entry_ptr.198, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.199, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 289, i32 3}
!563 = !{ptr @.str.200, !562, !"<string literal>", i1 false, i1 false}
!564 = !{ptr @cx18_iounmap._entry, !562, !"_entry", i1 false, i1 false}
!565 = !{ptr @cx18_iounmap._entry_ptr, !562, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.201, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1255, i32 2}
!568 = !{ptr @.str.202, !567, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @cx18_remove._entry, !567, !"_entry", i1 false, i1 false}
!570 = !{ptr @cx18_remove._entry_ptr, !567, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.204, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1260, i32 2}
!573 = !{ptr @cx18_remove._entry.203, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @cx18_remove._entry_ptr.205, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.207, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1296, i32 2}
!577 = !{ptr @cx18_remove._entry.206, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @cx18_remove._entry_ptr.208, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.209, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1313, i32 2}
!581 = !{ptr @.str.210, !580, !"<string literal>", i1 false, i1 false}
!582 = !{ptr @module_start._entry, !580, !"_entry", i1 false, i1 false}
!583 = !{ptr @module_start._entry_ptr, !580, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.212, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1318, i32 3}
!586 = !{ptr @module_start._entry.211, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @module_start._entry_ptr.213, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.215, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1325, i32 3}
!590 = !{ptr @module_start._entry.214, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @module_start._entry_ptr.216, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.218, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1329, i32 3}
!594 = !{ptr @module_start._entry.217, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @module_start._entry_ptr.219, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.221, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/media/pci/cx18/cx18-driver.c", i32 1332, i32 2}
!598 = !{ptr @module_start._entry.220, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @module_start._entry_ptr.222, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{!"sp"}
!601 = !{i32 1, !"wchar_size", i32 2}
!602 = !{i32 1, !"min_enum_size", i32 4}
!603 = !{i32 8, !"branch-target-enforcement", i32 0}
!604 = !{i32 8, !"sign-return-address", i32 0}
!605 = !{i32 8, !"sign-return-address-all", i32 0}
!606 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!607 = !{i32 7, !"uwtable", i32 1}
!608 = !{i32 7, !"frame-pointer", i32 2}
!609 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!610 = !{i64 2158853253}
!611 = !{!"branch_weights", i32 2000, i32 1}
!612 = !{i64 2148487995}
!613 = !{i64 2148403280, i64 2148403312, i64 2148403341, i64 2148403375, i64 2148403406, i64 2148403429}
!614 = !{i64 2148488224}
!615 = !{i64 5779899}
!616 = !{i64 2158679492}
!617 = !{!"auto-init"}
