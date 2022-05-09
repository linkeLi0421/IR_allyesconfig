; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-core.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.saa7164_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.saa7164_unit] }
%struct.saa7164_unit = type { i32, i8, ptr, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.saa7164_subid = type { i16, i16, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.saa7164_histogram = type { [32 x i8], [64 x %struct.saa7164_histogram_bucket] }
%struct.saa7164_histogram_bucket = type { i32, i32, i64 }
%struct.saa7164_dev = type { %struct.list_head, %struct.atomic_t, %struct.v4l2_device, ptr, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], %struct.saa7164_fw_status, i32, %struct.tmComResHWDescr, %struct.tmComResInterfaceDescr, %struct.tmComResBusDescr, %struct.tmComResBusInfo, i32, i32, i8, [256 x %struct.cmd], %struct.mutex, [3 x %struct.saa7164_i2c], [6 x %struct.saa7164_port], %struct.work_struct, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7164_fw_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tmComResHWDescr = type <{ i8, i8, i8, i16, i32, i32, i8, i32, i32, i32, i32, i32 }>
%struct.tmComResInterfaceDescr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.tmComResBusDescr = type { i64, i64, i32, i32, i32, i32 }
%struct.tmComResBusInfo = type { i32, i16, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.mutex }
%struct.cmd = type { i8, i32, i32, i32, %struct.mutex, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7164_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.saa7164_port = type { ptr, i32, i32, %struct.tmHWStreamParameters, %struct.tmComResDMATermDescrHeader, i32, i32, i32, i32, i32, i32, i64, i32, %struct.mutex, %struct.saa7164_buffer, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_dvb, ptr, ptr, %struct.saa7164_tvnorm, %struct.v4l2_ctrl_handler, i64, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, %struct.tmComResAFeatureDescrHeader, %struct.tmComResEncoderDescrHeader, %struct.tmComResProcDescrHeader, %struct.tmComResExtDevDescrHeader, %struct.tmComResTunerDescrHeader, %struct.work_struct, %struct.saa7164_encoder_params, ptr, %struct.atomic_t, %struct.saa7164_buffer, %struct.saa7164_buffer, %struct.wait_queue_head, %struct.tmComResVBIFormatDescrHeader, %struct.saa7164_vbi_params, ptr, i32, i32, i32, i8, i8, i32 }
%struct.tmHWStreamParameters = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.tmComResDMATermDescrHeader = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>
%struct.saa7164_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.saa7164_tvnorm = type { ptr, i64 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tmComResAFeatureDescrHeader = type { i8, i8, i8, i8, i8, i8 }
%struct.tmComResEncoderDescrHeader = type <{ i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i16, i16, i32, i8 }>
%struct.tmComResProcDescrHeader = type <{ i8, i8, i8, i8, i8, i16, i8 }>
%struct.tmComResExtDevDescrHeader = type <{ i8, i8, i8, i8, i32, i16, i32, i8, i8 }>
%struct.tmComResTunerDescrHeader = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32 }>
%struct.saa7164_encoder_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7164_buffer = type { %struct.list_head, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.tmComResVBIFormatDescrHeader = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.saa7164_vbi_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.tmFwInfoStruct = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.saa7164_user_buffer = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.104 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.106 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID_description385 = internal constant [58 x i8] c"saa7164.description=Driver for NXP SAA7164 based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [50 x i8] c"saa7164.author=Steven Toth <stoth@kernellabs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [47 x i8] c"saa7164.file=drivers/media/pci/saa7164/saa7164\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [20 x i8] c"saa7164.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"saa7164.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@saa_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @saa_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype389 = internal constant [27 x i8] c"saa7164.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug390 = internal constant [41 x i8] c"saa7164.parm=debug:enable debug messages\00", section ".modinfo", align 1
@__param_str_fw_debug = internal constant [17 x i8] c"saa7164.fw_debug\00", align 1
@fw_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fw_debug = internal constant %struct.kernel_param { ptr @__param_str_fw_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @fw_debug } }, section "__param", align 4
@__UNIQUE_ID_fw_debugtype391 = internal constant [30 x i8] c"saa7164.parmtype=fw_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_debug392 = internal constant [49 x i8] c"saa7164.parm=fw_debug:Firmware debug level def:2\00", section ".modinfo", align 1
@encoder_buffers = dso_local global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_str_encoder_buffers = internal constant [24 x i8] c"saa7164.encoder_buffers\00", align 1
@__param_encoder_buffers = internal constant %struct.kernel_param { ptr @__param_str_encoder_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @encoder_buffers } }, section "__param", align 4
@__UNIQUE_ID_encoder_bufferstype393 = internal constant [37 x i8] c"saa7164.parmtype=encoder_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_encoder_buffers394 = internal constant [71 x i8] c"saa7164.parm=encoder_buffers:Total buffers in read queue 16-512 def:64\00", section ".modinfo", align 1
@vbi_buffers = dso_local global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_str_vbi_buffers = internal constant [20 x i8] c"saa7164.vbi_buffers\00", align 1
@__param_vbi_buffers = internal constant %struct.kernel_param { ptr @__param_str_vbi_buffers, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vbi_buffers } }, section "__param", align 4
@__UNIQUE_ID_vbi_bufferstype395 = internal constant [33 x i8] c"saa7164.parmtype=vbi_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_buffers396 = internal constant [67 x i8] c"saa7164.parm=vbi_buffers:Total buffers in read queue 16-512 def:64\00", section ".modinfo", align 1
@waitsecs = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_str_waitsecs = internal constant [17 x i8] c"saa7164.waitsecs\00", align 1
@__param_waitsecs = internal constant %struct.kernel_param { ptr @__param_str_waitsecs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @waitsecs } }, section "__param", align 4
@__UNIQUE_ID_waitsecstype397 = internal constant [30 x i8] c"saa7164.parmtype=waitsecs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_waitsecs398 = internal constant [51 x i8] c"saa7164.parm=waitsecs:timeout on firmware messages\00", section ".modinfo", align 1
@__param_str_card = internal constant [13 x i8] c"saa7164.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype399 = internal constant [35 x i8] c"saa7164.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card400 = internal constant [28 x i8] c"saa7164.parm=card:card type\00", section ".modinfo", align 1
@__param_str_print_histogram = internal constant [24 x i8] c"saa7164.print_histogram\00", align 1
@print_histogram = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_print_histogram = internal constant %struct.kernel_param { ptr @__param_str_print_histogram, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @print_histogram } }, section "__param", align 4
@__UNIQUE_ID_print_histogramtype401 = internal constant [37 x i8] c"saa7164.parmtype=print_histogram:int\00", section ".modinfo", align 1
@__UNIQUE_ID_print_histogram402 = internal constant [57 x i8] c"saa7164.parm=print_histogram:print histogram values once\00", section ".modinfo", align 1
@crc_checking = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_crc_checking = internal constant [21 x i8] c"saa7164.crc_checking\00", align 1
@__param_crc_checking = internal constant %struct.kernel_param { ptr @__param_str_crc_checking, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @crc_checking } }, section "__param", align 4
@__UNIQUE_ID_crc_checkingtype403 = internal constant [34 x i8] c"saa7164.parmtype=crc_checking:int\00", section ".modinfo", align 1
@__UNIQUE_ID_crc_checking404 = internal constant [64 x i8] c"saa7164.parm=crc_checking:enable crc sanity checking on buffers\00", section ".modinfo", align 1
@__param_str_guard_checking = internal constant [23 x i8] c"saa7164.guard_checking\00", align 1
@guard_checking = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_guard_checking = internal constant %struct.kernel_param { ptr @__param_str_guard_checking, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @guard_checking } }, section "__param", align 4
@__UNIQUE_ID_guard_checkingtype405 = internal constant [36 x i8] c"saa7164.parmtype=guard_checking:int\00", section ".modinfo", align 1
@__UNIQUE_ID_guard_checking406 = internal constant [75 x i8] c"saa7164.parm=guard_checking:enable dma sanity checking for buffer overruns\00", section ".modinfo", align 1
@__param_str_enable_msi = internal constant [19 x i8] c"saa7164.enable_msi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_msi = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_msi = internal constant %struct.kernel_param { ptr @__param_str_enable_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @enable_msi } }, section "__param", align 4
@__UNIQUE_ID_enable_msitype407 = internal constant [33 x i8] c"saa7164.parmtype=enable_msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_msi408 = internal constant [72 x i8] c"saa7164.parm=enable_msi:enable the use of an msi interrupt if available\00", section ".modinfo", align 1
@saa7164_devlist = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @saa7164_devlist, ptr @saa7164_devlist }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@saa7164_getfirmwarestatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Firmware status:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_getfirmwarestatus\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/saa7164/saa7164-core.c\00", [55 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr = internal global ptr @saa7164_getfirmwarestatus._entry, section ".printk_index", align 4
@saa7164_getfirmwarestatus._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .status     = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr.5 = internal global ptr @saa7164_getfirmwarestatus._entry.3, section ".printk_index", align 4
@saa7164_getfirmwarestatus._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .mode       = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr.8 = internal global ptr @saa7164_getfirmwarestatus._entry.6, section ".printk_index", align 4
@saa7164_getfirmwarestatus._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .spec       = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr.11 = internal global ptr @saa7164_getfirmwarestatus._entry.9, section ".printk_index", align 4
@saa7164_getfirmwarestatus._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .inst       = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr.14 = internal global ptr @saa7164_getfirmwarestatus._entry.12, section ".printk_index", align 4
@saa7164_getfirmwarestatus._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .cpuload    = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr.17 = internal global ptr @saa7164_getfirmwarestatus._entry.15, section ".printk_index", align 4
@saa7164_getfirmwarestatus._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .remainheap = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_getfirmwarestatus._entry_ptr.20 = internal global ptr @saa7164_getfirmwarestatus._entry.18, section ".printk_index", align 4
@saa7164_getcurrentfirmwareversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: Device running firmware version %d.%d.%d.%d (0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7164_getcurrentfirmwareversion\00", [62 x i8] zeroinitializer }, align 32
@saa7164_getcurrentfirmwareversion._entry_ptr = internal global ptr @saa7164_getcurrentfirmwareversion._entry, section ".printk_index", align 4
@saa7164_dumpregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017%s: --------------------> 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7164_dumpregs\00", [47 x i8] zeroinitializer }, align 32
@saa7164_dumpregs._entry_ptr = internal global ptr @saa7164_dumpregs._entry, section ".printk_index", align 4
@saa7164_dumpregs._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\017%s: region0[0x%08x] = %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7164_dumpregs._entry_ptr.27 = internal global ptr @saa7164_dumpregs._entry.25, section ".printk_index", align 4
@saa7614_dentry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@saa7164_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.28, ptr @saa7164_pci_tbl, ptr @saa7164_initdev, ptr @saa7164_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_saa7164__409_1552_saa7164_init6 = internal global ptr @saa7164_init, section ".initcall6.init", align 4
@__exitcall_saa7164_fini = internal global ptr @saa7164_fini, section ".exitcall.exit", align 4
@card = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7164\00", [24 x i8] zeroinitializer }, align 32
@saa7164_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 29028, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1249, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"v4l2_device_register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_initdev\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr = internal global ptr @saa7164_initdev._entry, section ".printk_index", align 4
@saa7164_initdev._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.35 = internal global ptr @saa7164_initdev._entry.33, section ".printk_index", align 4
@saa7164_initdev._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.2, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s/0: Oops: no 32bit PCI DMA ???\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.38 = internal global ptr @saa7164_initdev._entry.36, section ".printk_index", align 4
@saa7164_initdev._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: can't get IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.41 = internal global ptr @saa7164_initdev._entry.39, section ".printk_index", align 4
@saa7164_initdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->cmds[i].lock\00", [45 x i8] zeroinitializer }, align 32
@saa7164_initdev.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->cmds[i].wait\00", [45 x i8] zeroinitializer }, align 32
@saa7164_initdev.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&dev->workcmd)\00", [63 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.30, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Failed to boot firmware, no features registered\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.49 = internal global ptr @saa7164_initdev._entry.47, section ".printk_index", align 4
@saa7164_initdev._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.30, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Failed to setup the bus, will continue\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.52 = internal global ptr @saa7164_initdev._entry.50, section ".printk_index", align 4
@saa7164_initdev._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.30, ptr @.str.2, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s: Bus is operating correctly using version %d.%d.%d.%d (0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.55 = internal global ptr @saa7164_initdev._entry.53, section ".printk_index", align 4
@saa7164_initdev._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.30, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Failed to communicate with the firmware\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.58 = internal global ptr @saa7164_initdev._entry.56, section ".printk_index", align 4
@saa7164_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7164_board], align 4
@saa7164_initdev._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.30, ptr @.str.2, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s() Failed to register dvb adapters on porta\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.61 = internal global ptr @saa7164_initdev._entry.59, section ".printk_index", align 4
@saa7164_initdev._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.30, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s() Failed to register dvb adapters on portb\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.64 = internal global ptr @saa7164_initdev._entry.62, section ".printk_index", align 4
@saa7164_initdev._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.30, ptr @.str.2, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s() Failed to register mpeg encoder\0A\00", [56 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.67 = internal global ptr @saa7164_initdev._entry.65, section ".printk_index", align 4
@saa7164_initdev._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.30, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.69 = internal global ptr @saa7164_initdev._entry.68, section ".printk_index", align 4
@saa7164_initdev._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.30, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s() Failed to register vbi device\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.72 = internal global ptr @saa7164_initdev._entry.70, section ".printk_index", align 4
@saa7164_initdev._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.30, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.74 = internal global ptr @saa7164_initdev._entry.73, section ".printk_index", align 4
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7164 debug\00", [18 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.30, ptr @.str.2, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s() Failed to create debug kernel thread\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.78 = internal global ptr @saa7164_initdev._entry.76, section ".printk_index", align 4
@saa7164_initdev._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.30, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s() Unsupported board detected, registering without firmware\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.81 = internal global ptr @saa7164_initdev._entry.79, section ".printk_index", align 4
@saa7164_initdev._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.30, ptr @.str.2, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s() parameter debug = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.84 = internal global ptr @saa7164_initdev._entry.82, section ".printk_index", align 4
@saa7164_initdev._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.30, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s() parameter waitsecs = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_initdev._entry_ptr.87 = internal global ptr @saa7164_initdev._entry.85, section ".printk_index", align 4
@saa7164_dev_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@saa7164_devcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"saa7164[%d]\00", [20 x i8] zeroinitializer }, align 32
@devlist = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.97, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devlist, i64 52), ptr getelementptr (i8, ptr @devlist, i64 52) }, ptr @devlist, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.98, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@saa7164_bcount = external dso_local local_unnamed_addr constant i32, align 4
@saa7164_idcount = external dso_local local_unnamed_addr constant i32, align 4
@saa7164_subids = external dso_local local_unnamed_addr global [0 x %struct.saa7164_subid], align 4
@saa7164_dev_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CORE %s No more PCIe resources for subsystem: %04x:%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7164_dev_setup\00", [46 x i8] zeroinitializer }, align 32
@saa7164_dev_setup._entry_ptr = internal global ptr @saa7164_dev_setup._entry, section ".printk_index", align 4
@saa7164_dev_setup._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016CORE %s: subsystem: %04x:%04x, board: %s [card=%d,%s]\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_dev_setup._entry_ptr.94 = internal global ptr @saa7164_dev_setup._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"insmod option\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"autodetected\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devlist.wait_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devlist\00", [24 x i8] zeroinitializer }, align 32
@saa7164_port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&port->workenc)\00", [62 x i8] zeroinitializer }, align 32
@saa7164_port_init.__key.100 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@saa7164_port_init.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&port->dvb.lock\00", [16 x i8] zeroinitializer }, align 32
@saa7164_port_init.__key.103 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&port->dmaqueue_lock\00", [43 x i8] zeroinitializer }, align 32
@saa7164_port_init.__key.105 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&port->wait_read\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq intervals\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"deferred intervals\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irq to deferred intervals\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"encoder/vbi read() intervals\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"encoder/vbi poll() intervals\00", [35 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: %s() %Ldms elapsed irq->deferred %Ldms wp: %d rp: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_work_enchandler\00", [40 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler._entry_ptr = internal global ptr @saa7164_work_enchandler._entry, section ".printk_index", align 4
@saa7164_work_enchandler._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s() illegal buf count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler._entry_ptr.116 = internal global ptr @saa7164_work_enchandler._entry.114, section ".printk_index", align 4
@saa7164_work_enchandler._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s() illegal rp count %d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler._entry_ptr.119 = internal global ptr @saa7164_work_enchandler._entry.117, section ".printk_index", align 4
@saa7164_work_enchandler_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s() illegal i count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7164_work_enchandler_helper\00", [33 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler_helper._entry_ptr = internal global ptr @saa7164_work_enchandler_helper._entry, section ".printk_index", align 4
@saa7164_work_enchandler_helper._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s() bufnr: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler_helper._entry_ptr.124 = internal global ptr @saa7164_work_enchandler_helper._entry.122, section ".printk_index", align 4
@saa7164_work_enchandler_helper._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s() buf %p guard buffer breach\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler_helper._entry_ptr.127 = internal global ptr @saa7164_work_enchandler_helper._entry.125, section ".printk_index", align 4
@saa7164_work_enchandler_helper._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013buf %p bufsize fails match\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler_helper._entry_ptr.130 = internal global ptr @saa7164_work_enchandler_helper._entry.128, section ".printk_index", align 4
@saa7164_work_enchandler_helper._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.121, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013encirq no free buffers, increase param encoder_buffers\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_work_enchandler_helper._entry_ptr.133 = internal global ptr @saa7164_work_enchandler_helper._entry.131, section ".printk_index", align 4
@saa7164_ts_verifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013video cc last = %x current = %x i = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_ts_verifier\00", [44 x i8] zeroinitializer }, align 32
@saa7164_ts_verifier._entry_ptr = internal global ptr @saa7164_ts_verifier._entry, section ".printk_index", align 4
@saa7164_ts_verifier._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013audio cc last = %x current = %x i = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_ts_verifier._entry_ptr.138 = internal global ptr @saa7164_ts_verifier._entry.136, section ".printk_index", align 4
@saa7164_ts_verifier._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013video pid cc, %d errors\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_ts_verifier._entry_ptr.141 = internal global ptr @saa7164_ts_verifier._entry.139, section ".printk_index", align 4
@saa7164_ts_verifier._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013audio pid cc, %d errors\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_ts_verifier._entry_ptr.144 = internal global ptr @saa7164_ts_verifier._entry.142, section ".printk_index", align 4
@saa7164_ts_verifier._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013sync_errors = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_ts_verifier._entry_ptr.147 = internal global ptr @saa7164_ts_verifier._entry.145, section ".printk_index", align 4
@saa7164_pack_verifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013No pack at 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_pack_verifier\00", [42 x i8] zeroinitializer }, align 32
@saa7164_pack_verifier._entry_ptr = internal global ptr @saa7164_pack_verifier._entry, section ".printk_index", align 4
@saa7164_histogram_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Histogram named %s (ms, count, last_update_jiffy)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_histogram_print\00", [40 x i8] zeroinitializer }, align 32
@saa7164_histogram_print._entry_ptr = internal global ptr @saa7164_histogram_print._entry, section ".printk_index", align 4
@saa7164_histogram_print._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013 %4d %12d %Ld\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_histogram_print._entry_ptr.154 = internal global ptr @saa7164_histogram_print._entry.152, section ".printk_index", align 4
@saa7164_histogram_print._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013Total: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@saa7164_histogram_print._entry_ptr.157 = internal global ptr @saa7164_histogram_print._entry.155, section ".printk_index", align 4
@saa7164_work_vbihandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.158, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_work_vbihandler\00", [40 x i8] zeroinitializer }, align 32
@saa7164_work_vbihandler._entry_ptr = internal global ptr @saa7164_work_vbihandler._entry, section ".printk_index", align 4
@saa7164_work_vbihandler._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.158, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_work_vbihandler._entry_ptr.160 = internal global ptr @saa7164_work_vbihandler._entry.159, section ".printk_index", align 4
@saa7164_work_vbihandler._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.158, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_work_vbihandler._entry_ptr.162 = internal global ptr @saa7164_work_vbihandler._entry.161, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: can't get MMIO memory @ 0x%llx or 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_resources\00", [18 x i8] zeroinitializer }, align 32
@get_resources._entry_ptr = internal global ptr @get_resources._entry, section ".printk_index", align 4
@saa7164_enable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s() MSI disabled by module parameter 'enable_msi'\00", [43 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa7164_enable_msi\00", [45 x i8] zeroinitializer }, align 32
@saa7164_enable_msi._entry_ptr = internal global ptr @saa7164_enable_msi._entry, section ".printk_index", align 4
@saa7164_enable_msi._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s() Failed to enable MSI interrupt. Falling back to a shared IRQ\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_enable_msi._entry_ptr.169 = internal global ptr @saa7164_enable_msi._entry.167, section ".printk_index", align 4
@saa7164_enable_msi._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.166, ptr @.str.2, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s() Failed to get an MSI interrupt. Falling back to a shared IRQ\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_enable_msi._entry_ptr.172 = internal global ptr @saa7164_enable_msi._entry.170, section ".printk_index", align 4
@saa7164_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s() No device specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"saa7164_irq\00", [20 x i8] zeroinitializer }, align 32
@saa7164_irq._entry_ptr = internal global ptr @saa7164_irq._entry, section ".printk_index", align 4
@saa7164_irq._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s() unhandled interrupt reg 0x%x bit 0x%x intid = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_irq._entry_ptr.177 = internal global ptr @saa7164_irq._entry.175, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@saa7164_irq_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s() wp: %d processing: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa7164_irq_ts\00", [17 x i8] zeroinitializer }, align 32
@saa7164_irq_ts._entry_ptr = internal global ptr @saa7164_irq_ts._entry, section ".printk_index", align 4
@saa7164_irq_encoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() %Ldms elapsed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_irq_encoder\00", [44 x i8] zeroinitializer }, align 32
@saa7164_irq_encoder._entry_ptr = internal global ptr @saa7164_irq_encoder._entry, section ".printk_index", align 4
@saa7164_irq_vbi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.182, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_irq_vbi\00", [16 x i8] zeroinitializer }, align 32
@saa7164_irq_vbi._entry_ptr = internal global ptr @saa7164_irq_vbi._entry, section ".printk_index", align 4
@saa7164_get_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Structure struct tmComResHWDescr is mangled\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_get_descriptors\00", [40 x i8] zeroinitializer }, align 32
@saa7164_get_descriptors._entry_ptr = internal global ptr @saa7164_get_descriptors._entry, section ".printk_index", align 4
@saa7164_get_descriptors._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013Need %x got %d\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_get_descriptors._entry_ptr.187 = internal global ptr @saa7164_get_descriptors._entry.185, section ".printk_index", align 4
@saa7164_get_descriptors._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.184, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013struct struct tmComResInterfaceDescr is mangled\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_get_descriptors._entry_ptr.190 = internal global ptr @saa7164_get_descriptors._entry.188, section ".printk_index", align 4
@saa7164_get_descriptors._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_get_descriptors._entry_ptr.192 = internal global ptr @saa7164_get_descriptors._entry.191, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: @0x%p hwdesc sizeof(struct tmComResHWDescr) = %d bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_dump_hwdesc\00", [44 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr = internal global ptr @saa7164_dump_hwdesc._entry, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.194, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:  .bLength = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.197 = internal global ptr @saa7164_dump_hwdesc._entry.195, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.194, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:  .bDescriptorType = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.200 = internal global ptr @saa7164_dump_hwdesc._entry.198, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.194, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:  .bDescriptorSubtype = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.203 = internal global ptr @saa7164_dump_hwdesc._entry.201, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.194, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  .bcdSpecVersion = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.206 = internal global ptr @saa7164_dump_hwdesc._entry.204, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.194, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .dwClockFrequency = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.209 = internal global ptr @saa7164_dump_hwdesc._entry.207, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.194, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .dwClockUpdateRes = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.212 = internal global ptr @saa7164_dump_hwdesc._entry.210, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.194, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:  .bCapabilities = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.215 = internal global ptr @saa7164_dump_hwdesc._entry.213, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.194, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:  .dwDeviceRegistersLocation = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.218 = internal global ptr @saa7164_dump_hwdesc._entry.216, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.194, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:  .dwHostMemoryRegion = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.221 = internal global ptr @saa7164_dump_hwdesc._entry.219, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.194, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s:  .dwHostMemoryRegionSize = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.224 = internal global ptr @saa7164_dump_hwdesc._entry.222, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.194, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:  .dwHostHibernatMemRegion = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.227 = internal global ptr @saa7164_dump_hwdesc._entry.225, section ".printk_index", align 4
@saa7164_dump_hwdesc._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.194, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s:  .dwHostHibernatMemRegionSize = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7164_dump_hwdesc._entry_ptr.230 = internal global ptr @saa7164_dump_hwdesc._entry.228, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017%s: @0x%p intfdesc sizeof(struct tmComResInterfaceDescr) = %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_dump_intfdesc\00", [42 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr = internal global ptr @saa7164_dump_intfdesc._entry, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.232, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.234 = internal global ptr @saa7164_dump_intfdesc._entry.233, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.232, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.236 = internal global ptr @saa7164_dump_intfdesc._entry.235, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.232, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.238 = internal global ptr @saa7164_dump_intfdesc._entry.237, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.232, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:  .bFlags = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.241 = internal global ptr @saa7164_dump_intfdesc._entry.239, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.232, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  .bInterfaceType = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.244 = internal global ptr @saa7164_dump_intfdesc._entry.242, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.232, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .bInterfaceId = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.247 = internal global ptr @saa7164_dump_intfdesc._entry.245, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.232, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  .bBaseInterface = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.250 = internal global ptr @saa7164_dump_intfdesc._entry.248, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.232, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:  .bInterruptId = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.253 = internal global ptr @saa7164_dump_intfdesc._entry.251, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.232, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:  .bDebugInterruptId = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.256 = internal global ptr @saa7164_dump_intfdesc._entry.254, section ".printk_index", align 4
@saa7164_dump_intfdesc._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.232, ptr @.str.2, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:  .BARLocation = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_dump_intfdesc._entry_ptr.259 = internal global ptr @saa7164_dump_intfdesc._entry.257, section ".printk_index", align 4
@saa7164_dump_busdesc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: @0x%p busdesc sizeof(struct tmComResBusDescr) = %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_dump_busdesc\00", [43 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr = internal global ptr @saa7164_dump_busdesc._entry, section ".printk_index", align 4
@saa7164_dump_busdesc._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.261, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:  .CommandRing   = 0x%016Lx\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr.264 = internal global ptr @saa7164_dump_busdesc._entry.262, section ".printk_index", align 4
@saa7164_dump_busdesc._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.261, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:  .ResponseRing  = 0x%016Lx\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr.267 = internal global ptr @saa7164_dump_busdesc._entry.265, section ".printk_index", align 4
@saa7164_dump_busdesc._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.261, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:  .CommandWrite  = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr.270 = internal global ptr @saa7164_dump_busdesc._entry.268, section ".printk_index", align 4
@saa7164_dump_busdesc._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.261, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:  .CommandRead   = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr.273 = internal global ptr @saa7164_dump_busdesc._entry.271, section ".printk_index", align 4
@saa7164_dump_busdesc._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.261, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:  .ResponseWrite = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr.276 = internal global ptr @saa7164_dump_busdesc._entry.274, section ".printk_index", align 4
@saa7164_dump_busdesc._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.261, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:  .ResponseRead  = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_dump_busdesc._entry_ptr.279 = internal global ptr @saa7164_dump_busdesc._entry.277, section ".printk_index", align 4
@saa7164_thread_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: thread started\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_thread_function\00", [40 x i8] zeroinitializer }, align 32
@saa7164_thread_function._entry_ptr = internal global ptr @saa7164_thread_function._entry, section ".printk_index", align 4
@saa7164_thread_function._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.281, ptr @.str.2, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: thread running\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_thread_function._entry_ptr.284 = internal global ptr @saa7164_thread_function._entry.282, section ".printk_index", align 4
@saa7164_thread_function._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.281, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: thread exiting\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_thread_function._entry_ptr.287 = internal global ptr @saa7164_thread_function._entry.285, section ".printk_index", align 4
@.str.288 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@saa7164_dev_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.290, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_dev_unregister\00", [41 x i8] zeroinitializer }, align 32
@saa7164_dev_unregister._entry_ptr = internal global ptr @saa7164_dev_unregister._entry, section ".printk_index", align 4
@saa7164_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.291, ptr @.str.2, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7164_shutdown\00", [47 x i8] zeroinitializer }, align 32
@saa7164_shutdown._entry_ptr = internal global ptr @saa7164_shutdown._entry, section ".printk_index", align 4
@saa7164_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.293, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016saa7164 driver loaded\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7164_init\00", [19 x i8] zeroinitializer }, align 32
@saa7164_init._entry_ptr = internal global ptr @saa7164_init._entry, section ".printk_index", align 4
@saa7164_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @saa7164_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa7164_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @saa7164_seq_start, ptr @saa7164_seq_stop, ptr @saa7164_seq_next, ptr @saa7164_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s = %p\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" .m_pdwSetWritePos = 0x%x (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" .m_pdwSetReadPos  = 0x%x (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" .m_pdwGetWritePos = 0x%x (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" .m_pdwGetReadPos  = 0x%x (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A  Set Ring:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\0A addr  00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %04x:\00", [25 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A  Get Ring:\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 32, i64 241, i64 242]
@___asan_gen_.307 = private unnamed_addr constant [10 x i8] c"saa_debug\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 35, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant [9 x i8] c"fw_debug\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 39, i32 21 }
@___asan_gen_.313 = private unnamed_addr constant [16 x i8] c"encoder_buffers\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 43, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant [12 x i8] c"vbi_buffers\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 47, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant [9 x i8] c"waitsecs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 51, i32 14 }
@___asan_gen_.322 = private unnamed_addr constant [16 x i8] c"print_histogram\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 59, i32 21 }
@___asan_gen_.325 = private unnamed_addr constant [13 x i8] c"crc_checking\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 63, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant [15 x i8] c"guard_checking\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 67, i32 21 }
@___asan_gen_.331 = private unnamed_addr constant [11 x i8] c"enable_msi\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 72, i32 13 }
@___asan_gen_.334 = private unnamed_addr constant [16 x i8] c"saa7164_devlist\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 80, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 723, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 724, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 725, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 726, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 727, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 728, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 729, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 737, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 752, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 755, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [15 x i8] c"saa7614_dentry\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1151, i32 23 }
@___asan_gen_.412 = private unnamed_addr constant [19 x i8] c"saa7164_pci_driver\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1525, i32 26 }
@___asan_gen_.415 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 55, i32 21 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1526, i32 14 }
@___asan_gen_.421 = private unnamed_addr constant [16 x i8] c"saa7164_pci_tbl\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1512, i32 35 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1249, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1268, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1278, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1293, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1306, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1307, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1311, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1318, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1329, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1338, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1345, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1366, i32 5 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1373, i32 5 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1380, i32 5 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1387, i32 5 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1394, i32 5 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1401, i32 5 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1408, i32 19 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1412, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1419, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1422, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1423, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 946, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [17 x i8] c"saa7164_devcount\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 77, i32 21 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 950, i32 41 }
@___asan_gen_.568 = private unnamed_addr constant [8 x i8] c"devlist\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 992, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1014, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 79, i32 8 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 911, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 916, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 921, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 923, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 927, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 930, i32 47 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 931, i32 47 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 933, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 935, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 937, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 372, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 384, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 402, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 259, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 267, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 284, i32 7 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 327, i32 6 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 331, i32 5 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 128, i32 5 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 138, i32 5 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 153, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 156, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 159, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 93, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 230, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 235, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 242, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 448, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 460, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 478, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 885, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1208, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1216, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1227, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 616, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 696, i32 6 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 596, i32 4 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 562, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 537, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 854, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 855, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 861, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 862, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 778, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 781, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 782, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 783, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 786, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 787, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 788, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 789, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 790, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 793, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 796, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 799, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 802, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 808, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 811, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 812, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 813, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 816, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 817, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 818, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 819, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 820, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 821, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 824, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 829, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 832, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 833, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 834, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 835, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 836, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 837, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1174, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1184, i32 3 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1199, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1070, i32 57, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1028, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1438, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1541, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant [13 x i8] c"saa7164_fops\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1149, i32 1 }
@___asan_gen_.1099 = private unnamed_addr constant [13 x i8] c"saa7164_sops\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1142, i32 36 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1090, i32 16 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1096, i32 16 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1099, i32 16 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1102, i32 16 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1105, i32 16 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1108, i32 14 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1109, i32 14 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1112, i32 18 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1114, i32 17 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1117, i32 16 }
@___asan_gen_.1132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1133 = private constant [44 x i8] c"../drivers/media/pci/saa7164/saa7164-core.c\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1133, i32 1123, i32 14 }
@llvm.compiler.used = appending global [414 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_card400, ptr @__UNIQUE_ID_cardtype399, ptr @__UNIQUE_ID_crc_checking404, ptr @__UNIQUE_ID_crc_checkingtype403, ptr @__UNIQUE_ID_debug390, ptr @__UNIQUE_ID_debugtype389, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_enable_msi408, ptr @__UNIQUE_ID_enable_msitype407, ptr @__UNIQUE_ID_encoder_buffers394, ptr @__UNIQUE_ID_encoder_bufferstype393, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_fw_debug392, ptr @__UNIQUE_ID_fw_debugtype391, ptr @__UNIQUE_ID_guard_checking406, ptr @__UNIQUE_ID_guard_checkingtype405, ptr @__UNIQUE_ID_license388, ptr @__UNIQUE_ID_print_histogram402, ptr @__UNIQUE_ID_print_histogramtype401, ptr @__UNIQUE_ID_vbi_buffers396, ptr @__UNIQUE_ID_vbi_bufferstype395, ptr @__UNIQUE_ID_waitsecs398, ptr @__UNIQUE_ID_waitsecstype397, ptr @__exitcall_saa7164_fini, ptr @__initcall__kmod_saa7164__409_1552_saa7164_init6, ptr @__param_card, ptr @__param_crc_checking, ptr @__param_debug, ptr @__param_enable_msi, ptr @__param_encoder_buffers, ptr @__param_fw_debug, ptr @__param_guard_checking, ptr @__param_print_histogram, ptr @__param_vbi_buffers, ptr @__param_waitsecs, ptr @get_resources._entry, ptr @get_resources._entry_ptr, ptr @saa7164_debugfs_remove, ptr @saa7164_dev_setup._entry, ptr @saa7164_dev_setup._entry.92, ptr @saa7164_dev_setup._entry_ptr, ptr @saa7164_dev_setup._entry_ptr.94, ptr @saa7164_dev_unregister._entry, ptr @saa7164_dev_unregister._entry_ptr, ptr @saa7164_dump_busdesc._entry, ptr @saa7164_dump_busdesc._entry.262, ptr @saa7164_dump_busdesc._entry.265, ptr @saa7164_dump_busdesc._entry.268, ptr @saa7164_dump_busdesc._entry.271, ptr @saa7164_dump_busdesc._entry.274, ptr @saa7164_dump_busdesc._entry.277, ptr @saa7164_dump_busdesc._entry_ptr, ptr @saa7164_dump_busdesc._entry_ptr.264, ptr @saa7164_dump_busdesc._entry_ptr.267, ptr @saa7164_dump_busdesc._entry_ptr.270, ptr @saa7164_dump_busdesc._entry_ptr.273, ptr @saa7164_dump_busdesc._entry_ptr.276, ptr @saa7164_dump_busdesc._entry_ptr.279, ptr @saa7164_dump_hwdesc._entry, ptr @saa7164_dump_hwdesc._entry.195, ptr @saa7164_dump_hwdesc._entry.198, ptr @saa7164_dump_hwdesc._entry.201, ptr @saa7164_dump_hwdesc._entry.204, ptr @saa7164_dump_hwdesc._entry.207, ptr @saa7164_dump_hwdesc._entry.210, ptr @saa7164_dump_hwdesc._entry.213, ptr @saa7164_dump_hwdesc._entry.216, ptr @saa7164_dump_hwdesc._entry.219, ptr @saa7164_dump_hwdesc._entry.222, ptr @saa7164_dump_hwdesc._entry.225, ptr @saa7164_dump_hwdesc._entry.228, ptr @saa7164_dump_hwdesc._entry_ptr, ptr @saa7164_dump_hwdesc._entry_ptr.197, ptr @saa7164_dump_hwdesc._entry_ptr.200, ptr @saa7164_dump_hwdesc._entry_ptr.203, ptr @saa7164_dump_hwdesc._entry_ptr.206, ptr @saa7164_dump_hwdesc._entry_ptr.209, ptr @saa7164_dump_hwdesc._entry_ptr.212, ptr @saa7164_dump_hwdesc._entry_ptr.215, ptr @saa7164_dump_hwdesc._entry_ptr.218, ptr @saa7164_dump_hwdesc._entry_ptr.221, ptr @saa7164_dump_hwdesc._entry_ptr.224, ptr @saa7164_dump_hwdesc._entry_ptr.227, ptr @saa7164_dump_hwdesc._entry_ptr.230, ptr @saa7164_dump_intfdesc._entry, ptr @saa7164_dump_intfdesc._entry.233, ptr @saa7164_dump_intfdesc._entry.235, ptr @saa7164_dump_intfdesc._entry.237, ptr @saa7164_dump_intfdesc._entry.239, ptr @saa7164_dump_intfdesc._entry.242, ptr @saa7164_dump_intfdesc._entry.245, ptr @saa7164_dump_intfdesc._entry.248, ptr @saa7164_dump_intfdesc._entry.251, ptr @saa7164_dump_intfdesc._entry.254, ptr @saa7164_dump_intfdesc._entry.257, ptr @saa7164_dump_intfdesc._entry_ptr, ptr @saa7164_dump_intfdesc._entry_ptr.234, ptr @saa7164_dump_intfdesc._entry_ptr.236, ptr @saa7164_dump_intfdesc._entry_ptr.238, ptr @saa7164_dump_intfdesc._entry_ptr.241, ptr @saa7164_dump_intfdesc._entry_ptr.244, ptr @saa7164_dump_intfdesc._entry_ptr.247, ptr @saa7164_dump_intfdesc._entry_ptr.250, ptr @saa7164_dump_intfdesc._entry_ptr.253, ptr @saa7164_dump_intfdesc._entry_ptr.256, ptr @saa7164_dump_intfdesc._entry_ptr.259, ptr @saa7164_dumpregs._entry, ptr @saa7164_dumpregs._entry.25, ptr @saa7164_dumpregs._entry_ptr, ptr @saa7164_dumpregs._entry_ptr.27, ptr @saa7164_enable_msi._entry, ptr @saa7164_enable_msi._entry.167, ptr @saa7164_enable_msi._entry.170, ptr @saa7164_enable_msi._entry_ptr, ptr @saa7164_enable_msi._entry_ptr.169, ptr @saa7164_enable_msi._entry_ptr.172, ptr @saa7164_fini, ptr @saa7164_get_descriptors._entry, ptr @saa7164_get_descriptors._entry.185, ptr @saa7164_get_descriptors._entry.188, ptr @saa7164_get_descriptors._entry.191, ptr @saa7164_get_descriptors._entry_ptr, ptr @saa7164_get_descriptors._entry_ptr.187, ptr @saa7164_get_descriptors._entry_ptr.190, ptr @saa7164_get_descriptors._entry_ptr.192, ptr @saa7164_getcurrentfirmwareversion._entry, ptr @saa7164_getcurrentfirmwareversion._entry_ptr, ptr @saa7164_getfirmwarestatus._entry, ptr @saa7164_getfirmwarestatus._entry.12, ptr @saa7164_getfirmwarestatus._entry.15, ptr @saa7164_getfirmwarestatus._entry.18, ptr @saa7164_getfirmwarestatus._entry.3, ptr @saa7164_getfirmwarestatus._entry.6, ptr @saa7164_getfirmwarestatus._entry.9, ptr @saa7164_getfirmwarestatus._entry_ptr, ptr @saa7164_getfirmwarestatus._entry_ptr.11, ptr @saa7164_getfirmwarestatus._entry_ptr.14, ptr @saa7164_getfirmwarestatus._entry_ptr.17, ptr @saa7164_getfirmwarestatus._entry_ptr.20, ptr @saa7164_getfirmwarestatus._entry_ptr.5, ptr @saa7164_getfirmwarestatus._entry_ptr.8, ptr @saa7164_histogram_print._entry, ptr @saa7164_histogram_print._entry.152, ptr @saa7164_histogram_print._entry.155, ptr @saa7164_histogram_print._entry_ptr, ptr @saa7164_histogram_print._entry_ptr.154, ptr @saa7164_histogram_print._entry_ptr.157, ptr @saa7164_init._entry, ptr @saa7164_init._entry_ptr, ptr @saa7164_initdev._entry, ptr @saa7164_initdev._entry.33, ptr @saa7164_initdev._entry.36, ptr @saa7164_initdev._entry.39, ptr @saa7164_initdev._entry.47, ptr @saa7164_initdev._entry.50, ptr @saa7164_initdev._entry.53, ptr @saa7164_initdev._entry.56, ptr @saa7164_initdev._entry.59, ptr @saa7164_initdev._entry.62, ptr @saa7164_initdev._entry.65, ptr @saa7164_initdev._entry.68, ptr @saa7164_initdev._entry.70, ptr @saa7164_initdev._entry.73, ptr @saa7164_initdev._entry.76, ptr @saa7164_initdev._entry.79, ptr @saa7164_initdev._entry.82, ptr @saa7164_initdev._entry.85, ptr @saa7164_initdev._entry_ptr, ptr @saa7164_initdev._entry_ptr.35, ptr @saa7164_initdev._entry_ptr.38, ptr @saa7164_initdev._entry_ptr.41, ptr @saa7164_initdev._entry_ptr.49, ptr @saa7164_initdev._entry_ptr.52, ptr @saa7164_initdev._entry_ptr.55, ptr @saa7164_initdev._entry_ptr.58, ptr @saa7164_initdev._entry_ptr.61, ptr @saa7164_initdev._entry_ptr.64, ptr @saa7164_initdev._entry_ptr.67, ptr @saa7164_initdev._entry_ptr.69, ptr @saa7164_initdev._entry_ptr.72, ptr @saa7164_initdev._entry_ptr.74, ptr @saa7164_initdev._entry_ptr.78, ptr @saa7164_initdev._entry_ptr.81, ptr @saa7164_initdev._entry_ptr.84, ptr @saa7164_initdev._entry_ptr.87, ptr @saa7164_irq._entry, ptr @saa7164_irq._entry.175, ptr @saa7164_irq._entry_ptr, ptr @saa7164_irq._entry_ptr.177, ptr @saa7164_irq_encoder._entry, ptr @saa7164_irq_encoder._entry_ptr, ptr @saa7164_irq_ts._entry, ptr @saa7164_irq_ts._entry_ptr, ptr @saa7164_irq_vbi._entry, ptr @saa7164_irq_vbi._entry_ptr, ptr @saa7164_pack_verifier._entry, ptr @saa7164_pack_verifier._entry_ptr, ptr @saa7164_shutdown._entry, ptr @saa7164_shutdown._entry_ptr, ptr @saa7164_thread_function._entry, ptr @saa7164_thread_function._entry.282, ptr @saa7164_thread_function._entry.285, ptr @saa7164_thread_function._entry_ptr, ptr @saa7164_thread_function._entry_ptr.284, ptr @saa7164_thread_function._entry_ptr.287, ptr @saa7164_ts_verifier._entry, ptr @saa7164_ts_verifier._entry.136, ptr @saa7164_ts_verifier._entry.139, ptr @saa7164_ts_verifier._entry.142, ptr @saa7164_ts_verifier._entry.145, ptr @saa7164_ts_verifier._entry_ptr, ptr @saa7164_ts_verifier._entry_ptr.138, ptr @saa7164_ts_verifier._entry_ptr.141, ptr @saa7164_ts_verifier._entry_ptr.144, ptr @saa7164_ts_verifier._entry_ptr.147, ptr @saa7164_work_enchandler._entry, ptr @saa7164_work_enchandler._entry.114, ptr @saa7164_work_enchandler._entry.117, ptr @saa7164_work_enchandler._entry_ptr, ptr @saa7164_work_enchandler._entry_ptr.116, ptr @saa7164_work_enchandler._entry_ptr.119, ptr @saa7164_work_enchandler_helper._entry, ptr @saa7164_work_enchandler_helper._entry.122, ptr @saa7164_work_enchandler_helper._entry.125, ptr @saa7164_work_enchandler_helper._entry.128, ptr @saa7164_work_enchandler_helper._entry.131, ptr @saa7164_work_enchandler_helper._entry_ptr, ptr @saa7164_work_enchandler_helper._entry_ptr.124, ptr @saa7164_work_enchandler_helper._entry_ptr.127, ptr @saa7164_work_enchandler_helper._entry_ptr.130, ptr @saa7164_work_enchandler_helper._entry_ptr.133, ptr @saa7164_work_vbihandler._entry, ptr @saa7164_work_vbihandler._entry.159, ptr @saa7164_work_vbihandler._entry.161, ptr @saa7164_work_vbihandler._entry_ptr, ptr @saa7164_work_vbihandler._entry_ptr.160, ptr @saa7164_work_vbihandler._entry_ptr.162, ptr @saa_debug, ptr @fw_debug, ptr @encoder_buffers, ptr @vbi_buffers, ptr @waitsecs, ptr @print_histogram, ptr @crc_checking, ptr @guard_checking, ptr @enable_msi, ptr @saa7164_devlist, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @saa7614_dentry, ptr @saa7164_pci_driver, ptr @card, ptr @.str.28, ptr @saa7164_pci_tbl, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @saa7164_initdev.__key, ptr @.str.42, ptr @saa7164_initdev.__key.43, ptr @.str.44, ptr @saa7164_initdev.__key.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.71, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @saa7164_dev_setup.__key, ptr @.str.88, ptr @saa7164_devcount, ptr @.str.89, ptr @devlist, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @saa7164_port_init.__key, ptr @.str.99, ptr @saa7164_port_init.__key.100, ptr @saa7164_port_init.__key.101, ptr @.str.102, ptr @saa7164_port_init.__key.103, ptr @.str.104, ptr @saa7164_port_init.__key.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.240, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @.str.263, ptr @.str.266, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.280, ptr @.str.281, ptr @.str.283, ptr @.str.286, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @saa7164_fops, ptr @saa7164_sops, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304], section "llvm.metadata"
@0 = internal global [276 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoder_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waitsecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_histogram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_checking to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guard_checking to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_msi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_devlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getfirmwarestatus._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_getcurrentfirmwareversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dumpregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dumpregs._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7614_dentry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_initdev._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dev_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_devcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devlist to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dev_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dev_setup._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_port_init.__key.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_port_init.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_port_init.__key.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_port_init.__key.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler_helper._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler_helper._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler_helper._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_enchandler_helper._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_ts_verifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_ts_verifier._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_ts_verifier._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_ts_verifier._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_ts_verifier._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_pack_verifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_histogram_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_histogram_print._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_histogram_print._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_vbihandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_vbihandler._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_work_vbihandler._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_enable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_enable_msi._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_enable_msi._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_encoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_vbi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_get_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_get_descriptors._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_get_descriptors._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_get_descriptors._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_hwdesc._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_intfdesc._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dump_busdesc._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_thread_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_thread_function._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_thread_function._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dev_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_histogram_update(ptr nocapture noundef %hg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc7, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.saa7164_histogram, ptr %hg, i32 0, i32 1, i32 %i.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %val)
  %cmp2.not = icmp ult i32 %1, %val
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %count = getelementptr %struct.saa7164_histogram, ptr %hg, i32 0, i32 1, i32 %i.015, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %4 to i64
  %update_time = getelementptr %struct.saa7164_histogram, ptr %hg, i32 0, i32 1, i32 %i.015, i32 2
  %5 = ptrtoint ptr %update_time to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %update_time, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc7 = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc7, 64
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_getfirmwarestatus(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_status = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 17
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !605
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !606
  %4 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fw_status, align 4
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %6, i32 29
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #13, !srcloc !605
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !607
  %mode = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mode, align 4
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr14 = getelementptr i32, ptr %11, i32 30
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #13, !srcloc !605
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !608
  %spec = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %spec, align 4
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr22 = getelementptr i32, ptr %16, i32 31
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13, !srcloc !605
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !609
  %inst = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 17, i32 3
  %19 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %inst, align 4
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr30 = getelementptr i32, ptr %21, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #13, !srcloc !605
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !610
  %cpuload = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 17, i32 4
  %24 = ptrtoint ptr %cpuload to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cpuload, align 4
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr38 = getelementptr i32, ptr %26, i32 33
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #13, !srcloc !605
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !611
  %remainheap = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 17, i32 5
  %29 = ptrtoint ptr %remainheap to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %remainheap, align 4
  %30 = load i32, ptr @saa_debug, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body48_crit_edge, label %do.end

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #16
  br label %do.body48

do.body48:                                        ; preds = %do.end, %entry.do.body48_crit_edge
  %31 = load i32, ptr @saa_debug, align 4
  %and49 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.body63_crit_edge, label %do.end54

do.body48.do.body63_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body63

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  %name56 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %32 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_status, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name56, i32 noundef %33) #16
  br label %do.body63

do.body63:                                        ; preds = %do.end54, %do.body48.do.body63_crit_edge
  %34 = load i32, ptr @saa_debug, align 4
  %and64 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.do.body78_crit_edge, label %do.end69

do.body63.do.body78_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body78

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  %name71 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name71, i32 noundef %36) #16
  br label %do.body78

do.body78:                                        ; preds = %do.end69, %do.body63.do.body78_crit_edge
  %37 = load i32, ptr @saa_debug, align 4
  %and79 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.body93_crit_edge, label %do.end84

do.body78.do.body93_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body93

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  %name86 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %38 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %spec, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name86, i32 noundef %39) #16
  br label %do.body93

do.body93:                                        ; preds = %do.end84, %do.body78.do.body93_crit_edge
  %40 = load i32, ptr @saa_debug, align 4
  %and94 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.do.body108_crit_edge, label %do.end99

do.body93.do.body108_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body108

do.end99:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #15
  %name101 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %41 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inst, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name101, i32 noundef %42) #16
  br label %do.body108

do.body108:                                       ; preds = %do.end99, %do.body93.do.body108_crit_edge
  %43 = load i32, ptr @saa_debug, align 4
  %and109 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.do.body123_crit_edge, label %do.end114

do.body108.do.body123_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body123

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  %name116 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %44 = ptrtoint ptr %cpuload to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpuload, align 4
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name116, i32 noundef %45) #16
  br label %do.body123

do.body123:                                       ; preds = %do.end114, %do.body108.do.body123_crit_edge
  %46 = load i32, ptr @saa_debug, align 4
  %and124 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.do.end137_crit_edge, label %do.end129

do.body123.do.end137_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end137

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #15
  %name131 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %47 = ptrtoint ptr %remainheap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %remainheap, align 4
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name131, i32 noundef %48) #16
  br label %do.end137

do.end137:                                        ; preds = %do.end129, %do.body123.do.end137_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_getcurrentfirmwareversion(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !605
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !612
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %and4 = lshr i32 %3, 10
  %shr = and i32 %and4, 63
  %and5 = lshr i32 %3, 5
  %shr6 = and i32 %and5, 31
  %and7 = and i32 %3, 31
  %shr9 = lshr i32 %3, 16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %shr, i32 noundef %shr6, i32 noundef %and7, i32 noundef %shr9, i32 noundef %3) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_dumpregs(ptr noundef %dev, i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %name12 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  br label %do.body4

do.body4:                                         ; preds = %for.inc.do.body4_crit_edge, %do.end3
  %i.0239 = phi i32 [ 0, %do.end3 ], [ %add188, %for.inc.do.body4_crit_edge ]
  %1 = load i32, ptr @saa_debug, align 4
  %and5 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body4.for.inc_crit_edge, label %do.end10

do.body4.for.inc_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end10:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add = add i32 %i.0239, %addr
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !605
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !613
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add23 = add i32 %add, 1
  %add.ptr24 = getelementptr i8, ptr %7, i32 %add23
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #13, !srcloc !605
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !614
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add34 = add i32 %add, 2
  %add.ptr35 = getelementptr i8, ptr %11, i32 %add34
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #13, !srcloc !605
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !615
  %14 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio, align 8
  %add45 = add i32 %add, 3
  %add.ptr46 = getelementptr i8, ptr %15, i32 %add45
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #13, !srcloc !605
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !616
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add56 = add i32 %add, 4
  %add.ptr57 = getelementptr i8, ptr %19, i32 %add56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !605
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !617
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add67 = add i32 %add, 5
  %add.ptr68 = getelementptr i8, ptr %23, i32 %add67
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #13, !srcloc !605
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !618
  %26 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio, align 8
  %add78 = add i32 %add, 6
  %add.ptr79 = getelementptr i8, ptr %27, i32 %add78
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #13, !srcloc !605
  %29 = lshr i32 %28, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !619
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add89 = add i32 %add, 7
  %add.ptr90 = getelementptr i8, ptr %31, i32 %add89
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #13, !srcloc !605
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !620
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add100 = add i32 %add, 8
  %add.ptr101 = getelementptr i8, ptr %35, i32 %add100
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #13, !srcloc !605
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !621
  %38 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio, align 8
  %add111 = add i32 %add, 9
  %add.ptr112 = getelementptr i8, ptr %39, i32 %add111
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #13, !srcloc !605
  %41 = lshr i32 %40, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !622
  %42 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio, align 8
  %add122 = add i32 %add, 10
  %add.ptr123 = getelementptr i8, ptr %43, i32 %add122
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #13, !srcloc !605
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !623
  %46 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio, align 8
  %add133 = add i32 %add, 11
  %add.ptr134 = getelementptr i8, ptr %47, i32 %add133
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #13, !srcloc !605
  %49 = lshr i32 %48, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !624
  %50 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bmmio, align 8
  %add144 = add i32 %add, 12
  %add.ptr145 = getelementptr i8, ptr %51, i32 %add144
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #13, !srcloc !605
  %53 = lshr i32 %52, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !625
  %54 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmmio, align 8
  %add155 = add i32 %add, 13
  %add.ptr156 = getelementptr i8, ptr %55, i32 %add155
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #13, !srcloc !605
  %57 = lshr i32 %56, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !626
  %58 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bmmio, align 8
  %add166 = add i32 %add, 14
  %add.ptr167 = getelementptr i8, ptr %59, i32 %add166
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #13, !srcloc !605
  %61 = lshr i32 %60, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !627
  %62 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmmio, align 8
  %add177 = add i32 %add, 15
  %add.ptr178 = getelementptr i8, ptr %63, i32 %add177
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #13, !srcloc !605
  %65 = lshr i32 %64, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name12, i32 noundef %i.0239, i32 noundef %5, i32 noundef %9, i32 noundef %13, i32 noundef %17, i32 noundef %21, i32 noundef %25, i32 noundef %29, i32 noundef %33, i32 noundef %37, i32 noundef %41, i32 noundef %45, i32 noundef %49, i32 noundef %53, i32 noundef %57, i32 noundef %61, i32 noundef %65) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end10, %do.body4.for.inc_crit_edge
  %add188 = add nuw nsw i32 %i.0239, 16
  %cmp = icmp ult i32 %i.0239, 240
  br i1 %cmp, label %for.inc.do.body4_crit_edge, label %for.end

for.inc.do.body4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7164_debugfs_remove() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @saa7614_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7164_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @saa7614_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %0) #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @saa7164_pci_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @saa7164_pci_driver, ptr noundef null, ptr noundef nonnull @.str.28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @saa7164_fops) #13
  store ptr %call.i, ptr @saa7614_dentry, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_initdev(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #13
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !629
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 99688, i32 noundef 3520, i32 noundef 5) #17
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 2
  %call2 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #16
  br label %fail_free

if.end6:                                          ; preds = %if.end
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pci_dev, ptr %pci, align 4
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.fail_free_crit_edge

if.end6.fail_free_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_free

if.end9:                                          ; preds = %if.end6
  %lock.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 27
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @saa7164_dev_setup.__key) #13
  %refcount.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !630
  %3 = load i32, ptr @saa7164_devcount, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr @saa7164_devcount, align 4
  %nr.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nr.i, align 16
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 16
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 16, ptr noundef nonnull @.str.89, i32 noundef %3) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @devlist, i32 noundef 0) #13
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @saa7164_devlist, i32 0, i32 1), align 4
  %call.i.i209.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call1.i.i.i, ptr noundef %5, ptr noundef nonnull @saa7164_devlist) #13
  br i1 %call.i.i209.i, label %if.end.i.i.i, label %if.end9.list_add_tail.exit.i_crit_edge

if.end9.list_add_tail.exit.i_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %call1.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @saa7164_devlist, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @saa7164_devlist, ptr %call1.i.i.i, align 4096
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call1.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call1.i.i.i, ptr %5, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end9.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devlist) #13
  %board.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 16
  %arrayidx.i = getelementptr [8 x i32], ptr @card, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7164_bcount to i32))
  %13 = load i32, ptr @saa7164_bcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp.i = icmp ult i32 %12, %13
  %spec.store.select.i = select i1 %cmp.i, i32 %12, i32 -1
  %14 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select.i, ptr %board.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select.i)
  %cmp7215.i = icmp eq i32 %spec.store.select.i, -1
  br i1 %cmp7215.i, label %land.rhs.lr.ph.i, label %list_add_tail.exit.i.if.end29.i_crit_edge

list_add_tail.exit.i.if.end29.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.rhs.lr.ph.i:                                 ; preds = %list_add_tail.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7164_idcount to i32))
  %15 = load i32, ptr @saa7164_idcount, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.0216.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc23.i, %for.inc.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0216.i, i32 %15)
  %exitcond.not.i = icmp eq i32 %i.0216.i, %15
  br i1 %exitcond.not.i, label %if.then27.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor.i, align 4
  %arrayidx9.i = getelementptr [0 x %struct.saa7164_subid], ptr @saa7164_subids, i32 0, i32 %i.0216.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp11.i = icmp eq i16 %19, %21
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.body.i.for.incthread-pre-split.i_crit_edge

for.body.i.for.incthread-pre-split.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.incthread-pre-split.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 10
  %22 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_device.i, align 2
  %subdevice.i = getelementptr [0 x %struct.saa7164_subid], ptr @saa7164_subids, i32 0, i32 %i.0216.i, i32 1
  %24 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subdevice.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp17.i = icmp eq i16 %23, %25
  br i1 %cmp17.i, label %if.then19.i, label %land.lhs.true.i.for.incthread-pre-split.i_crit_edge

land.lhs.true.i.for.incthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.incthread-pre-split.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i = getelementptr [0 x %struct.saa7164_subid], ptr @saa7164_subids, i32 0, i32 %i.0216.i, i32 2
  %26 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %card.i, align 4
  %28 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %board.i, align 8
  br label %for.inc.i

for.incthread-pre-split.i:                        ; preds = %land.lhs.true.i.for.incthread-pre-split.i_crit_edge, %for.body.i.for.incthread-pre-split.i_crit_edge
  %29 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.pr.i = load i32, ptr %board.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.incthread-pre-split.i, %if.then19.i
  %.pr.i = phi i32 [ %.pr.pr.i, %for.incthread-pre-split.i ], [ %27, %if.then19.i ]
  %inc23.i = add i32 %i.0216.i, 1
  %cmp7.i = icmp eq i32 %.pr.i, -1
  br i1 %cmp7.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.if.end29.i_crit_edge

for.inc.i.if.end29.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.then27.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %board.i, align 8
  tail call void @saa7164_card_list(ptr noundef %call1.i.i.i) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %for.inc.i.if.end29.i_crit_edge, %list_add_tail.exit.i.if.end29.i_crit_edge
  %31 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %number.i, align 4
  %conv31.i = zext i8 %36 to i32
  %pci_bus.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %pci_bus.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv31.i, ptr %pci_bus.i, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 6
  %38 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %39, 3
  %and.i = and i32 %shr.i, 31
  %pci_slot.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and.i, ptr %pci_slot.i, align 8
  %i2c_bus.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 28
  %41 = ptrtoint ptr %i2c_bus.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.i, ptr %i2c_bus.i, align 64
  %nr37.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 0, i32 1
  %42 = ptrtoint ptr %nr37.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %nr37.i, align 4
  %arrayidx39.i = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 1
  %43 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i.i.i, ptr %arrayidx39.i, align 8
  %nr43.i = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 1, i32 1
  %44 = ptrtoint ptr %nr43.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %nr43.i, align 4
  %arrayidx45.i = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 2
  %45 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i.i.i, ptr %arrayidx45.i, align 16
  %nr49.i = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 2, i32 1
  %46 = ptrtoint ptr %nr49.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %nr49.i, align 4
  tail call fastcc void @saa7164_port_init(ptr noundef %call1.i.i.i, i32 noundef 0) #13
  tail call fastcc void @saa7164_port_init(ptr noundef %call1.i.i.i, i32 noundef 1) #13
  tail call fastcc void @saa7164_port_init(ptr noundef %call1.i.i.i, i32 noundef 2) #13
  tail call fastcc void @saa7164_port_init(ptr noundef %call1.i.i.i, i32 noundef 3) #13
  tail call fastcc void @saa7164_port_init(ptr noundef %call1.i.i.i, i32 noundef 4) #13
  tail call fastcc void @saa7164_port_init(ptr noundef %call1.i.i.i, i32 noundef 5) #13
  %47 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci, align 4
  %resource.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 47
  %49 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %resource.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 47, i32 0, i32 1
  %51 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i = icmp eq i32 %52, 0
  %sub.i.i = sub i32 1, %50
  %add.i.i = add i32 %sub.i.i, %52
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %call.i.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %50, i32 noundef %cond.i.i, ptr noundef %name.i, i32 noundef 0) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end29.i.saa7164_dev_setup.exit.thread_crit_edge, label %if.then.i.i

if.end29.i.saa7164_dev_setup.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_dev_setup.exit.thread

if.then.i.i:                                      ; preds = %if.end29.i
  %53 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci, align 4
  %arrayidx14.i.i = getelementptr %struct.pci_dev, ptr %54, i32 0, i32 47, i32 2
  %55 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx14.i.i, align 8
  %end19.i.i = getelementptr %struct.pci_dev, ptr %54, i32 0, i32 47, i32 2, i32 1
  %57 = ptrtoint ptr %end19.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp20.i.i = icmp eq i32 %58, 0
  %sub31.i.i = sub i32 1, %56
  %add32.i.i = add i32 %sub31.i.i, %58
  %cond34.i.i = select i1 %cmp20.i.i, i32 0, i32 %add32.i.i
  %call37.i.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %56, i32 noundef %cond34.i.i, ptr noundef %name.i, i32 noundef 0) #13
  %tobool38.not.i.i = icmp eq ptr %call37.i.i, null
  br i1 %tobool38.not.i.i, label %if.then.i.i.saa7164_dev_setup.exit.thread_crit_edge, label %if.end13

if.then.i.i.saa7164_dev_setup.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_dev_setup.exit.thread

saa7164_dev_setup.exit.thread:                    ; preds = %if.then.i.i.saa7164_dev_setup.exit.thread_crit_edge, %if.end29.i.saa7164_dev_setup.exit.thread_crit_edge
  %59 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci, align 4
  %resource44.i.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 47
  %61 = ptrtoint ptr %resource44.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %resource44.i.i, align 8
  %conv.i.i = zext i32 %62 to i64
  %arrayidx49.i.i = getelementptr %struct.pci_dev, ptr %60, i32 0, i32 47, i32 2
  %63 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx49.i.i, align 8
  %conv51.i.i = zext i32 %64 to i64
  %call52.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %name.i, i64 noundef %conv.i.i, i64 noundef %conv51.i.i) #16
  %65 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci, align 4
  %subsystem_vendor66.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %subsystem_vendor66.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %subsystem_vendor66.i, align 4
  %conv67.i = zext i16 %68 to i32
  %subsystem_device69.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 10
  %69 = ptrtoint ptr %subsystem_device69.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %subsystem_device69.i, align 2
  %conv70.i = zext i16 %70 to i32
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name.i, i32 noundef %conv67.i, i32 noundef %conv70.i) #16
  %71 = load i32, ptr @saa7164_devcount, align 4
  %dec.i = add i32 %71, -1
  store i32 %dec.i, ptr @saa7164_devcount, align 4
  br label %fail_free

if.end13:                                         ; preds = %if.then.i.i
  %72 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 47
  %74 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 47, i32 0, i32 1
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp78.i = icmp eq i32 %77, 0
  %sub.i = sub i32 1, %75
  %add.i = add i32 %sub.i, %77
  %cond.i = select i1 %cmp78.i, i32 0, i32 %add.i
  %call88.i = tail call ptr @ioremap(i32 noundef %75, i32 noundef %cond.i) #13
  %lmmio.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 8
  %78 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call88.i, ptr %lmmio.i, align 4
  %79 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci, align 4
  %arrayidx91.i = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 47, i32 2
  %81 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx91.i, align 8
  %end96.i = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 47, i32 2, i32 1
  %83 = ptrtoint ptr %end96.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %end96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp97.i = icmp eq i32 %84, 0
  %sub109.i = sub i32 1, %82
  %add110.i = add i32 %sub109.i, %84
  %cond112.i = select i1 %cmp97.i, i32 0, i32 %add110.i
  %call113.i = tail call ptr @ioremap(i32 noundef %82, i32 noundef %cond112.i) #13
  %lmmio2.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 10
  %85 = ptrtoint ptr %lmmio2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call113.i, ptr %lmmio2.i, align 4
  %86 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lmmio.i, align 4
  %bmmio.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 9
  %88 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %bmmio.i, align 32
  %bmmio2.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 11
  %89 = ptrtoint ptr %bmmio2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call113.i, ptr %bmmio2.i, align 8
  %int_status.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 23
  %90 = ptrtoint ptr %int_status.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1589120, ptr %int_status.i, align 4
  %int_ack.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 24
  %91 = ptrtoint ptr %int_ack.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1589136, ptr %int_ack.i, align 8
  %92 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci, align 4
  %subsystem_vendor123.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %subsystem_vendor123.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %subsystem_vendor123.i, align 4
  %conv124.i = zext i16 %95 to i32
  %subsystem_device126.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 10
  %96 = ptrtoint ptr %subsystem_device126.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %subsystem_device126.i, align 2
  %conv127.i = zext i16 %97 to i32
  %98 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %board.i, align 8
  %arrayidx129.i = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx129.i, align 4
  %102 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nr.i, align 16
  %arrayidx133.i = getelementptr [8 x i32], ptr @card, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx133.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %99)
  %cmp135.i = icmp eq i32 %105, %99
  %cond137.i = select i1 %cmp135.i, ptr @.str.95, ptr @.str.96
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name.i, i32 noundef %conv124.i, i32 noundef %conv127.i, ptr noundef %101, i32 noundef %99, ptr noundef nonnull %cond137.i) #16
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 12
  %106 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %revision, align 4
  %pci_rev = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %pci_rev to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %pci_rev, align 16
  %pci_lat = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 5
  %call14 = tail call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 13, ptr noundef %pci_lat) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %109 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i398 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i398, label %if.end.i.i, label %if.end13.pci_name.exit_crit_edge

if.end13.pci_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end13.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %112, %if.end.i.i ], [ %110, %if.end13.pci_name.exit_crit_edge ]
  %113 = ptrtoint ptr %pci_rev to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %pci_rev, align 16
  %conv = zext i8 %114 to i32
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %115 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq, align 4
  %117 = ptrtoint ptr %pci_lat to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pci_lat, align 1
  %conv21 = zext i8 %118 to i32
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %119 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %resource, align 8
  %conv22 = zext i32 %120 to i64
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %116, i32 noundef %conv21, i64 noundef %conv22) #16
  tail call void @pci_set_master(ptr noundef %pci_dev) #13
  %call25 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end35, label %do.end30

do.end30:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i) #16
  br label %fail_irq

if.end35:                                         ; preds = %pci_name.exit
  %call36 = tail call fastcc zeroext i1 @saa7164_enable_msi(ptr noundef %pci_dev, ptr noundef nonnull %call1.i.i.i)
  br i1 %call36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %msi = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 25
  %121 = ptrtoint ptr %msi to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %msi, align 4
  br label %if.end54

if.else:                                          ; preds = %if.end35
  %122 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq, align 4
  %call.i399 = tail call i32 @request_threaded_irq(i32 noundef %123, ptr noundef nonnull @saa7164_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %cmp42 = icmp slt i32 %call.i399, 0
  br i1 %cmp42, label %do.end47, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %125) #16
  br label %fail_irq

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.then37
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %126 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end54
  %i.0409 = phi i32 [ 0, %if.end54 ], [ %inc, %for.body.for.body_crit_edge ]
  %conv57 = trunc i32 %i.0409 to i8
  %arrayidx58 = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 %i.0409
  %127 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv57, ptr %arrayidx58, align 32
  %inuse = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 %i.0409, i32 1
  %128 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %inuse, align 4
  %lock = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 %i.0409, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @saa7164_initdev.__key) #13
  %wait = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 %i.0409, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.44, ptr noundef nonnull @saa7164_initdev.__key.43) #13
  %inc = add nuw nsw i32 %i.0409, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body71, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body71:                                        ; preds = %for.body
  %workcmd = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 30
  tail call void @__init_work(ptr noundef %workcmd, i32 noundef 0) #13
  %129 = ptrtoint ptr %workcmd to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -64, ptr %workcmd, align 8
  %lockdep_map = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 30, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.46, ptr noundef nonnull @saa7164_initdev.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry75 = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 30, i32 1
  %130 = ptrtoint ptr %entry75 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %entry75, ptr %entry75, align 4
  %prev.i = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 30, i32 1, i32 1
  %131 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %entry75, ptr %prev.i, align 64
  %func = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 30, i32 2
  %132 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @saa7164_work_cmdhandler, ptr %func, align 4
  %133 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %board.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp79.not = icmp eq i32 %134, 0
  br i1 %cmp79.not, label %do.end273, label %if.then81

if.then81:                                        ; preds = %do.body71
  %call82 = tail call i32 @saa7164_downloadfirmware(ptr noundef nonnull %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end88, label %if.end91

do.end88:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #16
  br label %cleanup

if.end91:                                         ; preds = %if.then81
  tail call fastcc void @saa7164_get_descriptors(ptr noundef nonnull %call1.i.i.i)
  tail call void @saa7164_dumpregs(ptr noundef nonnull %call1.i.i.i, i32 noundef 0)
  %call92 = tail call i32 @saa7164_getcurrentfirmwareversion(ptr noundef nonnull %call1.i.i.i)
  tail call void @saa7164_getfirmwarestatus(ptr noundef nonnull %call1.i.i.i)
  %call93 = tail call i32 @saa7164_bus_setup(ptr noundef nonnull %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end99, label %if.end91.if.end102_crit_edge

if.end91.if.end102_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #16
  br label %if.end102

if.end102:                                        ; preds = %do.end99, %if.end91.if.end102_crit_edge
  tail call void @saa7164_bus_dump(ptr noundef nonnull %call1.i.i.i) #13
  %135 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %version, align 4
  %call103 = call i32 @saa7164_api_get_fw_version(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %do.body107, label %do.end129

do.body107:                                       ; preds = %if.end102
  %136 = load i32, ptr @saa_debug, align 4
  %and = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool108.not = icmp eq i32 %and, 0
  br i1 %tobool108.not, label %do.body107.if.end132_crit_edge, label %do.end112

do.body107.if.end132_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

do.end112:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %version, align 4
  %and116 = lshr i32 %138, 10
  %shr = and i32 %and116, 63
  %and117 = lshr i32 %138, 5
  %shr118 = and i32 %and117, 31
  %and119 = and i32 %138, 31
  %shr121 = lshr i32 %138, 16
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i, i32 noundef %shr, i32 noundef %shr118, i32 noundef %and119, i32 noundef %shr121, i32 noundef %138) #16
  br label %if.end132

do.end129:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #16
  br label %if.end132

if.end132:                                        ; preds = %do.end129, %do.end112, %do.body107.if.end132_crit_edge
  %call134 = call i32 @saa7164_i2c_register(ptr noundef %i2c_bus.i) #13
  %call137 = call i32 @saa7164_i2c_register(ptr noundef %arrayidx39.i) #13
  %call140 = call i32 @saa7164_i2c_register(ptr noundef %arrayidx45.i) #13
  call void @saa7164_gpio_setup(ptr noundef nonnull %call1.i.i.i) #13
  call void @saa7164_card_setup(ptr noundef nonnull %call1.i.i.i) #13
  %call141 = call i32 @saa7164_api_enum_subdevs(ptr noundef nonnull %call1.i.i.i) #13
  %139 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %board.i, align 8
  %porta = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %140, i32 1
  %141 = ptrtoint ptr %porta to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %porta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %142)
  %cmp144 = icmp eq i32 %142, 1
  br i1 %cmp144, label %if.then146, label %if.end132.if.end158_crit_edge

if.end132.if.end158_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then146:                                       ; preds = %if.end132
  %ports = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 29
  %call148 = call i32 @saa7164_dvb_register(ptr noundef %ports) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %do.end154, label %if.then146.if.end158_crit_edge

if.then146.if.end158_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

do.end154:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.30) #16
  br label %if.end158

if.end158:                                        ; preds = %do.end154, %if.then146.if.end158_crit_edge, %if.end132.if.end158_crit_edge
  %143 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %board.i, align 8
  %portb = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %144, i32 2
  %145 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %portb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp161 = icmp eq i32 %146, 1
  br i1 %cmp161, label %if.then163, label %if.end158.if.end176_crit_edge

if.end158.if.end176_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

if.then163:                                       ; preds = %if.end158
  %arrayidx165 = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 29, i32 1
  %call166 = call i32 @saa7164_dvb_register(ptr noundef %arrayidx165) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %do.end172, label %if.then163.if.end176_crit_edge

if.then163.if.end176_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

do.end172:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #15
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.30) #16
  br label %if.end176

if.end176:                                        ; preds = %do.end172, %if.then163.if.end176_crit_edge, %if.end158.if.end176_crit_edge
  %147 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %board.i, align 8
  %portc = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %148, i32 3
  %149 = ptrtoint ptr %portc to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %portc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp179 = icmp eq i32 %150, 2
  br i1 %cmp179, label %if.then181, label %if.end176.if.end194_crit_edge

if.end176.if.end194_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.then181:                                       ; preds = %if.end176
  %arrayidx183 = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 29, i32 2
  %call184 = call i32 @saa7164_encoder_register(ptr noundef %arrayidx183) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %do.end190, label %if.then181.if.end194_crit_edge

if.then181.if.end194_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

do.end190:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #15
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.30) #16
  br label %if.end194

if.end194:                                        ; preds = %do.end190, %if.then181.if.end194_crit_edge, %if.end176.if.end194_crit_edge
  %151 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %board.i, align 8
  %portd = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %152, i32 4
  %153 = ptrtoint ptr %portd to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %portd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp197 = icmp eq i32 %154, 2
  br i1 %cmp197, label %if.then199, label %if.end194.if.end212_crit_edge

if.end194.if.end212_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end212

if.then199:                                       ; preds = %if.end194
  %arrayidx201 = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 29, i32 3
  %call202 = call i32 @saa7164_encoder_register(ptr noundef %arrayidx201) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %do.end208, label %if.then199.if.end212_crit_edge

if.then199.if.end212_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end212

do.end208:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #15
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.30) #16
  br label %if.end212

if.end212:                                        ; preds = %do.end208, %if.then199.if.end212_crit_edge, %if.end194.if.end212_crit_edge
  %155 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %board.i, align 8
  %porte = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %156, i32 5
  %157 = ptrtoint ptr %porte to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %porte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %158)
  %cmp215 = icmp eq i32 %158, 3
  br i1 %cmp215, label %if.then217, label %if.end212.if.end230_crit_edge

if.end212.if.end230_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

if.then217:                                       ; preds = %if.end212
  %arrayidx219 = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 29, i32 4
  %call220 = call i32 @saa7164_vbi_register(ptr noundef %arrayidx219) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %do.end226, label %if.then217.if.end230_crit_edge

if.then217.if.end230_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

do.end226:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  %call228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.30) #16
  br label %if.end230

if.end230:                                        ; preds = %do.end226, %if.then217.if.end230_crit_edge, %if.end212.if.end230_crit_edge
  %159 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %board.i, align 8
  %portf = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %160, i32 6
  %161 = ptrtoint ptr %portf to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %portf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %162)
  %cmp233 = icmp eq i32 %162, 3
  br i1 %cmp233, label %if.then235, label %if.end230.if.end248_crit_edge

if.end230.if.end248_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

if.then235:                                       ; preds = %if.end230
  %arrayidx237 = getelementptr %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 29, i32 5
  %call238 = call i32 @saa7164_vbi_register(ptr noundef %arrayidx237) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %do.end244, label %if.then235.if.end248_crit_edge

if.then235.if.end248_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

do.end244:                                        ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #15
  %call246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.30) #16
  br label %if.end248

if.end248:                                        ; preds = %do.end244, %if.then235.if.end248_crit_edge, %if.end230.if.end248_crit_edge
  %163 = load i32, ptr @fw_debug, align 4
  %conv249 = trunc i32 %163 to i8
  %call250 = call i32 @saa7164_api_set_debug(ptr noundef nonnull %call1.i.i.i, i8 noundef zeroext %conv249) #13
  %164 = load i32, ptr @fw_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool251.not = icmp eq i32 %164, 0
  br i1 %tobool251.not, label %if.end248.do.body277_crit_edge, label %if.then252

if.end248.do.body277_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body277

if.then252:                                       ; preds = %if.end248
  %call253 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @saa7164_thread_function, ptr noundef nonnull %call1.i.i.i, i32 noundef -1, ptr noundef nonnull @.str.75) #13
  %cmp.i400 = icmp ugt ptr %call253, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.then261, label %if.end257

if.end257:                                        ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #15
  %call256 = call i32 @wake_up_process(ptr noundef %call253) #13
  %kthread = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 31
  %165 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call253, ptr %kthread, align 4
  br label %do.body277

if.then261:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #15
  %kthread404 = getelementptr inbounds %struct.saa7164_dev, ptr %call1.i.i.i, i32 0, i32 31
  %166 = ptrtoint ptr %kthread404 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %kthread404, align 4
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.30) #16
  br label %do.body277

do.end273:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %call275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.30) #16
  br label %do.body277

do.body277:                                       ; preds = %do.end273, %if.then261, %if.end257, %if.end248.do.body277_crit_edge
  %167 = load i32, ptr @saa_debug, align 4
  %and278 = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %do.body277.do.body291_crit_edge, label %do.end283

do.body277.do.body291_crit_edge:                  ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body291

do.end283:                                        ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #15
  %call287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name.i, ptr noundef nonnull @.str.30, i32 noundef %167) #16
  br label %do.body291

do.body291:                                       ; preds = %do.end283, %do.body277.do.body291_crit_edge
  %168 = load i32, ptr @saa_debug, align 4
  %and292 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %do.body291.cleanup_crit_edge, label %do.end297

do.body291.cleanup_crit_edge:                     ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end297:                                        ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #15
  %169 = load i32, ptr @waitsecs, align 4
  %call301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name.i, ptr noundef nonnull @.str.30, i32 noundef %169) #16
  br label %cleanup

fail_irq:                                         ; preds = %do.end47, %do.end30
  %err.0 = phi i32 [ %call25, %do.end30 ], [ -5, %do.end47 ]
  tail call fastcc void @saa7164_dev_unregister(ptr noundef nonnull %call1.i.i.i)
  br label %fail_free

fail_free:                                        ; preds = %fail_irq, %saa7164_dev_setup.exit.thread, %if.end6.fail_free_crit_edge, %do.end
  %err.1 = phi i32 [ %call2, %do.end ], [ %err.0, %fail_irq ], [ -5, %if.end6.fail_free_crit_edge ], [ -22, %saa7164_dev_setup.exit.thread ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #13
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %do.end297, %do.body291.cleanup_crit_edge, %do.end88, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body291.cleanup_crit_edge ], [ 0, %do.end297 ], [ 0, %do.end88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7164_finidev(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @fw_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %kthread = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kthread, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @kthread_stop(ptr noundef nonnull %6) #13
  %7 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %kthread, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %firmwareloaded = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %firmwareloaded to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %firmwareloaded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @saa7164_api_set_debug(ptr noundef %1, i8 noundef zeroext 0) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %irq_interval = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 26
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %irq_interval) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end10
  %entries.03.i = phi i32 [ 0, %if.end10 ], [ %entries.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end10 ], [ %inc14.i, %for.inc.i.for.body.i_crit_edge ]
  %count.i = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 26, i32 1, i32 %i.01.i, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp eq i32 %11, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %do.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 26, i32 1, i32 %i.01.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 8
  %update_time.i = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 26, i32 1, i32 %i.01.i, i32 2
  %14 = ptrtoint ptr %update_time.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %update_time.i, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %13, i32 noundef %11, i64 noundef %15) #16
  %inc.i = add i32 %entries.03.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end4.i, %for.body.i.for.inc.i_crit_edge
  %entries.1.i = phi i32 [ %entries.03.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %do.end4.i ]
  %inc14.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 64
  br i1 %exitcond.not.i, label %saa7164_histogram_print.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

saa7164_histogram_print.exit:                     ; preds = %for.inc.i
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i) #16
  %svc_interval = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 27
  %call.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %svc_interval) #16
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i155.for.body.i146_crit_edge, %saa7164_histogram_print.exit
  %entries.03.i142 = phi i32 [ 0, %saa7164_histogram_print.exit ], [ %entries.1.i152, %for.inc.i155.for.body.i146_crit_edge ]
  %i.01.i143 = phi i32 [ 0, %saa7164_histogram_print.exit ], [ %inc14.i153, %for.inc.i155.for.body.i146_crit_edge ]
  %count.i144 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 27, i32 1, i32 %i.01.i143, i32 1
  %16 = ptrtoint ptr %count.i144 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.i145 = icmp eq i32 %17, 0
  br i1 %cmp1.i145, label %for.body.i146.for.inc.i155_crit_edge, label %do.end4.i151

for.body.i146.for.inc.i155_crit_edge:             ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i155

do.end4.i151:                                     ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i147 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 27, i32 1, i32 %i.01.i143
  %18 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i147, align 8
  %update_time.i148 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 27, i32 1, i32 %i.01.i143, i32 2
  %20 = ptrtoint ptr %update_time.i148 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %update_time.i148, align 8
  %call13.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %19, i32 noundef %17, i64 noundef %21) #16
  %inc.i150 = add i32 %entries.03.i142, 1
  br label %for.inc.i155

for.inc.i155:                                     ; preds = %do.end4.i151, %for.body.i146.for.inc.i155_crit_edge
  %entries.1.i152 = phi i32 [ %entries.03.i142, %for.body.i146.for.inc.i155_crit_edge ], [ %inc.i150, %do.end4.i151 ]
  %inc14.i153 = add nuw nsw i32 %i.01.i143, 1
  %exitcond.not.i154 = icmp eq i32 %inc14.i153, 64
  br i1 %exitcond.not.i154, label %saa7164_histogram_print.exit157, label %for.inc.i155.for.body.i146_crit_edge

for.inc.i155.for.body.i146_crit_edge:             ; preds = %for.inc.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i146

saa7164_histogram_print.exit157:                  ; preds = %for.inc.i155
  %call19.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i152) #16
  %irq_svc_interval = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 28
  %call.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %irq_svc_interval) #16
  br label %for.body.i163

for.body.i163:                                    ; preds = %for.inc.i172.for.body.i163_crit_edge, %saa7164_histogram_print.exit157
  %entries.03.i159 = phi i32 [ 0, %saa7164_histogram_print.exit157 ], [ %entries.1.i169, %for.inc.i172.for.body.i163_crit_edge ]
  %i.01.i160 = phi i32 [ 0, %saa7164_histogram_print.exit157 ], [ %inc14.i170, %for.inc.i172.for.body.i163_crit_edge ]
  %count.i161 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 28, i32 1, i32 %i.01.i160, i32 1
  %22 = ptrtoint ptr %count.i161 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.i162 = icmp eq i32 %23, 0
  br i1 %cmp1.i162, label %for.body.i163.for.inc.i172_crit_edge, label %do.end4.i168

for.body.i163.for.inc.i172_crit_edge:             ; preds = %for.body.i163
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i172

do.end4.i168:                                     ; preds = %for.body.i163
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i164 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 28, i32 1, i32 %i.01.i160
  %24 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i164, align 8
  %update_time.i165 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 28, i32 1, i32 %i.01.i160, i32 2
  %26 = ptrtoint ptr %update_time.i165 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %update_time.i165, align 8
  %call13.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %25, i32 noundef %23, i64 noundef %27) #16
  %inc.i167 = add i32 %entries.03.i159, 1
  br label %for.inc.i172

for.inc.i172:                                     ; preds = %do.end4.i168, %for.body.i163.for.inc.i172_crit_edge
  %entries.1.i169 = phi i32 [ %entries.03.i159, %for.body.i163.for.inc.i172_crit_edge ], [ %inc.i167, %do.end4.i168 ]
  %inc14.i170 = add nuw nsw i32 %i.01.i160, 1
  %exitcond.not.i171 = icmp eq i32 %inc14.i170, 64
  br i1 %exitcond.not.i171, label %saa7164_histogram_print.exit174, label %for.inc.i172.for.body.i163_crit_edge

for.inc.i172.for.body.i163_crit_edge:             ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i163

saa7164_histogram_print.exit174:                  ; preds = %for.inc.i172
  %call19.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i169) #16
  %read_interval = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 29
  %call.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %read_interval) #16
  br label %for.body.i180

for.body.i180:                                    ; preds = %for.inc.i189.for.body.i180_crit_edge, %saa7164_histogram_print.exit174
  %entries.03.i176 = phi i32 [ 0, %saa7164_histogram_print.exit174 ], [ %entries.1.i186, %for.inc.i189.for.body.i180_crit_edge ]
  %i.01.i177 = phi i32 [ 0, %saa7164_histogram_print.exit174 ], [ %inc14.i187, %for.inc.i189.for.body.i180_crit_edge ]
  %count.i178 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 29, i32 1, i32 %i.01.i177, i32 1
  %28 = ptrtoint ptr %count.i178 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i179 = icmp eq i32 %29, 0
  br i1 %cmp1.i179, label %for.body.i180.for.inc.i189_crit_edge, label %do.end4.i185

for.body.i180.for.inc.i189_crit_edge:             ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i189

do.end4.i185:                                     ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i181 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 29, i32 1, i32 %i.01.i177
  %30 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i181, align 8
  %update_time.i182 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 29, i32 1, i32 %i.01.i177, i32 2
  %32 = ptrtoint ptr %update_time.i182 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %update_time.i182, align 8
  %call13.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %31, i32 noundef %29, i64 noundef %33) #16
  %inc.i184 = add i32 %entries.03.i176, 1
  br label %for.inc.i189

for.inc.i189:                                     ; preds = %do.end4.i185, %for.body.i180.for.inc.i189_crit_edge
  %entries.1.i186 = phi i32 [ %entries.03.i176, %for.body.i180.for.inc.i189_crit_edge ], [ %inc.i184, %do.end4.i185 ]
  %inc14.i187 = add nuw nsw i32 %i.01.i177, 1
  %exitcond.not.i188 = icmp eq i32 %inc14.i187, 64
  br i1 %exitcond.not.i188, label %saa7164_histogram_print.exit191, label %for.inc.i189.for.body.i180_crit_edge

for.inc.i189.for.body.i180_crit_edge:             ; preds = %for.inc.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i180

saa7164_histogram_print.exit191:                  ; preds = %for.inc.i189
  %call19.i190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i186) #16
  %poll_interval = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 30
  %call.i192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %poll_interval) #16
  br label %for.body.i197

for.body.i197:                                    ; preds = %for.inc.i206.for.body.i197_crit_edge, %saa7164_histogram_print.exit191
  %entries.03.i193 = phi i32 [ 0, %saa7164_histogram_print.exit191 ], [ %entries.1.i203, %for.inc.i206.for.body.i197_crit_edge ]
  %i.01.i194 = phi i32 [ 0, %saa7164_histogram_print.exit191 ], [ %inc14.i204, %for.inc.i206.for.body.i197_crit_edge ]
  %count.i195 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 30, i32 1, i32 %i.01.i194, i32 1
  %34 = ptrtoint ptr %count.i195 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.i196 = icmp eq i32 %35, 0
  br i1 %cmp1.i196, label %for.body.i197.for.inc.i206_crit_edge, label %do.end4.i202

for.body.i197.for.inc.i206_crit_edge:             ; preds = %for.body.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i206

do.end4.i202:                                     ; preds = %for.body.i197
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i198 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 30, i32 1, i32 %i.01.i194
  %36 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i198, align 8
  %update_time.i199 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2, i32 30, i32 1, i32 %i.01.i194, i32 2
  %38 = ptrtoint ptr %update_time.i199 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %update_time.i199, align 8
  %call13.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %37, i32 noundef %35, i64 noundef %39) #16
  %inc.i201 = add i32 %entries.03.i193, 1
  br label %for.inc.i206

for.inc.i206:                                     ; preds = %do.end4.i202, %for.body.i197.for.inc.i206_crit_edge
  %entries.1.i203 = phi i32 [ %entries.03.i193, %for.body.i197.for.inc.i206_crit_edge ], [ %inc.i201, %do.end4.i202 ]
  %inc14.i204 = add nuw nsw i32 %i.01.i194, 1
  %exitcond.not.i205 = icmp eq i32 %inc14.i204, 64
  br i1 %exitcond.not.i205, label %saa7164_histogram_print.exit208, label %for.inc.i206.for.body.i197_crit_edge

for.inc.i206.for.body.i197_crit_edge:             ; preds = %for.inc.i206
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i197

saa7164_histogram_print.exit208:                  ; preds = %for.inc.i206
  %call19.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i203) #16
  %read_interval33 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 4, i32 29
  %call.i209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %read_interval33) #16
  br label %for.body.i214

for.body.i214:                                    ; preds = %for.inc.i223.for.body.i214_crit_edge, %saa7164_histogram_print.exit208
  %entries.03.i210 = phi i32 [ 0, %saa7164_histogram_print.exit208 ], [ %entries.1.i220, %for.inc.i223.for.body.i214_crit_edge ]
  %i.01.i211 = phi i32 [ 0, %saa7164_histogram_print.exit208 ], [ %inc14.i221, %for.inc.i223.for.body.i214_crit_edge ]
  %count.i212 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 4, i32 29, i32 1, i32 %i.01.i211, i32 1
  %40 = ptrtoint ptr %count.i212 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1.i213 = icmp eq i32 %41, 0
  br i1 %cmp1.i213, label %for.body.i214.for.inc.i223_crit_edge, label %do.end4.i219

for.body.i214.for.inc.i223_crit_edge:             ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i223

do.end4.i219:                                     ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i215 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 4, i32 29, i32 1, i32 %i.01.i211
  %42 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i215, align 8
  %update_time.i216 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 4, i32 29, i32 1, i32 %i.01.i211, i32 2
  %44 = ptrtoint ptr %update_time.i216 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %update_time.i216, align 8
  %call13.i217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %43, i32 noundef %41, i64 noundef %45) #16
  %inc.i218 = add i32 %entries.03.i210, 1
  br label %for.inc.i223

for.inc.i223:                                     ; preds = %do.end4.i219, %for.body.i214.for.inc.i223_crit_edge
  %entries.1.i220 = phi i32 [ %entries.03.i210, %for.body.i214.for.inc.i223_crit_edge ], [ %inc.i218, %do.end4.i219 ]
  %inc14.i221 = add nuw nsw i32 %i.01.i211, 1
  %exitcond.not.i222 = icmp eq i32 %inc14.i221, 64
  br i1 %exitcond.not.i222, label %saa7164_histogram_print.exit225, label %for.inc.i223.for.body.i214_crit_edge

for.inc.i223.for.body.i214_crit_edge:             ; preds = %for.inc.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i214

saa7164_histogram_print.exit225:                  ; preds = %for.inc.i223
  %arrayidx = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2
  %call19.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i220) #16
  %poll_interval38 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 5, i32 30
  %call.i226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %poll_interval38) #16
  br label %for.body.i231

for.body.i231:                                    ; preds = %for.inc.i240.for.body.i231_crit_edge, %saa7164_histogram_print.exit225
  %entries.03.i227 = phi i32 [ 0, %saa7164_histogram_print.exit225 ], [ %entries.1.i237, %for.inc.i240.for.body.i231_crit_edge ]
  %i.01.i228 = phi i32 [ 0, %saa7164_histogram_print.exit225 ], [ %inc14.i238, %for.inc.i240.for.body.i231_crit_edge ]
  %count.i229 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 5, i32 30, i32 1, i32 %i.01.i228, i32 1
  %46 = ptrtoint ptr %count.i229 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp1.i230 = icmp eq i32 %47, 0
  br i1 %cmp1.i230, label %for.body.i231.for.inc.i240_crit_edge, label %do.end4.i236

for.body.i231.for.inc.i240_crit_edge:             ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i240

do.end4.i236:                                     ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i232 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 5, i32 30, i32 1, i32 %i.01.i228
  %48 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i232, align 8
  %update_time.i233 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 5, i32 30, i32 1, i32 %i.01.i228, i32 2
  %50 = ptrtoint ptr %update_time.i233 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %update_time.i233, align 8
  %call13.i234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %49, i32 noundef %47, i64 noundef %51) #16
  %inc.i235 = add i32 %entries.03.i227, 1
  br label %for.inc.i240

for.inc.i240:                                     ; preds = %do.end4.i236, %for.body.i231.for.inc.i240_crit_edge
  %entries.1.i237 = phi i32 [ %entries.03.i227, %for.body.i231.for.inc.i240_crit_edge ], [ %inc.i235, %do.end4.i236 ]
  %inc14.i238 = add nuw nsw i32 %i.01.i228, 1
  %exitcond.not.i239 = icmp eq i32 %inc14.i238, 64
  br i1 %exitcond.not.i239, label %saa7164_histogram_print.exit242, label %for.inc.i240.for.body.i231_crit_edge

for.inc.i240.for.body.i231_crit_edge:             ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i231

saa7164_histogram_print.exit242:                  ; preds = %for.inc.i240
  %arrayidx30 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 4
  %arrayidx35 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 5
  %call19.i241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i237) #16
  %52 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %saa7164_histogram_print.exit242.saa7164_shutdown.exit_crit_edge, label %do.end.i

saa7164_histogram_print.exit242.saa7164_shutdown.exit_crit_edge: ; preds = %saa7164_histogram_print.exit242
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_shutdown.exit

do.end.i:                                         ; preds = %saa7164_histogram_print.exit242
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call.i243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, ptr noundef %name.i, ptr noundef nonnull @.str.291) #16
  br label %saa7164_shutdown.exit

saa7164_shutdown.exit:                            ; preds = %do.end.i, %saa7164_histogram_print.exit242.saa7164_shutdown.exit_crit_edge
  %53 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %board, align 8
  %porta = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %54, i32 1
  %55 = ptrtoint ptr %porta to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %porta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp41 = icmp eq i32 %56, 1
  br i1 %cmp41, label %if.then42, label %saa7164_shutdown.exit.if.end46_crit_edge

saa7164_shutdown.exit.if.end46_crit_edge:         ; preds = %saa7164_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then42:                                        ; preds = %saa7164_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ports = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 29
  %call45 = tail call i32 @saa7164_dvb_unregister(ptr noundef %ports) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %saa7164_shutdown.exit.if.end46_crit_edge
  %57 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %board, align 8
  %portb = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %58, i32 2
  %59 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %portb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp49 = icmp eq i32 %60, 1
  br i1 %cmp49, label %if.then50, label %if.end46.if.end54_crit_edge

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx52 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 1
  %call53 = tail call i32 @saa7164_dvb_unregister(ptr noundef %arrayidx52) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end46.if.end54_crit_edge
  %61 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %board, align 8
  %portc = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %62, i32 3
  %63 = ptrtoint ptr %portc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %portc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp57 = icmp eq i32 %64, 2
  br i1 %cmp57, label %if.then58, label %if.end54.if.end61_crit_edge

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @saa7164_encoder_unregister(ptr noundef %arrayidx) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54.if.end61_crit_edge
  %65 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %board, align 8
  %portd = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %66, i32 4
  %67 = ptrtoint ptr %portd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %portd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp64 = icmp eq i32 %68, 2
  br i1 %cmp64, label %if.then65, label %if.end61.if.end68_crit_edge

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx67 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 3
  tail call void @saa7164_encoder_unregister(ptr noundef %arrayidx67) #13
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61.if.end68_crit_edge
  %69 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %board, align 8
  %porte = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %70, i32 5
  %71 = ptrtoint ptr %porte to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %porte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp71 = icmp eq i32 %72, 3
  br i1 %cmp71, label %if.then72, label %if.end68.if.end75_crit_edge

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @saa7164_vbi_unregister(ptr noundef %arrayidx30) #13
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end68.if.end75_crit_edge
  %73 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %board, align 8
  %portf = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %74, i32 6
  %75 = ptrtoint ptr %portf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %portf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp78 = icmp eq i32 %76, 3
  br i1 %cmp78, label %if.then79, label %if.end75.if.end82_crit_edge

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @saa7164_vbi_unregister(ptr noundef %arrayidx35) #13
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end75.if.end82_crit_edge
  %i2c_bus = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 28
  %call84 = tail call i32 @saa7164_i2c_unregister(ptr noundef %i2c_bus) #13
  %arrayidx86 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 1
  %call87 = tail call i32 @saa7164_i2c_unregister(ptr noundef %arrayidx86) #13
  %arrayidx89 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 28, i32 2
  %call90 = tail call i32 @saa7164_i2c_unregister(ptr noundef %arrayidx89) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  %call91 = tail call ptr @free_irq(i32 noundef %78, ptr noundef %1) #13
  %msi = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 25
  %79 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %msi, align 4, !range !631
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool92.not = icmp eq i8 %80, 0
  br i1 %tobool92.not, label %if.end82.if.end95_crit_edge, label %if.then93

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then93:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_disable_msi(ptr noundef %pci_dev) #13
  %81 = ptrtoint ptr %msi to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %msi, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end82.if.end95_crit_edge
  tail call void @pci_disable_device(ptr noundef %pci_dev) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @devlist, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end95.list_del.exit_crit_edge

if.end95.list_del.exit_crit_edge:                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end95.list_del.exit_crit_edge
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devlist) #13
  tail call fastcc void @saa7164_dev_unregister(ptr noundef %1)
  %v4l2_dev = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @saa7164_enable_msi(ptr noundef %pci_dev, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_msi, align 1, !range !631
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_msi(ptr noundef %pci_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.166) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef nonnull @saa7164_irq, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.166) #16
  tail call void @pci_disable_msi(ptr noundef %pci_dev) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i1 [ false, %do.end6 ], [ false, %do.end15 ], [ false, %do.end ], [ true, %if.end9.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %intstat = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %intstat) #13
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174) #16
  br label %out

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [4 x i32], ptr %intstat, i32 0, i32 3
  %1 = getelementptr inbounds [4 x i32], ptr %intstat, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %intstat, i32 0, i32 1
  %ports = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29
  %arrayidx4 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 2
  %arrayidx8 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 4
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 8
  %int_status = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 23
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %5 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_status, align 4
  %7 = lshr i32 %6, 2
  %add.ptr = getelementptr i32, ptr %4, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !605
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  %10 = ptrtoint ptr %intstat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %intstat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %13 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_status, align 4
  %15 = lshr i32 %14, 2
  %16 = add nuw nsw i32 %15, 1
  %shr.1 = and i32 %16, 1073741823
  %add.ptr.1 = getelementptr i32, ptr %12, i32 %shr.1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #13, !srcloc !605
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %22 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %int_status, align 4
  %24 = lshr i32 %23, 2
  %25 = add nuw nsw i32 %24, 2
  %shr.2 = and i32 %25, 1073741823
  %add.ptr.2 = getelementptr i32, ptr %21, i32 %shr.2
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #13, !srcloc !605
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.2 = icmp eq i32 %26, 0
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %31 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %int_status, align 4
  %33 = lshr i32 %32, 2
  %34 = add nuw nsw i32 %33, 3
  %shr.3 = and i32 %34, 1073741823
  %add.ptr.3 = getelementptr i32, ptr %30, i32 %shr.3
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #13, !srcloc !605
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.3 = icmp eq i32 %35, 0
  %38 = select i1 %tobool.not.3, i1 %tobool.not.2, i1 false
  %39 = select i1 %38, i1 %tobool.not.1, i1 false
  %narrow = select i1 %39, i1 %tobool.not, i1 false
  %arrayidx2 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 1
  %arrayidx6 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 3
  %arrayidx10 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 5
  br i1 %narrow, label %if.end.out_crit_edge, label %for.cond22.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond22.preheader:                             ; preds = %if.end
  %bInterruptId = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 20, i32 7
  %interruptid = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 0, i32 4, i32 10
  %interruptid49 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 1, i32 4, i32 10
  %interruptid57 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 2, i32 4, i32 10
  %interruptid65 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 3, i32 4, i32 10
  %interruptid73 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 4, i32 4, i32 10
  %interruptid81 = getelementptr %struct.saa7164_dev, ptr %dev_id, i32 0, i32 29, i32 5, i32 4, i32 10
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 16
  %workcmd = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 30
  %int_ack = getelementptr inbounds %struct.saa7164_dev, ptr %dev_id, i32 0, i32 24
  br label %for.body24

for.body24:                                       ; preds = %for.inc120.for.body24_crit_edge, %for.cond22.preheader
  %i.1170 = phi i32 [ 0, %for.cond22.preheader ], [ %inc121, %for.inc120.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [4 x i32], ptr %intstat, i32 0, i32 %i.1170
  %40 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool26.not = icmp eq i32 %41, 0
  br i1 %tobool26.not, label %for.body24.for.inc120_crit_edge, label %for.cond28.preheader

for.body24.for.inc120_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc120

for.cond28.preheader:                             ; preds = %for.body24
  %mul36 = shl i32 %i.1170, 5
  br label %for.body30

for.body30:                                       ; preds = %for.inc107.for.body30_crit_edge, %for.cond28.preheader
  %bit.0169 = phi i32 [ 0, %for.cond28.preheader ], [ %inc108, %for.inc107.for.body30_crit_edge ]
  %42 = shl nuw i32 1, %bit.0169
  %43 = and i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp33 = icmp eq i32 %43, 0
  br i1 %cmp33, label %for.body30.for.inc107_crit_edge, label %if.end35

for.body30.for.inc107_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc107

if.end35:                                         ; preds = %for.body30
  %add37 = add nuw nsw i32 %bit.0169, %mul36
  %44 = ptrtoint ptr %bInterruptId to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bInterruptId, align 1
  %conv = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv)
  %cmp38 = icmp eq i32 %add37, %conv
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %workcmd) #13
  br label %for.inc107

if.else:                                          ; preds = %if.end35
  %47 = ptrtoint ptr %interruptid to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %interruptid, align 2
  %conv42 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv42)
  %cmp43 = icmp eq i32 %add37, %conv42
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @saa7164_irq_ts(ptr noundef %ports)
  br label %for.inc107

if.else47:                                        ; preds = %if.else
  %49 = ptrtoint ptr %interruptid49 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %interruptid49, align 2
  %conv50 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv50)
  %cmp51 = icmp eq i32 %add37, %conv50
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @saa7164_irq_ts(ptr noundef %arrayidx2)
  br label %for.inc107

if.else55:                                        ; preds = %if.else47
  %51 = ptrtoint ptr %interruptid57 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %interruptid57, align 2
  %conv58 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv58)
  %cmp59 = icmp eq i32 %add37, %conv58
  br i1 %cmp59, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @saa7164_irq_encoder(ptr noundef %arrayidx4)
  br label %for.inc107

if.else63:                                        ; preds = %if.else55
  %53 = ptrtoint ptr %interruptid65 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %interruptid65, align 2
  %conv66 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv66)
  %cmp67 = icmp eq i32 %add37, %conv66
  br i1 %cmp67, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @saa7164_irq_encoder(ptr noundef %arrayidx6)
  br label %for.inc107

if.else71:                                        ; preds = %if.else63
  %55 = ptrtoint ptr %interruptid73 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %interruptid73, align 2
  %conv74 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv74)
  %cmp75 = icmp eq i32 %add37, %conv74
  br i1 %cmp75, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @saa7164_irq_vbi(ptr noundef %arrayidx8)
  br label %for.inc107

if.else79:                                        ; preds = %if.else71
  %57 = ptrtoint ptr %interruptid81 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %interruptid81, align 2
  %conv82 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv82)
  %cmp83 = icmp eq i32 %add37, %conv82
  br i1 %cmp83, label %if.then85, label %do.body88

if.then85:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @saa7164_irq_vbi(ptr noundef %arrayidx10)
  br label %for.inc107

do.body88:                                        ; preds = %if.else79
  %59 = load i32, ptr @saa_debug, align 4
  %and89 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.for.inc107_crit_edge, label %do.end94

do.body88.for.inc107_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc107

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #15
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name, ptr noundef nonnull @.str.174, i32 noundef %i.1170, i32 noundef %bit.0169, i32 noundef %add37) #16
  br label %for.inc107

for.inc107:                                       ; preds = %do.end94, %do.body88.for.inc107_crit_edge, %if.then85, %if.then77, %if.then69, %if.then61, %if.then53, %if.then45, %if.then40, %for.body30.for.inc107_crit_edge
  %inc108 = add nuw nsw i32 %bit.0169, 1
  %exitcond.not = icmp eq i32 %inc108, 32
  br i1 %exitcond.not, label %do.body110, label %for.inc107.for.body30_crit_edge

for.inc107.for.body30_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

do.body110:                                       ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !633
  tail call void @arm_heavy_mb() #13
  %60 = tail call i32 @llvm.bswap.i32(i32 %41)
  %61 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lmmio, align 4
  %63 = ptrtoint ptr %int_ack to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_ack, align 8
  %65 = lshr i32 %64, 2
  %66 = add nuw i32 %65, %i.1170
  %shr117 = and i32 %66, 1073741823
  %add.ptr118 = getelementptr i32, ptr %62, i32 %shr117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %60) #13, !srcloc !634
  br label %for.inc120

for.inc120:                                       ; preds = %do.body110, %for.body24.for.inc120_crit_edge
  %inc121 = add nuw nsw i32 %i.1170, 1
  %exitcond172.not = icmp eq i32 %inc121, 4
  br i1 %exitcond172.not, label %for.inc120.out_crit_edge, label %for.inc120.for.body24_crit_edge

for.inc120.for.body24_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.inc120.out_crit_edge:                         ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc120.out_crit_edge, %if.end.out_crit_edge, %do.end
  %tobool123.not = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %do.end ], [ 1, %for.inc120.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %intstat) #13
  ret i32 %tobool123.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7164_work_cmdhandler(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -99640
  %call = tail call i32 @saa7164_irq_dequeue(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_downloadfirmware(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_get_descriptors(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdesc = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19
  %bmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  tail call void @mmiocpy(ptr noundef %hwdesc, ptr noundef %1, i32 noundef 34) #13
  %intfdesc = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 34
  tail call void @mmiocpy(ptr noundef %intfdesc, ptr noundef %add.ptr, i32 noundef 13) #13
  %busdesc = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %BARLocation = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 9
  %6 = ptrtoint ptr %BARLocation to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %BARLocation, align 1
  %conv = zext i8 %7 to i32
  %add.ptr4 = getelementptr i8, ptr %5, i32 %conv
  tail call void @mmiocpy(ptr noundef %busdesc, ptr noundef %add.ptr4, i32 noundef 32) #13
  %8 = ptrtoint ptr %hwdesc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hwdesc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %9)
  %cmp.not = icmp eq i8 %9, 34
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #16
  %10 = ptrtoint ptr %hwdesc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwdesc, align 4
  %conv13 = zext i8 %11 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, i32 noundef %conv13, i32 noundef 34) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.do.body3.i_crit_edge, label %do.end.i

if.else.do.body3.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %name.i, ptr noundef %hwdesc, i32 noundef 34) #16
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end.i, %if.else.do.body3.i_crit_edge
  %13 = load i32, ptr @saa_debug, align 4
  %and4.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body3.i.do.body16.i_crit_edge, label %do.end8.i

do.body3.i.do.body16.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i

do.end8.i:                                        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %name10.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %14 = ptrtoint ptr %hwdesc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hwdesc, align 4
  %conv.i = zext i8 %15 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name10.i, i32 noundef %conv.i) #16
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.end8.i, %do.body3.i.do.body16.i_crit_edge
  %16 = load i32, ptr @saa_debug, align 4
  %and17.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.do.body30.i_crit_edge, label %do.end21.i

do.body16.i.do.body30.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30.i

do.end21.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  %name23.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bDescriptorType.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bDescriptorType.i, align 1
  %conv26.i = zext i8 %18 to i32
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name23.i, i32 noundef %conv26.i) #16
  br label %do.body30.i

do.body30.i:                                      ; preds = %do.end21.i, %do.body16.i.do.body30.i_crit_edge
  %19 = load i32, ptr @saa_debug, align 4
  %and31.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.do.body44.i_crit_edge, label %do.end35.i

do.body30.i.do.body44.i_crit_edge:                ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body44.i

do.end35.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  %name37.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bDescriptorSubtype.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 2
  %20 = ptrtoint ptr %bDescriptorSubtype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bDescriptorSubtype.i, align 2
  %conv40.i = zext i8 %21 to i32
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %name37.i, i32 noundef %conv40.i) #16
  br label %do.body44.i

do.body44.i:                                      ; preds = %do.end35.i, %do.body30.i.do.body44.i_crit_edge
  %22 = load i32, ptr @saa_debug, align 4
  %and45.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.body44.i.do.body58.i_crit_edge, label %do.end49.i

do.body44.i.do.body58.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58.i

do.end49.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  %name51.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bcdSpecVersion.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 3
  %23 = ptrtoint ptr %bcdSpecVersion.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %bcdSpecVersion.i, align 1
  %conv54.i = zext i16 %24 to i32
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %name51.i, i32 noundef %conv54.i) #16
  br label %do.body58.i

do.body58.i:                                      ; preds = %do.end49.i, %do.body44.i.do.body58.i_crit_edge
  %25 = load i32, ptr @saa_debug, align 4
  %and59.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body58.i.do.body71.i_crit_edge, label %do.end63.i

do.body58.i.do.body71.i_crit_edge:                ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body71.i

do.end63.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #15
  %name65.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwClockFrequency.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 4
  %26 = ptrtoint ptr %dwClockFrequency.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %dwClockFrequency.i, align 1
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef %name65.i, i32 noundef %27) #16
  br label %do.body71.i

do.body71.i:                                      ; preds = %do.end63.i, %do.body58.i.do.body71.i_crit_edge
  %28 = load i32, ptr @saa_debug, align 4
  %and72.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %do.body71.i.do.body84.i_crit_edge, label %do.end76.i

do.body71.i.do.body84.i_crit_edge:                ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84.i

do.end76.i:                                       ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #15
  %name78.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwClockUpdateRes.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 5
  %29 = ptrtoint ptr %dwClockUpdateRes.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %dwClockUpdateRes.i, align 1
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name78.i, i32 noundef %30) #16
  br label %do.body84.i

do.body84.i:                                      ; preds = %do.end76.i, %do.body71.i.do.body84.i_crit_edge
  %31 = load i32, ptr @saa_debug, align 4
  %and85.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %do.body84.i.do.body98.i_crit_edge, label %do.end89.i

do.body84.i.do.body98.i_crit_edge:                ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body98.i

do.end89.i:                                       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #15
  %name91.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bCapabilities.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 6
  %32 = ptrtoint ptr %bCapabilities.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bCapabilities.i, align 1
  %conv94.i = zext i8 %33 to i32
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef %name91.i, i32 noundef %conv94.i) #16
  br label %do.body98.i

do.body98.i:                                      ; preds = %do.end89.i, %do.body84.i.do.body98.i_crit_edge
  %34 = load i32, ptr @saa_debug, align 4
  %and99.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %do.body98.i.do.body111.i_crit_edge, label %do.end103.i

do.body98.i.do.body111.i_crit_edge:               ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body111.i

do.end103.i:                                      ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #15
  %name105.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwDeviceRegistersLocation.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 7
  %35 = ptrtoint ptr %dwDeviceRegistersLocation.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %dwDeviceRegistersLocation.i, align 2
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef %name105.i, i32 noundef %36) #16
  br label %do.body111.i

do.body111.i:                                     ; preds = %do.end103.i, %do.body98.i.do.body111.i_crit_edge
  %37 = load i32, ptr @saa_debug, align 4
  %and112.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %do.body111.i.do.body124.i_crit_edge, label %do.end116.i

do.body111.i.do.body124.i_crit_edge:              ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124.i

do.end116.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  %name118.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwHostMemoryRegion.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 8
  %38 = ptrtoint ptr %dwHostMemoryRegion.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %dwHostMemoryRegion.i, align 2
  %call121.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %name118.i, i32 noundef %39) #16
  br label %do.body124.i

do.body124.i:                                     ; preds = %do.end116.i, %do.body111.i.do.body124.i_crit_edge
  %40 = load i32, ptr @saa_debug, align 4
  %and125.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %do.body124.i.do.body137.i_crit_edge, label %do.end129.i

do.body124.i.do.body137.i_crit_edge:              ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body137.i

do.end129.i:                                      ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #15
  %name131.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwHostMemoryRegionSize.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 9
  %41 = ptrtoint ptr %dwHostMemoryRegionSize.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dwHostMemoryRegionSize.i, align 2
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name131.i, i32 noundef %42) #16
  br label %do.body137.i

do.body137.i:                                     ; preds = %do.end129.i, %do.body124.i.do.body137.i_crit_edge
  %43 = load i32, ptr @saa_debug, align 4
  %and138.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %do.body137.i.do.body150.i_crit_edge, label %do.end142.i

do.body137.i.do.body150.i_crit_edge:              ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body150.i

do.end142.i:                                      ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #15
  %name144.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwHostHibernatMemRegion.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 10
  %44 = ptrtoint ptr %dwHostHibernatMemRegion.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %dwHostHibernatMemRegion.i, align 2
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %name144.i, i32 noundef %45) #16
  br label %do.body150.i

do.body150.i:                                     ; preds = %do.end142.i, %do.body137.i.do.body150.i_crit_edge
  %46 = load i32, ptr @saa_debug, align 4
  %and151.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %do.body150.i.if.end_crit_edge, label %do.end155.i

do.body150.i.if.end_crit_edge:                    ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end155.i:                                      ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #15
  %name157.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %dwHostHibernatMemRegionSize.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 19, i32 11
  %47 = ptrtoint ptr %dwHostHibernatMemRegionSize.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %dwHostHibernatMemRegionSize.i, align 2
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef %name157.i, i32 noundef %48) #16
  br label %if.end

if.end:                                           ; preds = %do.end155.i, %do.body150.i.if.end_crit_edge, %do.end
  %49 = ptrtoint ptr %intfdesc to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %intfdesc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %50)
  %cmp18.not = icmp eq i8 %50, 13
  br i1 %cmp18.not, label %if.else32, label %do.end22

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #16
  %51 = ptrtoint ptr %intfdesc to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %intfdesc, align 2
  %conv30 = zext i8 %52 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, i32 noundef %conv30, i32 noundef 13) #16
  br label %if.end33

if.else32:                                        ; preds = %if.end
  %53 = load i32, ptr @saa_debug, align 4
  %and.i47 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %if.else32.do.body3.i54_crit_edge, label %do.end.i51

if.else32.do.body3.i54_crit_edge:                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i54

do.end.i51:                                       ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #15
  %name.i49 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef %name.i49, ptr noundef %intfdesc, i32 noundef 13) #16
  br label %do.body3.i54

do.body3.i54:                                     ; preds = %do.end.i51, %if.else32.do.body3.i54_crit_edge
  %54 = load i32, ptr @saa_debug, align 4
  %and4.i52 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i52)
  %tobool5.not.i53 = icmp eq i32 %and4.i52, 0
  br i1 %tobool5.not.i53, label %do.body3.i54.do.body16.i61_crit_edge, label %do.end8.i58

do.body3.i54.do.body16.i61_crit_edge:             ; preds = %do.body3.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i61

do.end8.i58:                                      ; preds = %do.body3.i54
  call void @__sanitizer_cov_trace_pc() #15
  %name10.i55 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %55 = ptrtoint ptr %intfdesc to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %intfdesc, align 2
  %conv.i56 = zext i8 %56 to i32
  %call13.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name10.i55, i32 noundef %conv.i56) #16
  br label %do.body16.i61

do.body16.i61:                                    ; preds = %do.end8.i58, %do.body3.i54.do.body16.i61_crit_edge
  %57 = load i32, ptr @saa_debug, align 4
  %and17.i59 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i59)
  %tobool18.not.i60 = icmp eq i32 %and17.i59, 0
  br i1 %tobool18.not.i60, label %do.body16.i61.do.body30.i69_crit_edge, label %do.end21.i66

do.body16.i61.do.body30.i69_crit_edge:            ; preds = %do.body16.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30.i69

do.end21.i66:                                     ; preds = %do.body16.i61
  call void @__sanitizer_cov_trace_pc() #15
  %name23.i62 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bDescriptorType.i63 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 1
  %58 = ptrtoint ptr %bDescriptorType.i63 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bDescriptorType.i63, align 1
  %conv26.i64 = zext i8 %59 to i32
  %call27.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name23.i62, i32 noundef %conv26.i64) #16
  br label %do.body30.i69

do.body30.i69:                                    ; preds = %do.end21.i66, %do.body16.i61.do.body30.i69_crit_edge
  %60 = load i32, ptr @saa_debug, align 4
  %and31.i67 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i67)
  %tobool32.not.i68 = icmp eq i32 %and31.i67, 0
  br i1 %tobool32.not.i68, label %do.body30.i69.do.body44.i77_crit_edge, label %do.end35.i74

do.body30.i69.do.body44.i77_crit_edge:            ; preds = %do.body30.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body44.i77

do.end35.i74:                                     ; preds = %do.body30.i69
  call void @__sanitizer_cov_trace_pc() #15
  %name37.i70 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bDescriptorSubtype.i71 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 2
  %61 = ptrtoint ptr %bDescriptorSubtype.i71 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bDescriptorSubtype.i71, align 2
  %conv40.i72 = zext i8 %62 to i32
  %call41.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %name37.i70, i32 noundef %conv40.i72) #16
  br label %do.body44.i77

do.body44.i77:                                    ; preds = %do.end35.i74, %do.body30.i69.do.body44.i77_crit_edge
  %63 = load i32, ptr @saa_debug, align 4
  %and45.i75 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i75)
  %tobool46.not.i76 = icmp eq i32 %and45.i75, 0
  br i1 %tobool46.not.i76, label %do.body44.i77.do.body58.i84_crit_edge, label %do.end49.i81

do.body44.i77.do.body58.i84_crit_edge:            ; preds = %do.body44.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body58.i84

do.end49.i81:                                     ; preds = %do.body44.i77
  call void @__sanitizer_cov_trace_pc() #15
  %name51.i78 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bFlags.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 3
  %64 = ptrtoint ptr %bFlags.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bFlags.i, align 1
  %conv54.i79 = zext i8 %65 to i32
  %call55.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef %name51.i78, i32 noundef %conv54.i79) #16
  br label %do.body58.i84

do.body58.i84:                                    ; preds = %do.end49.i81, %do.body44.i77.do.body58.i84_crit_edge
  %66 = load i32, ptr @saa_debug, align 4
  %and59.i82 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i82)
  %tobool60.not.i83 = icmp eq i32 %and59.i82, 0
  br i1 %tobool60.not.i83, label %do.body58.i84.do.body72.i_crit_edge, label %do.end63.i86

do.body58.i84.do.body72.i_crit_edge:              ; preds = %do.body58.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body72.i

do.end63.i86:                                     ; preds = %do.body58.i84
  call void @__sanitizer_cov_trace_pc() #15
  %name65.i85 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bInterfaceType.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 4
  %67 = ptrtoint ptr %bInterfaceType.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bInterfaceType.i, align 2
  %conv68.i = zext i8 %68 to i32
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef %name65.i85, i32 noundef %conv68.i) #16
  br label %do.body72.i

do.body72.i:                                      ; preds = %do.end63.i86, %do.body58.i84.do.body72.i_crit_edge
  %69 = load i32, ptr @saa_debug, align 4
  %and73.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %do.body72.i.do.body86.i_crit_edge, label %do.end77.i

do.body72.i.do.body86.i_crit_edge:                ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body86.i

do.end77.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #15
  %name79.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bInterfaceId.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 5
  %70 = ptrtoint ptr %bInterfaceId.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bInterfaceId.i, align 1
  %conv82.i = zext i8 %71 to i32
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef %name79.i, i32 noundef %conv82.i) #16
  br label %do.body86.i

do.body86.i:                                      ; preds = %do.end77.i, %do.body72.i.do.body86.i_crit_edge
  %72 = load i32, ptr @saa_debug, align 4
  %and87.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %do.body86.i.do.body100.i_crit_edge, label %do.end91.i

do.body86.i.do.body100.i_crit_edge:               ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body100.i

do.end91.i:                                       ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #15
  %name93.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bBaseInterface.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 6
  %73 = ptrtoint ptr %bBaseInterface.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bBaseInterface.i, align 2
  %conv96.i = zext i8 %74 to i32
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef %name93.i, i32 noundef %conv96.i) #16
  br label %do.body100.i

do.body100.i:                                     ; preds = %do.end91.i, %do.body86.i.do.body100.i_crit_edge
  %75 = load i32, ptr @saa_debug, align 4
  %and101.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %do.body100.i.do.body114.i_crit_edge, label %do.end105.i

do.body100.i.do.body114.i_crit_edge:              ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body114.i

do.end105.i:                                      ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #15
  %name107.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bInterruptId.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 7
  %76 = ptrtoint ptr %bInterruptId.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bInterruptId.i, align 1
  %conv110.i = zext i8 %77 to i32
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef %name107.i, i32 noundef %conv110.i) #16
  br label %do.body114.i

do.body114.i:                                     ; preds = %do.end105.i, %do.body100.i.do.body114.i_crit_edge
  %78 = load i32, ptr @saa_debug, align 4
  %and115.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %do.body114.i.do.body128.i_crit_edge, label %do.end119.i

do.body114.i.do.body128.i_crit_edge:              ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body128.i

do.end119.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #15
  %name121.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bDebugInterruptId.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 8
  %79 = ptrtoint ptr %bDebugInterruptId.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bDebugInterruptId.i, align 2
  %conv124.i = zext i8 %80 to i32
  %call125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef %name121.i, i32 noundef %conv124.i) #16
  br label %do.body128.i

do.body128.i:                                     ; preds = %do.end119.i, %do.body114.i.do.body128.i_crit_edge
  %81 = load i32, ptr @saa_debug, align 4
  %and129.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  br i1 %tobool130.not.i, label %do.body128.i.if.end33_crit_edge, label %do.end133.i

do.body128.i.if.end33_crit_edge:                  ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

do.end133.i:                                      ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #15
  %name135.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %82 = ptrtoint ptr %BARLocation to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %BARLocation, align 1
  %conv138.i = zext i8 %83 to i32
  %call139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef %name135.i, i32 noundef %conv138.i) #16
  br label %if.end33

if.end33:                                         ; preds = %do.end133.i, %do.body128.i.if.end33_crit_edge, %do.end22
  %84 = load i32, ptr @saa_debug, align 4
  %and.i87 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %if.end33.do.body3.i94_crit_edge, label %do.end.i91

if.end33.do.body3.i94_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i94

do.end.i91:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %name.i89 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef %name.i89, ptr noundef %busdesc, i32 noundef 32) #16
  br label %do.body3.i94

do.body3.i94:                                     ; preds = %do.end.i91, %if.end33.do.body3.i94_crit_edge
  %85 = load i32, ptr @saa_debug, align 4
  %and4.i92 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i92)
  %tobool5.not.i93 = icmp eq i32 %and4.i92, 0
  br i1 %tobool5.not.i93, label %do.body3.i94.do.body16.i100_crit_edge, label %do.end8.i97

do.body3.i94.do.body16.i100_crit_edge:            ; preds = %do.body3.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i100

do.end8.i97:                                      ; preds = %do.body3.i94
  call void @__sanitizer_cov_trace_pc() #15
  %name10.i95 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %86 = ptrtoint ptr %busdesc to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %busdesc, align 8
  %call13.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, ptr noundef %name10.i95, i64 noundef %87) #16
  br label %do.body16.i100

do.body16.i100:                                   ; preds = %do.end8.i97, %do.body3.i94.do.body16.i100_crit_edge
  %88 = load i32, ptr @saa_debug, align 4
  %and17.i98 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i98)
  %tobool18.not.i99 = icmp eq i32 %and17.i98, 0
  br i1 %tobool18.not.i99, label %do.body16.i100.do.body29.i_crit_edge, label %do.end21.i102

do.body16.i100.do.body29.i_crit_edge:             ; preds = %do.body16.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body29.i

do.end21.i102:                                    ; preds = %do.body16.i100
  call void @__sanitizer_cov_trace_pc() #15
  %name23.i101 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %ResponseRing.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21, i32 1
  %89 = ptrtoint ptr %ResponseRing.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ResponseRing.i, align 8
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef %name23.i101, i64 noundef %90) #16
  br label %do.body29.i

do.body29.i:                                      ; preds = %do.end21.i102, %do.body16.i100.do.body29.i_crit_edge
  %91 = load i32, ptr @saa_debug, align 4
  %and30.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %do.body29.i.do.body42.i_crit_edge, label %do.end34.i

do.body29.i.do.body42.i_crit_edge:                ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42.i

do.end34.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #15
  %name36.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %CommandWrite.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21, i32 2
  %92 = ptrtoint ptr %CommandWrite.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %CommandWrite.i, align 8
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %name36.i, i32 noundef %93) #16
  br label %do.body42.i

do.body42.i:                                      ; preds = %do.end34.i, %do.body29.i.do.body42.i_crit_edge
  %94 = load i32, ptr @saa_debug, align 4
  %and43.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.do.body55.i_crit_edge, label %do.end47.i

do.body42.i.do.body55.i_crit_edge:                ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body55.i

do.end47.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #15
  %name49.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %CommandRead.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21, i32 3
  %95 = ptrtoint ptr %CommandRead.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %CommandRead.i, align 4
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %name49.i, i32 noundef %96) #16
  br label %do.body55.i

do.body55.i:                                      ; preds = %do.end47.i, %do.body42.i.do.body55.i_crit_edge
  %97 = load i32, ptr @saa_debug, align 4
  %and56.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %do.body55.i.do.body68.i_crit_edge, label %do.end60.i

do.body55.i.do.body68.i_crit_edge:                ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68.i

do.end60.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #15
  %name62.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %ResponseWrite.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21, i32 4
  %98 = ptrtoint ptr %ResponseWrite.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ResponseWrite.i, align 8
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %name62.i, i32 noundef %99) #16
  br label %do.body68.i

do.body68.i:                                      ; preds = %do.end60.i, %do.body55.i.do.body68.i_crit_edge
  %100 = load i32, ptr @saa_debug, align 4
  %and69.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.body68.i.saa7164_dump_busdesc.exit_crit_edge, label %do.end73.i

do.body68.i.saa7164_dump_busdesc.exit_crit_edge:  ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_dump_busdesc.exit

do.end73.i:                                       ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #15
  %name75.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %ResponseRead.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21, i32 5
  %101 = ptrtoint ptr %ResponseRead.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ResponseRead.i, align 4
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef %name75.i, i32 noundef %102) #16
  br label %saa7164_dump_busdesc.exit

saa7164_dump_busdesc.exit:                        ; preds = %do.end73.i, %do.body68.i.saa7164_dump_busdesc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_bus_setup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_bus_dump(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_get_fw_version(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_i2c_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_gpio_setup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_card_setup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_enum_subdevs(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_dvb_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_encoder_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_vbi_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_debug(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_thread_function(ptr noundef %data) #2 align 64 {
entry:
  %fwinfo = alloca %struct.tmFwInfoStruct, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fwinfo) #13
  %0 = call ptr @memset(ptr %fwinfo, i32 255, i32 32)
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %data, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, ptr noundef %name) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call zeroext i1 @set_freezable() #13
  %call550 = call i32 @msleep_interruptible(i32 noundef 100) #13
  %call651 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call651, label %do.end3.do.body32_crit_edge, label %if.end8.lr.ph

do.end3.do.body32_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

if.end8.lr.ph:                                    ; preds = %do.end3
  %name18 = getelementptr inbounds %struct.saa7164_dev, ptr %data, i32 0, i32 16
  br label %if.end8

if.end8:                                          ; preds = %if.end31.if.end8_crit_edge, %if.end8.lr.ph
  %last_poll_time.052 = phi i64 [ 0, %if.end8.lr.ph ], [ %last_poll_time.1, %if.end31.if.end8_crit_edge ]
  %2 = call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void @debug_check_no_locks_held() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.288, i32 noundef 57) #13
  %8 = call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %12 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !635

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %11) #13
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !636

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %13 = load i32, ptr @saa_debug, align 4
  %and11 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %try_to_freeze.exit.do.end23_crit_edge, label %do.end16

try_to_freeze.exit.do.end23_crit_edge:            ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.end16:                                         ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef %name18) #16
  br label %do.end23

do.end23:                                         ; preds = %do.end16, %try_to_freeze.exit.do.end23_crit_edge
  %call24 = call i32 @saa7164_api_collect_debug(ptr noundef %data) #13
  %add = add i64 %last_poll_time.052, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %call25 = call i32 @jiffies_to_msecs(i32 noundef %14) #13
  %conv = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp = icmp ult i64 %add, %conv
  br i1 %cmp, label %if.then27, label %do.end23.if.end31_crit_edge

do.end23.if.end31_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then27:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = call i32 @saa7164_api_get_load_info(ptr noundef %data, ptr noundef nonnull %fwinfo) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %call29 = call i32 @jiffies_to_msecs(i32 noundef %15) #13
  %conv30 = zext i32 %call29 to i64
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.end23.if.end31_crit_edge
  %last_poll_time.1 = phi i64 [ %conv30, %if.then27 ], [ %last_poll_time.052, %do.end23.if.end31_crit_edge ]
  %call5 = call i32 @msleep_interruptible(i32 noundef 100) #13
  %call6 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call6, label %if.end31.do.body32_crit_edge, label %if.end31.if.end8_crit_edge

if.end31.if.end8_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end31.do.body32_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

do.body32:                                        ; preds = %if.end31.do.body32_crit_edge, %do.end3.do.body32_crit_edge
  %16 = load i32, ptr @saa_debug, align 4
  %and33 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.end45_crit_edge, label %do.end38

do.body32.do.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %name40 = getelementptr inbounds %struct.saa7164_dev, ptr %data, i32 0, i32 16
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef %name40) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end38, %do.body32.do.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fwinfo) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_dev_unregister(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, ptr noundef %name, ptr noundef nonnull @.str.290) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %cond) #13
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %arrayidx16 = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 2
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx16, align 8
  %end21 = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 2, i32 1
  %11 = ptrtoint ptr %end21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp22 = icmp eq i32 %12, 0
  %sub33 = sub i32 1, %10
  %add34 = add i32 %sub33, %12
  %cond36 = select i1 %cmp22, i32 0, i32 %add34
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %cond36) #13
  %refcount = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !638
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !639
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end39, label %do.end2.return_crit_edge

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end39:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #15
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  tail call void @iounmap(ptr noundef %15) #13
  %lmmio2 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 10
  %16 = ptrtoint ptr %lmmio2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio2, align 4
  tail call void @iounmap(ptr noundef %17) #13
  br label %return

return:                                           ; preds = %if.end39, %do.end2.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_card_list(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_port_init(ptr noundef %dev, i32 noundef %portnr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %arrayidx, align 8
  %nr = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %portnr, ptr %nr, align 8
  %2 = zext i32 %portnr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %portnr, label %if.then30 [
    i32 0, label %entry.if.then12_crit_edge
    i32 1, label %entry.if.then12_crit_edge265
    i32 2, label %entry.if.then16_crit_edge
    i32 3, label %entry.if.then16_crit_edge266
  ]

entry.if.then16_crit_edge266:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

entry.if.then16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

entry.if.then12_crit_edge265:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %entry.if.then12_crit_edge, %entry.if.then12_crit_edge265
  %type = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  br label %do.body56

if.then16:                                        ; preds = %entry.if.then16_crit_edge, %entry.if.then16_crit_edge266
  %type17 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 1
  %4 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type17, align 4
  %workenc = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56
  tail call void @__init_work(ptr noundef %workenc, i32 noundef 0) #13
  %5 = ptrtoint ptr %workenc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %workenc, align 8
  %lockdep_map = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.99, ptr noundef nonnull @saa7164_port_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry22 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 1
  %6 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @saa7164_work_enchandler, ptr %func, align 4
  br label %do.body56

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type31 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 1
  %9 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %type31, align 4
  %workenc33 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56
  tail call void @__init_work(ptr noundef %workenc33, i32 noundef 0) #13
  %10 = ptrtoint ptr %workenc33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %workenc33, align 8
  %lockdep_map39 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map39, ptr noundef nonnull @.str.99, ptr noundef nonnull @saa7164_port_init.__key.100, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry41 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 1
  %11 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i1 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry41, ptr %prev.i1, align 4
  %func43 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 56, i32 2
  %13 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @saa7164_work_vbihandler, ptr %func43, align 4
  br label %do.body56

do.body56:                                        ; preds = %if.then30, %if.then16, %if.then12
  %dvb = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 31
  tail call void @__mutex_init(ptr noundef %dvb, ptr noundef nonnull @.str.102, ptr noundef nonnull @saa7164_port_init.__key.101) #13
  %dmaqueue = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 14
  %14 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %dmaqueue, ptr %dmaqueue, align 4
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %dmaqueue, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dmaqueue, ptr %prev.i2, align 4
  %dmaqueue_lock = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 13
  tail call void @__mutex_init(ptr noundef %dmaqueue_lock, ptr noundef nonnull @.str.104, ptr noundef nonnull @saa7164_port_init.__key.103) #13
  %list_buf_used = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 60
  %16 = ptrtoint ptr %list_buf_used to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list_buf_used, ptr %list_buf_used, align 4
  %prev.i3 = getelementptr inbounds %struct.list_head, ptr %list_buf_used, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list_buf_used, ptr %prev.i3, align 4
  %list_buf_free = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 61
  %18 = ptrtoint ptr %list_buf_free to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list_buf_free, ptr %list_buf_free, align 4
  %prev.i4 = getelementptr inbounds %struct.list_head, ptr %list_buf_free, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list_buf_free, ptr %prev.i4, align 4
  %wait_read = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 62
  tail call void @__init_waitqueue_head(ptr noundef %wait_read, ptr noundef nonnull @.str.106, ptr noundef nonnull @saa7164_port_init.__key.105) #13
  %irq_interval = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26
  %20 = call ptr @memset(ptr %irq_interval, i32 0, i32 1056)
  %call.i = tail call i32 @strscpy(ptr noundef %irq_interval, ptr noundef nonnull @.str.107, i32 noundef 32) #13
  %arrayidx.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.i, align 8
  %arrayidx.1.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %arrayidx.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %arrayidx.3.i, align 8
  %arrayidx.4.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %arrayidx.4.i, align 8
  %arrayidx.5.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %arrayidx.5.i, align 8
  %arrayidx.6.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 6
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %arrayidx.6.i, align 8
  %arrayidx.7.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 7
  %28 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %arrayidx.7.i, align 8
  %arrayidx.8.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 8
  %29 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %arrayidx.8.i, align 8
  %arrayidx.9.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 9
  %30 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %arrayidx.9.i, align 8
  %arrayidx.10.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 10
  %31 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10, ptr %arrayidx.10.i, align 8
  %arrayidx.11.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 11
  %32 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 11, ptr %arrayidx.11.i, align 8
  %arrayidx.12.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 12
  %33 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12, ptr %arrayidx.12.i, align 8
  %arrayidx.13.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 13
  %34 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 13, ptr %arrayidx.13.i, align 8
  %arrayidx.14.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 14
  %35 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 14, ptr %arrayidx.14.i, align 8
  %arrayidx.15.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 15
  %36 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 15, ptr %arrayidx.15.i, align 8
  %arrayidx.16.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 16
  %37 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %arrayidx.16.i, align 8
  %arrayidx.17.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 17
  %38 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 17, ptr %arrayidx.17.i, align 8
  %arrayidx.18.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 18
  %39 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 18, ptr %arrayidx.18.i, align 8
  %arrayidx.19.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 19
  %40 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 19, ptr %arrayidx.19.i, align 8
  %arrayidx.20.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 20
  %41 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %arrayidx.20.i, align 8
  %arrayidx.21.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 21
  %42 = ptrtoint ptr %arrayidx.21.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 21, ptr %arrayidx.21.i, align 8
  %arrayidx.22.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 22
  %43 = ptrtoint ptr %arrayidx.22.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 22, ptr %arrayidx.22.i, align 8
  %arrayidx.23.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 23
  %44 = ptrtoint ptr %arrayidx.23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 23, ptr %arrayidx.23.i, align 8
  %arrayidx.24.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 24
  %45 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 24, ptr %arrayidx.24.i, align 8
  %arrayidx.25.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 25
  %46 = ptrtoint ptr %arrayidx.25.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 25, ptr %arrayidx.25.i, align 8
  %arrayidx.26.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 26
  %47 = ptrtoint ptr %arrayidx.26.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 26, ptr %arrayidx.26.i, align 8
  %arrayidx.27.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 27
  %48 = ptrtoint ptr %arrayidx.27.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 27, ptr %arrayidx.27.i, align 8
  %arrayidx.28.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 28
  %49 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 28, ptr %arrayidx.28.i, align 8
  %arrayidx.29.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 29
  %50 = ptrtoint ptr %arrayidx.29.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 29, ptr %arrayidx.29.i, align 8
  %arrayidx8.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 30
  %51 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 30, ptr %arrayidx8.i, align 8
  %arrayidx8.1.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 31
  %52 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 40, ptr %arrayidx8.1.i, align 8
  %arrayidx8.2.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 32
  %53 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 50, ptr %arrayidx8.2.i, align 8
  %arrayidx8.3.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 33
  %54 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 60, ptr %arrayidx8.3.i, align 8
  %arrayidx8.4.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 34
  %55 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 70, ptr %arrayidx8.4.i, align 8
  %arrayidx8.5.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 35
  %56 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 80, ptr %arrayidx8.5.i, align 8
  %arrayidx8.6.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 36
  %57 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 90, ptr %arrayidx8.6.i, align 8
  %arrayidx8.7.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 37
  %58 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 100, ptr %arrayidx8.7.i, align 8
  %arrayidx8.8.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 38
  %59 = ptrtoint ptr %arrayidx8.8.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 110, ptr %arrayidx8.8.i, align 8
  %arrayidx8.9.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 39
  %60 = ptrtoint ptr %arrayidx8.9.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 120, ptr %arrayidx8.9.i, align 8
  %arrayidx8.10.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 40
  %61 = ptrtoint ptr %arrayidx8.10.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 130, ptr %arrayidx8.10.i, align 8
  %arrayidx8.11.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 41
  %62 = ptrtoint ptr %arrayidx8.11.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 140, ptr %arrayidx8.11.i, align 8
  %arrayidx8.12.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 42
  %63 = ptrtoint ptr %arrayidx8.12.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 150, ptr %arrayidx8.12.i, align 8
  %arrayidx8.13.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 43
  %64 = ptrtoint ptr %arrayidx8.13.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 160, ptr %arrayidx8.13.i, align 8
  %arrayidx8.14.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 44
  %65 = ptrtoint ptr %arrayidx8.14.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 170, ptr %arrayidx8.14.i, align 8
  %arrayidx8.15.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 45
  %66 = ptrtoint ptr %arrayidx8.15.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 180, ptr %arrayidx8.15.i, align 8
  %arrayidx8.16.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 46
  %67 = ptrtoint ptr %arrayidx8.16.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 190, ptr %arrayidx8.16.i, align 8
  %arrayidx8.17.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 47
  %68 = ptrtoint ptr %arrayidx8.17.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 200, ptr %arrayidx8.17.i, align 8
  %arrayidx20.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 48
  %69 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 200, ptr %arrayidx20.i, align 8
  %arrayidx20.1.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 49
  %70 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 400, ptr %arrayidx20.1.i, align 8
  %arrayidx20.2.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 50
  %71 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 600, ptr %arrayidx20.2.i, align 8
  %arrayidx20.3.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 51
  %72 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 800, ptr %arrayidx20.3.i, align 8
  %arrayidx20.4.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 52
  %73 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1000, ptr %arrayidx20.4.i, align 8
  %arrayidx20.5.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 53
  %74 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1200, ptr %arrayidx20.5.i, align 8
  %arrayidx20.6.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 54
  %75 = ptrtoint ptr %arrayidx20.6.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1400, ptr %arrayidx20.6.i, align 8
  %arrayidx20.7.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 55
  %arrayidx20.8.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 56
  %arrayidx20.9.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 57
  %arrayidx20.10.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 58
  %arrayidx20.11.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 59
  %arrayidx20.12.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 60
  %arrayidx20.13.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 61
  %arrayidx20.14.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 62
  %76 = ptrtoint ptr %arrayidx20.7.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2000, ptr %arrayidx20.7.i, align 8
  %77 = ptrtoint ptr %arrayidx20.8.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4000, ptr %arrayidx20.8.i, align 8
  %78 = ptrtoint ptr %arrayidx20.9.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8000, ptr %arrayidx20.9.i, align 8
  %79 = ptrtoint ptr %arrayidx20.10.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 15000, ptr %arrayidx20.10.i, align 8
  %80 = ptrtoint ptr %arrayidx20.11.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 30000, ptr %arrayidx20.11.i, align 8
  %81 = ptrtoint ptr %arrayidx20.12.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 60000, ptr %arrayidx20.12.i, align 8
  %82 = ptrtoint ptr %arrayidx20.13.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 300000, ptr %arrayidx20.13.i, align 8
  %83 = ptrtoint ptr %arrayidx20.14.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 900000, ptr %arrayidx20.14.i, align 8
  %arrayidx50.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 26, i32 1, i32 63
  %84 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3600000, ptr %arrayidx50.i, align 8
  %svc_interval = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27
  %85 = call ptr @memset(ptr %svc_interval, i32 0, i32 1056)
  %call.i5 = tail call i32 @strscpy(ptr noundef %svc_interval, ptr noundef nonnull @.str.108, i32 noundef 32) #13
  %arrayidx.i6 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 0
  %86 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %arrayidx.i6, align 8
  %arrayidx.1.i7 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx.1.i7 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %arrayidx.1.i7, align 8
  %arrayidx.2.i8 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 2
  %88 = ptrtoint ptr %arrayidx.2.i8 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %arrayidx.2.i8, align 8
  %arrayidx.3.i9 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 3
  %89 = ptrtoint ptr %arrayidx.3.i9 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %arrayidx.3.i9, align 8
  %arrayidx.4.i10 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 4
  %90 = ptrtoint ptr %arrayidx.4.i10 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %arrayidx.4.i10, align 8
  %arrayidx.5.i11 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 5
  %91 = ptrtoint ptr %arrayidx.5.i11 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 5, ptr %arrayidx.5.i11, align 8
  %arrayidx.6.i12 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 6
  %92 = ptrtoint ptr %arrayidx.6.i12 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 6, ptr %arrayidx.6.i12, align 8
  %arrayidx.7.i13 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 7
  %93 = ptrtoint ptr %arrayidx.7.i13 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 7, ptr %arrayidx.7.i13, align 8
  %arrayidx.8.i14 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 8
  %94 = ptrtoint ptr %arrayidx.8.i14 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8, ptr %arrayidx.8.i14, align 8
  %arrayidx.9.i15 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 9
  %95 = ptrtoint ptr %arrayidx.9.i15 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 9, ptr %arrayidx.9.i15, align 8
  %arrayidx.10.i16 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 10
  %96 = ptrtoint ptr %arrayidx.10.i16 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 10, ptr %arrayidx.10.i16, align 8
  %arrayidx.11.i17 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 11
  %97 = ptrtoint ptr %arrayidx.11.i17 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 11, ptr %arrayidx.11.i17, align 8
  %arrayidx.12.i18 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 12
  %98 = ptrtoint ptr %arrayidx.12.i18 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 12, ptr %arrayidx.12.i18, align 8
  %arrayidx.13.i19 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 13
  %99 = ptrtoint ptr %arrayidx.13.i19 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 13, ptr %arrayidx.13.i19, align 8
  %arrayidx.14.i20 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 14
  %100 = ptrtoint ptr %arrayidx.14.i20 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 14, ptr %arrayidx.14.i20, align 8
  %arrayidx.15.i21 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 15
  %101 = ptrtoint ptr %arrayidx.15.i21 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 15, ptr %arrayidx.15.i21, align 8
  %arrayidx.16.i22 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 16
  %102 = ptrtoint ptr %arrayidx.16.i22 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 16, ptr %arrayidx.16.i22, align 8
  %arrayidx.17.i23 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 17
  %103 = ptrtoint ptr %arrayidx.17.i23 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 17, ptr %arrayidx.17.i23, align 8
  %arrayidx.18.i24 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 18
  %104 = ptrtoint ptr %arrayidx.18.i24 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 18, ptr %arrayidx.18.i24, align 8
  %arrayidx.19.i25 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 19
  %105 = ptrtoint ptr %arrayidx.19.i25 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 19, ptr %arrayidx.19.i25, align 8
  %arrayidx.20.i26 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 20
  %106 = ptrtoint ptr %arrayidx.20.i26 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 20, ptr %arrayidx.20.i26, align 8
  %arrayidx.21.i27 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 21
  %107 = ptrtoint ptr %arrayidx.21.i27 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 21, ptr %arrayidx.21.i27, align 8
  %arrayidx.22.i28 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 22
  %108 = ptrtoint ptr %arrayidx.22.i28 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 22, ptr %arrayidx.22.i28, align 8
  %arrayidx.23.i29 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 23
  %109 = ptrtoint ptr %arrayidx.23.i29 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 23, ptr %arrayidx.23.i29, align 8
  %arrayidx.24.i30 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 24
  %110 = ptrtoint ptr %arrayidx.24.i30 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 24, ptr %arrayidx.24.i30, align 8
  %arrayidx.25.i31 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 25
  %111 = ptrtoint ptr %arrayidx.25.i31 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 25, ptr %arrayidx.25.i31, align 8
  %arrayidx.26.i32 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 26
  %112 = ptrtoint ptr %arrayidx.26.i32 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 26, ptr %arrayidx.26.i32, align 8
  %arrayidx.27.i33 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 27
  %113 = ptrtoint ptr %arrayidx.27.i33 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 27, ptr %arrayidx.27.i33, align 8
  %arrayidx.28.i34 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 28
  %114 = ptrtoint ptr %arrayidx.28.i34 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 28, ptr %arrayidx.28.i34, align 8
  %arrayidx.29.i35 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 29
  %115 = ptrtoint ptr %arrayidx.29.i35 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 29, ptr %arrayidx.29.i35, align 8
  %arrayidx8.i36 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 30
  %116 = ptrtoint ptr %arrayidx8.i36 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 30, ptr %arrayidx8.i36, align 8
  %arrayidx8.1.i37 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 31
  %117 = ptrtoint ptr %arrayidx8.1.i37 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 40, ptr %arrayidx8.1.i37, align 8
  %arrayidx8.2.i38 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 32
  %118 = ptrtoint ptr %arrayidx8.2.i38 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 50, ptr %arrayidx8.2.i38, align 8
  %arrayidx8.3.i39 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 33
  %119 = ptrtoint ptr %arrayidx8.3.i39 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 60, ptr %arrayidx8.3.i39, align 8
  %arrayidx8.4.i40 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 34
  %120 = ptrtoint ptr %arrayidx8.4.i40 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 70, ptr %arrayidx8.4.i40, align 8
  %arrayidx8.5.i41 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 35
  %121 = ptrtoint ptr %arrayidx8.5.i41 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 80, ptr %arrayidx8.5.i41, align 8
  %arrayidx8.6.i42 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 36
  %122 = ptrtoint ptr %arrayidx8.6.i42 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 90, ptr %arrayidx8.6.i42, align 8
  %arrayidx8.7.i43 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 37
  %123 = ptrtoint ptr %arrayidx8.7.i43 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 100, ptr %arrayidx8.7.i43, align 8
  %arrayidx8.8.i44 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 38
  %124 = ptrtoint ptr %arrayidx8.8.i44 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 110, ptr %arrayidx8.8.i44, align 8
  %arrayidx8.9.i45 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 39
  %125 = ptrtoint ptr %arrayidx8.9.i45 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 120, ptr %arrayidx8.9.i45, align 8
  %arrayidx8.10.i46 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 40
  %126 = ptrtoint ptr %arrayidx8.10.i46 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 130, ptr %arrayidx8.10.i46, align 8
  %arrayidx8.11.i47 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 41
  %127 = ptrtoint ptr %arrayidx8.11.i47 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 140, ptr %arrayidx8.11.i47, align 8
  %arrayidx8.12.i48 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 42
  %128 = ptrtoint ptr %arrayidx8.12.i48 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 150, ptr %arrayidx8.12.i48, align 8
  %arrayidx8.13.i49 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 43
  %129 = ptrtoint ptr %arrayidx8.13.i49 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 160, ptr %arrayidx8.13.i49, align 8
  %arrayidx8.14.i50 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 44
  %130 = ptrtoint ptr %arrayidx8.14.i50 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 170, ptr %arrayidx8.14.i50, align 8
  %arrayidx8.15.i51 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 45
  %131 = ptrtoint ptr %arrayidx8.15.i51 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 180, ptr %arrayidx8.15.i51, align 8
  %arrayidx8.16.i52 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 46
  %132 = ptrtoint ptr %arrayidx8.16.i52 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 190, ptr %arrayidx8.16.i52, align 8
  %arrayidx8.17.i53 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 47
  %133 = ptrtoint ptr %arrayidx8.17.i53 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 200, ptr %arrayidx8.17.i53, align 8
  %arrayidx20.i54 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 48
  %134 = ptrtoint ptr %arrayidx20.i54 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 200, ptr %arrayidx20.i54, align 8
  %arrayidx20.1.i55 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 49
  %135 = ptrtoint ptr %arrayidx20.1.i55 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 400, ptr %arrayidx20.1.i55, align 8
  %arrayidx20.2.i56 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 50
  %136 = ptrtoint ptr %arrayidx20.2.i56 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 600, ptr %arrayidx20.2.i56, align 8
  %arrayidx20.3.i57 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 51
  %137 = ptrtoint ptr %arrayidx20.3.i57 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 800, ptr %arrayidx20.3.i57, align 8
  %arrayidx20.4.i58 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 52
  %138 = ptrtoint ptr %arrayidx20.4.i58 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1000, ptr %arrayidx20.4.i58, align 8
  %arrayidx20.5.i59 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 53
  %139 = ptrtoint ptr %arrayidx20.5.i59 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1200, ptr %arrayidx20.5.i59, align 8
  %arrayidx20.6.i60 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 54
  %140 = ptrtoint ptr %arrayidx20.6.i60 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1400, ptr %arrayidx20.6.i60, align 8
  %arrayidx20.7.i61 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 55
  %arrayidx20.8.i62 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 56
  %arrayidx20.9.i63 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 57
  %arrayidx20.10.i64 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 58
  %arrayidx20.11.i65 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 59
  %arrayidx20.12.i66 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 60
  %arrayidx20.13.i67 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 61
  %arrayidx20.14.i68 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 62
  %141 = ptrtoint ptr %arrayidx20.7.i61 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2000, ptr %arrayidx20.7.i61, align 8
  %142 = ptrtoint ptr %arrayidx20.8.i62 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 4000, ptr %arrayidx20.8.i62, align 8
  %143 = ptrtoint ptr %arrayidx20.9.i63 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 8000, ptr %arrayidx20.9.i63, align 8
  %144 = ptrtoint ptr %arrayidx20.10.i64 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 15000, ptr %arrayidx20.10.i64, align 8
  %145 = ptrtoint ptr %arrayidx20.11.i65 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 30000, ptr %arrayidx20.11.i65, align 8
  %146 = ptrtoint ptr %arrayidx20.12.i66 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 60000, ptr %arrayidx20.12.i66, align 8
  %147 = ptrtoint ptr %arrayidx20.13.i67 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 300000, ptr %arrayidx20.13.i67, align 8
  %148 = ptrtoint ptr %arrayidx20.14.i68 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 900000, ptr %arrayidx20.14.i68, align 8
  %arrayidx50.i69 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 27, i32 1, i32 63
  %149 = ptrtoint ptr %arrayidx50.i69 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3600000, ptr %arrayidx50.i69, align 8
  %irq_svc_interval = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28
  %150 = call ptr @memset(ptr %irq_svc_interval, i32 0, i32 1056)
  %call.i70 = tail call i32 @strscpy(ptr noundef %irq_svc_interval, ptr noundef nonnull @.str.109, i32 noundef 32) #13
  %arrayidx.i71 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 0
  %151 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %arrayidx.i71, align 8
  %arrayidx.1.i72 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 1
  %152 = ptrtoint ptr %arrayidx.1.i72 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %arrayidx.1.i72, align 8
  %arrayidx.2.i73 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 2
  %153 = ptrtoint ptr %arrayidx.2.i73 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 2, ptr %arrayidx.2.i73, align 8
  %arrayidx.3.i74 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 3
  %154 = ptrtoint ptr %arrayidx.3.i74 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 3, ptr %arrayidx.3.i74, align 8
  %arrayidx.4.i75 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 4
  %155 = ptrtoint ptr %arrayidx.4.i75 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 4, ptr %arrayidx.4.i75, align 8
  %arrayidx.5.i76 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 5
  %156 = ptrtoint ptr %arrayidx.5.i76 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 5, ptr %arrayidx.5.i76, align 8
  %arrayidx.6.i77 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 6
  %157 = ptrtoint ptr %arrayidx.6.i77 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 6, ptr %arrayidx.6.i77, align 8
  %arrayidx.7.i78 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 7
  %158 = ptrtoint ptr %arrayidx.7.i78 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 7, ptr %arrayidx.7.i78, align 8
  %arrayidx.8.i79 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 8
  %159 = ptrtoint ptr %arrayidx.8.i79 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 8, ptr %arrayidx.8.i79, align 8
  %arrayidx.9.i80 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 9
  %160 = ptrtoint ptr %arrayidx.9.i80 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 9, ptr %arrayidx.9.i80, align 8
  %arrayidx.10.i81 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 10
  %161 = ptrtoint ptr %arrayidx.10.i81 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 10, ptr %arrayidx.10.i81, align 8
  %arrayidx.11.i82 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 11
  %162 = ptrtoint ptr %arrayidx.11.i82 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 11, ptr %arrayidx.11.i82, align 8
  %arrayidx.12.i83 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 12
  %163 = ptrtoint ptr %arrayidx.12.i83 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 12, ptr %arrayidx.12.i83, align 8
  %arrayidx.13.i84 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 13
  %164 = ptrtoint ptr %arrayidx.13.i84 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 13, ptr %arrayidx.13.i84, align 8
  %arrayidx.14.i85 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 14
  %165 = ptrtoint ptr %arrayidx.14.i85 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 14, ptr %arrayidx.14.i85, align 8
  %arrayidx.15.i86 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 15
  %166 = ptrtoint ptr %arrayidx.15.i86 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 15, ptr %arrayidx.15.i86, align 8
  %arrayidx.16.i87 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 16
  %167 = ptrtoint ptr %arrayidx.16.i87 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 16, ptr %arrayidx.16.i87, align 8
  %arrayidx.17.i88 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 17
  %168 = ptrtoint ptr %arrayidx.17.i88 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 17, ptr %arrayidx.17.i88, align 8
  %arrayidx.18.i89 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 18
  %169 = ptrtoint ptr %arrayidx.18.i89 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 18, ptr %arrayidx.18.i89, align 8
  %arrayidx.19.i90 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 19
  %170 = ptrtoint ptr %arrayidx.19.i90 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 19, ptr %arrayidx.19.i90, align 8
  %arrayidx.20.i91 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 20
  %171 = ptrtoint ptr %arrayidx.20.i91 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 20, ptr %arrayidx.20.i91, align 8
  %arrayidx.21.i92 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 21
  %172 = ptrtoint ptr %arrayidx.21.i92 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 21, ptr %arrayidx.21.i92, align 8
  %arrayidx.22.i93 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 22
  %173 = ptrtoint ptr %arrayidx.22.i93 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 22, ptr %arrayidx.22.i93, align 8
  %arrayidx.23.i94 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 23
  %174 = ptrtoint ptr %arrayidx.23.i94 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 23, ptr %arrayidx.23.i94, align 8
  %arrayidx.24.i95 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 24
  %175 = ptrtoint ptr %arrayidx.24.i95 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 24, ptr %arrayidx.24.i95, align 8
  %arrayidx.25.i96 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 25
  %176 = ptrtoint ptr %arrayidx.25.i96 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 25, ptr %arrayidx.25.i96, align 8
  %arrayidx.26.i97 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 26
  %177 = ptrtoint ptr %arrayidx.26.i97 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 26, ptr %arrayidx.26.i97, align 8
  %arrayidx.27.i98 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 27
  %178 = ptrtoint ptr %arrayidx.27.i98 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 27, ptr %arrayidx.27.i98, align 8
  %arrayidx.28.i99 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 28
  %179 = ptrtoint ptr %arrayidx.28.i99 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 28, ptr %arrayidx.28.i99, align 8
  %arrayidx.29.i100 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 29
  %180 = ptrtoint ptr %arrayidx.29.i100 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 29, ptr %arrayidx.29.i100, align 8
  %arrayidx8.i101 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 30
  %181 = ptrtoint ptr %arrayidx8.i101 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 30, ptr %arrayidx8.i101, align 8
  %arrayidx8.1.i102 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 31
  %182 = ptrtoint ptr %arrayidx8.1.i102 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 40, ptr %arrayidx8.1.i102, align 8
  %arrayidx8.2.i103 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 32
  %183 = ptrtoint ptr %arrayidx8.2.i103 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 50, ptr %arrayidx8.2.i103, align 8
  %arrayidx8.3.i104 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 33
  %184 = ptrtoint ptr %arrayidx8.3.i104 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 60, ptr %arrayidx8.3.i104, align 8
  %arrayidx8.4.i105 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 34
  %185 = ptrtoint ptr %arrayidx8.4.i105 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 70, ptr %arrayidx8.4.i105, align 8
  %arrayidx8.5.i106 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 35
  %186 = ptrtoint ptr %arrayidx8.5.i106 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 80, ptr %arrayidx8.5.i106, align 8
  %arrayidx8.6.i107 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 36
  %187 = ptrtoint ptr %arrayidx8.6.i107 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 90, ptr %arrayidx8.6.i107, align 8
  %arrayidx8.7.i108 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 37
  %188 = ptrtoint ptr %arrayidx8.7.i108 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 100, ptr %arrayidx8.7.i108, align 8
  %arrayidx8.8.i109 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 38
  %189 = ptrtoint ptr %arrayidx8.8.i109 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 110, ptr %arrayidx8.8.i109, align 8
  %arrayidx8.9.i110 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 39
  %190 = ptrtoint ptr %arrayidx8.9.i110 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 120, ptr %arrayidx8.9.i110, align 8
  %arrayidx8.10.i111 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 40
  %191 = ptrtoint ptr %arrayidx8.10.i111 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 130, ptr %arrayidx8.10.i111, align 8
  %arrayidx8.11.i112 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 41
  %192 = ptrtoint ptr %arrayidx8.11.i112 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 140, ptr %arrayidx8.11.i112, align 8
  %arrayidx8.12.i113 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 42
  %193 = ptrtoint ptr %arrayidx8.12.i113 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 150, ptr %arrayidx8.12.i113, align 8
  %arrayidx8.13.i114 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 43
  %194 = ptrtoint ptr %arrayidx8.13.i114 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 160, ptr %arrayidx8.13.i114, align 8
  %arrayidx8.14.i115 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 44
  %195 = ptrtoint ptr %arrayidx8.14.i115 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 170, ptr %arrayidx8.14.i115, align 8
  %arrayidx8.15.i116 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 45
  %196 = ptrtoint ptr %arrayidx8.15.i116 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 180, ptr %arrayidx8.15.i116, align 8
  %arrayidx8.16.i117 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 46
  %197 = ptrtoint ptr %arrayidx8.16.i117 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 190, ptr %arrayidx8.16.i117, align 8
  %arrayidx8.17.i118 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 47
  %198 = ptrtoint ptr %arrayidx8.17.i118 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 200, ptr %arrayidx8.17.i118, align 8
  %arrayidx20.i119 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 48
  %199 = ptrtoint ptr %arrayidx20.i119 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 200, ptr %arrayidx20.i119, align 8
  %arrayidx20.1.i120 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 49
  %200 = ptrtoint ptr %arrayidx20.1.i120 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 400, ptr %arrayidx20.1.i120, align 8
  %arrayidx20.2.i121 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 50
  %201 = ptrtoint ptr %arrayidx20.2.i121 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 600, ptr %arrayidx20.2.i121, align 8
  %arrayidx20.3.i122 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 51
  %202 = ptrtoint ptr %arrayidx20.3.i122 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 800, ptr %arrayidx20.3.i122, align 8
  %arrayidx20.4.i123 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 52
  %203 = ptrtoint ptr %arrayidx20.4.i123 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 1000, ptr %arrayidx20.4.i123, align 8
  %arrayidx20.5.i124 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 53
  %204 = ptrtoint ptr %arrayidx20.5.i124 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1200, ptr %arrayidx20.5.i124, align 8
  %arrayidx20.6.i125 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 54
  %205 = ptrtoint ptr %arrayidx20.6.i125 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1400, ptr %arrayidx20.6.i125, align 8
  %arrayidx20.7.i126 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 55
  %arrayidx20.8.i127 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 56
  %arrayidx20.9.i128 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 57
  %arrayidx20.10.i129 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 58
  %arrayidx20.11.i130 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 59
  %arrayidx20.12.i131 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 60
  %arrayidx20.13.i132 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 61
  %arrayidx20.14.i133 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 62
  %206 = ptrtoint ptr %arrayidx20.7.i126 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 2000, ptr %arrayidx20.7.i126, align 8
  %207 = ptrtoint ptr %arrayidx20.8.i127 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 4000, ptr %arrayidx20.8.i127, align 8
  %208 = ptrtoint ptr %arrayidx20.9.i128 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 8000, ptr %arrayidx20.9.i128, align 8
  %209 = ptrtoint ptr %arrayidx20.10.i129 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 15000, ptr %arrayidx20.10.i129, align 8
  %210 = ptrtoint ptr %arrayidx20.11.i130 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 30000, ptr %arrayidx20.11.i130, align 8
  %211 = ptrtoint ptr %arrayidx20.12.i131 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 60000, ptr %arrayidx20.12.i131, align 8
  %212 = ptrtoint ptr %arrayidx20.13.i132 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 300000, ptr %arrayidx20.13.i132, align 8
  %213 = ptrtoint ptr %arrayidx20.14.i133 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 900000, ptr %arrayidx20.14.i133, align 8
  %arrayidx50.i134 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 28, i32 1, i32 63
  %214 = ptrtoint ptr %arrayidx50.i134 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 3600000, ptr %arrayidx50.i134, align 8
  %read_interval = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29
  %215 = call ptr @memset(ptr %read_interval, i32 0, i32 1056)
  %call.i135 = tail call i32 @strscpy(ptr noundef %read_interval, ptr noundef nonnull @.str.110, i32 noundef 32) #13
  %arrayidx.i136 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 0
  %216 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %arrayidx.i136, align 8
  %arrayidx.1.i137 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 1
  %217 = ptrtoint ptr %arrayidx.1.i137 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %arrayidx.1.i137, align 8
  %arrayidx.2.i138 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 2
  %218 = ptrtoint ptr %arrayidx.2.i138 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2, ptr %arrayidx.2.i138, align 8
  %arrayidx.3.i139 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 3
  %219 = ptrtoint ptr %arrayidx.3.i139 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 3, ptr %arrayidx.3.i139, align 8
  %arrayidx.4.i140 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 4
  %220 = ptrtoint ptr %arrayidx.4.i140 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 4, ptr %arrayidx.4.i140, align 8
  %arrayidx.5.i141 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 5
  %221 = ptrtoint ptr %arrayidx.5.i141 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 5, ptr %arrayidx.5.i141, align 8
  %arrayidx.6.i142 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 6
  %222 = ptrtoint ptr %arrayidx.6.i142 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 6, ptr %arrayidx.6.i142, align 8
  %arrayidx.7.i143 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 7
  %223 = ptrtoint ptr %arrayidx.7.i143 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 7, ptr %arrayidx.7.i143, align 8
  %arrayidx.8.i144 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 8
  %224 = ptrtoint ptr %arrayidx.8.i144 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 8, ptr %arrayidx.8.i144, align 8
  %arrayidx.9.i145 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 9
  %225 = ptrtoint ptr %arrayidx.9.i145 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 9, ptr %arrayidx.9.i145, align 8
  %arrayidx.10.i146 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 10
  %226 = ptrtoint ptr %arrayidx.10.i146 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 10, ptr %arrayidx.10.i146, align 8
  %arrayidx.11.i147 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 11
  %227 = ptrtoint ptr %arrayidx.11.i147 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 11, ptr %arrayidx.11.i147, align 8
  %arrayidx.12.i148 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 12
  %228 = ptrtoint ptr %arrayidx.12.i148 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 12, ptr %arrayidx.12.i148, align 8
  %arrayidx.13.i149 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 13
  %229 = ptrtoint ptr %arrayidx.13.i149 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 13, ptr %arrayidx.13.i149, align 8
  %arrayidx.14.i150 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 14
  %230 = ptrtoint ptr %arrayidx.14.i150 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 14, ptr %arrayidx.14.i150, align 8
  %arrayidx.15.i151 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 15
  %231 = ptrtoint ptr %arrayidx.15.i151 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 15, ptr %arrayidx.15.i151, align 8
  %arrayidx.16.i152 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 16
  %232 = ptrtoint ptr %arrayidx.16.i152 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 16, ptr %arrayidx.16.i152, align 8
  %arrayidx.17.i153 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 17
  %233 = ptrtoint ptr %arrayidx.17.i153 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 17, ptr %arrayidx.17.i153, align 8
  %arrayidx.18.i154 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 18
  %234 = ptrtoint ptr %arrayidx.18.i154 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 18, ptr %arrayidx.18.i154, align 8
  %arrayidx.19.i155 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 19
  %235 = ptrtoint ptr %arrayidx.19.i155 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 19, ptr %arrayidx.19.i155, align 8
  %arrayidx.20.i156 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 20
  %236 = ptrtoint ptr %arrayidx.20.i156 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 20, ptr %arrayidx.20.i156, align 8
  %arrayidx.21.i157 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 21
  %237 = ptrtoint ptr %arrayidx.21.i157 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 21, ptr %arrayidx.21.i157, align 8
  %arrayidx.22.i158 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 22
  %238 = ptrtoint ptr %arrayidx.22.i158 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 22, ptr %arrayidx.22.i158, align 8
  %arrayidx.23.i159 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 23
  %239 = ptrtoint ptr %arrayidx.23.i159 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 23, ptr %arrayidx.23.i159, align 8
  %arrayidx.24.i160 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 24
  %240 = ptrtoint ptr %arrayidx.24.i160 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 24, ptr %arrayidx.24.i160, align 8
  %arrayidx.25.i161 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 25
  %241 = ptrtoint ptr %arrayidx.25.i161 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 25, ptr %arrayidx.25.i161, align 8
  %arrayidx.26.i162 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 26
  %242 = ptrtoint ptr %arrayidx.26.i162 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 26, ptr %arrayidx.26.i162, align 8
  %arrayidx.27.i163 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 27
  %243 = ptrtoint ptr %arrayidx.27.i163 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 27, ptr %arrayidx.27.i163, align 8
  %arrayidx.28.i164 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 28
  %244 = ptrtoint ptr %arrayidx.28.i164 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 28, ptr %arrayidx.28.i164, align 8
  %arrayidx.29.i165 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 29
  %245 = ptrtoint ptr %arrayidx.29.i165 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 29, ptr %arrayidx.29.i165, align 8
  %arrayidx8.i166 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 30
  %246 = ptrtoint ptr %arrayidx8.i166 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 30, ptr %arrayidx8.i166, align 8
  %arrayidx8.1.i167 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 31
  %247 = ptrtoint ptr %arrayidx8.1.i167 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 40, ptr %arrayidx8.1.i167, align 8
  %arrayidx8.2.i168 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 32
  %248 = ptrtoint ptr %arrayidx8.2.i168 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 50, ptr %arrayidx8.2.i168, align 8
  %arrayidx8.3.i169 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 33
  %249 = ptrtoint ptr %arrayidx8.3.i169 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 60, ptr %arrayidx8.3.i169, align 8
  %arrayidx8.4.i170 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 34
  %250 = ptrtoint ptr %arrayidx8.4.i170 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 70, ptr %arrayidx8.4.i170, align 8
  %arrayidx8.5.i171 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 35
  %251 = ptrtoint ptr %arrayidx8.5.i171 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 80, ptr %arrayidx8.5.i171, align 8
  %arrayidx8.6.i172 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 36
  %252 = ptrtoint ptr %arrayidx8.6.i172 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 90, ptr %arrayidx8.6.i172, align 8
  %arrayidx8.7.i173 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 37
  %253 = ptrtoint ptr %arrayidx8.7.i173 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 100, ptr %arrayidx8.7.i173, align 8
  %arrayidx8.8.i174 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 38
  %254 = ptrtoint ptr %arrayidx8.8.i174 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 110, ptr %arrayidx8.8.i174, align 8
  %arrayidx8.9.i175 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 39
  %255 = ptrtoint ptr %arrayidx8.9.i175 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 120, ptr %arrayidx8.9.i175, align 8
  %arrayidx8.10.i176 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 40
  %256 = ptrtoint ptr %arrayidx8.10.i176 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 130, ptr %arrayidx8.10.i176, align 8
  %arrayidx8.11.i177 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 41
  %257 = ptrtoint ptr %arrayidx8.11.i177 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 140, ptr %arrayidx8.11.i177, align 8
  %arrayidx8.12.i178 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 42
  %258 = ptrtoint ptr %arrayidx8.12.i178 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 150, ptr %arrayidx8.12.i178, align 8
  %arrayidx8.13.i179 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 43
  %259 = ptrtoint ptr %arrayidx8.13.i179 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 160, ptr %arrayidx8.13.i179, align 8
  %arrayidx8.14.i180 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 44
  %260 = ptrtoint ptr %arrayidx8.14.i180 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 170, ptr %arrayidx8.14.i180, align 8
  %arrayidx8.15.i181 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 45
  %261 = ptrtoint ptr %arrayidx8.15.i181 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 180, ptr %arrayidx8.15.i181, align 8
  %arrayidx8.16.i182 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 46
  %262 = ptrtoint ptr %arrayidx8.16.i182 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 190, ptr %arrayidx8.16.i182, align 8
  %arrayidx8.17.i183 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 47
  %263 = ptrtoint ptr %arrayidx8.17.i183 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 200, ptr %arrayidx8.17.i183, align 8
  %arrayidx20.i184 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 48
  %264 = ptrtoint ptr %arrayidx20.i184 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 200, ptr %arrayidx20.i184, align 8
  %arrayidx20.1.i185 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 49
  %265 = ptrtoint ptr %arrayidx20.1.i185 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 400, ptr %arrayidx20.1.i185, align 8
  %arrayidx20.2.i186 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 50
  %266 = ptrtoint ptr %arrayidx20.2.i186 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 600, ptr %arrayidx20.2.i186, align 8
  %arrayidx20.3.i187 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 51
  %267 = ptrtoint ptr %arrayidx20.3.i187 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 800, ptr %arrayidx20.3.i187, align 8
  %arrayidx20.4.i188 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 52
  %268 = ptrtoint ptr %arrayidx20.4.i188 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 1000, ptr %arrayidx20.4.i188, align 8
  %arrayidx20.5.i189 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 53
  %269 = ptrtoint ptr %arrayidx20.5.i189 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 1200, ptr %arrayidx20.5.i189, align 8
  %arrayidx20.6.i190 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 54
  %270 = ptrtoint ptr %arrayidx20.6.i190 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 1400, ptr %arrayidx20.6.i190, align 8
  %arrayidx20.7.i191 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 55
  %arrayidx20.8.i192 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 56
  %arrayidx20.9.i193 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 57
  %arrayidx20.10.i194 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 58
  %arrayidx20.11.i195 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 59
  %arrayidx20.12.i196 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 60
  %arrayidx20.13.i197 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 61
  %arrayidx20.14.i198 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 62
  %271 = ptrtoint ptr %arrayidx20.7.i191 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 2000, ptr %arrayidx20.7.i191, align 8
  %272 = ptrtoint ptr %arrayidx20.8.i192 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 4000, ptr %arrayidx20.8.i192, align 8
  %273 = ptrtoint ptr %arrayidx20.9.i193 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 8000, ptr %arrayidx20.9.i193, align 8
  %274 = ptrtoint ptr %arrayidx20.10.i194 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 15000, ptr %arrayidx20.10.i194, align 8
  %275 = ptrtoint ptr %arrayidx20.11.i195 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 30000, ptr %arrayidx20.11.i195, align 8
  %276 = ptrtoint ptr %arrayidx20.12.i196 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 60000, ptr %arrayidx20.12.i196, align 8
  %277 = ptrtoint ptr %arrayidx20.13.i197 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 300000, ptr %arrayidx20.13.i197, align 8
  %278 = ptrtoint ptr %arrayidx20.14.i198 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 900000, ptr %arrayidx20.14.i198, align 8
  %arrayidx50.i199 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 29, i32 1, i32 63
  %279 = ptrtoint ptr %arrayidx50.i199 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 3600000, ptr %arrayidx50.i199, align 8
  %poll_interval = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30
  %280 = call ptr @memset(ptr %poll_interval, i32 0, i32 1056)
  %call.i200 = tail call i32 @strscpy(ptr noundef %poll_interval, ptr noundef nonnull @.str.111, i32 noundef 32) #13
  %arrayidx.i201 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 0
  %281 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 0, ptr %arrayidx.i201, align 8
  %arrayidx.1.i202 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 1
  %282 = ptrtoint ptr %arrayidx.1.i202 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1, ptr %arrayidx.1.i202, align 8
  %arrayidx.2.i203 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 2
  %283 = ptrtoint ptr %arrayidx.2.i203 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 2, ptr %arrayidx.2.i203, align 8
  %arrayidx.3.i204 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 3
  %284 = ptrtoint ptr %arrayidx.3.i204 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 3, ptr %arrayidx.3.i204, align 8
  %arrayidx.4.i205 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 4
  %285 = ptrtoint ptr %arrayidx.4.i205 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 4, ptr %arrayidx.4.i205, align 8
  %arrayidx.5.i206 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 5
  %286 = ptrtoint ptr %arrayidx.5.i206 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 5, ptr %arrayidx.5.i206, align 8
  %arrayidx.6.i207 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 6
  %287 = ptrtoint ptr %arrayidx.6.i207 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 6, ptr %arrayidx.6.i207, align 8
  %arrayidx.7.i208 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 7
  %288 = ptrtoint ptr %arrayidx.7.i208 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 7, ptr %arrayidx.7.i208, align 8
  %arrayidx.8.i209 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 8
  %289 = ptrtoint ptr %arrayidx.8.i209 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 8, ptr %arrayidx.8.i209, align 8
  %arrayidx.9.i210 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 9
  %290 = ptrtoint ptr %arrayidx.9.i210 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 9, ptr %arrayidx.9.i210, align 8
  %arrayidx.10.i211 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 10
  %291 = ptrtoint ptr %arrayidx.10.i211 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 10, ptr %arrayidx.10.i211, align 8
  %arrayidx.11.i212 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 11
  %292 = ptrtoint ptr %arrayidx.11.i212 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 11, ptr %arrayidx.11.i212, align 8
  %arrayidx.12.i213 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 12
  %293 = ptrtoint ptr %arrayidx.12.i213 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 12, ptr %arrayidx.12.i213, align 8
  %arrayidx.13.i214 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 13
  %294 = ptrtoint ptr %arrayidx.13.i214 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 13, ptr %arrayidx.13.i214, align 8
  %arrayidx.14.i215 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 14
  %295 = ptrtoint ptr %arrayidx.14.i215 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 14, ptr %arrayidx.14.i215, align 8
  %arrayidx.15.i216 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 15
  %296 = ptrtoint ptr %arrayidx.15.i216 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 15, ptr %arrayidx.15.i216, align 8
  %arrayidx.16.i217 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 16
  %297 = ptrtoint ptr %arrayidx.16.i217 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 16, ptr %arrayidx.16.i217, align 8
  %arrayidx.17.i218 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 17
  %298 = ptrtoint ptr %arrayidx.17.i218 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 17, ptr %arrayidx.17.i218, align 8
  %arrayidx.18.i219 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 18
  %299 = ptrtoint ptr %arrayidx.18.i219 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 18, ptr %arrayidx.18.i219, align 8
  %arrayidx.19.i220 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 19
  %300 = ptrtoint ptr %arrayidx.19.i220 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 19, ptr %arrayidx.19.i220, align 8
  %arrayidx.20.i221 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 20
  %301 = ptrtoint ptr %arrayidx.20.i221 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 20, ptr %arrayidx.20.i221, align 8
  %arrayidx.21.i222 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 21
  %302 = ptrtoint ptr %arrayidx.21.i222 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 21, ptr %arrayidx.21.i222, align 8
  %arrayidx.22.i223 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 22
  %303 = ptrtoint ptr %arrayidx.22.i223 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 22, ptr %arrayidx.22.i223, align 8
  %arrayidx.23.i224 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 23
  %304 = ptrtoint ptr %arrayidx.23.i224 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 23, ptr %arrayidx.23.i224, align 8
  %arrayidx.24.i225 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 24
  %305 = ptrtoint ptr %arrayidx.24.i225 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 24, ptr %arrayidx.24.i225, align 8
  %arrayidx.25.i226 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 25
  %306 = ptrtoint ptr %arrayidx.25.i226 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 25, ptr %arrayidx.25.i226, align 8
  %arrayidx.26.i227 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 26
  %307 = ptrtoint ptr %arrayidx.26.i227 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 26, ptr %arrayidx.26.i227, align 8
  %arrayidx.27.i228 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 27
  %308 = ptrtoint ptr %arrayidx.27.i228 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 27, ptr %arrayidx.27.i228, align 8
  %arrayidx.28.i229 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 28
  %309 = ptrtoint ptr %arrayidx.28.i229 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 28, ptr %arrayidx.28.i229, align 8
  %arrayidx.29.i230 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 29
  %310 = ptrtoint ptr %arrayidx.29.i230 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 29, ptr %arrayidx.29.i230, align 8
  %arrayidx8.i231 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 30
  %311 = ptrtoint ptr %arrayidx8.i231 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 30, ptr %arrayidx8.i231, align 8
  %arrayidx8.1.i232 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 31
  %312 = ptrtoint ptr %arrayidx8.1.i232 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 40, ptr %arrayidx8.1.i232, align 8
  %arrayidx8.2.i233 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 32
  %313 = ptrtoint ptr %arrayidx8.2.i233 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 50, ptr %arrayidx8.2.i233, align 8
  %arrayidx8.3.i234 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 33
  %314 = ptrtoint ptr %arrayidx8.3.i234 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 60, ptr %arrayidx8.3.i234, align 8
  %arrayidx8.4.i235 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 34
  %315 = ptrtoint ptr %arrayidx8.4.i235 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 70, ptr %arrayidx8.4.i235, align 8
  %arrayidx8.5.i236 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 35
  %316 = ptrtoint ptr %arrayidx8.5.i236 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 80, ptr %arrayidx8.5.i236, align 8
  %arrayidx8.6.i237 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 36
  %317 = ptrtoint ptr %arrayidx8.6.i237 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 90, ptr %arrayidx8.6.i237, align 8
  %arrayidx8.7.i238 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 37
  %318 = ptrtoint ptr %arrayidx8.7.i238 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 100, ptr %arrayidx8.7.i238, align 8
  %arrayidx8.8.i239 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 38
  %319 = ptrtoint ptr %arrayidx8.8.i239 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 110, ptr %arrayidx8.8.i239, align 8
  %arrayidx8.9.i240 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 39
  %320 = ptrtoint ptr %arrayidx8.9.i240 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 120, ptr %arrayidx8.9.i240, align 8
  %arrayidx8.10.i241 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 40
  %321 = ptrtoint ptr %arrayidx8.10.i241 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 130, ptr %arrayidx8.10.i241, align 8
  %arrayidx8.11.i242 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 41
  %322 = ptrtoint ptr %arrayidx8.11.i242 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 140, ptr %arrayidx8.11.i242, align 8
  %arrayidx8.12.i243 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 42
  %323 = ptrtoint ptr %arrayidx8.12.i243 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 150, ptr %arrayidx8.12.i243, align 8
  %arrayidx8.13.i244 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 43
  %324 = ptrtoint ptr %arrayidx8.13.i244 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 160, ptr %arrayidx8.13.i244, align 8
  %arrayidx8.14.i245 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 44
  %325 = ptrtoint ptr %arrayidx8.14.i245 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 170, ptr %arrayidx8.14.i245, align 8
  %arrayidx8.15.i246 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 45
  %326 = ptrtoint ptr %arrayidx8.15.i246 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 180, ptr %arrayidx8.15.i246, align 8
  %arrayidx8.16.i247 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 46
  %327 = ptrtoint ptr %arrayidx8.16.i247 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 190, ptr %arrayidx8.16.i247, align 8
  %arrayidx8.17.i248 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 47
  %328 = ptrtoint ptr %arrayidx8.17.i248 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 200, ptr %arrayidx8.17.i248, align 8
  %arrayidx20.i249 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 48
  %329 = ptrtoint ptr %arrayidx20.i249 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 200, ptr %arrayidx20.i249, align 8
  %arrayidx20.1.i250 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 49
  %330 = ptrtoint ptr %arrayidx20.1.i250 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 400, ptr %arrayidx20.1.i250, align 8
  %arrayidx20.2.i251 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 50
  %331 = ptrtoint ptr %arrayidx20.2.i251 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 600, ptr %arrayidx20.2.i251, align 8
  %arrayidx20.3.i252 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 51
  %332 = ptrtoint ptr %arrayidx20.3.i252 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 800, ptr %arrayidx20.3.i252, align 8
  %arrayidx20.4.i253 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 52
  %333 = ptrtoint ptr %arrayidx20.4.i253 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 1000, ptr %arrayidx20.4.i253, align 8
  %arrayidx20.5.i254 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 53
  %334 = ptrtoint ptr %arrayidx20.5.i254 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 1200, ptr %arrayidx20.5.i254, align 8
  %arrayidx20.6.i255 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 54
  %335 = ptrtoint ptr %arrayidx20.6.i255 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 1400, ptr %arrayidx20.6.i255, align 8
  %arrayidx20.7.i256 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 55
  %arrayidx20.8.i257 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 56
  %arrayidx20.9.i258 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 57
  %arrayidx20.10.i259 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 58
  %arrayidx20.11.i260 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 59
  %arrayidx20.12.i261 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 60
  %arrayidx20.13.i262 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 61
  %arrayidx20.14.i263 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 62
  %336 = ptrtoint ptr %arrayidx20.7.i256 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 2000, ptr %arrayidx20.7.i256, align 8
  %337 = ptrtoint ptr %arrayidx20.8.i257 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 4000, ptr %arrayidx20.8.i257, align 8
  %338 = ptrtoint ptr %arrayidx20.9.i258 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 8000, ptr %arrayidx20.9.i258, align 8
  %339 = ptrtoint ptr %arrayidx20.10.i259 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 15000, ptr %arrayidx20.10.i259, align 8
  %340 = ptrtoint ptr %arrayidx20.11.i260 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 30000, ptr %arrayidx20.11.i260, align 8
  %341 = ptrtoint ptr %arrayidx20.12.i261 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 60000, ptr %arrayidx20.12.i261, align 8
  %342 = ptrtoint ptr %arrayidx20.13.i262 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 300000, ptr %arrayidx20.13.i262, align 8
  %343 = ptrtoint ptr %arrayidx20.14.i263 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 900000, ptr %arrayidx20.14.i263, align 8
  %arrayidx50.i264 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 %portnr, i32 30, i32 1, i32 63
  %344 = ptrtoint ptr %arrayidx50.i264 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 3600000, ptr %arrayidx50.i264, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7164_work_enchandler(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -8120
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %last_svc_msecs = getelementptr i8, ptr %w, i32 -7856
  %2 = ptrtoint ptr %last_svc_msecs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_svc_msecs, align 8
  %last_svc_msecs_diff = getelementptr i8, ptr %w, i32 -7840
  %4 = ptrtoint ptr %last_svc_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %last_svc_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %5) #13
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %last_svc_msecs to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %last_svc_msecs, align 8
  %7 = ptrtoint ptr %last_svc_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_svc_msecs_diff, align 8
  %sub = sub i64 %conv, %8
  store i64 %sub, ptr %last_svc_msecs_diff, align 8
  %svc_interval = getelementptr i8, ptr %w, i32 -6728
  %conv7 = trunc i64 %sub to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc7.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.015.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv7)
  %cmp2.not.i = icmp ult i32 %10, %conv7
  br i1 %cmp2.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %count.i = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.015.i, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %conv.i = zext i32 %13 to i64
  %update_time.i = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.015.i, i32 2
  %14 = ptrtoint ptr %update_time.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %update_time.i, align 8
  br label %saa7164_histogram_update.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc7.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.saa7164_histogram_update.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.saa7164_histogram_update.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_histogram_update.exit

saa7164_histogram_update.exit:                    ; preds = %for.inc.i.saa7164_histogram_update.exit_crit_edge, %if.then.i
  %15 = ptrtoint ptr %last_svc_msecs to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %last_svc_msecs, align 8
  %last_irq_msecs = getelementptr i8, ptr %w, i32 -7864
  %17 = ptrtoint ptr %last_irq_msecs to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last_irq_msecs, align 8
  %sub9 = sub i64 %16, %18
  %last_irq_svc_msecs_diff = getelementptr i8, ptr %w, i32 -7824
  %19 = ptrtoint ptr %last_irq_svc_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub9, ptr %last_irq_svc_msecs_diff, align 8
  %irq_svc_interval = getelementptr i8, ptr %w, i32 -5672
  %conv11 = trunc i64 %sub9 to i32
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i140.for.body.i132_crit_edge, %saa7164_histogram_update.exit
  %i.015.i129 = phi i32 [ 0, %saa7164_histogram_update.exit ], [ %inc7.i138, %for.inc.i140.for.body.i132_crit_edge ]
  %arrayidx.i130 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.015.i129
  %20 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv11)
  %cmp2.not.i131 = icmp ult i32 %21, %conv11
  br i1 %cmp2.not.i131, label %for.inc.i140, label %if.then.i137

if.then.i137:                                     ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #15
  %count.i133 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.015.i129, i32 1
  %22 = ptrtoint ptr %count.i133 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i133, align 4
  %inc.i134 = add i32 %23, 1
  store i32 %inc.i134, ptr %count.i133, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %conv.i135 = zext i32 %24 to i64
  %update_time.i136 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.015.i129, i32 2
  %25 = ptrtoint ptr %update_time.i136 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv.i135, ptr %update_time.i136, align 8
  br label %saa7164_histogram_update.exit141

for.inc.i140:                                     ; preds = %for.body.i132
  %inc7.i138 = add nuw nsw i32 %i.015.i129, 1
  %exitcond.not.i139 = icmp eq i32 %inc7.i138, 64
  br i1 %exitcond.not.i139, label %for.inc.i140.saa7164_histogram_update.exit141_crit_edge, label %for.inc.i140.for.body.i132_crit_edge

for.inc.i140.for.body.i132_crit_edge:             ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i132

for.inc.i140.saa7164_histogram_update.exit141_crit_edge: ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_histogram_update.exit141

saa7164_histogram_update.exit141:                 ; preds = %for.inc.i140.saa7164_histogram_update.exit141_crit_edge, %if.then.i137
  %26 = load i32, ptr @saa_debug, align 4
  %and = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %saa7164_histogram_update.exit141.do.end18_crit_edge, label %do.end

saa7164_histogram_update.exit141.do.end18_crit_edge: ; preds = %saa7164_histogram_update.exit141
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.end:                                           ; preds = %saa7164_histogram_update.exit141
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %last_svc_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %last_svc_msecs_diff, align 8
  %29 = ptrtoint ptr %last_irq_svc_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %last_irq_svc_msecs_diff, align 8
  %last_svc_wp = getelementptr i8, ptr %w, i32 -7832
  %31 = ptrtoint ptr %last_svc_wp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_svc_wp, align 8
  %last_svc_rp = getelementptr i8, ptr %w, i32 -7828
  %33 = ptrtoint ptr %last_svc_rp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_svc_rp, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name, ptr noundef nonnull @.str.113, i64 noundef %28, i64 noundef %30, i32 noundef %32, i32 noundef %34) #16
  br label %do.end18

do.end18:                                         ; preds = %do.end, %saa7164_histogram_update.exit141.do.end18_crit_edge
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %bufcounter = getelementptr i8, ptr %w, i32 -8052
  %37 = ptrtoint ptr %bufcounter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bufcounter, align 4
  %shr = lshr i32 %38, 2
  %add.ptr19 = getelementptr i32, ptr %36, i32 %shr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #13, !srcloc !605
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  %buffercount = getelementptr i8, ptr %w, i32 -8057
  %41 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buffercount, align 1
  %conv23 = zext i8 %42 to i32
  %sub24 = add nsw i32 %conv23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %sub24)
  %cmp = icmp ugt i32 %40, %sub24
  br i1 %cmp, label %do.end29, label %if.end32

do.end29:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, i32 noundef %40) #16
  br label %cleanup

if.end32:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp33 = icmp eq i32 %39, 0
  %sub40 = add i32 %40, -1
  %mcb.0 = select i1 %cmp33, i32 %sub24, i32 %sub40
  %done_first_interrupt = getelementptr i8, ptr %w, i32 380
  %last_svc_rp47 = getelementptr i8, ptr %w, i32 -7828
  br label %while.cond

while.cond:                                       ; preds = %if.end61.while.cond_crit_edge, %if.end32
  %43 = ptrtoint ptr %done_first_interrupt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %done_first_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp42 = icmp eq i32 %44, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %done_first_interrupt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %done_first_interrupt, align 4
  br label %if.end48

if.else46:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %last_svc_rp47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_svc_rp47, align 4
  %add = add i32 %47, 1
  %rem = and i32 %add, 7
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then44
  %rp.0 = phi i32 [ %mcb.0, %if.then44 ], [ %rem, %if.else46 ]
  %48 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buffercount, align 1
  %conv51 = zext i8 %49 to i32
  %sub52 = add nsw i32 %conv51, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rp.0, i32 %sub52)
  %cmp53 = icmp ugt i32 %rp.0, %sub52
  br i1 %cmp53, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.113, i32 noundef %rp.0) #16
  br label %while.end

if.end61:                                         ; preds = %if.end48
  tail call fastcc void @saa7164_work_enchandler_helper(ptr noundef %add.ptr, i32 noundef %rp.0)
  %50 = ptrtoint ptr %last_svc_rp47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %rp.0, ptr %last_svc_rp47, align 4
  %cmp64 = icmp eq i32 %rp.0, %mcb.0
  br i1 %cmp64, label %if.end61.while.end_crit_edge, label %if.end61.while.cond_crit_edge

if.end61.while.cond_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %do.end58
  %51 = load i32, ptr @print_histogram, align 4
  %nr = getelementptr i8, ptr %w, i32 -8112
  %52 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp68 = icmp eq i32 %51, %53
  br i1 %cmp68, label %if.then70, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then70:                                        ; preds = %while.end
  %irq_interval = getelementptr i8, ptr %w, i32 -7784
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %irq_interval) #16
  br label %for.body.i143

for.body.i143:                                    ; preds = %for.inc.i148.for.body.i143_crit_edge, %if.then70
  %entries.03.i = phi i32 [ 0, %if.then70 ], [ %entries.1.i, %for.inc.i148.for.body.i143_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.then70 ], [ %inc14.i, %for.inc.i148.for.body.i143_crit_edge ]
  %count.i142 = getelementptr %struct.saa7164_histogram, ptr %irq_interval, i32 0, i32 1, i32 %i.01.i, i32 1
  %54 = ptrtoint ptr %count.i142 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.i = icmp eq i32 %55, 0
  br i1 %cmp1.i, label %for.body.i143.for.inc.i148_crit_edge, label %do.end4.i

for.body.i143.for.inc.i148_crit_edge:             ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i148

do.end4.i:                                        ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i144 = getelementptr %struct.saa7164_histogram, ptr %irq_interval, i32 0, i32 1, i32 %i.01.i
  %56 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i144, align 8
  %update_time.i145 = getelementptr %struct.saa7164_histogram, ptr %irq_interval, i32 0, i32 1, i32 %i.01.i, i32 2
  %58 = ptrtoint ptr %update_time.i145 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %update_time.i145, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %57, i32 noundef %55, i64 noundef %59) #16
  %inc.i146 = add i32 %entries.03.i, 1
  br label %for.inc.i148

for.inc.i148:                                     ; preds = %do.end4.i, %for.body.i143.for.inc.i148_crit_edge
  %entries.1.i = phi i32 [ %entries.03.i, %for.body.i143.for.inc.i148_crit_edge ], [ %inc.i146, %do.end4.i ]
  %inc14.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i147 = icmp eq i32 %inc14.i, 64
  br i1 %exitcond.not.i147, label %saa7164_histogram_print.exit, label %for.inc.i148.for.body.i143_crit_edge

for.inc.i148.for.body.i143_crit_edge:             ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i143

saa7164_histogram_print.exit:                     ; preds = %for.inc.i148
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i) #16
  %call.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %svc_interval) #16
  br label %for.body.i154

for.body.i154:                                    ; preds = %for.inc.i163.for.body.i154_crit_edge, %saa7164_histogram_print.exit
  %entries.03.i150 = phi i32 [ 0, %saa7164_histogram_print.exit ], [ %entries.1.i160, %for.inc.i163.for.body.i154_crit_edge ]
  %i.01.i151 = phi i32 [ 0, %saa7164_histogram_print.exit ], [ %inc14.i161, %for.inc.i163.for.body.i154_crit_edge ]
  %count.i152 = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.01.i151, i32 1
  %60 = ptrtoint ptr %count.i152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1.i153 = icmp eq i32 %61, 0
  br i1 %cmp1.i153, label %for.body.i154.for.inc.i163_crit_edge, label %do.end4.i159

for.body.i154.for.inc.i163_crit_edge:             ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i163

do.end4.i159:                                     ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i155 = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.01.i151
  %62 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i155, align 8
  %update_time.i156 = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.01.i151, i32 2
  %64 = ptrtoint ptr %update_time.i156 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %update_time.i156, align 8
  %call13.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %63, i32 noundef %61, i64 noundef %65) #16
  %inc.i158 = add i32 %entries.03.i150, 1
  br label %for.inc.i163

for.inc.i163:                                     ; preds = %do.end4.i159, %for.body.i154.for.inc.i163_crit_edge
  %entries.1.i160 = phi i32 [ %entries.03.i150, %for.body.i154.for.inc.i163_crit_edge ], [ %inc.i158, %do.end4.i159 ]
  %inc14.i161 = add nuw nsw i32 %i.01.i151, 1
  %exitcond.not.i162 = icmp eq i32 %inc14.i161, 64
  br i1 %exitcond.not.i162, label %saa7164_histogram_print.exit165, label %for.inc.i163.for.body.i154_crit_edge

for.inc.i163.for.body.i154_crit_edge:             ; preds = %for.inc.i163
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i154

saa7164_histogram_print.exit165:                  ; preds = %for.inc.i163
  %call19.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i160) #16
  %call.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %irq_svc_interval) #16
  br label %for.body.i171

for.body.i171:                                    ; preds = %for.inc.i180.for.body.i171_crit_edge, %saa7164_histogram_print.exit165
  %entries.03.i167 = phi i32 [ 0, %saa7164_histogram_print.exit165 ], [ %entries.1.i177, %for.inc.i180.for.body.i171_crit_edge ]
  %i.01.i168 = phi i32 [ 0, %saa7164_histogram_print.exit165 ], [ %inc14.i178, %for.inc.i180.for.body.i171_crit_edge ]
  %count.i169 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.01.i168, i32 1
  %66 = ptrtoint ptr %count.i169 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.i170 = icmp eq i32 %67, 0
  br i1 %cmp1.i170, label %for.body.i171.for.inc.i180_crit_edge, label %do.end4.i176

for.body.i171.for.inc.i180_crit_edge:             ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i180

do.end4.i176:                                     ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i172 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.01.i168
  %68 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i172, align 8
  %update_time.i173 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.01.i168, i32 2
  %70 = ptrtoint ptr %update_time.i173 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %update_time.i173, align 8
  %call13.i174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %69, i32 noundef %67, i64 noundef %71) #16
  %inc.i175 = add i32 %entries.03.i167, 1
  br label %for.inc.i180

for.inc.i180:                                     ; preds = %do.end4.i176, %for.body.i171.for.inc.i180_crit_edge
  %entries.1.i177 = phi i32 [ %entries.03.i167, %for.body.i171.for.inc.i180_crit_edge ], [ %inc.i175, %do.end4.i176 ]
  %inc14.i178 = add nuw nsw i32 %i.01.i168, 1
  %exitcond.not.i179 = icmp eq i32 %inc14.i178, 64
  br i1 %exitcond.not.i179, label %saa7164_histogram_print.exit182, label %for.inc.i180.for.body.i171_crit_edge

for.inc.i180.for.body.i171_crit_edge:             ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i171

saa7164_histogram_print.exit182:                  ; preds = %for.inc.i180
  %call19.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i177) #16
  %read_interval = getelementptr i8, ptr %w, i32 -4616
  %call.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %read_interval) #16
  br label %for.body.i188

for.body.i188:                                    ; preds = %for.inc.i197.for.body.i188_crit_edge, %saa7164_histogram_print.exit182
  %entries.03.i184 = phi i32 [ 0, %saa7164_histogram_print.exit182 ], [ %entries.1.i194, %for.inc.i197.for.body.i188_crit_edge ]
  %i.01.i185 = phi i32 [ 0, %saa7164_histogram_print.exit182 ], [ %inc14.i195, %for.inc.i197.for.body.i188_crit_edge ]
  %count.i186 = getelementptr %struct.saa7164_histogram, ptr %read_interval, i32 0, i32 1, i32 %i.01.i185, i32 1
  %72 = ptrtoint ptr %count.i186 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp1.i187 = icmp eq i32 %73, 0
  br i1 %cmp1.i187, label %for.body.i188.for.inc.i197_crit_edge, label %do.end4.i193

for.body.i188.for.inc.i197_crit_edge:             ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i197

do.end4.i193:                                     ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i189 = getelementptr %struct.saa7164_histogram, ptr %read_interval, i32 0, i32 1, i32 %i.01.i185
  %74 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i189, align 8
  %update_time.i190 = getelementptr %struct.saa7164_histogram, ptr %read_interval, i32 0, i32 1, i32 %i.01.i185, i32 2
  %76 = ptrtoint ptr %update_time.i190 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %update_time.i190, align 8
  %call13.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %75, i32 noundef %73, i64 noundef %77) #16
  %inc.i192 = add i32 %entries.03.i184, 1
  br label %for.inc.i197

for.inc.i197:                                     ; preds = %do.end4.i193, %for.body.i188.for.inc.i197_crit_edge
  %entries.1.i194 = phi i32 [ %entries.03.i184, %for.body.i188.for.inc.i197_crit_edge ], [ %inc.i192, %do.end4.i193 ]
  %inc14.i195 = add nuw nsw i32 %i.01.i185, 1
  %exitcond.not.i196 = icmp eq i32 %inc14.i195, 64
  br i1 %exitcond.not.i196, label %saa7164_histogram_print.exit199, label %for.inc.i197.for.body.i188_crit_edge

for.inc.i197.for.body.i188_crit_edge:             ; preds = %for.inc.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i188

saa7164_histogram_print.exit199:                  ; preds = %for.inc.i197
  %call19.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i194) #16
  %poll_interval = getelementptr i8, ptr %w, i32 -3560
  %call.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %poll_interval) #16
  br label %for.body.i205

for.body.i205:                                    ; preds = %for.inc.i214.for.body.i205_crit_edge, %saa7164_histogram_print.exit199
  %entries.03.i201 = phi i32 [ 0, %saa7164_histogram_print.exit199 ], [ %entries.1.i211, %for.inc.i214.for.body.i205_crit_edge ]
  %i.01.i202 = phi i32 [ 0, %saa7164_histogram_print.exit199 ], [ %inc14.i212, %for.inc.i214.for.body.i205_crit_edge ]
  %count.i203 = getelementptr %struct.saa7164_histogram, ptr %poll_interval, i32 0, i32 1, i32 %i.01.i202, i32 1
  %78 = ptrtoint ptr %count.i203 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1.i204 = icmp eq i32 %79, 0
  br i1 %cmp1.i204, label %for.body.i205.for.inc.i214_crit_edge, label %do.end4.i210

for.body.i205.for.inc.i214_crit_edge:             ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i214

do.end4.i210:                                     ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i206 = getelementptr %struct.saa7164_histogram, ptr %poll_interval, i32 0, i32 1, i32 %i.01.i202
  %80 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i206, align 8
  %update_time.i207 = getelementptr %struct.saa7164_histogram, ptr %poll_interval, i32 0, i32 1, i32 %i.01.i202, i32 2
  %82 = ptrtoint ptr %update_time.i207 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %update_time.i207, align 8
  %call13.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %81, i32 noundef %79, i64 noundef %83) #16
  %inc.i209 = add i32 %entries.03.i201, 1
  br label %for.inc.i214

for.inc.i214:                                     ; preds = %do.end4.i210, %for.body.i205.for.inc.i214_crit_edge
  %entries.1.i211 = phi i32 [ %entries.03.i201, %for.body.i205.for.inc.i214_crit_edge ], [ %inc.i209, %do.end4.i210 ]
  %inc14.i212 = add nuw nsw i32 %i.01.i202, 1
  %exitcond.not.i213 = icmp eq i32 %inc14.i212, 64
  br i1 %exitcond.not.i213, label %saa7164_histogram_print.exit216, label %for.inc.i214.for.body.i205_crit_edge

for.inc.i214.for.body.i205_crit_edge:             ; preds = %for.inc.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i205

saa7164_histogram_print.exit216:                  ; preds = %for.inc.i214
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i211) #16
  %84 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr, align 8
  %add74 = add i32 %85, 64
  store i32 %add74, ptr @print_histogram, align 4
  br label %cleanup

cleanup:                                          ; preds = %saa7164_histogram_print.exit216, %while.end.cleanup_crit_edge, %do.end29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7164_work_vbihandler(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -8120
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %last_svc_msecs = getelementptr i8, ptr %w, i32 -7856
  %2 = ptrtoint ptr %last_svc_msecs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_svc_msecs, align 8
  %last_svc_msecs_diff = getelementptr i8, ptr %w, i32 -7840
  %4 = ptrtoint ptr %last_svc_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %last_svc_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %5) #13
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %last_svc_msecs to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %last_svc_msecs, align 8
  %7 = ptrtoint ptr %last_svc_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_svc_msecs_diff, align 8
  %sub = sub i64 %conv, %8
  store i64 %sub, ptr %last_svc_msecs_diff, align 8
  %svc_interval = getelementptr i8, ptr %w, i32 -6728
  %conv7 = trunc i64 %sub to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc7.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.015.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv7)
  %cmp2.not.i = icmp ult i32 %10, %conv7
  br i1 %cmp2.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %count.i = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.015.i, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %conv.i = zext i32 %13 to i64
  %update_time.i = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.015.i, i32 2
  %14 = ptrtoint ptr %update_time.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %update_time.i, align 8
  br label %saa7164_histogram_update.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc7.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.saa7164_histogram_update.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.saa7164_histogram_update.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_histogram_update.exit

saa7164_histogram_update.exit:                    ; preds = %for.inc.i.saa7164_histogram_update.exit_crit_edge, %if.then.i
  %15 = ptrtoint ptr %last_svc_msecs to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %last_svc_msecs, align 8
  %last_irq_msecs = getelementptr i8, ptr %w, i32 -7864
  %17 = ptrtoint ptr %last_irq_msecs to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last_irq_msecs, align 8
  %sub9 = sub i64 %16, %18
  %last_irq_svc_msecs_diff = getelementptr i8, ptr %w, i32 -7824
  %19 = ptrtoint ptr %last_irq_svc_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub9, ptr %last_irq_svc_msecs_diff, align 8
  %irq_svc_interval = getelementptr i8, ptr %w, i32 -5672
  %conv11 = trunc i64 %sub9 to i32
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i140.for.body.i132_crit_edge, %saa7164_histogram_update.exit
  %i.015.i129 = phi i32 [ 0, %saa7164_histogram_update.exit ], [ %inc7.i138, %for.inc.i140.for.body.i132_crit_edge ]
  %arrayidx.i130 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.015.i129
  %20 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv11)
  %cmp2.not.i131 = icmp ult i32 %21, %conv11
  br i1 %cmp2.not.i131, label %for.inc.i140, label %if.then.i137

if.then.i137:                                     ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #15
  %count.i133 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.015.i129, i32 1
  %22 = ptrtoint ptr %count.i133 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i133, align 4
  %inc.i134 = add i32 %23, 1
  store i32 %inc.i134, ptr %count.i133, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %conv.i135 = zext i32 %24 to i64
  %update_time.i136 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.015.i129, i32 2
  %25 = ptrtoint ptr %update_time.i136 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv.i135, ptr %update_time.i136, align 8
  br label %saa7164_histogram_update.exit141

for.inc.i140:                                     ; preds = %for.body.i132
  %inc7.i138 = add nuw nsw i32 %i.015.i129, 1
  %exitcond.not.i139 = icmp eq i32 %inc7.i138, 64
  br i1 %exitcond.not.i139, label %for.inc.i140.saa7164_histogram_update.exit141_crit_edge, label %for.inc.i140.for.body.i132_crit_edge

for.inc.i140.for.body.i132_crit_edge:             ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i132

for.inc.i140.saa7164_histogram_update.exit141_crit_edge: ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_histogram_update.exit141

saa7164_histogram_update.exit141:                 ; preds = %for.inc.i140.saa7164_histogram_update.exit141_crit_edge, %if.then.i137
  %26 = load i32, ptr @saa_debug, align 4
  %and = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %saa7164_histogram_update.exit141.do.end18_crit_edge, label %do.end

saa7164_histogram_update.exit141.do.end18_crit_edge: ; preds = %saa7164_histogram_update.exit141
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.end:                                           ; preds = %saa7164_histogram_update.exit141
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %last_svc_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %last_svc_msecs_diff, align 8
  %29 = ptrtoint ptr %last_irq_svc_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %last_irq_svc_msecs_diff, align 8
  %last_svc_wp = getelementptr i8, ptr %w, i32 -7832
  %31 = ptrtoint ptr %last_svc_wp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_svc_wp, align 8
  %last_svc_rp = getelementptr i8, ptr %w, i32 -7828
  %33 = ptrtoint ptr %last_svc_rp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_svc_rp, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name, ptr noundef nonnull @.str.158, i64 noundef %28, i64 noundef %30, i32 noundef %32, i32 noundef %34) #16
  br label %do.end18

do.end18:                                         ; preds = %do.end, %saa7164_histogram_update.exit141.do.end18_crit_edge
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %bufcounter = getelementptr i8, ptr %w, i32 -8052
  %37 = ptrtoint ptr %bufcounter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bufcounter, align 4
  %shr = lshr i32 %38, 2
  %add.ptr19 = getelementptr i32, ptr %36, i32 %shr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #13, !srcloc !605
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !641
  %buffercount = getelementptr i8, ptr %w, i32 -8057
  %41 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buffercount, align 1
  %conv23 = zext i8 %42 to i32
  %sub24 = add nsw i32 %conv23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %sub24)
  %cmp = icmp ugt i32 %40, %sub24
  br i1 %cmp, label %do.end29, label %if.end32

do.end29:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.158, i32 noundef %40) #16
  br label %cleanup

if.end32:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp33 = icmp eq i32 %39, 0
  %sub40 = add i32 %40, -1
  %mcb.0 = select i1 %cmp33, i32 %sub24, i32 %sub40
  %done_first_interrupt = getelementptr i8, ptr %w, i32 380
  %last_svc_rp47 = getelementptr i8, ptr %w, i32 -7828
  br label %while.cond

while.cond:                                       ; preds = %if.end61.while.cond_crit_edge, %if.end32
  %43 = ptrtoint ptr %done_first_interrupt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %done_first_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp42 = icmp eq i32 %44, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %done_first_interrupt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %done_first_interrupt, align 4
  br label %if.end48

if.else46:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %last_svc_rp47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_svc_rp47, align 4
  %add = add i32 %47, 1
  %rem = and i32 %add, 7
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then44
  %rp.0 = phi i32 [ %mcb.0, %if.then44 ], [ %rem, %if.else46 ]
  %48 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buffercount, align 1
  %conv51 = zext i8 %49 to i32
  %sub52 = add nsw i32 %conv51, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rp.0, i32 %sub52)
  %cmp53 = icmp ugt i32 %rp.0, %sub52
  br i1 %cmp53, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.158, i32 noundef %rp.0) #16
  br label %while.end

if.end61:                                         ; preds = %if.end48
  tail call fastcc void @saa7164_work_enchandler_helper(ptr noundef %add.ptr, i32 noundef %rp.0)
  %50 = ptrtoint ptr %last_svc_rp47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %rp.0, ptr %last_svc_rp47, align 4
  %cmp64 = icmp eq i32 %rp.0, %mcb.0
  br i1 %cmp64, label %if.end61.while.end_crit_edge, label %if.end61.while.cond_crit_edge

if.end61.while.cond_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %do.end58
  %51 = load i32, ptr @print_histogram, align 4
  %nr = getelementptr i8, ptr %w, i32 -8112
  %52 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp68 = icmp eq i32 %51, %53
  br i1 %cmp68, label %if.then70, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then70:                                        ; preds = %while.end
  %irq_interval = getelementptr i8, ptr %w, i32 -7784
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %irq_interval) #16
  br label %for.body.i143

for.body.i143:                                    ; preds = %for.inc.i148.for.body.i143_crit_edge, %if.then70
  %entries.03.i = phi i32 [ 0, %if.then70 ], [ %entries.1.i, %for.inc.i148.for.body.i143_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.then70 ], [ %inc14.i, %for.inc.i148.for.body.i143_crit_edge ]
  %count.i142 = getelementptr %struct.saa7164_histogram, ptr %irq_interval, i32 0, i32 1, i32 %i.01.i, i32 1
  %54 = ptrtoint ptr %count.i142 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.i = icmp eq i32 %55, 0
  br i1 %cmp1.i, label %for.body.i143.for.inc.i148_crit_edge, label %do.end4.i

for.body.i143.for.inc.i148_crit_edge:             ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i148

do.end4.i:                                        ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i144 = getelementptr %struct.saa7164_histogram, ptr %irq_interval, i32 0, i32 1, i32 %i.01.i
  %56 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i144, align 8
  %update_time.i145 = getelementptr %struct.saa7164_histogram, ptr %irq_interval, i32 0, i32 1, i32 %i.01.i, i32 2
  %58 = ptrtoint ptr %update_time.i145 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %update_time.i145, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %57, i32 noundef %55, i64 noundef %59) #16
  %inc.i146 = add i32 %entries.03.i, 1
  br label %for.inc.i148

for.inc.i148:                                     ; preds = %do.end4.i, %for.body.i143.for.inc.i148_crit_edge
  %entries.1.i = phi i32 [ %entries.03.i, %for.body.i143.for.inc.i148_crit_edge ], [ %inc.i146, %do.end4.i ]
  %inc14.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i147 = icmp eq i32 %inc14.i, 64
  br i1 %exitcond.not.i147, label %saa7164_histogram_print.exit, label %for.inc.i148.for.body.i143_crit_edge

for.inc.i148.for.body.i143_crit_edge:             ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i143

saa7164_histogram_print.exit:                     ; preds = %for.inc.i148
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i) #16
  %call.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %svc_interval) #16
  br label %for.body.i154

for.body.i154:                                    ; preds = %for.inc.i163.for.body.i154_crit_edge, %saa7164_histogram_print.exit
  %entries.03.i150 = phi i32 [ 0, %saa7164_histogram_print.exit ], [ %entries.1.i160, %for.inc.i163.for.body.i154_crit_edge ]
  %i.01.i151 = phi i32 [ 0, %saa7164_histogram_print.exit ], [ %inc14.i161, %for.inc.i163.for.body.i154_crit_edge ]
  %count.i152 = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.01.i151, i32 1
  %60 = ptrtoint ptr %count.i152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1.i153 = icmp eq i32 %61, 0
  br i1 %cmp1.i153, label %for.body.i154.for.inc.i163_crit_edge, label %do.end4.i159

for.body.i154.for.inc.i163_crit_edge:             ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i163

do.end4.i159:                                     ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i155 = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.01.i151
  %62 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i155, align 8
  %update_time.i156 = getelementptr %struct.saa7164_histogram, ptr %svc_interval, i32 0, i32 1, i32 %i.01.i151, i32 2
  %64 = ptrtoint ptr %update_time.i156 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %update_time.i156, align 8
  %call13.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %63, i32 noundef %61, i64 noundef %65) #16
  %inc.i158 = add i32 %entries.03.i150, 1
  br label %for.inc.i163

for.inc.i163:                                     ; preds = %do.end4.i159, %for.body.i154.for.inc.i163_crit_edge
  %entries.1.i160 = phi i32 [ %entries.03.i150, %for.body.i154.for.inc.i163_crit_edge ], [ %inc.i158, %do.end4.i159 ]
  %inc14.i161 = add nuw nsw i32 %i.01.i151, 1
  %exitcond.not.i162 = icmp eq i32 %inc14.i161, 64
  br i1 %exitcond.not.i162, label %saa7164_histogram_print.exit165, label %for.inc.i163.for.body.i154_crit_edge

for.inc.i163.for.body.i154_crit_edge:             ; preds = %for.inc.i163
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i154

saa7164_histogram_print.exit165:                  ; preds = %for.inc.i163
  %call19.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i160) #16
  %call.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %irq_svc_interval) #16
  br label %for.body.i171

for.body.i171:                                    ; preds = %for.inc.i180.for.body.i171_crit_edge, %saa7164_histogram_print.exit165
  %entries.03.i167 = phi i32 [ 0, %saa7164_histogram_print.exit165 ], [ %entries.1.i177, %for.inc.i180.for.body.i171_crit_edge ]
  %i.01.i168 = phi i32 [ 0, %saa7164_histogram_print.exit165 ], [ %inc14.i178, %for.inc.i180.for.body.i171_crit_edge ]
  %count.i169 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.01.i168, i32 1
  %66 = ptrtoint ptr %count.i169 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.i170 = icmp eq i32 %67, 0
  br i1 %cmp1.i170, label %for.body.i171.for.inc.i180_crit_edge, label %do.end4.i176

for.body.i171.for.inc.i180_crit_edge:             ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i180

do.end4.i176:                                     ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i172 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.01.i168
  %68 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i172, align 8
  %update_time.i173 = getelementptr %struct.saa7164_histogram, ptr %irq_svc_interval, i32 0, i32 1, i32 %i.01.i168, i32 2
  %70 = ptrtoint ptr %update_time.i173 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %update_time.i173, align 8
  %call13.i174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %69, i32 noundef %67, i64 noundef %71) #16
  %inc.i175 = add i32 %entries.03.i167, 1
  br label %for.inc.i180

for.inc.i180:                                     ; preds = %do.end4.i176, %for.body.i171.for.inc.i180_crit_edge
  %entries.1.i177 = phi i32 [ %entries.03.i167, %for.body.i171.for.inc.i180_crit_edge ], [ %inc.i175, %do.end4.i176 ]
  %inc14.i178 = add nuw nsw i32 %i.01.i168, 1
  %exitcond.not.i179 = icmp eq i32 %inc14.i178, 64
  br i1 %exitcond.not.i179, label %saa7164_histogram_print.exit182, label %for.inc.i180.for.body.i171_crit_edge

for.inc.i180.for.body.i171_crit_edge:             ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i171

saa7164_histogram_print.exit182:                  ; preds = %for.inc.i180
  %call19.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i177) #16
  %read_interval = getelementptr i8, ptr %w, i32 -4616
  %call.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %read_interval) #16
  br label %for.body.i188

for.body.i188:                                    ; preds = %for.inc.i197.for.body.i188_crit_edge, %saa7164_histogram_print.exit182
  %entries.03.i184 = phi i32 [ 0, %saa7164_histogram_print.exit182 ], [ %entries.1.i194, %for.inc.i197.for.body.i188_crit_edge ]
  %i.01.i185 = phi i32 [ 0, %saa7164_histogram_print.exit182 ], [ %inc14.i195, %for.inc.i197.for.body.i188_crit_edge ]
  %count.i186 = getelementptr %struct.saa7164_histogram, ptr %read_interval, i32 0, i32 1, i32 %i.01.i185, i32 1
  %72 = ptrtoint ptr %count.i186 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp1.i187 = icmp eq i32 %73, 0
  br i1 %cmp1.i187, label %for.body.i188.for.inc.i197_crit_edge, label %do.end4.i193

for.body.i188.for.inc.i197_crit_edge:             ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i197

do.end4.i193:                                     ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i189 = getelementptr %struct.saa7164_histogram, ptr %read_interval, i32 0, i32 1, i32 %i.01.i185
  %74 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i189, align 8
  %update_time.i190 = getelementptr %struct.saa7164_histogram, ptr %read_interval, i32 0, i32 1, i32 %i.01.i185, i32 2
  %76 = ptrtoint ptr %update_time.i190 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %update_time.i190, align 8
  %call13.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %75, i32 noundef %73, i64 noundef %77) #16
  %inc.i192 = add i32 %entries.03.i184, 1
  br label %for.inc.i197

for.inc.i197:                                     ; preds = %do.end4.i193, %for.body.i188.for.inc.i197_crit_edge
  %entries.1.i194 = phi i32 [ %entries.03.i184, %for.body.i188.for.inc.i197_crit_edge ], [ %inc.i192, %do.end4.i193 ]
  %inc14.i195 = add nuw nsw i32 %i.01.i185, 1
  %exitcond.not.i196 = icmp eq i32 %inc14.i195, 64
  br i1 %exitcond.not.i196, label %saa7164_histogram_print.exit199, label %for.inc.i197.for.body.i188_crit_edge

for.inc.i197.for.body.i188_crit_edge:             ; preds = %for.inc.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i188

saa7164_histogram_print.exit199:                  ; preds = %for.inc.i197
  %call19.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i194) #16
  %poll_interval = getelementptr i8, ptr %w, i32 -3560
  %call.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %poll_interval) #16
  br label %for.body.i205

for.body.i205:                                    ; preds = %for.inc.i214.for.body.i205_crit_edge, %saa7164_histogram_print.exit199
  %entries.03.i201 = phi i32 [ 0, %saa7164_histogram_print.exit199 ], [ %entries.1.i211, %for.inc.i214.for.body.i205_crit_edge ]
  %i.01.i202 = phi i32 [ 0, %saa7164_histogram_print.exit199 ], [ %inc14.i212, %for.inc.i214.for.body.i205_crit_edge ]
  %count.i203 = getelementptr %struct.saa7164_histogram, ptr %poll_interval, i32 0, i32 1, i32 %i.01.i202, i32 1
  %78 = ptrtoint ptr %count.i203 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1.i204 = icmp eq i32 %79, 0
  br i1 %cmp1.i204, label %for.body.i205.for.inc.i214_crit_edge, label %do.end4.i210

for.body.i205.for.inc.i214_crit_edge:             ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i214

do.end4.i210:                                     ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i206 = getelementptr %struct.saa7164_histogram, ptr %poll_interval, i32 0, i32 1, i32 %i.01.i202
  %80 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i206, align 8
  %update_time.i207 = getelementptr %struct.saa7164_histogram, ptr %poll_interval, i32 0, i32 1, i32 %i.01.i202, i32 2
  %82 = ptrtoint ptr %update_time.i207 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %update_time.i207, align 8
  %call13.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %81, i32 noundef %79, i64 noundef %83) #16
  %inc.i209 = add i32 %entries.03.i201, 1
  br label %for.inc.i214

for.inc.i214:                                     ; preds = %do.end4.i210, %for.body.i205.for.inc.i214_crit_edge
  %entries.1.i211 = phi i32 [ %entries.03.i201, %for.body.i205.for.inc.i214_crit_edge ], [ %inc.i209, %do.end4.i210 ]
  %inc14.i212 = add nuw nsw i32 %i.01.i202, 1
  %exitcond.not.i213 = icmp eq i32 %inc14.i212, 64
  br i1 %exitcond.not.i213, label %saa7164_histogram_print.exit216, label %for.inc.i214.for.body.i205_crit_edge

for.inc.i214.for.body.i205_crit_edge:             ; preds = %for.inc.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i205

saa7164_histogram_print.exit216:                  ; preds = %for.inc.i214
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %entries.1.i211) #16
  %84 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr, align 8
  %add74 = add i32 %85, 64
  store i32 %add74, ptr @print_histogram, align 4
  br label %cleanup

cleanup:                                          ; preds = %saa7164_histogram_print.exit216, %while.end.cleanup_crit_edge, %do.end29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_work_enchandler_helper(ptr noundef %port, i32 noundef %bufnr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #13
  %dmaqueue = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %2 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmaqueue, align 8
  %buffercount = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.cond_crit_edge ]
  %c.0 = phi ptr [ %3, %entry ], [ %n.0, %if.end.for.cond_crit_edge ]
  %4 = ptrtoint ptr %c.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %c.0, align 4
  %cmp.i.not = icmp eq ptr %c.0, %dmaqueue
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %i.0, 1
  %5 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buffercount, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv)
  %cmp = icmp ugt i32 %i.0, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef %inc) #16
  br label %for.end

if.end:                                           ; preds = %for.body
  %idx = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %cmp8 = icmp eq i32 %8, %bufnr
  br i1 %cmp8, label %do.body11, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

do.body11:                                        ; preds = %if.end
  %9 = load i32, ptr @saa_debug, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body11.do.end21_crit_edge, label %do.end16

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name, ptr noundef nonnull @.str.121, i32 noundef %bufnr) #16
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body11.do.end21_crit_edge
  %10 = load i32, ptr @crc_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %do.end21.if.end25_crit_edge, label %if.then23

do.end21.if.end25_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then23:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  %cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 5
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu, align 4
  %actual_size = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 12
  %13 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_size, align 4
  %call24 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %12, i32 noundef %14) #18
  %crc = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 7
  %15 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call24, ptr %crc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.end21.if.end25_crit_edge
  %16 = load i32, ptr @guard_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  br i1 %tobool26.not, label %if.end25.if.end90_crit_edge, label %if.then27

if.end25.if.end90_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then27:                                        ; preds = %if.end25
  %cpu28 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 5
  %17 = ptrtoint ptr %cpu28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu28, align 4
  %actual_size29 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 12
  %19 = ptrtoint ptr %actual_size29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_size29, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp33.not = icmp eq i8 %22, -1
  br i1 %cmp33.not, label %lor.lhs.false, label %if.then27.do.end86_crit_edge

if.then27.do.end86_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false:                                    ; preds = %if.then27
  %add.ptr37 = getelementptr i8, ptr %add.ptr30, i32 1
  %23 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp39.not = icmp eq i8 %24, -1
  br i1 %cmp39.not, label %lor.lhs.false41, label %lor.lhs.false.do.end86_crit_edge

lor.lhs.false.do.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %add.ptr44 = getelementptr i8, ptr %add.ptr30, i32 2
  %25 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp46.not = icmp eq i8 %26, -1
  br i1 %cmp46.not, label %lor.lhs.false48, label %lor.lhs.false41.do.end86_crit_edge

lor.lhs.false41.do.end86_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false48:                                  ; preds = %lor.lhs.false41
  %add.ptr51 = getelementptr i8, ptr %add.ptr30, i32 3
  %27 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp53.not = icmp eq i8 %28, -1
  br i1 %cmp53.not, label %lor.lhs.false55, label %lor.lhs.false48.do.end86_crit_edge

lor.lhs.false48.do.end86_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false55:                                  ; preds = %lor.lhs.false48
  %add.ptr58 = getelementptr i8, ptr %add.ptr30, i32 16
  %29 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp60.not = icmp eq i8 %30, -1
  br i1 %cmp60.not, label %lor.lhs.false62, label %lor.lhs.false55.do.end86_crit_edge

lor.lhs.false55.do.end86_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false62:                                  ; preds = %lor.lhs.false55
  %add.ptr65 = getelementptr i8, ptr %add.ptr30, i32 17
  %31 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp67.not = icmp eq i8 %32, -1
  br i1 %cmp67.not, label %lor.lhs.false69, label %lor.lhs.false62.do.end86_crit_edge

lor.lhs.false62.do.end86_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false69:                                  ; preds = %lor.lhs.false62
  %add.ptr72 = getelementptr i8, ptr %add.ptr30, i32 18
  %33 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp74.not = icmp eq i8 %34, -1
  br i1 %cmp74.not, label %lor.lhs.false76, label %lor.lhs.false69.do.end86_crit_edge

lor.lhs.false69.do.end86_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false76:                                  ; preds = %lor.lhs.false69
  %add.ptr79 = getelementptr i8, ptr %add.ptr30, i32 19
  %35 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp81.not = icmp eq i8 %36, -1
  br i1 %cmp81.not, label %lor.lhs.false76.if.end90_crit_edge, label %lor.lhs.false76.do.end86_crit_edge

lor.lhs.false76.do.end86_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86

lor.lhs.false76.if.end90_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

do.end86:                                         ; preds = %lor.lhs.false76.do.end86_crit_edge, %lor.lhs.false69.do.end86_crit_edge, %lor.lhs.false62.do.end86_crit_edge, %lor.lhs.false55.do.end86_crit_edge, %lor.lhs.false48.do.end86_crit_edge, %lor.lhs.false41.do.end86_crit_edge, %lor.lhs.false.do.end86_crit_edge, %if.then27.do.end86_crit_edge
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121, ptr noundef %c.0) #16
  br label %if.end90

if.end90:                                         ; preds = %do.end86, %lor.lhs.false76.if.end90_crit_edge, %if.end25.if.end90_crit_edge
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %37 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr, align 8
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %switch = icmp eq i32 %39, 4
  br i1 %switch, label %if.end90.if.end107_crit_edge, label %if.then96

if.end90.if.end107_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then96:                                        ; preds = %if.end90
  %stream_type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 7
  %40 = ptrtoint ptr %stream_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stream_type, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %41, label %if.then96.if.end107_crit_edge [
    i32 1, label %if.then99
    i32 0, label %if.then104
  ]

if.then96.if.end107_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then99:                                        ; preds = %if.then96
  %port1.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 2
  %43 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port1.i, align 4
  %cpu.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 5
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpu.i, align 4
  %sync_errors.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 66
  %47 = ptrtoint ptr %sync_errors.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sync_errors.i, align 4
  %v_cc_errors.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 67
  %48 = ptrtoint ptr %v_cc_errors.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %v_cc_errors.i, align 8
  %a_cc_errors.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 68
  %49 = ptrtoint ptr %a_cc_errors.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %a_cc_errors.i, align 4
  %actual_size.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 12
  %50 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %actual_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp154.not.i = icmp eq i32 %51, 0
  br i1 %cmp154.not.i, label %if.then99.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then99.for.end.i_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then99
  %last_a_cc.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 70
  %last_v_cc.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 69
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0155.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add63.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %46, i32 %i.0155.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %53)
  %cmp2.not.i = icmp eq i8 %53, 71
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %sync_errors.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sync_errors.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %sync_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %56 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr6.i, align 1
  %58 = and i8 %57, 31
  %and.i = zext i8 %58 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %59 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr9.i, align 1
  %conv10.i = zext i8 %60 to i32
  %or.i = or i32 %shl.i, %conv10.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %61 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr13.i, align 1
  %63 = and i8 %62, 15
  %64 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %or.i, label %if.end.i.for.inc.i_crit_edge [
    i32 241, label %if.then20.i
    i32 242, label %if.then39.i
  ]

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then20.i:                                      ; preds = %if.end.i
  %65 = ptrtoint ptr %last_v_cc.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %last_v_cc.i, align 8
  %add.i = add i8 %66, 1
  %and22.i = and i8 %add.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %and22.i, i8 %63)
  %cmp26.not.i = icmp eq i8 %and22.i, %63
  br i1 %cmp26.not.i, label %if.then20.i.if.end34.i_crit_edge, label %do.end.i

if.then20.i.if.end34.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv25.i = zext i8 %63 to i32
  %conv21.i = zext i8 %66 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %conv21.i, i32 noundef %conv25.i, i32 noundef %i.0155.i) #16
  %67 = ptrtoint ptr %v_cc_errors.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %v_cc_errors.i, align 8
  %inc33.i = add i32 %68, 1
  store i32 %inc33.i, ptr %v_cc_errors.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end.i, %if.then20.i.if.end34.i_crit_edge
  %69 = ptrtoint ptr %last_v_cc.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %63, ptr %last_v_cc.i, align 8
  br label %for.inc.i

if.then39.i:                                      ; preds = %if.end.i
  %70 = ptrtoint ptr %last_a_cc.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %last_a_cc.i, align 1
  %add41.i = add i8 %71, 1
  %and42.i = and i8 %add41.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %and42.i, i8 %63)
  %cmp46.not.i = icmp eq i8 %and42.i, %63
  br i1 %cmp46.not.i, label %if.then39.i.if.end59.i_crit_edge, label %do.end51.i

if.then39.i.if.end59.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

do.end51.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv45.i = zext i8 %63 to i32
  %conv40.i = zext i8 %71 to i32
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %conv40.i, i32 noundef %conv45.i, i32 noundef %i.0155.i) #16
  %72 = ptrtoint ptr %a_cc_errors.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %a_cc_errors.i, align 4
  %inc58.i = add i32 %73, 1
  store i32 %inc58.i, ptr %a_cc_errors.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.end51.i, %if.then39.i.if.end59.i_crit_edge
  %74 = ptrtoint ptr %last_a_cc.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %63, ptr %last_a_cc.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end59.i, %if.end34.i, %if.end.i.for.inc.i_crit_edge
  %add63.i = add i32 %i.0155.i, 188
  %75 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %actual_size.i, align 4
  %cmp.i219 = icmp ult i32 %add63.i, %76
  br i1 %cmp.i219, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then99.for.end.i_crit_edge
  %77 = ptrtoint ptr %v_cc_errors.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %v_cc_errors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i, label %for.end.i.if.end74.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end74.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %done_first_interrupt.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 71
  %79 = ptrtoint ptr %done_first_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %done_first_interrupt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp65.i = icmp ugt i32 %80, 1
  br i1 %cmp65.i, label %do.end70.i, label %land.lhs.true.i.if.end74.i_crit_edge

land.lhs.true.i.if.end74.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

do.end70.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %78) #16
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end70.i, %land.lhs.true.i.if.end74.i_crit_edge, %for.end.i.if.end74.i_crit_edge
  %81 = ptrtoint ptr %a_cc_errors.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %a_cc_errors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool76.not.i = icmp eq i32 %82, 0
  br i1 %tobool76.not.i, label %if.end74.i.if.end88.i_crit_edge, label %land.lhs.true77.i

if.end74.i.if.end88.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

land.lhs.true77.i:                                ; preds = %if.end74.i
  %done_first_interrupt78.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 71
  %83 = ptrtoint ptr %done_first_interrupt78.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %done_first_interrupt78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp79.i = icmp ugt i32 %84, 1
  br i1 %cmp79.i, label %do.end84.i, label %land.lhs.true77.i.if.end88.i_crit_edge

land.lhs.true77.i.if.end88.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

do.end84.i:                                       ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %82) #16
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end84.i, %land.lhs.true77.i.if.end88.i_crit_edge, %if.end74.i.if.end88.i_crit_edge
  %85 = ptrtoint ptr %sync_errors.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sync_errors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool90.not.i = icmp eq i32 %86, 0
  br i1 %tobool90.not.i, label %if.end88.i.if.end102.i_crit_edge, label %land.lhs.true91.i

if.end88.i.if.end102.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i

land.lhs.true91.i:                                ; preds = %if.end88.i
  %done_first_interrupt92.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 71
  %87 = ptrtoint ptr %done_first_interrupt92.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %done_first_interrupt92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp93.i = icmp ugt i32 %88, 1
  br i1 %cmp93.i, label %do.end98.i, label %land.lhs.true91.i.if.end102.i_crit_edge

land.lhs.true91.i.if.end102.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i

do.end98.i:                                       ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #15
  %call101.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %86) #16
  br label %if.end102.i

if.end102.i:                                      ; preds = %do.end98.i, %land.lhs.true91.i.if.end102.i_crit_edge, %if.end88.i.if.end102.i_crit_edge
  %done_first_interrupt103.i = getelementptr inbounds %struct.saa7164_port, ptr %44, i32 0, i32 71
  %89 = ptrtoint ptr %done_first_interrupt103.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %done_first_interrupt103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp104.i = icmp eq i32 %90, 1
  br i1 %cmp104.i, label %if.then106.i, label %if.end102.i.if.end107_crit_edge

if.end102.i.if.end107_crit_edge:                  ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then106.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %done_first_interrupt103.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %done_first_interrupt103.i, align 4
  br label %if.end107

if.then104:                                       ; preds = %if.then96
  %cpu.i220 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 5
  %92 = ptrtoint ptr %cpu.i220 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cpu.i220, align 4
  %actual_size.i221 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 12
  %94 = ptrtoint ptr %actual_size.i221 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %actual_size.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp31.not.i = icmp eq i32 %95, 0
  br i1 %cmp31.not.i, label %if.then104.if.end107_crit_edge, label %if.then104.for.body.i224_crit_edge

if.then104.for.body.i224_crit_edge:               ; preds = %if.then104
  br label %for.body.i224

if.then104.if.end107_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

for.body.i224:                                    ; preds = %for.inc.i229.for.body.i224_crit_edge, %if.then104.for.body.i224_crit_edge
  %i.032.i = phi i32 [ %add.i227, %for.inc.i229.for.body.i224_crit_edge ], [ 0, %if.then104.for.body.i224_crit_edge ]
  %add.ptr.i222 = getelementptr i8, ptr %93, i32 %i.032.i
  %96 = ptrtoint ptr %add.ptr.i222 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr.i222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp2.not.i223 = icmp eq i8 %97, 0
  br i1 %cmp2.not.i223, label %lor.lhs.false.i, label %for.body.i224.do.end.i226_crit_edge

for.body.i224.do.end.i226_crit_edge:              ; preds = %for.body.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i226

lor.lhs.false.i:                                  ; preds = %for.body.i224
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i222, i32 1
  %98 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp7.not.i = icmp eq i8 %99, 0
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.do.end.i226_crit_edge

lor.lhs.false.i.do.end.i226_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i226

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i222, i32 2
  %100 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp13.not.i = icmp eq i8 %101, 1
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %lor.lhs.false9.i.do.end.i226_crit_edge

lor.lhs.false9.i.do.end.i226_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i226

lor.lhs.false15.i:                                ; preds = %lor.lhs.false9.i
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i222, i32 3
  %102 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add.ptr17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %103)
  %cmp19.not.i = icmp eq i8 %103, -70
  br i1 %cmp19.not.i, label %lor.lhs.false15.i.for.inc.i229_crit_edge, label %lor.lhs.false15.i.do.end.i226_crit_edge

lor.lhs.false15.i.do.end.i226_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i226

lor.lhs.false15.i.for.inc.i229_crit_edge:         ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i229

do.end.i226:                                      ; preds = %lor.lhs.false15.i.do.end.i226_crit_edge, %lor.lhs.false9.i.do.end.i226_crit_edge, %lor.lhs.false.i.do.end.i226_crit_edge, %for.body.i224.do.end.i226_crit_edge
  %call.i225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %i.032.i) #16
  br label %for.inc.i229

for.inc.i229:                                     ; preds = %do.end.i226, %lor.lhs.false15.i.for.inc.i229_crit_edge
  %add.i227 = add i32 %i.032.i, 2048
  %104 = ptrtoint ptr %actual_size.i221 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %actual_size.i221, align 4
  %cmp.i228 = icmp ult i32 %add.i227, %105
  br i1 %cmp.i228, label %for.inc.i229.for.body.i224_crit_edge, label %for.inc.i229.if.end107_crit_edge

for.inc.i229.if.end107_crit_edge:                 ; preds = %for.inc.i229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

for.inc.i229.for.body.i224_crit_edge:             ; preds = %for.inc.i229
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i224

if.end107:                                        ; preds = %for.inc.i229.if.end107_crit_edge, %if.then104.if.end107_crit_edge, %if.then106.i, %if.end102.i.if.end107_crit_edge, %if.then96.if.end107_crit_edge, %if.end90.if.end107_crit_edge
  %list_buf_free = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 61
  %106 = ptrtoint ptr %list_buf_free to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %list_buf_free, align 4
  %cmp.i231.not = icmp eq ptr %107, %list_buf_free
  br i1 %cmp.i231.not, label %do.end144, label %if.then111

if.then111:                                       ; preds = %if.end107
  %actual_size118 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 12
  %108 = ptrtoint ptr %actual_size118 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %actual_size118, align 4
  %actual_size119 = getelementptr inbounds %struct.saa7164_user_buffer, ptr %107, i32 0, i32 3
  %110 = ptrtoint ptr %actual_size119 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %actual_size119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp120.not = icmp ugt i32 %109, %111
  br i1 %cmp120.not, label %do.end137, label %if.then122

if.then122:                                       ; preds = %if.then111
  %data = getelementptr inbounds %struct.saa7164_user_buffer, ptr %107, i32 0, i32 1
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 4
  %cpu123 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 5
  %114 = ptrtoint ptr %cpu123 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cpu123, align 4
  %116 = call ptr @memcpy(ptr %113, ptr %115, i32 %111)
  %117 = load i32, ptr @crc_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool125.not = icmp eq i32 %117, 0
  br i1 %tobool125.not, label %if.then122.if.end131_crit_edge, label %if.then126

if.then122.if.end131_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.then126:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data, align 4
  %120 = ptrtoint ptr %actual_size119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %actual_size119, align 4
  %call129 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %119, i32 noundef %121) #18
  %crc130 = getelementptr inbounds %struct.saa7164_user_buffer, ptr %107, i32 0, i32 4
  %122 = ptrtoint ptr %crc130 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call129, ptr %crc130, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %if.then122.if.end131_crit_edge
  %pos = getelementptr inbounds %struct.saa7164_user_buffer, ptr %107, i32 0, i32 2
  %123 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %pos, align 4
  %list_buf_used = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 60
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %107) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end131.__list_del_entry.exit.i_crit_edge

if.end131.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i, align 4
  %126 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %107, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end131.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 60, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %107, ptr noundef %131, ptr noundef %list_buf_used) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %107, ptr %prev.i2.i, align 4
  %133 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %list_buf_used, ptr %107, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %134 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %107, ptr %131, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %wait_read = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 62
  tail call void @__wake_up(ptr noundef %wait_read, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end147

do.end137:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %c.0) #16
  br label %if.end147

do.end144:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #16
  br label %if.end147

if.end147:                                        ; preds = %do.end144, %do.end137, %list_move_tail.exit
  %call148 = tail call i32 @saa7164_buffer_zero_offsets(ptr noundef %port, i32 noundef %bufnr) #13
  %cpu149 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 5
  %136 = ptrtoint ptr %cpu149 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cpu149, align 4
  %pci_size = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 4
  %138 = ptrtoint ptr %pci_size to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pci_size, align 4
  %140 = call ptr @memset(ptr %137, i32 255, i32 %139)
  %141 = load i32, ptr @crc_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool150.not = icmp eq i32 %141, 0
  br i1 %tobool150.not, label %if.end147.for.end_crit_edge, label %if.then151

if.end147.for.end_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %cpu149 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cpu149, align 4
  %actual_size153 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 12
  %144 = ptrtoint ptr %actual_size153 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %actual_size153, align 4
  %call154 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %143, i32 noundef %145) #18
  %crc155 = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0, i32 0, i32 7
  %146 = ptrtoint ptr %crc155 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call154, ptr %crc155, align 4
  br label %for.end

for.end:                                          ; preds = %if.then151, %if.end147.for.end_crit_edge, %do.end, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_buffer_zero_offsets(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_irq_ts(ptr noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %bufcounter = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 5
  %4 = ptrtoint ptr %bufcounter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufcounter, align 4
  %shr = lshr i32 %5, 2
  %add.ptr = getelementptr i32, ptr %3, i32 %shr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !605
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !642
  %buffercount = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  %8 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buffercount, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp slt i32 %7, %conv
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !635

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #13, !srcloc !643
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp eq i32 %6, 0
  %conv. = select i1 %cmp11, i32 %conv, i32 %7
  %rp.0 = add i32 %conv., -1
  %dmaqueue = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %10 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmaqueue, align 8
  %cmp.i.not4 = icmp eq ptr %11, %dmaqueue
  br i1 %cmp.i.not4, label %do.end10.for.end_crit_edge, label %for.body.preheader

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %do.end10
  %12 = add nuw nsw i32 %conv, 1
  br label %for.body

for.cond:                                         ; preds = %do.end50
  %13 = ptrtoint ptr %c.06 to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.07 = load ptr, ptr %c.06, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %cmp.i.not = icmp eq ptr %n.07, %dmaqueue
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %c.06 = phi ptr [ %n.07, %for.cond.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.05, i32 %12)
  %exitcond = icmp eq i32 %i.05, %12
  br i1 %exitcond, label %do.body42, label %do.end50, !prof !636

do.body42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 591, 0\0A.popsection", ""() #13, !srcloc !644
  unreachable

do.end50:                                         ; preds = %for.body
  %idx = getelementptr inbounds %struct.saa7164_buffer, ptr %c.06, i32 0, i32 1
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %rp.0)
  %cmp51 = icmp eq i32 %15, %rp.0
  br i1 %cmp51, label %do.body54, label %for.cond

do.body54:                                        ; preds = %do.end50
  %16 = load i32, ptr @saa_debug, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %do.body54.do.end64_crit_edge, label %do.end59

do.body54.do.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end64

do.end59:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name, ptr noundef nonnull @.str.179, i32 noundef %7, i32 noundef %rp.0) #16
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body54.do.end64_crit_edge
  %port1.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.06, i32 0, i32 2
  %17 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port1.i, align 4
  %demux.i = getelementptr inbounds %struct.saa7164_port, ptr %18, i32 0, i32 31, i32 3
  %cpu.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.06, i32 0, i32 5
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpu.i, align 4
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux.i, ptr noundef %20, i32 noundef 312) #13
  br label %for.end

for.end:                                          ; preds = %do.end64, %for.cond.for.end_crit_edge, %do.end10.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_irq_encoder(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %last_irq_msecs = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 15
  %2 = ptrtoint ptr %last_irq_msecs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_irq_msecs, align 8
  %last_irq_msecs_diff = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 17
  %4 = ptrtoint ptr %last_irq_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %last_irq_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %5) #13
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %last_irq_msecs to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %last_irq_msecs, align 8
  %7 = ptrtoint ptr %last_irq_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_irq_msecs_diff, align 8
  %sub = sub i64 %conv, %8
  store i64 %sub, ptr %last_irq_msecs_diff, align 8
  %conv7 = trunc i64 %sub to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc7.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.saa7164_port, ptr %port, i32 0, i32 26, i32 1, i32 %i.015.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv7)
  %cmp2.not.i = icmp ult i32 %10, %conv7
  br i1 %cmp2.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %count.i = getelementptr %struct.saa7164_port, ptr %port, i32 0, i32 26, i32 1, i32 %i.015.i, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %conv.i = zext i32 %13 to i64
  %update_time.i = getelementptr %struct.saa7164_port, ptr %port, i32 0, i32 26, i32 1, i32 %i.015.i, i32 2
  %14 = ptrtoint ptr %update_time.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %update_time.i, align 8
  br label %saa7164_histogram_update.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc7.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.saa7164_histogram_update.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.saa7164_histogram_update.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_histogram_update.exit

saa7164_histogram_update.exit:                    ; preds = %for.inc.i.saa7164_histogram_update.exit_crit_edge, %if.then.i
  %15 = load i32, ptr @saa_debug, align 4
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %saa7164_histogram_update.exit.do.end12_crit_edge, label %do.end

saa7164_histogram_update.exit.do.end12_crit_edge: ; preds = %saa7164_histogram_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.end:                                           ; preds = %saa7164_histogram_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %last_irq_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last_irq_msecs_diff, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name, ptr noundef nonnull @.str.181, i64 noundef %17) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end, %saa7164_histogram_update.exit.do.end12_crit_edge
  %workenc = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %workenc) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_irq_vbi(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %last_irq_msecs = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 15
  %2 = ptrtoint ptr %last_irq_msecs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_irq_msecs, align 8
  %last_irq_msecs_diff = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 17
  %4 = ptrtoint ptr %last_irq_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %last_irq_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %5) #13
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %last_irq_msecs to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %last_irq_msecs, align 8
  %7 = ptrtoint ptr %last_irq_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_irq_msecs_diff, align 8
  %sub = sub i64 %conv, %8
  store i64 %sub, ptr %last_irq_msecs_diff, align 8
  %conv7 = trunc i64 %sub to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc7.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.saa7164_port, ptr %port, i32 0, i32 26, i32 1, i32 %i.015.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv7)
  %cmp2.not.i = icmp ult i32 %10, %conv7
  br i1 %cmp2.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %count.i = getelementptr %struct.saa7164_port, ptr %port, i32 0, i32 26, i32 1, i32 %i.015.i, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %conv.i = zext i32 %13 to i64
  %update_time.i = getelementptr %struct.saa7164_port, ptr %port, i32 0, i32 26, i32 1, i32 %i.015.i, i32 2
  %14 = ptrtoint ptr %update_time.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %update_time.i, align 8
  br label %saa7164_histogram_update.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc7.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.saa7164_histogram_update.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.saa7164_histogram_update.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %saa7164_histogram_update.exit

saa7164_histogram_update.exit:                    ; preds = %for.inc.i.saa7164_histogram_update.exit_crit_edge, %if.then.i
  %15 = load i32, ptr @saa_debug, align 4
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %saa7164_histogram_update.exit.do.end12_crit_edge, label %do.end

saa7164_histogram_update.exit.do.end12_crit_edge: ; preds = %saa7164_histogram_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.end:                                           ; preds = %saa7164_histogram_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %last_irq_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last_irq_msecs_diff, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name, ptr noundef nonnull @.str.182, i64 noundef %17) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end, %saa7164_histogram_update.exit.do.end12_crit_edge
  %workenc = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %workenc) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_irq_dequeue(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_collect_debug(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_get_load_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_dvb_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_encoder_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_vbi_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_i2c_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @saa7164_sops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @saa7164_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @devlist, i32 noundef 0) #13
  %dev.010 = load ptr, ptr @saa7164_devlist, align 4
  %cmp.not11 = icmp eq ptr %dev.010, @saa7164_devlist
  br i1 %cmp.not11, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %dec = add i64 %index.012, -1
  %2 = ptrtoint ptr %dev.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %dev.0 = load ptr, ptr %dev.013, align 4
  %cmp.not = icmp eq ptr %dev.0, @saa7164_devlist
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.013 = phi ptr [ %dev.0, %for.cond.for.body_crit_edge ], [ %dev.010, %entry.for.body_crit_edge ]
  %index.012 = phi i64 [ %dec, %for.cond.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %index.012)
  %cmp1 = icmp eq i64 %index.012, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %dev.013, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devlist) #13
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @saa7164_seq_stop(ptr nocapture noundef %s, ptr nocapture noundef %v) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @saa7164_seq_next(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %v, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devlist, i32 noundef 0) #13
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v, align 4
  %cmp.i.not = icmp eq ptr %1, @saa7164_devlist
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %1
  tail call void @mutex_unlock(ptr noundef nonnull @devlist) #13
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_seq_show(ptr noundef %m, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.294, ptr noundef %name, ptr noundef %v) #13
  %lock = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %m_dwSetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 7
  %0 = ptrtoint ptr %m_dwSetReadPos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_dwSetReadPos, align 4
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %shr = lshr i32 %1, 2
  %add.ptr = getelementptr i32, ptr %3, i32 %shr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !605
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.295, i32 noundef %1, i32 noundef %5) #13
  %m_dwSetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 6
  %6 = ptrtoint ptr %m_dwSetWritePos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_dwSetWritePos, align 4
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %shr7 = lshr i32 %7, 2
  %add.ptr8 = getelementptr i32, ptr %9, i32 %shr7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #13, !srcloc !605
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !646
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.296, i32 noundef %7, i32 noundef %11) #13
  %m_dwGetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 9
  %12 = ptrtoint ptr %m_dwGetReadPos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_dwGetReadPos, align 4
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %shr16 = lshr i32 %13, 2
  %add.ptr17 = getelementptr i32, ptr %15, i32 %shr16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #13, !srcloc !605
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !647
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.297, i32 noundef %13, i32 noundef %17) #13
  %m_dwGetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 8
  %18 = ptrtoint ptr %m_dwGetWritePos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_dwGetWritePos, align 4
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %shr25 = lshr i32 %19, 2
  %add.ptr26 = getelementptr i32, ptr %21, i32 %shr25
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #13, !srcloc !605
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !648
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.298, i32 noundef %19, i32 noundef %23) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.299) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.300) #13
  %m_dwSizeSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 3
  %24 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_dwSizeSetRing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp109.not = icmp eq i32 %25, 0
  br i1 %cmp109.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m_pdwSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc.for.body_crit_edge ]
  %c.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %c.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0110)
  %cmp30 = icmp eq i32 %c.0110, 0
  br i1 %cmp30, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.301, i32 noundef %i.0111) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %26 = ptrtoint ptr %m_pdwSetRing to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_pdwSetRing, align 4
  %add.ptr33 = getelementptr i8, ptr %27, i32 %i.0111
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #13, !srcloc !649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !650
  %conv = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.302, i32 noundef %conv) #13
  %inc = add i32 %c.0110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp37 = icmp eq i32 %inc, 16
  br i1 %cmp37, label %if.then39, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.303) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %if.end.for.inc_crit_edge
  %c.1 = phi i32 [ 0, %if.then39 ], [ %inc, %if.end.for.inc_crit_edge ]
  %inc41 = add nuw i32 %i.0111, 1
  %29 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_dwSizeSetRing, align 4
  %cmp = icmp ult i32 %inc41, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.304) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.300) #13
  %m_dwSizeGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 5
  %31 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_dwSizeGetRing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp43113.not = icmp eq i32 %32, 0
  br i1 %cmp43113.not, label %for.end.for.end64_crit_edge, label %for.body45.lr.ph

for.end.for.end64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end64

for.body45.lr.ph:                                 ; preds = %for.end
  %m_pdwGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %v, i32 0, i32 22, i32 4
  br label %for.body45

for.body45:                                       ; preds = %for.inc62.for.body45_crit_edge, %for.body45.lr.ph
  %i.1115 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc63, %for.inc62.for.body45_crit_edge ]
  %c.2114 = phi i32 [ 0, %for.body45.lr.ph ], [ %c.3, %for.inc62.for.body45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.2114)
  %cmp46 = icmp eq i32 %c.2114, 0
  br i1 %cmp46, label %if.then48, label %for.body45.if.end49_crit_edge

for.body45.if.end49_crit_edge:                    ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then48:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.301, i32 noundef %i.1115) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.body45.if.end49_crit_edge
  %33 = ptrtoint ptr %m_pdwGetRing to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m_pdwGetRing, align 4
  %add.ptr52 = getelementptr i8, ptr %34, i32 %i.1115
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr52) #13, !srcloc !649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !651
  %conv56 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.302, i32 noundef %conv56) #13
  %inc57 = add i32 %c.2114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc57)
  %cmp58 = icmp eq i32 %inc57, 16
  br i1 %cmp58, label %if.then60, label %if.end49.for.inc62_crit_edge

if.end49.for.inc62_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc62

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.303) #13
  br label %for.inc62

for.inc62:                                        ; preds = %if.then60, %if.end49.for.inc62_crit_edge
  %c.3 = phi i32 [ 0, %if.then60 ], [ %inc57, %if.end49.for.inc62_crit_edge ]
  %inc63 = add nuw i32 %i.1115, 1
  %36 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_dwSizeGetRing, align 4
  %cmp43 = icmp ult i32 %inc63, %37
  br i1 %cmp43, label %for.inc62.for.body45_crit_edge, label %for.inc62.for.end64_crit_edge

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end64

for.inc62.for.body45_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body45

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %for.end.for.end64_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !122, !123, !124, !125, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !142, !144, !146, !148, !149, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !209, !211, !212, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !237, !238, !239, !240, !242, !243, !244, !245, !246, !248, !250, !251, !252, !254, !255, !257, !259, !260, !262, !263, !265, !266, !268, !270, !272, !274, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !358, !359, !361, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !382, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !396, !398, !399, !400, !402, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !418, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !474, !476, !477, !479, !480, !482, !483, !485, !486, !487, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !515, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !545, !547, !548, !549, !551, !552, !553, !555, !557, !558, !559, !560, !562, !563, !564, !566, !567, !568, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593}
!llvm.named.register.sp = !{!595}
!llvm.module.flags = !{!596, !597, !598, !599, !600, !601, !602, !603}
!llvm.ident = !{!604}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file387, !5, !"__UNIQUE_ID_file387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license388, !5, !"__UNIQUE_ID_license388", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype389, !8, !"__UNIQUE_ID_debugtype389", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug390, !11, !"__UNIQUE_ID_debug390", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 37, i32 1}
!12 = !{ptr @__param_fw_debug, !13, !"__param_fw_debug", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 40, i32 1}
!14 = !{ptr @__UNIQUE_ID_fw_debugtype391, !13, !"__UNIQUE_ID_fw_debugtype391", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_fw_debug392, !16, !"__UNIQUE_ID_fw_debug392", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 41, i32 1}
!17 = !{ptr @encoder_buffers, !18, !"encoder_buffers", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 43, i32 14}
!19 = !{ptr @__param_encoder_buffers, !20, !"__param_encoder_buffers", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 44, i32 1}
!21 = !{ptr @__UNIQUE_ID_encoder_bufferstype393, !20, !"__UNIQUE_ID_encoder_bufferstype393", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_encoder_buffers394, !23, !"__UNIQUE_ID_encoder_buffers394", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 45, i32 1}
!24 = !{ptr @vbi_buffers, !25, !"vbi_buffers", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 47, i32 14}
!26 = !{ptr @__param_vbi_buffers, !27, !"__param_vbi_buffers", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 48, i32 1}
!28 = !{ptr @__UNIQUE_ID_vbi_bufferstype395, !27, !"__UNIQUE_ID_vbi_bufferstype395", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_vbi_buffers396, !30, !"__UNIQUE_ID_vbi_buffers396", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 49, i32 1}
!31 = !{ptr @waitsecs, !32, !"waitsecs", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 51, i32 14}
!33 = !{ptr @__param_waitsecs, !34, !"__param_waitsecs", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 52, i32 1}
!35 = !{ptr @__UNIQUE_ID_waitsecstype397, !34, !"__UNIQUE_ID_waitsecstype397", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_waitsecs398, !37, !"__UNIQUE_ID_waitsecs398", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 53, i32 1}
!38 = !{ptr @__param_card, !39, !"__param_card", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 56, i32 1}
!40 = !{ptr @__UNIQUE_ID_cardtype399, !39, !"__UNIQUE_ID_cardtype399", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_card400, !42, !"__UNIQUE_ID_card400", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 57, i32 1}
!43 = !{ptr @__param_print_histogram, !44, !"__param_print_histogram", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 60, i32 1}
!45 = !{ptr @__UNIQUE_ID_print_histogramtype401, !44, !"__UNIQUE_ID_print_histogramtype401", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_print_histogram402, !47, !"__UNIQUE_ID_print_histogram402", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 61, i32 1}
!48 = !{ptr @crc_checking, !49, !"crc_checking", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 63, i32 14}
!50 = !{ptr @__param_crc_checking, !51, !"__param_crc_checking", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 64, i32 1}
!52 = !{ptr @__UNIQUE_ID_crc_checkingtype403, !51, !"__UNIQUE_ID_crc_checkingtype403", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_crc_checking404, !54, !"__UNIQUE_ID_crc_checking404", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 65, i32 1}
!55 = !{ptr @__param_guard_checking, !56, !"__param_guard_checking", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 68, i32 1}
!57 = !{ptr @__UNIQUE_ID_guard_checkingtype405, !56, !"__UNIQUE_ID_guard_checkingtype405", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_guard_checking406, !59, !"__UNIQUE_ID_guard_checking406", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 69, i32 1}
!60 = !{ptr @__param_enable_msi, !61, !"__param_enable_msi", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 73, i32 1}
!62 = !{ptr @__UNIQUE_ID_enable_msitype407, !61, !"__UNIQUE_ID_enable_msitype407", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_enable_msi408, !64, !"__UNIQUE_ID_enable_msi408", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 74, i32 1}
!65 = !{ptr @saa7164_devlist, !66, !"saa7164_devlist", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 80, i32 1}
!67 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 723, i32 2}
!69 = !{ptr @.str.1, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.2, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @saa7164_getfirmwarestatus._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @saa7164_getfirmwarestatus._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.4, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 724, i32 2}
!75 = !{ptr @saa7164_getfirmwarestatus._entry.3, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @saa7164_getfirmwarestatus._entry_ptr.5, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 725, i32 2}
!79 = !{ptr @saa7164_getfirmwarestatus._entry.6, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @saa7164_getfirmwarestatus._entry_ptr.8, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 726, i32 2}
!83 = !{ptr @saa7164_getfirmwarestatus._entry.9, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @saa7164_getfirmwarestatus._entry_ptr.11, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.13, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 727, i32 2}
!87 = !{ptr @saa7164_getfirmwarestatus._entry.12, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @saa7164_getfirmwarestatus._entry_ptr.14, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.16, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 728, i32 2}
!91 = !{ptr @saa7164_getfirmwarestatus._entry.15, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @saa7164_getfirmwarestatus._entry_ptr.17, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.19, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 729, i32 2}
!95 = !{ptr @saa7164_getfirmwarestatus._entry.18, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @saa7164_getfirmwarestatus._entry_ptr.20, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 737, i32 2}
!99 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @saa7164_getcurrentfirmwareversion._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @saa7164_getcurrentfirmwareversion._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 752, i32 2}
!104 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @saa7164_dumpregs._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @saa7164_dumpregs._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 755, i32 3}
!109 = !{ptr @saa7164_dumpregs._entry.25, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @saa7164_dumpregs._entry_ptr.27, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @__initcall__kmod_saa7164__409_1552_saa7164_init6, !112, !"__initcall__kmod_saa7164__409_1552_saa7164_init6", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1552, i32 1}
!113 = !{ptr @__exitcall_saa7164_fini, !114, !"__exitcall_saa7164_fini", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1553, i32 1}
!115 = !{ptr @saa_debug, !116, !"saa_debug", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 35, i32 14}
!117 = !{ptr @fw_debug, !118, !"fw_debug", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 39, i32 21}
!119 = !{ptr @saa7614_dentry, !120, !"saa7614_dentry", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1151, i32 23}
!121 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!122 = !{ptr @__param_str_fw_debug, !13, !"__param_str_fw_debug", i1 false, i1 false}
!123 = !{ptr @__param_str_encoder_buffers, !20, !"__param_str_encoder_buffers", i1 false, i1 false}
!124 = !{ptr @__param_str_vbi_buffers, !27, !"__param_str_vbi_buffers", i1 false, i1 false}
!125 = !{ptr @__param_str_waitsecs, !34, !"__param_str_waitsecs", i1 false, i1 false}
!126 = !{ptr @__param_str_card, !39, !"__param_str_card", i1 false, i1 false}
!127 = !{ptr @__param_arr_card, !39, !"__param_arr_card", i1 false, i1 false}
!128 = !{ptr @card, !129, !"card", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 55, i32 21}
!130 = !{ptr @__param_str_print_histogram, !44, !"__param_str_print_histogram", i1 false, i1 false}
!131 = !{ptr @print_histogram, !132, !"print_histogram", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 59, i32 21}
!133 = !{ptr @__param_str_crc_checking, !51, !"__param_str_crc_checking", i1 false, i1 false}
!134 = !{ptr @__param_str_guard_checking, !56, !"__param_str_guard_checking", i1 false, i1 false}
!135 = !{ptr @guard_checking, !136, !"guard_checking", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 67, i32 21}
!137 = !{ptr @__param_str_enable_msi, !61, !"__param_str_enable_msi", i1 false, i1 false}
!138 = !{ptr @enable_msi, !139, !"enable_msi", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 72, i32 13}
!140 = !{ptr @.str.28, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1526, i32 14}
!142 = !{ptr @saa7164_pci_driver, !143, !"saa7164_pci_driver", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1525, i32 26}
!144 = !{ptr @saa7164_pci_tbl, !145, !"saa7164_pci_tbl", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1512, i32 35}
!146 = !{ptr @.str.29, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1249, i32 3}
!148 = !{ptr @.str.30, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.31, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.32, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @saa7164_initdev._entry, !147, !"_entry", i1 false, i1 false}
!152 = !{ptr @saa7164_initdev._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.34, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1268, i32 2}
!155 = !{ptr @saa7164_initdev._entry.33, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @saa7164_initdev._entry_ptr.35, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.37, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1278, i32 3}
!159 = !{ptr @saa7164_initdev._entry.36, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @saa7164_initdev._entry_ptr.38, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.40, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1293, i32 4}
!163 = !{ptr @saa7164_initdev._entry.39, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @saa7164_initdev._entry_ptr.41, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @saa7164_initdev.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1306, i32 3}
!167 = !{ptr @.str.42, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @saa7164_initdev.__key.43, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1307, i32 3}
!170 = !{ptr @.str.44, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @saa7164_initdev.__key.45, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1311, i32 2}
!173 = !{ptr @.str.46, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.48, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1318, i32 4}
!176 = !{ptr @saa7164_initdev._entry.47, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @saa7164_initdev._entry_ptr.49, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.51, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1329, i32 4}
!180 = !{ptr @saa7164_initdev._entry.50, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @saa7164_initdev._entry_ptr.52, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.54, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1338, i32 4}
!184 = !{ptr @saa7164_initdev._entry.53, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @saa7164_initdev._entry_ptr.55, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.57, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1345, i32 4}
!188 = !{ptr @saa7164_initdev._entry.56, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @saa7164_initdev._entry_ptr.58, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.60, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1366, i32 5}
!192 = !{ptr @saa7164_initdev._entry.59, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @saa7164_initdev._entry_ptr.61, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1373, i32 5}
!196 = !{ptr @saa7164_initdev._entry.62, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @saa7164_initdev._entry_ptr.64, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.66, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1380, i32 5}
!200 = !{ptr @saa7164_initdev._entry.65, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @saa7164_initdev._entry_ptr.67, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @saa7164_initdev._entry.68, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1387, i32 5}
!204 = !{ptr @saa7164_initdev._entry_ptr.69, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1394, i32 5}
!207 = !{ptr @saa7164_initdev._entry.70, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @saa7164_initdev._entry_ptr.72, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @saa7164_initdev._entry.73, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1401, i32 5}
!211 = !{ptr @saa7164_initdev._entry_ptr.74, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1408, i32 19}
!214 = !{ptr @.str.77, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1412, i32 5}
!216 = !{ptr @saa7164_initdev._entry.76, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @saa7164_initdev._entry_ptr.78, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.80, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1419, i32 3}
!220 = !{ptr @saa7164_initdev._entry.79, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @saa7164_initdev._entry_ptr.81, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1422, i32 2}
!224 = !{ptr @saa7164_initdev._entry.82, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @saa7164_initdev._entry_ptr.84, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.86, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1423, i32 2}
!228 = !{ptr @saa7164_initdev._entry.85, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @saa7164_initdev._entry_ptr.87, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @saa7164_dev_setup.__key, !231, !"__key", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 946, i32 2}
!232 = !{ptr @.str.88, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.89, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 950, i32 41}
!235 = !{ptr @.str.90, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 992, i32 3}
!237 = !{ptr @.str.91, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @saa7164_dev_setup._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @saa7164_dev_setup._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.93, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1014, i32 2}
!242 = !{ptr @saa7164_dev_setup._entry.92, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @saa7164_dev_setup._entry_ptr.94, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.95, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.96, !241, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @saa7164_devcount, !247, !"saa7164_devcount", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 77, i32 21}
!248 = !{ptr @.str.97, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 79, i32 8}
!250 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @devlist, !249, !"devlist", i1 false, i1 false}
!252 = !{ptr @saa7164_port_init.__key, !253, !"__key", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 911, i32 3}
!254 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @saa7164_port_init.__key.100, !256, !"__key", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 916, i32 3}
!257 = !{ptr @saa7164_port_init.__key.101, !258, !"__key", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 921, i32 2}
!259 = !{ptr @.str.102, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @saa7164_port_init.__key.103, !261, !"__key", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 923, i32 2}
!262 = !{ptr @.str.104, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @saa7164_port_init.__key.105, !264, !"__key", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 927, i32 2}
!265 = !{ptr @.str.106, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.107, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 930, i32 47}
!268 = !{ptr @.str.108, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 931, i32 47}
!270 = !{ptr @.str.109, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 933, i32 3}
!272 = !{ptr @.str.110, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 935, i32 3}
!274 = !{ptr @.str.111, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 937, i32 3}
!276 = !{ptr @.str.112, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 372, i32 2}
!278 = !{ptr @.str.113, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @saa7164_work_enchandler._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @saa7164_work_enchandler._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.115, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 384, i32 3}
!283 = !{ptr @saa7164_work_enchandler._entry.114, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @saa7164_work_enchandler._entry_ptr.116, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 402, i32 4}
!287 = !{ptr @saa7164_work_enchandler._entry.117, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @saa7164_work_enchandler._entry_ptr.119, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.120, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 259, i32 4}
!291 = !{ptr @.str.121, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @saa7164_work_enchandler_helper._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @saa7164_work_enchandler_helper._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.123, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 267, i32 4}
!296 = !{ptr @saa7164_work_enchandler_helper._entry.122, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @saa7164_work_enchandler_helper._entry_ptr.124, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.126, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 284, i32 7}
!300 = !{ptr @saa7164_work_enchandler_helper._entry.125, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @saa7164_work_enchandler_helper._entry_ptr.127, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.129, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 327, i32 6}
!304 = !{ptr @saa7164_work_enchandler_helper._entry.128, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @saa7164_work_enchandler_helper._entry_ptr.130, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.132, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 331, i32 5}
!308 = !{ptr @saa7164_work_enchandler_helper._entry.131, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @saa7164_work_enchandler_helper._entry_ptr.133, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.134, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 128, i32 5}
!312 = !{ptr @.str.135, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @saa7164_ts_verifier._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @saa7164_ts_verifier._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.137, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 138, i32 5}
!317 = !{ptr @saa7164_ts_verifier._entry.136, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @saa7164_ts_verifier._entry_ptr.138, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.140, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 153, i32 3}
!321 = !{ptr @saa7164_ts_verifier._entry.139, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @saa7164_ts_verifier._entry_ptr.141, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.143, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 156, i32 3}
!325 = !{ptr @saa7164_ts_verifier._entry.142, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @saa7164_ts_verifier._entry_ptr.144, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 159, i32 3}
!329 = !{ptr @saa7164_ts_verifier._entry.145, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @saa7164_ts_verifier._entry_ptr.147, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 93, i32 4}
!333 = !{ptr @.str.149, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @saa7164_pack_verifier._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @saa7164_pack_verifier._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.150, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 230, i32 2}
!338 = !{ptr @.str.151, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @saa7164_histogram_print._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @saa7164_histogram_print._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 235, i32 3}
!343 = !{ptr @saa7164_histogram_print._entry.152, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @saa7164_histogram_print._entry_ptr.154, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.156, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 242, i32 2}
!347 = !{ptr @saa7164_histogram_print._entry.155, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @saa7164_histogram_print._entry_ptr.157, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.158, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 448, i32 2}
!351 = !{ptr @saa7164_work_vbihandler._entry, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @saa7164_work_vbihandler._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @saa7164_work_vbihandler._entry.159, !354, !"_entry", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 460, i32 3}
!355 = !{ptr @saa7164_work_vbihandler._entry_ptr.160, !354, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @saa7164_work_vbihandler._entry.161, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 478, i32 4}
!358 = !{ptr @saa7164_work_vbihandler._entry_ptr.162, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.163, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 885, i32 2}
!361 = !{ptr @.str.164, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @get_resources._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @get_resources._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.165, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1208, i32 3}
!366 = !{ptr @.str.166, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @saa7164_enable_msi._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @saa7164_enable_msi._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.168, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1216, i32 3}
!371 = !{ptr @saa7164_enable_msi._entry.167, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @saa7164_enable_msi._entry_ptr.169, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.171, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1227, i32 3}
!375 = !{ptr @saa7164_enable_msi._entry.170, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @saa7164_enable_msi._entry_ptr.172, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.173, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 616, i32 3}
!379 = !{ptr @.str.174, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @saa7164_irq._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @saa7164_irq._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.176, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 696, i32 6}
!384 = !{ptr @saa7164_irq._entry.175, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @saa7164_irq._entry_ptr.177, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.178, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 596, i32 4}
!388 = !{ptr @.str.179, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @saa7164_irq_ts._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @saa7164_irq_ts._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.180, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 562, i32 2}
!393 = !{ptr @.str.181, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @saa7164_irq_encoder._entry, !392, !"_entry", i1 false, i1 false}
!395 = !{ptr @saa7164_irq_encoder._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.182, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 537, i32 2}
!398 = !{ptr @saa7164_irq_vbi._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @saa7164_irq_vbi._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.183, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 854, i32 3}
!402 = !{ptr @.str.184, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @saa7164_get_descriptors._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @saa7164_get_descriptors._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.186, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 855, i32 3}
!407 = !{ptr @saa7164_get_descriptors._entry.185, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @saa7164_get_descriptors._entry_ptr.187, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.189, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 861, i32 3}
!411 = !{ptr @saa7164_get_descriptors._entry.188, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @saa7164_get_descriptors._entry_ptr.190, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @saa7164_get_descriptors._entry.191, !414, !"_entry", i1 false, i1 false}
!414 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 862, i32 3}
!415 = !{ptr @saa7164_get_descriptors._entry_ptr.192, !414, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.193, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 778, i32 2}
!418 = !{ptr @.str.194, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @saa7164_dump_hwdesc._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @saa7164_dump_hwdesc._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.196, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 781, i32 2}
!423 = !{ptr @saa7164_dump_hwdesc._entry.195, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @saa7164_dump_hwdesc._entry_ptr.197, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.199, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 782, i32 2}
!427 = !{ptr @saa7164_dump_hwdesc._entry.198, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @saa7164_dump_hwdesc._entry_ptr.200, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.202, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 783, i32 2}
!431 = !{ptr @saa7164_dump_hwdesc._entry.201, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @saa7164_dump_hwdesc._entry_ptr.203, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.205, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 786, i32 2}
!435 = !{ptr @saa7164_dump_hwdesc._entry.204, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @saa7164_dump_hwdesc._entry_ptr.206, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.208, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 787, i32 2}
!439 = !{ptr @saa7164_dump_hwdesc._entry.207, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @saa7164_dump_hwdesc._entry_ptr.209, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.211, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 788, i32 2}
!443 = !{ptr @saa7164_dump_hwdesc._entry.210, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @saa7164_dump_hwdesc._entry_ptr.212, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.214, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 789, i32 2}
!447 = !{ptr @saa7164_dump_hwdesc._entry.213, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @saa7164_dump_hwdesc._entry_ptr.215, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.217, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 790, i32 2}
!451 = !{ptr @saa7164_dump_hwdesc._entry.216, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @saa7164_dump_hwdesc._entry_ptr.218, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.220, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 793, i32 2}
!455 = !{ptr @saa7164_dump_hwdesc._entry.219, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @saa7164_dump_hwdesc._entry_ptr.221, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.223, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 796, i32 2}
!459 = !{ptr @saa7164_dump_hwdesc._entry.222, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @saa7164_dump_hwdesc._entry_ptr.224, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.226, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 799, i32 2}
!463 = !{ptr @saa7164_dump_hwdesc._entry.225, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @saa7164_dump_hwdesc._entry_ptr.227, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.229, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 802, i32 2}
!467 = !{ptr @saa7164_dump_hwdesc._entry.228, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @saa7164_dump_hwdesc._entry_ptr.230, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.231, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 808, i32 2}
!471 = !{ptr @.str.232, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @saa7164_dump_intfdesc._entry, !470, !"_entry", i1 false, i1 false}
!473 = !{ptr @saa7164_dump_intfdesc._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @saa7164_dump_intfdesc._entry.233, !475, !"_entry", i1 false, i1 false}
!475 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 811, i32 2}
!476 = !{ptr @saa7164_dump_intfdesc._entry_ptr.234, !475, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @saa7164_dump_intfdesc._entry.235, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 812, i32 2}
!479 = !{ptr @saa7164_dump_intfdesc._entry_ptr.236, !478, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @saa7164_dump_intfdesc._entry.237, !481, !"_entry", i1 false, i1 false}
!481 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 813, i32 2}
!482 = !{ptr @saa7164_dump_intfdesc._entry_ptr.238, !481, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.240, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 816, i32 2}
!485 = !{ptr @saa7164_dump_intfdesc._entry.239, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @saa7164_dump_intfdesc._entry_ptr.241, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.243, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 817, i32 2}
!489 = !{ptr @saa7164_dump_intfdesc._entry.242, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @saa7164_dump_intfdesc._entry_ptr.244, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.246, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 818, i32 2}
!493 = !{ptr @saa7164_dump_intfdesc._entry.245, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @saa7164_dump_intfdesc._entry_ptr.247, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.249, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 819, i32 2}
!497 = !{ptr @saa7164_dump_intfdesc._entry.248, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @saa7164_dump_intfdesc._entry_ptr.250, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.252, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 820, i32 2}
!501 = !{ptr @saa7164_dump_intfdesc._entry.251, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @saa7164_dump_intfdesc._entry_ptr.253, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.255, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 821, i32 2}
!505 = !{ptr @saa7164_dump_intfdesc._entry.254, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @saa7164_dump_intfdesc._entry_ptr.256, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.258, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 824, i32 2}
!509 = !{ptr @saa7164_dump_intfdesc._entry.257, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @saa7164_dump_intfdesc._entry_ptr.259, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.260, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 829, i32 2}
!513 = !{ptr @.str.261, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @saa7164_dump_busdesc._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @saa7164_dump_busdesc._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.263, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 832, i32 2}
!518 = !{ptr @saa7164_dump_busdesc._entry.262, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @saa7164_dump_busdesc._entry_ptr.264, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.266, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 833, i32 2}
!522 = !{ptr @saa7164_dump_busdesc._entry.265, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @saa7164_dump_busdesc._entry_ptr.267, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.269, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 834, i32 2}
!526 = !{ptr @saa7164_dump_busdesc._entry.268, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @saa7164_dump_busdesc._entry_ptr.270, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.272, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 835, i32 2}
!530 = !{ptr @saa7164_dump_busdesc._entry.271, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @saa7164_dump_busdesc._entry_ptr.273, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.275, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 836, i32 2}
!534 = !{ptr @saa7164_dump_busdesc._entry.274, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @saa7164_dump_busdesc._entry_ptr.276, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.278, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 837, i32 2}
!538 = !{ptr @saa7164_dump_busdesc._entry.277, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @saa7164_dump_busdesc._entry_ptr.279, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.280, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1174, i32 2}
!542 = !{ptr @.str.281, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @saa7164_thread_function._entry, !541, !"_entry", i1 false, i1 false}
!544 = !{ptr @saa7164_thread_function._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.283, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1184, i32 3}
!547 = !{ptr @saa7164_thread_function._entry.282, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @saa7164_thread_function._entry_ptr.284, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.286, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1199, i32 2}
!551 = !{ptr @saa7164_thread_function._entry.285, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @saa7164_thread_function._entry_ptr.287, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.288, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!555 = !{ptr @.str.289, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1028, i32 2}
!557 = !{ptr @.str.290, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @saa7164_dev_unregister._entry, !556, !"_entry", i1 false, i1 false}
!559 = !{ptr @saa7164_dev_unregister._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.291, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1438, i32 2}
!562 = !{ptr @saa7164_shutdown._entry, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @saa7164_shutdown._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.292, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1541, i32 2}
!566 = !{ptr @.str.293, !565, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @saa7164_init._entry, !565, !"_entry", i1 false, i1 false}
!568 = !{ptr @saa7164_init._entry_ptr, !565, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @saa7164_fops, !570, !"saa7164_fops", i1 false, i1 false}
!570 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1149, i32 1}
!571 = !{ptr @saa7164_sops, !572, !"saa7164_sops", i1 false, i1 false}
!572 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1142, i32 36}
!573 = !{ptr @.str.294, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1090, i32 16}
!575 = !{ptr @.str.295, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1096, i32 16}
!577 = !{ptr @.str.296, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1099, i32 16}
!579 = !{ptr @.str.297, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1102, i32 16}
!581 = !{ptr @.str.298, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1105, i32 16}
!583 = !{ptr @.str.299, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1108, i32 14}
!585 = !{ptr @.str.300, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1109, i32 14}
!587 = !{ptr @.str.301, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1112, i32 18}
!589 = !{ptr @.str.302, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1114, i32 17}
!591 = !{ptr @.str.303, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1117, i32 16}
!593 = !{ptr @.str.304, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/media/pci/saa7164/saa7164-core.c", i32 1123, i32 14}
!595 = !{!"sp"}
!596 = !{i32 1, !"wchar_size", i32 2}
!597 = !{i32 1, !"min_enum_size", i32 4}
!598 = !{i32 8, !"branch-target-enforcement", i32 0}
!599 = !{i32 8, !"sign-return-address", i32 0}
!600 = !{i32 8, !"sign-return-address-all", i32 0}
!601 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!602 = !{i32 7, !"uwtable", i32 1}
!603 = !{i32 7, !"frame-pointer", i32 2}
!604 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!605 = !{i64 5061331}
!606 = !{i64 2158606424}
!607 = !{i64 2158606997}
!608 = !{i64 2158607570}
!609 = !{i64 2158608143}
!610 = !{i64 2158608716}
!611 = !{i64 2158609289}
!612 = !{i64 2158621244}
!613 = !{i64 2158629783}
!614 = !{i64 2158630356}
!615 = !{i64 2158630929}
!616 = !{i64 2158631502}
!617 = !{i64 2158632075}
!618 = !{i64 2158632648}
!619 = !{i64 2158633221}
!620 = !{i64 2158633794}
!621 = !{i64 2158634367}
!622 = !{i64 2158634940}
!623 = !{i64 2158635518}
!624 = !{i64 2158636096}
!625 = !{i64 2158636674}
!626 = !{i64 2158637252}
!627 = !{i64 2158637830}
!628 = !{i64 2158638408}
!629 = !{!"auto-init"}
!630 = !{i64 2148392575, i64 2148392601, i64 2148392630, i64 2148392664, i64 2148392695, i64 2148392718}
!631 = !{i8 0, i8 2}
!632 = !{i64 2158603319}
!633 = !{i64 2158605575}
!634 = !{i64 5060913}
!635 = !{!"branch_weights", i32 2000, i32 1}
!636 = !{!"branch_weights", i32 1, i32 2000}
!637 = !{i64 2148481051}
!638 = !{i64 2148395760, i64 2148395792, i64 2148395821, i64 2148395855, i64 2148395886, i64 2148395909}
!639 = !{i64 2148481280}
!640 = !{i64 2158575267}
!641 = !{i64 2158582161}
!642 = !{i64 2158590292}
!643 = !{i64 2158590714, i64 2158591219, i64 2158590751, i64 2158590807, i64 2158590841, i64 2158590865, i64 2158590906, i64 2158590927, i64 2158590955, i64 2158590989}
!644 = !{i64 2158593774, i64 2158594279, i64 2158593811, i64 2158593867, i64 2158593901, i64 2158593925, i64 2158593966, i64 2158593987, i64 2158594015, i64 2158594049}
!645 = !{i64 2158721330}
!646 = !{i64 2158721968}
!647 = !{i64 2158722601}
!648 = !{i64 2158723239}
!649 = !{i64 5061111}
!650 = !{i64 2158723475}
!651 = !{i64 2158723711}
