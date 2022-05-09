; ModuleID = '/llk/IR_all_yes/drivers/vhost/scsi.c_pt.bc'
source_filename = "../drivers/vhost/scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.vhost_scsi_target = type { i32, [224 x i8], i16, i16 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vhost_scsi = type { ptr, [224 x i8], %struct.vhost_dev, [128 x %struct.vhost_scsi_virtqueue], %struct.vhost_work, %struct.llist_head, %struct.vhost_work, %struct.llist_head, i8, i32 }
%struct.vhost_dev = type { ptr, %struct.mutex, ptr, i32, ptr, %struct.llist_head, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i64, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vhost_scsi_virtqueue = type { %struct.vhost_virtqueue, [2 x %struct.vhost_scsi_inflight], i32, ptr, %struct.sbitmap, i32 }
%struct.vhost_virtqueue = type { ptr, %struct.mutex, i32, ptr, ptr, ptr, [3 x ptr], ptr, %struct.vhost_vring_call, ptr, ptr, %struct.vhost_poll, ptr, i16, i16, i16, i16, i16, i8, i8, i64, [1024 x %struct.iovec], [64 x %struct.iovec], ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, [64 x %struct.iovec], i8, i8, i32 }
%struct.vhost_vring_call = type { ptr, %struct.irq_bypass_producer }
%struct.irq_bypass_producer = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.vhost_poll = type { %struct.poll_table_struct, ptr, %struct.wait_queue_entry, %struct.vhost_work, i32, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iovec = type { ptr, i32 }
%struct.vhost_scsi_inflight = type { %struct.completion, %struct.kref }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.vhost_work = type { %struct.llist_node, ptr, i32 }
%struct.vhost_scsi_tport = type { i8, i64, [256 x i8], %struct.se_wwn }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.vhost_scsi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, %struct.iovec, ptr, ptr, ptr, %struct.se_cmd, [32 x i8], [96 x i8], %struct.llist_node, ptr }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vhost_scsi_tpg = type { i16, i32, i32, i32, %struct.list_head, %struct.mutex, ptr, ptr, %struct.se_portal_group, ptr, %struct.list_head }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.virtio_scsi_cmd_resp = type { i32, i32, i16, i8, i8, [96 x i8] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.sbitmap_word = type { i32, [124 x i8], i32, [124 x i8], i32, [124 x i8] }
%union.anon.77 = type { %struct.virtio_scsi_ctrl_tmf_req }
%struct.virtio_scsi_ctrl_tmf_req = type { i32, i32, [8 x i8], i64 }
%struct.vhost_scsi_ctx = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.iov_iter }
%struct.virtio_scsi_ctrl_tmf_resp = type { i8 }
%struct.virtio_scsi_ctrl_an_resp = type <{ i32, i8 }>
%struct.vhost_scsi_tmf = type { %struct.vhost_work, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, i8, ptr, %struct.iovec, i32, i32 }
%struct.virtio_scsi_event = type { i32, [8 x i8], i32 }
%struct.vhost_scsi_evt = type { %struct.virtio_scsi_event, %struct.llist_node }
%struct.virtio_scsi_cmd_req = type <{ [8 x i8], i64, i8, i8, i8, [32 x i8] }>
%struct.virtio_scsi_cmd_req_pi = type <{ [8 x i8], i64, i8, i8, i8, i32, i32, [32 x i8] }>
%struct.scsi_varlen_cdb_hdr = type { i8, i8, [5 x i8], i8, i16 }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }

@__UNIQUE_ID_description282 = internal constant [55 x i8] c"vhost_scsi.description=VHOST_SCSI series fabric driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias283 = internal constant [27 x i8] c"vhost_scsi.alias=tcm_vhost\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [41 x i8] c"vhost_scsi.file=drivers/vhost/vhost_scsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [23 x i8] c"vhost_scsi.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vhost_scsi__286_2480_vhost_scsi_init6 = internal global ptr @vhost_scsi_init, section ".initcall6.init", align 4
@__exitcall_vhost_scsi_exit = internal global ptr @vhost_scsi_exit, section ".exitcall.exit", align 4
@vhost_scsi_init.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vhost_scsi\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vhost_scsi_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/vhost/scsi.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TCM_VHOST fabric module %s on %s/%s on 5.17.0\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v0.1\00", [27 x i8] zeroinitializer }, align 32
@vhost_scsi_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.79, i32 0, i32 2048, ptr @vhost_scsi_get_fabric_wwn, ptr @vhost_scsi_get_tpgt, ptr null, ptr @vhost_scsi_check_true, ptr @vhost_scsi_check_true, ptr @vhost_scsi_check_false, ptr @vhost_scsi_check_false, ptr null, ptr @vhost_scsi_check_prot_fabric_only, ptr @vhost_scsi_tpg_get_inst_index, ptr @vhost_scsi_check_stop_free, ptr @vhost_scsi_release_cmd, ptr null, ptr @vhost_scsi_sess_get_index, ptr null, ptr @vhost_scsi_write_pending, ptr @vhost_scsi_set_default_node_attrs, ptr @vhost_scsi_get_cmd_state, ptr @vhost_scsi_queue_data_in, ptr @vhost_scsi_queue_status, ptr @vhost_scsi_queue_tm_rsp, ptr @vhost_scsi_aborted_task, ptr @vhost_scsi_make_tport, ptr @vhost_scsi_drop_tport, ptr null, ptr @vhost_scsi_make_tpg, ptr null, ptr @vhost_scsi_drop_tpg, ptr @vhost_scsi_port_link, ptr @vhost_scsi_port_unlink, ptr null, ptr null, ptr null, ptr null, ptr @vhost_scsi_wwn_attrs, ptr @vhost_scsi_tpg_attrs, ptr null, ptr @vhost_scsi_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vhost_scsi_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.5, ptr @vhost_scsi_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vhost-scsi\00", [21 x i8] zeroinitializer }, align 32
@vhost_scsi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vhost_scsi_ioctl, ptr null, ptr null, i32 0, ptr @vhost_scsi_open, ptr null, ptr @vhost_scsi_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vhost_scsi_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vhost_scsi_mutex, i64 52), ptr getelementptr (i8, ptr @vhost_scsi_mutex, i64 52) }, ptr @vhost_scsi_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@vhost_scsi_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vhost_scsi_list, ptr @vhost_scsi_list }, [24 x i8] zeroinitializer }, align 32
@vhost_scsi_set_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014target_depend_item() failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhost_scsi_set_endpoint\00", [40 x i8] zeroinitializer }, align 32
@vhost_scsi_set_endpoint._entry_ptr = internal global ptr @vhost_scsi_set_endpoint._entry, section ".printk_index", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vhost_scsi_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhost_scsi_mutex\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vhost_scsi_setup_vq_cmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unable to allocate tv_cmd->tvc_sgl\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vhost_scsi_setup_vq_cmds\00", [39 x i8] zeroinitializer }, align 32
@vhost_scsi_setup_vq_cmds._entry_ptr = internal global ptr @vhost_scsi_setup_vq_cmds._entry, section ".printk_index", align 4
@vhost_scsi_setup_vq_cmds._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to allocate tv_cmd->tvc_upages\0A\00", [55 x i8] zeroinitializer }, align 32
@vhost_scsi_setup_vq_cmds._entry_ptr.17 = internal global ptr @vhost_scsi_setup_vq_cmds._entry.15, section ".printk_index", align 4
@vhost_scsi_setup_vq_cmds._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 1513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to allocate tv_cmd->tvc_prot_sgl\0A\00", [53 x i8] zeroinitializer }, align 32
@vhost_scsi_setup_vq_cmds._entry_ptr.20 = internal global ptr @vhost_scsi_setup_vq_cmds._entry.18, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vhost_scsi_clear_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\014tv_tport->tport_name: %s, tpg->tport_tpgt: %hu does not match t->vhost_wwpn: %s, t->vhost_tpgt: %hu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vhost_scsi_clear_endpoint\00", [38 x i8] zeroinitializer }, align 32
@vhost_scsi_clear_endpoint._entry_ptr = internal global ptr @vhost_scsi_clear_endpoint._entry, section ".printk_index", align 4
@vhost_scsi_complete_cmd_work.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vhost_scsi_complete_cmd_work\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s tv_cmd %p resid %u status %#02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vhost_scsi_complete_cmd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Faulted on virtio_scsi_cmd_resp\0A\00", [61 x i8] zeroinitializer }, align 32
@vhost_scsi_complete_cmd_work._entry_ptr = internal global ptr @vhost_scsi_complete_cmd_work._entry, section ".printk_index", align 4
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vhost_scsi_do_evt_work\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Expecting virtio_scsi_event, got %zu bytes\0A\00", [52 x i8] zeroinitializer }, align 32
@vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Faulted on vhost_scsi_send_event\0A\00", [62 x i8] zeroinitializer }, align 32
@vhost_scsi_ctl_handle_kick.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vhost_scsi_ctl_handle_kick\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: The handling func for control queue.\0A\00", [54 x i8] zeroinitializer }, align 32
@vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vhost_scsi_ctl_handle_vq\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Faulted on copy_from_iter tmf type\0A\00", [60 x i8] zeroinitializer }, align 32
@vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 1, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown control request %d\00", [37 x i8] zeroinitializer }, align 32
@vhost_scsi_get_desc.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vhost_scsi_get_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vhost_get_vq_desc: head: %d, out: %u in: %u\0A\00", [51 x i8] zeroinitializer }, align 32
@vhost_scsi_chk_size.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vhost_scsi_chk_size\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Response buf too small, need min %zu bytes got %zu\00", [45 x i8] zeroinitializer }, align 32
@vhost_scsi_chk_size.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Request buf too small, need min %zu bytes got %zu\00", [46 x i8] zeroinitializer }, align 32
@vhost_scsi_get_req.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vhost_scsi_get_req\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Faulted on copy_from_iter_full\0A\00", [32 x i8] zeroinitializer }, align 32
@vhost_scsi_get_req.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Illegal virtio-scsi lun: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@vhost_scsi_get_req.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Target 0x%x does not exist\0A\00", [36 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_tmf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013Unable to locate active struct vhost_scsi_nexus for LUN RESET.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhost_scsi_handle_tmf\00", [42 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_tmf._entry_ptr = internal global ptr @vhost_scsi_handle_tmf._entry, section ".printk_index", align 4
@vhost_scsi_handle_tmf._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Missing reserve TMF. Could not handle LUN RESET.\0A\00", [44 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_tmf._entry_ptr.49 = internal global ptr @vhost_scsi_handle_tmf._entry.47, section ".printk_index", align 4
@vhost_scsi_send_tmf_resp.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vhost_scsi_send_tmf_resp\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@vhost_scsi_send_tmf_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Faulted on virtio_scsi_ctrl_tmf_resp\0A\00", [56 x i8] zeroinitializer }, align 32
@vhost_scsi_send_tmf_resp._entry_ptr = internal global ptr @vhost_scsi_send_tmf_resp._entry, section ".printk_index", align 4
@vhost_scsi_send_an_resp.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.51, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhost_scsi_send_an_resp\00", [40 x i8] zeroinitializer }, align 32
@vhost_scsi_send_an_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.53, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Faulted on virtio_scsi_ctrl_an_resp\0A\00", [57 x i8] zeroinitializer }, align 32
@vhost_scsi_send_an_resp._entry_ptr = internal global ptr @vhost_scsi_send_an_resp._entry, section ".printk_index", align 4
@vhost_scsi_send_bad_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.55, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vhost_scsi_send_bad_target\00", [37 x i8] zeroinitializer }, align 32
@vhost_scsi_send_bad_target._entry_ptr = internal global ptr @vhost_scsi_send_bad_target._entry, section ".printk_index", align 4
@vhost_scsi_allocate_evt.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhost_scsi_allocate_evt\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate vhost_scsi_evt\0A\00", [61 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhost_scsi_handle_vq\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Received non zero pi_bytesout, but wrong data_direction\0A\00", [39 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Received non zero pi_bytesin, but wrong data_direction\0A\00", [40 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Received SCSI CDB with command_size: %d that exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 1, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vhost_scsi_get_cmd failed %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"vhost_scsi got command opcode: %#02x, lun: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.64, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"cmd: %p exp_data_len: %d, prot_bytes: %d data_direction: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vhost_scsi_handle_vq.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.65, i8 1, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to map iov to sgl\0A\00", [38 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@vhost_scsi_get_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to locate active struct vhost_scsi_nexus\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vhost_scsi_get_cmd\00", [45 x i8] zeroinitializer }, align 32
@vhost_scsi_get_cmd._entry_ptr = internal global ptr @vhost_scsi_get_cmd._entry, section ".printk_index", align 4
@vhost_scsi_get_cmd._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to obtain tag for vhost_scsi_cmd\0A\00", [53 x i8] zeroinitializer }, align 32
@vhost_scsi_get_cmd._entry_ptr.70 = internal global ptr @vhost_scsi_get_cmd._entry.68, section ".printk_index", align 4
@vhost_scsi_mapal.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vhost_scsi_mapal\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s prot_sg %p prot_sgl_count %u\0A\00", [63 x i8] zeroinitializer }, align 32
@vhost_scsi_mapal.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s data_sg %p data_sgl_count %u\0A\00", [63 x i8] zeroinitializer }, align 32
@vhost_scsi_calc_sgls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: iter->iov is NULL, but expected bytes: %zu present\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhost_scsi_calc_sgls\00", [43 x i8] zeroinitializer }, align 32
@vhost_scsi_calc_sgls._entry_ptr = internal global ptr @vhost_scsi_calc_sgls._entry, section ".printk_index", align 4
@vhost_scsi_calc_sgls._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s: requested sgl_count: %d exceeds pre-allocated max_sgls: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vhost_scsi_calc_sgls._entry_ptr.78 = internal global ptr @vhost_scsi_calc_sgls._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vhost\00", [26 x i8] zeroinitializer }, align 32
@vhost_scsi_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vhost_scsi_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vhost_scsi_tpg_attr_nexus, ptr null], [24 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_attrib_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vhost_scsi_tpg_attrib_attr_fabric_prot_type, ptr null], [24 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to allocate struct vhost_scsi_tport\00", [51 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhost_scsi_make_tport\00", [42 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tport._entry_ptr = internal global ptr @vhost_scsi_make_tport._entry, section ".printk_index", align 4
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"naa.\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fc.\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iqn.\00", [27 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tport._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 2362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to locate prefix for emulated Target Port: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tport._entry_ptr.87 = internal global ptr @vhost_scsi_make_tport._entry.85, section ".printk_index", align 4
@vhost_scsi_make_tport._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.2, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Emulated %s Address: %s, exceeds max: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tport._entry_ptr.90 = internal global ptr @vhost_scsi_make_tport._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tport.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.92, i8 2, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"TCM_VHost_ConfigFS: Allocated emulated Target %s Address: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAS\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCP\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iSCSI\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@vhost_scsi_drop_tport.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 2, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhost_scsi_drop_tport\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"TCM_VHost_ConfigFS: Deallocating emulated Target %s Address: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 2281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to allocate struct vhost_scsi_tpg\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vhost_scsi_make_tpg\00", [44 x i8] zeroinitializer }, align 32
@vhost_scsi_make_tpg._entry_ptr = internal global ptr @vhost_scsi_make_tpg._entry, section ".printk_index", align 4
@vhost_scsi_make_tpg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tpg->tv_tpg_mutex\00", [45 x i8] zeroinitializer }, align 32
@vhost_scsi_drop_nexus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 2131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Unable to remove TCM_vhost I_T Nexus with active TPG port count: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhost_scsi_drop_nexus\00", [42 x i8] zeroinitializer }, align 32
@vhost_scsi_drop_nexus._entry_ptr = internal global ptr @vhost_scsi_drop_nexus._entry, section ".printk_index", align 4
@vhost_scsi_drop_nexus._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 2139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Unable to remove TCM_vhost I_T Nexus with active TPG vhost count: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@vhost_scsi_drop_nexus._entry_ptr.107 = internal global ptr @vhost_scsi_drop_nexus._entry.105, section ".printk_index", align 4
@vhost_scsi_drop_nexus.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.108, i8 2, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"TCM_vhost_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@vhost_scsi_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.109, ptr null, i16 292, ptr @vhost_scsi_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TCM_VHOST fabric module %s on %s/%son 5.17.0\0A\00", [50 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_attr_nexus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.111, ptr null, i16 420, ptr @vhost_scsi_tpg_nexus_show, ptr @vhost_scsi_tpg_nexus_store }, [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nexus\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_nexus_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 2202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Emulated NAA Sas Address: %s, exceeds max: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vhost_scsi_tpg_nexus_store\00", [37 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_nexus_store._entry_ptr = internal global ptr @vhost_scsi_tpg_nexus_store._entry, section ".printk_index", align 4
@vhost_scsi_tpg_nexus_store._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 2212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Passed SAS Initiator Port %s does not match target port protoid: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_nexus_store._entry_ptr.117 = internal global ptr @vhost_scsi_tpg_nexus_store._entry.115, section ".printk_index", align 4
@vhost_scsi_tpg_nexus_store._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.2, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Passed FCP Initiator Port %s does not match target port protoid: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_nexus_store._entry_ptr.120 = internal global ptr @vhost_scsi_tpg_nexus_store._entry.118, section ".printk_index", align 4
@vhost_scsi_tpg_nexus_store._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.2, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Passed iSCSI Initiator Port %s does not match target port protoid: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_nexus_store._entry_ptr.123 = internal global ptr @vhost_scsi_tpg_nexus_store._entry.121, section ".printk_index", align 4
@vhost_scsi_tpg_nexus_store._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.114, ptr @.str.2, i32 2241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Unable to locate prefix for emulated Initiator Port: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_nexus_store._entry_ptr.126 = internal global ptr @vhost_scsi_tpg_nexus_store._entry.124, section ".printk_index", align 4
@vhost_scsi_make_nexus.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.128, i8 2, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhost_scsi_make_nexus\00", [42 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tpg->tpg_nexus already exists\0A\00", [33 x i8] zeroinitializer }, align 32
@vhost_scsi_make_nexus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 2087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Unable to allocate struct vhost_scsi_nexus\0A\00", [50 x i8] zeroinitializer }, align 32
@vhost_scsi_make_nexus._entry_ptr = internal global ptr @vhost_scsi_make_nexus._entry, section ".printk_index", align 4
@vhost_scsi_tpg_attrib_attr_fabric_prot_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.130, ptr null, i16 420, ptr @vhost_scsi_tpg_attrib_fabric_prot_type_show, ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store }, [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fabric_prot_type\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_attrib_fabric_prot_type_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013kstrtoul() returned %d for fabric_prot_type\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vhost_scsi_tpg_attrib_fabric_prot_type_store\00", [51 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_attrib_fabric_prot_type_store._entry_ptr = internal global ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry, section ".printk_index", align 4
@vhost_scsi_tpg_attrib_fabric_prot_type_store._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 2047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Invalid vhost_scsi fabric_prot_type: %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@vhost_scsi_tpg_attrib_fabric_prot_type_store._entry_ptr.136 = internal global ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry.134, section ".printk_index", align 4
@switch.table.vhost_scsi_handle_vq = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 34, i32 33, i32 36], [20 x i8] zeroinitializer }, align 32
@switch.table.vhost_scsi_make_tport = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.94, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.95, ptr @.str.93], [36 x i8] zeroinitializer }, align 32
@switch.table.vhost_scsi_make_tport.137 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.94, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.95, ptr @.str.93], [36 x i8] zeroinitializer }, align 32
@switch.table.vhost_scsi_drop_tport = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.94, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.95, ptr @.str.93], [36 x i8] zeroinitializer }, align 32
@switch.table.vhost_scsi_drop_nexus = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.94, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.96, ptr @.str.95, ptr @.str.93], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1074048834, i64 1074048835, i64 1074048836, i64 1074310912, i64 1088991040, i64 1088991041, i64 2148052736]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2451, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"vhost_scsi_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2409, i32 44 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"vhost_scsi_misc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1914, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1916, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"vhost_scsi_fops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1905, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 230, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 214, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 156, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"vhost_scsi_mutex\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"vhost_scsi_list\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 231, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1590, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 230, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1497, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1505, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1513, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 87, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1698, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 549, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 571, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 717, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 491, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 507, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1362, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1286, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1313, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 831, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 875, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 880, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 897, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 900, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 908, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1186, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1192, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1142, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1152, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1234, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1244, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 818, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 443, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1032, i32 6 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1039, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1077, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1086, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1095, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1097, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1104, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 597, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 603, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 722, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 740, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 669, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 676, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2411, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant [21 x i8] c"vhost_scsi_wwn_attrs\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2404, i32 35 }
@___asan_gen_.421 = private unnamed_addr constant [21 x i8] c"vhost_scsi_tpg_attrs\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2259, i32 35 }
@___asan_gen_.424 = private unnamed_addr constant [28 x i8] c"vhost_scsi_tpg_attrib_attrs\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2067, i32 35 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2336, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2344, i32 21 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2349, i32 21 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2355, i32 21 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2361, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2368, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2374, i32 54 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2376, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1934, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1936, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1938, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1943, i32 9 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2387, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2274, i32 19 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2281, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2284, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2129, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2137, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2143, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [28 x i8] c"vhost_scsi_wwn_attr_version\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2402, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2397, i32 23 }
@___asan_gen_.526 = private unnamed_addr constant [26 x i8] c"vhost_scsi_tpg_attr_nexus\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2257, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2191, i32 21 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2201, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2210, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2221, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2232, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2240, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2080, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2087, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant [44 x i8] c"vhost_scsi_tpg_attrib_attr_fabric_prot_type\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2065, i32 1 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2062, i32 23 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2043, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.602 = private constant [24 x i8] c"../drivers/vhost/scsi.c\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2047, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant [34 x i8] c"switch.table.vhost_scsi_handle_vq\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [35 x i8] c"switch.table.vhost_scsi_make_tport\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [39 x i8] c"switch.table.vhost_scsi_make_tport.137\00", align 1
@___asan_gen_.607 = private unnamed_addr constant [35 x i8] c"switch.table.vhost_scsi_drop_tport\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [35 x i8] c"switch.table.vhost_scsi_drop_nexus\00", align 1
@llvm.compiler.used = appending global [193 x ptr] [ptr @__UNIQUE_ID_alias283, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_vhost_scsi_exit, ptr @__initcall__kmod_vhost_scsi__286_2480_vhost_scsi_init6, ptr @vhost_scsi_calc_sgls._entry, ptr @vhost_scsi_calc_sgls._entry.76, ptr @vhost_scsi_calc_sgls._entry_ptr, ptr @vhost_scsi_calc_sgls._entry_ptr.78, ptr @vhost_scsi_clear_endpoint._entry, ptr @vhost_scsi_clear_endpoint._entry_ptr, ptr @vhost_scsi_complete_cmd_work._entry, ptr @vhost_scsi_complete_cmd_work._entry_ptr, ptr @vhost_scsi_drop_nexus._entry, ptr @vhost_scsi_drop_nexus._entry.105, ptr @vhost_scsi_drop_nexus._entry_ptr, ptr @vhost_scsi_drop_nexus._entry_ptr.107, ptr @vhost_scsi_get_cmd._entry, ptr @vhost_scsi_get_cmd._entry.68, ptr @vhost_scsi_get_cmd._entry_ptr, ptr @vhost_scsi_get_cmd._entry_ptr.70, ptr @vhost_scsi_handle_tmf._entry, ptr @vhost_scsi_handle_tmf._entry.47, ptr @vhost_scsi_handle_tmf._entry_ptr, ptr @vhost_scsi_handle_tmf._entry_ptr.49, ptr @vhost_scsi_make_nexus._entry, ptr @vhost_scsi_make_nexus._entry_ptr, ptr @vhost_scsi_make_tpg._entry, ptr @vhost_scsi_make_tpg._entry_ptr, ptr @vhost_scsi_make_tport._entry, ptr @vhost_scsi_make_tport._entry.85, ptr @vhost_scsi_make_tport._entry.88, ptr @vhost_scsi_make_tport._entry_ptr, ptr @vhost_scsi_make_tport._entry_ptr.87, ptr @vhost_scsi_make_tport._entry_ptr.90, ptr @vhost_scsi_send_an_resp._entry, ptr @vhost_scsi_send_an_resp._entry_ptr, ptr @vhost_scsi_send_bad_target._entry, ptr @vhost_scsi_send_bad_target._entry_ptr, ptr @vhost_scsi_send_tmf_resp._entry, ptr @vhost_scsi_send_tmf_resp._entry_ptr, ptr @vhost_scsi_set_endpoint._entry, ptr @vhost_scsi_set_endpoint._entry_ptr, ptr @vhost_scsi_setup_vq_cmds._entry, ptr @vhost_scsi_setup_vq_cmds._entry.15, ptr @vhost_scsi_setup_vq_cmds._entry.18, ptr @vhost_scsi_setup_vq_cmds._entry_ptr, ptr @vhost_scsi_setup_vq_cmds._entry_ptr.17, ptr @vhost_scsi_setup_vq_cmds._entry_ptr.20, ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry, ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry.134, ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry_ptr, ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry_ptr.136, ptr @vhost_scsi_tpg_nexus_store._entry, ptr @vhost_scsi_tpg_nexus_store._entry.115, ptr @vhost_scsi_tpg_nexus_store._entry.118, ptr @vhost_scsi_tpg_nexus_store._entry.121, ptr @vhost_scsi_tpg_nexus_store._entry.124, ptr @vhost_scsi_tpg_nexus_store._entry_ptr, ptr @vhost_scsi_tpg_nexus_store._entry_ptr.117, ptr @vhost_scsi_tpg_nexus_store._entry_ptr.120, ptr @vhost_scsi_tpg_nexus_store._entry_ptr.123, ptr @vhost_scsi_tpg_nexus_store._entry_ptr.126, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vhost_scsi_ops, ptr @vhost_scsi_misc, ptr @.str.5, ptr @vhost_scsi_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vhost_scsi_mutex, ptr @vhost_scsi_list, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @vhost_scsi_wwn_attrs, ptr @vhost_scsi_tpg_attrs, ptr @vhost_scsi_tpg_attrib_attrs, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @vhost_scsi_make_tpg.__key, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @vhost_scsi_wwn_attr_version, ptr @.str.109, ptr @.str.110, ptr @vhost_scsi_tpg_attr_nexus, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @vhost_scsi_tpg_attrib_attr_fabric_prot_type, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @switch.table.vhost_scsi_handle_vq, ptr @switch.table.vhost_scsi_make_tport, ptr @switch.table.vhost_scsi_make_tport.137, ptr @switch.table.vhost_scsi_drop_tport, ptr @switch.table.vhost_scsi_drop_nexus], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_set_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_setup_vq_cmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_setup_vq_cmds._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_setup_vq_cmds._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_clear_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_complete_cmd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_handle_tmf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_handle_tmf._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_send_tmf_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_send_an_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_send_bad_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_get_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_get_cmd._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_calc_sgls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_calc_sgls._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_attrib_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_make_tport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_make_tport._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_make_tport._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_make_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_make_tpg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_drop_nexus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_drop_nexus._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_attr_nexus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_nexus_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_nexus_store._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_nexus_store._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_nexus_store._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_nexus_store._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_make_nexus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_attrib_attr_fabric_prot_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vhost_scsi_handle_vq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vhost_scsi_make_tport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vhost_scsi_make_tport.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vhost_scsi_drop_tport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vhost_scsi_drop_nexus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_init.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_init, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uts_ns.i, align 4
  %machine = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_init.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef %machine) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @misc_register(ptr noundef nonnull @vhost_scsi_misc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = tail call i32 @target_register_template(ptr noundef nonnull @vhost_scsi_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %out_vhost_scsi_deregister, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_vhost_scsi_deregister:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @misc_deregister(ptr noundef nonnull @vhost_scsi_misc) #15
  br label %cleanup

cleanup:                                          ; preds = %out_vhost_scsi_deregister, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call9, %out_vhost_scsi_deregister ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_unregister_template(ptr noundef nonnull @vhost_scsi_ops) #15
  tail call void @misc_deregister(ptr noundef nonnull @vhost_scsi_misc) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_ioctl(ptr nocapture noundef readonly %f, i32 noundef %ioctl, i32 noundef %arg) #1 align 64 {
entry:
  %backend = alloca %struct.vhost_scsi_target, align 4
  %features = alloca i64, align 8
  %abi_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %backend) #15
  %2 = call ptr @memset(ptr %backend, i32 255, i32 232)
  %3 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features) #15
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %features, align 8, !annotation !323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %abi_version) #15
  %5 = ptrtoint ptr %abi_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %abi_version, align 4
  %6 = zext i32 %ioctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ioctl, label %sw.default [
    i32 1088991040, label %if.end8.i.i
    i32 1088991041, label %if.end8.i.i110
    i32 1074048834, label %if.end8.i.i133
    i32 1074048835, label %sw.bb23
    i32 1074048836, label %sw.bb32
    i32 -2146914560, label %sw.bb50
    i32 1074310912, label %if.end8.i.i160
  ]

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 232, i32 -1226833920) #18, !srcloc !324
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !325

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %backend, i32 noundef 232) #15
  %8 = call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !326
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %backend, ptr noundef %3, i32 noundef 232) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !325

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i183 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 232, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 232, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 232, %res.0.i.i183
  %add.ptr.i.i = getelementptr i8, ptr %backend, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i183)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %reserved = getelementptr inbounds %struct.vhost_scsi_target, ptr %backend, i32 0, i32 3
  %12 = ptrtoint ptr %reserved to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reserved, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not = icmp eq i16 %13, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = call fastcc i32 @vhost_scsi_set_endpoint(ptr noundef %1, ptr noundef nonnull %backend)
  br label %cleanup

if.end8.i.i110:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i111 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i111, label %if.end8.i.i110.if.then11.i.i127_crit_edge, label %land.lhs.true.i.i114

if.end8.i.i110.if.then11.i.i127_crit_edge:        ; preds = %if.end8.i.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i127

land.lhs.true.i.i114:                             ; preds = %if.end8.i.i110
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 232, i32 -1226833920) #18, !srcloc !324
  %asmresult.i.i112 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i112)
  %cmp.i6.i113 = icmp eq i32 %asmresult.i.i112, 0
  br i1 %cmp.i6.i113, label %if.end.i.i124, label %land.lhs.true.i.i114.if.then11.i.i127_crit_edge, !prof !325

land.lhs.true.i.i114.if.then11.i.i127_crit_edge:  ; preds = %land.lhs.true.i.i114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i127

if.end.i.i124:                                    ; preds = %land.lhs.true.i.i114
  %call.i.i.i115 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %backend, i32 noundef 232) #15
  %15 = call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i.i.i.i.i116 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i116 to ptr
  %cpu_domain.i.i.i.i.i117 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i117) #4, !srcloc !326
  %and.i.i.i.i118 = and i32 %17, -13
  %or.i.i.i.i119 = or i32 %and.i.i.i.i118, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i119) #15, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  %call1.i.i.i120 = call i32 @arm_copy_from_user(ptr noundef nonnull %backend, ptr noundef %3, i32 noundef 232) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #15, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i120)
  %tobool4.not.i.i123 = icmp eq i32 %call1.i.i.i120, 0
  br i1 %tobool4.not.i.i123, label %if.end10, label %if.end.i.i124.if.then11.i.i127_crit_edge, !prof !325

if.end.i.i124.if.then11.i.i127_crit_edge:         ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i127

if.then11.i.i127:                                 ; preds = %if.end.i.i124.if.then11.i.i127_crit_edge, %land.lhs.true.i.i114.if.then11.i.i127_crit_edge, %if.end8.i.i110.if.then11.i.i127_crit_edge
  %res.0.i.i122188 = phi i32 [ %call1.i.i.i120, %if.end.i.i124.if.then11.i.i127_crit_edge ], [ 232, %if.end8.i.i110.if.then11.i.i127_crit_edge ], [ 232, %land.lhs.true.i.i114.if.then11.i.i127_crit_edge ]
  %sub.i.i125 = sub i32 232, %res.0.i.i122188
  %add.ptr.i.i126 = getelementptr i8, ptr %backend, i32 %sub.i.i125
  %18 = call ptr @memset(ptr %add.ptr.i.i126, i32 0, i32 %res.0.i.i122188)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i124
  %reserved11 = getelementptr inbounds %struct.vhost_scsi_target, ptr %backend, i32 0, i32 3
  %19 = ptrtoint ptr %reserved11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reserved11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp13.not = icmp eq i16 %20, 0
  br i1 %cmp13.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = call fastcc i32 @vhost_scsi_clear_endpoint(ptr noundef %1, ptr noundef nonnull %backend)
  br label %cleanup

if.end8.i.i133:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i134 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i134, label %if.end8.i.i133.cleanup_crit_edge, label %if.end.i.i137

if.end8.i.i133.cleanup_crit_edge:                 ; preds = %if.end8.i.i133
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i137:                                    ; preds = %if.end8.i.i133
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #18, !srcloc !329
  %asmresult.i.i135 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i135)
  %cmp.i6.i136 = icmp eq i32 %asmresult.i.i135, 0
  br i1 %cmp.i6.i136, label %copy_to_user.exit, label %if.end.i.i137.cleanup_crit_edge

if.end.i.i137.cleanup_crit_edge:                  ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i138 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %abi_version, i32 noundef 4) #15
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %abi_version, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool20.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool20.not, i32 0, i32 -14
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1872) #15
  %22 = tail call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !326
  %and.i = and i32 %24, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1226833921) #15, !srcloc !330
  %asmresult = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #15, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool27.not = icmp eq i32 %asmresult, 0
  br i1 %tobool27.not, label %if.end29, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end29:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  %asmresult25 = extractvalue { i32, i32 } %25, 1
  %mutex = getelementptr %struct.vhost_scsi, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult25)
  %tobool30 = icmp ne i32 %asmresult25, 0
  %vs_events_missed = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 8
  %frombool = zext i1 %tobool30 to i8
  %26 = ptrtoint ptr %vs_events_missed to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %vs_events_missed, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mutex33 = getelementptr %struct.vhost_scsi, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex33, i32 noundef 0) #15
  %vs_events_missed34 = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %vs_events_missed34 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vs_events_missed34, align 8, !range !331
  %29 = zext i8 %28 to i32
  tail call void @mutex_unlock(ptr noundef %mutex33) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1882) #15
  %30 = tail call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i.i140 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i140 to ptr
  %cpu_domain.i.i141 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i141) #4, !srcloc !326
  %and.i142 = and i32 %32, -13
  %or.i143 = or i32 %and.i142, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i143) #15, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %29, i32 -1226833921) #15, !srcloc !332
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #15, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool47.not = icmp eq i32 %33, 0
  %.105 = select i1 %tobool47.not, i32 0, i32 -14
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  %34 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 5318377482, ptr %features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #15
  %call.i.i148 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i148, label %sw.bb50.cleanup_crit_edge, label %if.end.i.i151

sw.bb50.cleanup_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i151:                                    ; preds = %sw.bb50
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #18, !srcloc !329
  %asmresult.i.i149 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i149)
  %cmp.i6.i150 = icmp eq i32 %asmresult.i.i149, 0
  br i1 %cmp.i6.i150, label %copy_to_user.exit156, label %if.end.i.i151.cleanup_crit_edge

if.end.i.i151.cleanup_crit_edge:                  ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

copy_to_user.exit156:                             ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features, i32 noundef 8) #15
  %call.i12.i.i153 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %features, i32 noundef 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i153)
  %tobool52.not = icmp eq i32 %call.i12.i.i153, 0
  %spec.select200 = select i1 %tobool52.not, i32 0, i32 -14
  br label %cleanup

if.end8.i.i160:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #15
  %call.i.i161 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i161, label %if.end8.i.i160.if.then11.i.i177_crit_edge, label %land.lhs.true.i.i164

if.end8.i.i160.if.then11.i.i177_crit_edge:        ; preds = %if.end8.i.i160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i177

land.lhs.true.i.i164:                             ; preds = %if.end8.i.i160
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #18, !srcloc !324
  %asmresult.i.i162 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i162)
  %cmp.i6.i163 = icmp eq i32 %asmresult.i.i162, 0
  br i1 %cmp.i6.i163, label %if.end.i.i174, label %land.lhs.true.i.i164.if.then11.i.i177_crit_edge, !prof !325

land.lhs.true.i.i164.if.then11.i.i177_crit_edge:  ; preds = %land.lhs.true.i.i164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i177

if.end.i.i174:                                    ; preds = %land.lhs.true.i.i164
  %call.i.i.i165 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features, i32 noundef 8) #15
  %37 = call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i.i.i.i.i166 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i166 to ptr
  %cpu_domain.i.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i167) #4, !srcloc !326
  %and.i.i.i.i168 = and i32 %39, -13
  %or.i.i.i.i169 = or i32 %and.i.i.i.i168, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i169) #15, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  %call1.i.i.i170 = call i32 @arm_copy_from_user(ptr noundef nonnull %features, ptr noundef %3, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #15, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i170)
  %tobool4.not.i.i173 = icmp eq i32 %call1.i.i.i170, 0
  br i1 %tobool4.not.i.i173, label %if.end59, label %if.end.i.i174.if.then11.i.i177_crit_edge, !prof !325

if.end.i.i174.if.then11.i.i177_crit_edge:         ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i177

if.then11.i.i177:                                 ; preds = %if.end.i.i174.if.then11.i.i177_crit_edge, %land.lhs.true.i.i164.if.then11.i.i177_crit_edge, %if.end8.i.i160.if.then11.i.i177_crit_edge
  %res.0.i.i172197 = phi i32 [ %call1.i.i.i170, %if.end.i.i174.if.then11.i.i177_crit_edge ], [ 8, %if.end8.i.i160.if.then11.i.i177_crit_edge ], [ 8, %land.lhs.true.i.i164.if.then11.i.i177_crit_edge ]
  %sub.i.i175 = sub i32 8, %res.0.i.i172197
  %add.ptr.i.i176 = getelementptr i8, ptr %features, i32 %sub.i.i175
  %40 = call ptr @memset(ptr %add.ptr.i.i176, i32 0, i32 %res.0.i.i172197)
  br label %cleanup

if.end59:                                         ; preds = %if.end.i.i174
  %41 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %features, align 8
  %and.i180 = and i64 %42, -5318377483
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i180)
  %tobool.not.i = icmp eq i64 %and.i180, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end59
  %mutex.i = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %and1.i = and i64 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2
  %call.i = call zeroext i1 @vhost_log_access_ok(ptr noundef %dev.i) #15
  br i1 %call.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %if.end.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.vhost_scsi, ptr %1, i32 0, i32 3, i32 %i.024.i
  %mutex9.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex9.i, i32 noundef 0) #15
  %acked_features.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx.i, i32 0, i32 28
  %43 = ptrtoint ptr %acked_features.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %acked_features.i, align 8
  call void @mutex_unlock(ptr noundef %mutex9.i) #15
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.body.i.cleanup.sink.split.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -14, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ 0, %for.body.i.cleanup.sink.split.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  br label %cleanup

sw.default:                                       ; preds = %entry
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2
  %mutex61 = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex61, i32 noundef 0) #15
  %call63 = tail call i32 @vhost_dev_ioctl(ptr noundef %dev, i32 noundef %ioctl, ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call63)
  %cmp64 = icmp eq i32 %call63, -515
  br i1 %cmp64, label %if.then66, label %sw.default.if.end69_crit_edge

sw.default.if.end69_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then66:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %call68 = tail call i32 @vhost_vring_ioctl(ptr noundef %dev, i32 noundef %ioctl, ptr noundef %3) #15
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %sw.default.if.end69_crit_edge
  %r.0 = phi i32 [ %call68, %if.then66 ], [ %call63, %sw.default.if.end69_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex61) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %cleanup.sink.split.i, %if.end59.cleanup_crit_edge, %if.then11.i.i177, %copy_to_user.exit156, %if.end.i.i151.cleanup_crit_edge, %sw.bb50.cleanup_crit_edge, %sw.bb32, %if.end29, %sw.bb23.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i137.cleanup_crit_edge, %if.end8.i.i133.cleanup_crit_edge, %if.end16, %if.end10.cleanup_crit_edge, %if.then11.i.i127, %if.end4, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %r.0, %if.end69 ], [ 0, %if.end29 ], [ %call17, %if.end16 ], [ %call5, %if.end4 ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end10.cleanup_crit_edge ], [ -14, %sw.bb23.cleanup_crit_edge ], [ %.105, %sw.bb32 ], [ -95, %if.end59.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i127 ], [ -14, %if.end8.i.i133.cleanup_crit_edge ], [ -14, %if.end.i.i137.cleanup_crit_edge ], [ -14, %sw.bb50.cleanup_crit_edge ], [ -14, %if.end.i.i151.cleanup_crit_edge ], [ -14, %if.then11.i.i177 ], [ %spec.select, %copy_to_user.exit ], [ %spec.select200, %copy_to_user.exit156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %abi_version) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features) #15
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %backend) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1239576, i32 noundef 3520, i32 noundef -1) #19
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #20
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %err_vqs, label %if.end4

if.end4:                                          ; preds = %if.end
  %vs_completion_work = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 4
  tail call void @vhost_work_init(ptr noundef %vs_completion_work, ptr noundef nonnull @vhost_scsi_complete_cmd_work) #15
  %vs_event_work = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 6
  tail call void @vhost_work_init(ptr noundef %vs_event_work, ptr noundef nonnull @vhost_scsi_evt_work) #15
  %vs_events_nr = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %vs_events_nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vs_events_nr, align 4
  %vs_events_missed = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %vs_events_missed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vs_events_missed, align 8
  %vqs5 = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vqs5, ptr %call7.i.i, align 8
  %arrayidx8 = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 1
  %arrayidx10 = getelementptr ptr, ptr %call7.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx8, ptr %arrayidx10, align 4
  %handle_kick = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 0, i32 0, i32 12
  %5 = ptrtoint ptr %handle_kick to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vhost_scsi_ctl_handle_kick, ptr %handle_kick, align 8
  %handle_kick17 = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 1, i32 0, i32 12
  %6 = ptrtoint ptr %handle_kick17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vhost_scsi_evt_handle_kick, ptr %handle_kick17, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %i.051 = phi i32 [ 2, %if.end4 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 %i.051
  %arrayidx21 = getelementptr ptr, ptr %call7.i.i, i32 %i.051
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx19, ptr %arrayidx21, align 4
  %handle_kick25 = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx19, i32 0, i32 12
  %8 = ptrtoint ptr %handle_kick25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vhost_scsi_handle_kick, ptr %handle_kick25, align 8
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 2
  tail call void @vhost_dev_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 128, i32 noundef 1024, i32 noundef 256, i32 noundef 0, i1 noundef zeroext true, ptr noundef null) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end
  %i.033.i = phi i32 [ 0, %for.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mutex.i = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 %i.033.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %inflight_idx.i = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 %i.033.i, i32 2
  %9 = ptrtoint ptr %inflight_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inflight_idx.i, align 8
  %xor.i = xor i32 %10, 1
  store i32 %xor.i, ptr %inflight_idx.i, align 8
  %arrayidx15.i = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 %i.033.i, i32 1, i32 %xor.i
  %kref.i = getelementptr %struct.vhost_scsi, ptr %call.i.i, i32 0, i32 3, i32 %i.033.i, i32 1, i32 %xor.i, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  %11 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %kref.i, align 4
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx15.i, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %arrayidx15.i, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #15
  tail call void @mutex_unlock(ptr noundef %mutex.i) #15
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %vhost_scsi_init_inflight.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

vhost_scsi_init_inflight.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %private_data, align 4
  br label %cleanup

err_vqs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_vqs, %vhost_scsi_init_inflight.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vhost_scsi_init_inflight.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err_vqs ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %f) #1 align 64 {
entry:
  %t = alloca %struct.vhost_scsi_target, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %t) #15
  %2 = call ptr @memset(ptr %t, i32 255, i32 232)
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2
  %mutex = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %vhost_wwpn = getelementptr inbounds %struct.vhost_scsi_target, ptr %t, i32 0, i32 1
  %vs_vhost_wwpn = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %vhost_wwpn, ptr %vs_vhost_wwpn, i32 224)
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %call = call fastcc i32 @vhost_scsi_clear_endpoint(ptr noundef %1, ptr noundef nonnull %t)
  call void @vhost_dev_stop(ptr noundef %dev) #15
  call void @vhost_dev_cleanup(ptr noundef %dev) #15
  call fastcc void @vhost_scsi_flush(ptr noundef %1)
  %vqs = getelementptr inbounds %struct.vhost_scsi, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vqs, align 8
  call void @kfree(ptr noundef %5) #15
  call void @kvfree(ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %t) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_set_endpoint(ptr noundef %vs, ptr nocapture noundef readonly %t) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vhost_scsi_mutex, i32 noundef 0) #15
  %mutex = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %nvqs = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp214 = icmp sgt i32 %1, 0
  br i1 %cmp214, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %index.0215, 1
  %2 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvqs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %index.0215 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %index.0215
  %call = tail call zeroext i1 @vhost_vq_access_ok(ptr noundef %arrayidx) #15
  br i1 %call, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end5

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %for.end
  %5 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vs, align 8
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %7 = call ptr @memcpy(ptr %call7.i.i, ptr %6, i32 1024)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %.pn216 = load ptr, ptr @vhost_scsi_list, align 4
  %cmp12.not218 = icmp eq ptr %.pn216, @vhost_scsi_list
  br i1 %cmp12.not218, label %if.end10.if.end88_crit_edge, label %for.body13.lr.ph

if.end10.if.end88_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

for.body13.lr.ph:                                 ; preds = %if.end10
  %vhost_wwpn = getelementptr inbounds %struct.vhost_scsi_target, ptr %t, i32 0, i32 1
  br label %for.body13

for.body13:                                       ; preds = %for.inc49.for.body13_crit_edge, %for.body13.lr.ph
  %.pn220 = phi ptr [ %.pn216, %for.body13.lr.ph ], [ %.pn, %for.inc49.for.body13_crit_edge ]
  %match.0.off0219 = phi i1 [ false, %for.body13.lr.ph ], [ %match.2.off0, %for.inc49.for.body13_crit_edge ]
  %tpg.0221 = getelementptr i8, ptr %.pn220, i32 -16
  %tv_tpg_mutex = getelementptr i8, ptr %.pn220, i32 8
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tpg_nexus = getelementptr i8, ptr %.pn220, i32 100
  %8 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpg_nexus, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %for.body13.for.inc49_crit_edge, label %if.end17

for.body13.for.inc49_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc49

if.end17:                                         ; preds = %for.body13
  %tv_tpg_vhost_count = getelementptr i8, ptr %.pn220, i32 -8
  %10 = ptrtoint ptr %tv_tpg_vhost_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_tpg_vhost_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.not = icmp eq i32 %11, 0
  br i1 %cmp18.not, label %if.end21, label %if.end17.for.inc49_crit_edge

if.end17.for.inc49_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc49

if.end21:                                         ; preds = %if.end17
  %tport = getelementptr i8, ptr %.pn220, i32 104
  %12 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tport, align 4
  %tport_name = getelementptr inbounds %struct.vhost_scsi_tport, ptr %13, i32 0, i32 2
  %call23 = tail call i32 @strcmp(ptr noundef %tport_name, ptr noundef %vhost_wwpn) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.for.inc49_crit_edge

if.end21.for.inc49_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc49

if.then25:                                        ; preds = %if.end21
  %14 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vs, align 8
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %if.then25.if.end33_crit_edge, label %land.lhs.true

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then25
  %16 = ptrtoint ptr %tpg.0221 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tpg.0221, align 4
  %idxprom = zext i16 %17 to i32
  %arrayidx29 = getelementptr ptr, ptr %15, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.undepend.sink.split_crit_edge

land.lhs.true.undepend.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %undepend.sink.split

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.then25.if.end33_crit_edge
  %tpg_group = getelementptr i8, ptr %.pn220, i32 380
  %call35 = tail call i32 @target_depend_item(ptr noundef %tpg_group) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call35) #22
  br label %undepend.sink.split

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %tv_tpg_vhost_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tv_tpg_vhost_count, align 4
  %inc43 = add i32 %21, 1
  store i32 %inc43, ptr %tv_tpg_vhost_count, align 4
  %vhost_scsi = getelementptr i8, ptr %.pn220, i32 940
  %22 = ptrtoint ptr %vhost_scsi to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vs, ptr %vhost_scsi, align 4
  %23 = ptrtoint ptr %tpg.0221 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tpg.0221, align 4
  %idxprom45 = zext i16 %24 to i32
  %arrayidx46 = getelementptr ptr, ptr %call7.i.i, i32 %idxprom45
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tpg.0221, ptr %arrayidx46, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %if.end41, %if.end21.for.inc49_crit_edge, %if.end17.for.inc49_crit_edge, %for.body13.for.inc49_crit_edge
  %match.2.off0 = phi i1 [ %match.0.off0219, %for.body13.for.inc49_crit_edge ], [ %match.0.off0219, %if.end17.for.inc49_crit_edge ], [ %match.0.off0219, %if.end21.for.inc49_crit_edge ], [ true, %if.end41 ]
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %26 = ptrtoint ptr %.pn220 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn220, align 4
  %cmp12.not = icmp eq ptr %.pn, @vhost_scsi_list
  br i1 %cmp12.not, label %for.end54, label %for.inc49.for.body13_crit_edge

for.inc49.for.body13_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body13

for.end54:                                        ; preds = %for.inc49
  br i1 %match.2.off0, label %if.then56, label %for.end54.if.end88_crit_edge

for.end54.if.end88_crit_edge:                     ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then56:                                        ; preds = %for.end54
  %vs_vhost_wwpn = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %vs_vhost_wwpn, ptr %vhost_wwpn, i32 224)
  br label %for.body62

for.body62:                                       ; preds = %for.inc73.for.body62_crit_edge, %if.then56
  %i.0222 = phi i32 [ 2, %if.then56 ], [ %inc74, %for.inc73.for.body62_crit_edge ]
  %arrayidx64 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.0222
  %call66 = tail call zeroext i1 @vhost_vq_is_setup(ptr noundef %arrayidx64) #15
  br i1 %call66, label %if.end68, label %for.body62.for.inc73_crit_edge

for.body62.for.inc73_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73

if.end68:                                         ; preds = %for.body62
  %num = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx64, i32 0, i32 2
  %28 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num, align 8
  %scsi_cmds.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.0222, i32 3
  %30 = ptrtoint ptr %scsi_cmds.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scsi_cmds.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end68.for.inc73_crit_edge

if.end68.for.inc73_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73

if.end.i:                                         ; preds = %if.end68
  %scsi_tags.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.0222, i32 4
  %call.i = tail call i32 @sbitmap_init_node(ptr noundef %scsi_tags.i, i32 noundef %29, i32 noundef -1, i32 noundef 3264, i32 noundef -1, i1 noundef zeroext false, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.vhost_scsi_setup_vq_cmds.exit_crit_edge

if.end.i.vhost_scsi_setup_vq_cmds.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_setup_vq_cmds.exit

if.end3.i:                                        ; preds = %if.end.i
  %max_cmds4.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.0222, i32 5
  %32 = ptrtoint ptr %max_cmds4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %max_cmds4.i, align 8
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 656) #15
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !333

kcalloc.exit.thread.i:                            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %scsi_cmds.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %scsi_cmds.i, align 4
  br label %if.then9.i

if.end7.i.i.i:                                    ; preds = %if.end3.i
  %36 = extractvalue { i32, i1 } %33, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #19
  %37 = ptrtoint ptr %scsi_cmds.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i, ptr %scsi_cmds.i, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.i.if.then9.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then9.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp88.not.i = icmp eq i32 %29, 0
  br i1 %cmp88.not.i, label %for.cond.preheader.i.for.inc73_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc73_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73

if.then9.i:                                       ; preds = %if.end7.i.i.i.if.then9.i_crit_edge, %kcalloc.exit.thread.i
  %alloc_hint.i.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.0222, i32 4, i32 5
  %38 = ptrtoint ptr %alloc_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %alloc_hint.i.i, align 4
  tail call void @free_percpu(ptr noundef %39) #15
  %map.i.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.0222, i32 4, i32 4
  %40 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i.i, align 4
  tail call void @kfree(ptr noundef %41) #15
  %42 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %map.i.i, align 4
  br label %vhost_scsi_setup_vq_cmds.exit

for.cond.i:                                       ; preds = %if.end29.i
  %inc.i = add nuw i32 %i.089.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond.i.for.inc73_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.i.for.inc73_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.089.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %scsi_cmds.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scsi_cmds.i, align 4
  %call1.i.i.i.i62.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 40960, i32 noundef 3520, i32 noundef 4) #19
  %tvc_sgl.i = getelementptr %struct.vhost_scsi_cmd, ptr %44, i32 %i.089.i, i32 9
  %45 = ptrtoint ptr %tvc_sgl.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i.i.i.i62.i, ptr %tvc_sgl.i, align 4
  %tobool15.not.i = icmp eq ptr %call1.i.i.i.i62.i, null
  br i1 %tobool15.not.i, label %for.body.i.out.i_crit_edge, label %if.end19.i

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end19.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i77.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 8192) #20
  %tvc_upages.i = getelementptr %struct.vhost_scsi_cmd, ptr %44, i32 %i.089.i, i32 11
  %47 = ptrtoint ptr %tvc_upages.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i77.i, ptr %tvc_upages.i, align 4
  %tobool22.not.i = icmp eq ptr %call7.i.i.i77.i, null
  br i1 %tobool22.not.i, label %if.end19.i.out.i_crit_edge, label %if.end29.i

if.end19.i.out.i_crit_edge:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end29.i:                                       ; preds = %if.end19.i
  %call1.i.i.i.i83.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 40960, i32 noundef 3520, i32 noundef 4) #19
  %tvc_prot_sgl.i = getelementptr %struct.vhost_scsi_cmd, ptr %44, i32 %i.089.i, i32 10
  %48 = ptrtoint ptr %tvc_prot_sgl.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call1.i.i.i.i83.i, ptr %tvc_prot_sgl.i, align 8
  %tobool32.not.i = icmp eq ptr %call1.i.i.i.i83.i, null
  br i1 %tobool32.not.i, label %if.end29.i.out.i_crit_edge, label %for.cond.i

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

out.i:                                            ; preds = %if.end29.i.out.i_crit_edge, %if.end19.i.out.i_crit_edge, %for.body.i.out.i_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.13, %for.body.i.out.i_crit_edge ], [ @.str.16, %if.end19.i.out.i_crit_edge ], [ @.str.19, %if.end29.i.out.i_crit_edge ]
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink.i) #22
  tail call fastcc void @vhost_scsi_destroy_vq_cmds(ptr noundef %arrayidx64) #15
  br label %vhost_scsi_setup_vq_cmds.exit

vhost_scsi_setup_vq_cmds.exit:                    ; preds = %out.i, %if.then9.i, %if.end.i.vhost_scsi_setup_vq_cmds.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0222)
  %cmp92226 = icmp ugt i32 %i.0222, 2
  br i1 %cmp92226, label %vhost_scsi_setup_vq_cmds.exit.for.body93_crit_edge, label %vhost_scsi_setup_vq_cmds.exit.undepend_crit_edge

vhost_scsi_setup_vq_cmds.exit.undepend_crit_edge: ; preds = %vhost_scsi_setup_vq_cmds.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %undepend

vhost_scsi_setup_vq_cmds.exit.for.body93_crit_edge: ; preds = %vhost_scsi_setup_vq_cmds.exit
  br label %for.body93

for.inc73:                                        ; preds = %for.cond.i.for.inc73_crit_edge, %for.cond.preheader.i.for.inc73_crit_edge, %if.end68.for.inc73_crit_edge, %for.body62.for.inc73_crit_edge
  %inc74 = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc74, 128
  br i1 %exitcond.not, label %for.inc73.for.body78_crit_edge, label %for.inc73.for.body62_crit_edge

for.inc73.for.body62_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body62

for.inc73.for.body78_crit_edge:                   ; preds = %for.inc73
  br label %for.body78

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.inc73.for.body78_crit_edge
  %i.1224 = phi i32 [ %inc86, %for.body78.for.body78_crit_edge ], [ 0, %for.inc73.for.body78_crit_edge ]
  %arrayidx80 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.1224
  %mutex82 = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx80, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex82, i32 noundef 0) #15
  %private_data1.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx80, i32 0, i32 27
  %49 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %private_data1.i, align 8
  %call83 = tail call i32 @vhost_vq_init_access(ptr noundef %arrayidx80) #15
  tail call void @mutex_unlock(ptr noundef %mutex82) #15
  %inc86 = add nuw nsw i32 %i.1224, 1
  %exitcond244.not = icmp eq i32 %inc86, 128
  br i1 %exitcond244.not, label %for.body78.if.end88_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body78

for.body78.if.end88_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.end88:                                         ; preds = %for.body78.if.end88_crit_edge, %for.end54.if.end88_crit_edge, %if.end10.if.end88_crit_edge
  %ret.0 = phi i32 [ -17, %for.end54.if.end88_crit_edge ], [ -17, %if.end10.if.end88_crit_edge ], [ 0, %for.body78.if.end88_crit_edge ]
  tail call fastcc void @vhost_scsi_flush(ptr noundef %vs)
  %50 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vs, align 8
  tail call void @kfree(ptr noundef %51) #15
  %52 = ptrtoint ptr %vs to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %vs, align 8
  br label %out

for.body93:                                       ; preds = %for.inc104.for.body93_crit_edge, %vhost_scsi_setup_vq_cmds.exit.for.body93_crit_edge
  %i.2227.in = phi i32 [ %i.2227, %for.inc104.for.body93_crit_edge ], [ %i.0222, %vhost_scsi_setup_vq_cmds.exit.for.body93_crit_edge ]
  %i.2227 = add nsw i32 %i.2227.in, -1
  %arrayidx95 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.2227
  %private_data.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx95, i32 0, i32 27
  %53 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private_data.i, align 8
  %tobool98.not = icmp eq ptr %54, null
  br i1 %tobool98.not, label %if.then99, label %for.body93.for.inc104_crit_edge

for.body93.for.inc104_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc104

if.then99:                                        ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vhost_scsi_destroy_vq_cmds(ptr noundef %arrayidx95)
  br label %for.inc104

for.inc104:                                       ; preds = %if.then99, %for.body93.for.inc104_crit_edge
  %cmp92 = icmp sgt i32 %i.2227.in, 3
  br i1 %cmp92, label %for.inc104.for.body93_crit_edge, label %for.inc104.undepend_crit_edge

for.inc104.undepend_crit_edge:                    ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #17
  br label %undepend

for.inc104.for.body93_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body93

undepend.sink.split:                              ; preds = %do.end, %land.lhs.true.undepend.sink.split_crit_edge
  %ret.1.ph = phi i32 [ %call35, %do.end ], [ -17, %land.lhs.true.undepend.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  br label %undepend

undepend:                                         ; preds = %undepend.sink.split, %for.inc104.undepend_crit_edge, %vhost_scsi_setup_vq_cmds.exit.undepend_crit_edge
  %ret.1 = phi i32 [ -12, %vhost_scsi_setup_vq_cmds.exit.undepend_crit_edge ], [ %ret.1.ph, %undepend.sink.split ], [ -12, %for.inc104.undepend_crit_edge ]
  br label %for.body109

for.body109:                                      ; preds = %for.inc119.for.body109_crit_edge, %undepend
  %i.3228 = phi i32 [ 0, %undepend ], [ %inc120, %for.inc119.for.body109_crit_edge ]
  %arrayidx110 = getelementptr ptr, ptr %call7.i.i, i32 %i.3228
  %55 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx110, align 4
  %tobool111.not = icmp eq ptr %56, null
  br i1 %tobool111.not, label %for.body109.for.inc119_crit_edge, label %if.then112

for.body109.for.inc119_crit_edge:                 ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc119

if.then112:                                       ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #17
  %tv_tpg_vhost_count113 = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %tv_tpg_vhost_count113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tv_tpg_vhost_count113, align 4
  %dec114 = add i32 %58, -1
  store i32 %dec114, ptr %tv_tpg_vhost_count113, align 4
  %tpg_group116 = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %56, i32 0, i32 8, i32 12
  tail call void @target_undepend_item(ptr noundef %tpg_group116) #15
  br label %for.inc119

for.inc119:                                       ; preds = %if.then112, %for.body109.for.inc119_crit_edge
  %inc120 = add nuw nsw i32 %i.3228, 1
  %exitcond245.not = icmp eq i32 %inc120, 256
  br i1 %exitcond245.not, label %for.end121, label %for.inc119.for.body109_crit_edge

for.inc119.for.body109_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body109

for.end121:                                       ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %out

out:                                              ; preds = %for.end121, %if.end88, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %for.end121 ], [ %ret.0, %if.end88 ], [ -12, %for.end.out_crit_edge ], [ -14, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call void @mutex_unlock(ptr noundef nonnull @vhost_scsi_mutex) #15
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_clear_endpoint(ptr noundef %vs, ptr noundef %t) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vhost_scsi_mutex, i32 noundef 0) #15
  %mutex = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %nvqs = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp150 = icmp sgt i32 %1, 0
  br i1 %cmp150, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %index.0151, 1
  %2 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvqs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %index.0151 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %index.0151
  %call = tail call zeroext i1 @vhost_vq_access_ok(ptr noundef %arrayidx) #15
  br i1 %call, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %4 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vs, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.cond5.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond5.preheader:                              ; preds = %for.end
  %vhost_wwpn = getelementptr inbounds %struct.vhost_scsi_target, ptr %t, i32 0, i32 1
  br label %for.body7.outer

for.body7.outer:                                  ; preds = %for.inc33.thread.for.body7.outer_crit_edge, %for.cond5.preheader
  %i.0153.ph = phi i32 [ %inc34163, %for.inc33.thread.for.body7.outer_crit_edge ], [ 0, %for.cond5.preheader ]
  %match.0.off0152.ph = phi i1 [ true, %for.inc33.thread.for.body7.outer_crit_edge ], [ false, %for.cond5.preheader ]
  %6 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vs, align 8
  br label %for.body7

for.body7:                                        ; preds = %for.inc33.for.body7_crit_edge, %for.body7.outer
  %i.0153 = phi i32 [ %inc34, %for.inc33.for.body7_crit_edge ], [ %i.0153.ph, %for.body7.outer ]
  %arrayidx9 = getelementptr ptr, ptr %7, i32 %i.0153
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %for.inc33, label %if.end12

if.end12:                                         ; preds = %for.body7
  %tv_tpg_mutex = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %9, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tport = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tport, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end12.err_tpg_crit_edge, label %if.end15

if.end12.err_tpg_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_tpg

if.end15:                                         ; preds = %if.end12
  %tport_name = getelementptr inbounds %struct.vhost_scsi_tport, ptr %11, i32 0, i32 2
  %call17 = tail call i32 @strcmp(ptr noundef %tport_name, ptr noundef %vhost_wwpn) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc33.thread, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %9, align 4
  %conv22 = zext i16 %13 to i32
  %vhost_tpgt = getelementptr inbounds %struct.vhost_scsi_target, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %vhost_tpgt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vhost_tpgt, align 4
  %conv25 = zext i16 %15 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %tport_name, i32 noundef %conv22, ptr noundef %vhost_wwpn, i32 noundef %conv25) #22
  br label %err_tpg

for.inc33:                                        ; preds = %for.body7
  %inc34 = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc34, 256
  br i1 %exitcond.not, label %for.end35, label %for.inc33.for.body7_crit_edge

for.inc33.for.body7_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7

for.inc33.thread:                                 ; preds = %if.end15
  %tv_tpg_vhost_count = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %tv_tpg_vhost_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_tpg_vhost_count, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %tv_tpg_vhost_count, align 4
  %vhost_scsi = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %9, i32 0, i32 9
  %18 = ptrtoint ptr %vhost_scsi to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vhost_scsi, align 4
  %19 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vs, align 8
  %arrayidx30 = getelementptr ptr, ptr %20, i32 %i.0153
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx30, align 4
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %tpg_group = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %9, i32 0, i32 8, i32 12
  tail call void @target_undepend_item(ptr noundef %tpg_group) #15
  %inc34163 = add nuw nsw i32 %i.0153, 1
  %exitcond.not164 = icmp eq i32 %inc34163, 256
  br i1 %exitcond.not164, label %for.inc33.thread.for.body41.preheader_crit_edge, label %for.inc33.thread.for.body7.outer_crit_edge

for.inc33.thread.for.body7.outer_crit_edge:       ; preds = %for.inc33.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.outer

for.inc33.thread.for.body41.preheader_crit_edge:  ; preds = %for.inc33.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body41.preheader

for.end35:                                        ; preds = %for.inc33
  br i1 %match.0.off0152.ph, label %for.end35.for.body41.preheader_crit_edge, label %for.end35.if.end60_crit_edge

for.end35.if.end60_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

for.end35.for.body41.preheader_crit_edge:         ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body41.preheader

for.body41.preheader:                             ; preds = %for.end35.for.body41.preheader_crit_edge, %for.inc33.thread.for.body41.preheader_crit_edge
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.preheader
  %i.1154 = phi i32 [ %inc48, %for.body41.for.body41_crit_edge ], [ 0, %for.body41.preheader ]
  %arrayidx43 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.1154
  %mutex45 = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx43, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex45, i32 noundef 0) #15
  %private_data1.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx43, i32 0, i32 27
  %22 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %private_data1.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex45) #15
  %inc48 = add nuw nsw i32 %i.1154, 1
  %exitcond160.not = icmp eq i32 %inc48, 128
  br i1 %exitcond160.not, label %for.end49, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body41

for.end49:                                        ; preds = %for.body41
  tail call fastcc void @vhost_scsi_flush(ptr noundef %vs)
  br label %for.body53

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.end49
  %i.2155 = phi i32 [ 0, %for.end49 ], [ %inc58, %for.body53.for.body53_crit_edge ]
  %arrayidx55 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.2155
  tail call fastcc void @vhost_scsi_destroy_vq_cmds(ptr noundef %arrayidx55)
  %inc58 = add nuw nsw i32 %i.2155, 1
  %exitcond161.not = icmp eq i32 %inc58, 128
  br i1 %exitcond161.not, label %for.body53.if.end60_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body53

for.body53.if.end60_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.end60:                                         ; preds = %for.body53.if.end60_crit_edge, %for.end35.if.end60_crit_edge
  tail call fastcc void @vhost_scsi_flush(ptr noundef %vs)
  %23 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vs, align 8
  tail call void @kfree(ptr noundef %24) #15
  %25 = ptrtoint ptr %vs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vs, align 8
  %vs_events_nr = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 9
  %26 = ptrtoint ptr %vs_events_nr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vs_events_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool63.not = icmp eq i32 %27, 0
  br i1 %tobool63.not, label %if.end60.cleanup_crit_edge, label %do.end75, !prof !325

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end75:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1739, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

err_tpg:                                          ; preds = %do.end, %if.end12.err_tpg_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ -19, %if.end12.err_tpg_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %err_tpg, %do.end75, %if.end60.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end75 ], [ 0, %if.end60.cleanup_crit_edge ], [ %ret.0, %err_tpg ], [ 0, %for.end.cleanup_crit_edge ], [ -14, %for.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call void @mutex_unlock(ptr noundef nonnull @vhost_scsi_mutex) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vring_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_vq_access_ok(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_depend_item(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_vq_is_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vq_init_access(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_flush(ptr noundef %vs) unnamed_addr #1 align 64 {
entry:
  %old_inflight = alloca [128 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %old_inflight) #15
  %0 = call ptr @memset(ptr %old_inflight, i32 255, i32 512)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.033.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mutex.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.033.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %inflight_idx.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.033.i, i32 2
  %1 = ptrtoint ptr %inflight_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inflight_idx.i, align 8
  %arrayidx6.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.033.i, i32 1, i32 %2
  %arrayidx7.i = getelementptr ptr, ptr %old_inflight, i32 %i.033.i
  %3 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx6.i, ptr %arrayidx7.i, align 4
  %xor.i = xor i32 %2, 1
  store i32 %xor.i, ptr %inflight_idx.i, align 8
  %arrayidx15.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.033.i, i32 1, i32 %xor.i
  %kref.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 %i.033.i, i32 1, i32 %xor.i, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  %4 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %kref.i, align 4
  %5 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx15.i, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %arrayidx15.i, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #15
  tail call void @mutex_unlock(ptr noundef %mutex.i) #15
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.body.i.for.body_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.body_crit_edge:                    ; preds = %for.body.i
  br label %for.body

for.body:                                         ; preds = %kref_put.exit.for.body_crit_edge, %for.body.i.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %kref_put.exit.for.body_crit_edge ], [ 0, %for.body.i.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x ptr], ptr %old_inflight, i32 0, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %kref = getelementptr inbounds %struct.vhost_scsi_inflight, ptr %7, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !325

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @complete(ptr noundef %7) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %kref_put.exit.for.body_crit_edge

kref_put.exit.for.body_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %kref_put.exit
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  tail call void @vhost_work_dev_flush(ptr noundef %dev) #15
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.end
  %i.115 = phi i32 [ 0, %for.end ], [ %inc6, %for.body3.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [128 x ptr], ptr %old_inflight, i32 0, i32 %i.115
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  tail call void @wait_for_completion(ptr noundef %10) #15
  %inc6 = add nuw nsw i32 %i.115, 1
  %exitcond16.not = icmp eq i32 %inc6, 128
  br i1 %exitcond16.not, label %for.end7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3

for.end7:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %old_inflight) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_destroy_vq_cmds(ptr nocapture noundef %vq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_cmds = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %scsi_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_cmds, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_cmds = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 5
  %2 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %scsi_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scsi_cmds, align 4
  %tvc_sgl = getelementptr %struct.vhost_scsi_cmd, ptr %5, i32 %i.016, i32 9
  %6 = ptrtoint ptr %tvc_sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tvc_sgl, align 4
  tail call void @kfree(ptr noundef %7) #15
  %tvc_prot_sgl = getelementptr %struct.vhost_scsi_cmd, ptr %5, i32 %i.016, i32 10
  %8 = ptrtoint ptr %tvc_prot_sgl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tvc_prot_sgl, align 8
  tail call void @kfree(ptr noundef %9) #15
  %tvc_upages = getelementptr %struct.vhost_scsi_cmd, ptr %5, i32 %i.016, i32 11
  %10 = ptrtoint ptr %tvc_upages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tvc_upages, align 4
  tail call void @kfree(ptr noundef %11) #15
  %inc = add nuw i32 %i.016, 1
  %12 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_cmds, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %alloc_hint.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alloc_hint.i, align 4
  tail call void @free_percpu(ptr noundef %15) #15
  %map.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  tail call void @kfree(ptr noundef %17) #15
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %map.i, align 4
  %19 = ptrtoint ptr %scsi_cmds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scsi_cmds, align 4
  tail call void @kfree(ptr noundef %20) #15
  %21 = ptrtoint ptr %scsi_cmds to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %scsi_cmds, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_undepend_item(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_work_dev_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_log_access_ok(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_work_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_complete_cmd_work(ptr noundef %work) #1 align 64 {
entry:
  %signal = alloca [4 x i32], align 4
  %v_rsp = alloca %struct.virtio_scsi_cmd_resp, align 4
  %iov_iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %signal) #15
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %v_rsp) #15
  %0 = call ptr @memset(ptr %v_rsp, i32 255, i32 108)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov_iter) #15
  %1 = call ptr @memset(ptr %iov_iter, i32 255, i32 24)
  %2 = call ptr @memset(ptr %signal, i32 0, i32 16)
  %vs_completion_list = getelementptr i8, ptr %work, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vs_completion_list, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @llvm.prefetch.p0(ptr %vs_completion_list, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %vs_completion_list) #15, !srcloc !338
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  %4 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !339
  %cmd.081 = getelementptr i8, ptr %4, i32 -648
  %cmp.not82 = icmp eq ptr %cmd.081, inttoptr (i32 -648 to ptr)
  br i1 %cmp.not82, label %entry.while.cond.preheader_crit_edge, label %land.rhs.lr.ph

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

land.rhs.lr.ph:                                   ; preds = %entry
  %resid = getelementptr inbounds %struct.virtio_scsi_cmd_resp, ptr %v_rsp, i32 0, i32 1
  %status = getelementptr inbounds %struct.virtio_scsi_cmd_resp, ptr %v_rsp, i32 0, i32 3
  %sense = getelementptr inbounds %struct.virtio_scsi_cmd_resp, ptr %v_rsp, i32 0, i32 5
  %vqs = getelementptr i8, ptr %work, i32 -1239040
  %sub.ptr.rhs.cast = ptrtoint ptr %vqs to i32
  br label %land.rhs

while.cond.preheader:                             ; preds = %if.end44.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %call4787 = call i32 @_find_next_bit_be(ptr noundef nonnull %signal, i32 noundef 128, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call4787)
  %cmp4888 = icmp slt i32 %call4787, 128
  br i1 %cmp4888, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev = getelementptr i8, ptr %work, i32 -1239304
  %vqs50 = getelementptr i8, ptr %work, i32 -1239040
  br label %while.body

land.rhs:                                         ; preds = %if.end44.land.rhs_crit_edge, %land.rhs.lr.ph
  %cmd.085 = phi ptr [ %cmd.081, %land.rhs.lr.ph ], [ %cmd.0, %if.end44.land.rhs_crit_edge ]
  %call.pn83 = phi ptr [ %4, %land.rhs.lr.ph ], [ %6, %if.end44.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %call.pn83 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.pn83, align 8
  %tvc_se_cmd = getelementptr i8, ptr %call.pn83, i32 -568
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_complete_cmd_work.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_complete_cmd_work, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %residual_count = getelementptr i8, ptr %call.pn83, i32 -512
  %7 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %residual_count, align 8
  %scsi_status = getelementptr i8, ptr %call.pn83, i32 -564
  %9 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scsi_status, align 4
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_complete_cmd_work.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef %cmd.085, i32 noundef %8, i32 noundef %conv) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs
  %11 = call ptr @memset(ptr %v_rsp, i32 0, i32 108)
  %tvc_vq = getelementptr i8, ptr %call.pn83, i32 -580
  %12 = ptrtoint ptr %tvc_vq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tvc_vq, align 4
  %residual_count11 = getelementptr i8, ptr %call.pn83, i32 -512
  %14 = ptrtoint ptr %residual_count11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %residual_count11, align 8
  %is_le.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %13, i32 0, i32 33
  %16 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not.i = icmp eq i8 %17, 0
  %18 = call i32 @llvm.bswap.i32(i32 %15) #15
  %retval.0.i.i = select i1 %tobool.i.not.i, i32 %15, i32 %18
  %19 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i, ptr %resid, align 4
  %scsi_status13 = getelementptr i8, ptr %call.pn83, i32 -564
  %20 = ptrtoint ptr %scsi_status13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scsi_status13, align 4
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %status, align 2
  %23 = ptrtoint ptr %tvc_vq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tvc_vq, align 4
  %scsi_sense_length = getelementptr i8, ptr %call.pn83, i32 -562
  %25 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %scsi_sense_length, align 2
  %conv15 = zext i16 %26 to i32
  %is_le.i.i75 = getelementptr inbounds %struct.vhost_virtqueue, ptr %24, i32 0, i32 33
  %27 = ptrtoint ptr %is_le.i.i75 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_le.i.i75, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i.not.i76 = icmp eq i8 %28, 0
  %29 = call i32 @llvm.bswap.i32(i32 %conv15) #15
  %retval.0.i.i77 = select i1 %tobool.i.not.i76, i32 %conv15, i32 %29
  %30 = ptrtoint ptr %v_rsp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.i77, ptr %v_rsp, align 4
  %tvc_sense_buf = getelementptr i8, ptr %call.pn83, i32 -96
  %31 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %scsi_sense_length, align 2
  %conv20 = zext i16 %32 to i32
  %33 = call ptr @memcpy(ptr %sense, ptr %tvc_sense_buf, i32 %conv20)
  %tvc_resp_iov = getelementptr i8, ptr %call.pn83, i32 -592
  %tvc_in_iovs = getelementptr i8, ptr %call.pn83, i32 -640
  %34 = ptrtoint ptr %tvc_in_iovs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tvc_in_iovs, align 8
  call void @iov_iter_init(ptr noundef nonnull %iov_iter, i32 noundef 0, ptr noundef %tvc_resp_iov, i32 noundef %35, i32 noundef 108) #15
  %call3.i = call i32 @_copy_to_iter(ptr noundef nonnull %v_rsp, i32 noundef 108, ptr noundef nonnull %iov_iter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %call3.i)
  %cmp22 = icmp eq i32 %call3.i, 108
  br i1 %cmp22, label %if.then30, label %do.end41, !prof !325

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %tvc_vq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tvc_vq, align 4
  %38 = ptrtoint ptr %cmd.085 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd.085, align 8
  %call32 = call i32 @vhost_add_used(ptr noundef %37, i32 noundef %39, i32 noundef 0) #15
  %40 = ptrtoint ptr %tvc_vq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tvc_vq, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %41 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 9680
  %rem.i = and i32 %sub.ptr.div, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %sub.ptr.div, 5
  %add.ptr.i = getelementptr i32, ptr %signal, i32 %div2.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %43
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end44

do.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #22
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.then30
  call fastcc void @vhost_scsi_release_cmd_res(ptr noundef %tvc_se_cmd)
  %cmd.0 = getelementptr i8, ptr %6, i32 -648
  %cmp.not = icmp eq ptr %cmd.0, inttoptr (i32 -648 to ptr)
  br i1 %cmp.not, label %if.end44.while.cond.preheader_crit_edge, label %if.end44.land.rhs_crit_edge

if.end44.land.rhs_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.end44.while.cond.preheader_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call4789 = phi i32 [ %call4787, %while.body.lr.ph ], [ %call47, %while.body.while.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.vhost_scsi_virtqueue], ptr %vqs50, i32 0, i32 %call4789
  call void @vhost_signal(ptr noundef %dev, ptr noundef %arrayidx) #15
  %add46 = add nsw i32 %call4789, 1
  %call47 = call i32 @_find_next_bit_be(ptr noundef nonnull %signal, i32 noundef 128, i32 noundef %add46) #15
  %cmp48 = icmp slt i32 %call47, 128
  br i1 %cmp48, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter) #15
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %v_rsp) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %signal) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_evt_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1239552
  %mutex = getelementptr i8, ptr %work, i32 -1229372
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %vs_event_list = getelementptr i8, ptr %work, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vs_event_list, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @llvm.prefetch.p0(ptr %vs_event_list, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %vs_event_list) #15, !srcloc !338
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !339
  %evt.016 = getelementptr i8, ptr %1, i32 -16
  %cmp.not17 = icmp eq ptr %evt.016, inttoptr (i32 -16 to ptr)
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %vs_events_nr.i = getelementptr i8, ptr %work, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %land.rhs.lr.ph
  %evt.019 = phi ptr [ %evt.016, %land.rhs.lr.ph ], [ %evt.0, %land.rhs.land.rhs_crit_edge ]
  %call.pn18 = phi ptr [ %1, %land.rhs.lr.ph ], [ %3, %land.rhs.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %call.pn18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.pn18, align 4
  tail call fastcc void @vhost_scsi_do_evt_work(ptr noundef %add.ptr, ptr noundef %evt.019)
  %4 = ptrtoint ptr %vs_events_nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vs_events_nr.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %vs_events_nr.i, align 4
  tail call void @kfree(ptr noundef %evt.019) #15
  %evt.0 = getelementptr i8, ptr %3, i32 -16
  %cmp.not = icmp eq ptr %evt.0, inttoptr (i32 -16 to ptr)
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_ctl_handle_kick(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_ctl_handle_kick.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_ctl_handle_kick, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_ctl_handle_kick.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr3 = getelementptr i8, ptr %1, i32 -232
  tail call fastcc void @vhost_scsi_ctl_handle_vq(ptr noundef %add.ptr3, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_evt_handle_kick(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -232
  %mutex = getelementptr i8, ptr %work, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %private_data.i = getelementptr i8, ptr %work, i32 8764
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %vs_events_missed = getelementptr i8, ptr %1, i32 1239336
  %4 = ptrtoint ptr %vs_events_missed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vs_events_missed, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.then5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vhost_scsi_send_evt(ptr noundef %add.ptr3, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.then5, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_handle_kick(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -232
  tail call fastcc void @vhost_scsi_handle_vq(ptr noundef %add.ptr3, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_add_used(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_release_cmd_res(ptr nocapture noundef readonly %se_cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tvc_vq = getelementptr i8, ptr %se_cmd, i32 -12
  %0 = ptrtoint ptr %tvc_vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tvc_vq, align 4
  %inflight4 = getelementptr i8, ptr %se_cmd, i32 572
  %2 = ptrtoint ptr %inflight4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inflight4, align 4
  %tvc_sgl_count = getelementptr i8, ptr %se_cmd, i32 -48
  %4 = ptrtoint ptr %tvc_sgl_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tvc_sgl_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %tvc_sgl_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tvc_sgl_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp61.not = icmp eq i32 %7, 0
  br i1 %cmp61.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tvc_sgl = getelementptr i8, ptr %se_cmd, i32 -36
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %tvc_sgl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tvc_sgl, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %9, i32 %i.062
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !325

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #15, !srcloc !340
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i31 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i.i = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !325

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %15, -1
  %.pre67 = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi68 = phi ptr [ %12, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre67, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi68, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !333

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %.pre-phi68, ptr noundef nonnull @.str.27) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !341
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !343
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vhost_scsi_release_cmd_res, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !322

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi68, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %.pre-phi68) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.062, 1
  %19 = ptrtoint ptr %tvc_sgl_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tvc_sgl_count, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.if.end_crit_edge

put_page.exit.if.end_crit_edge:                   ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end:                                           ; preds = %put_page.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %tvc_prot_sgl_count = getelementptr i8, ptr %se_cmd, i32 -44
  %21 = ptrtoint ptr %tvc_prot_sgl_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tvc_prot_sgl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %for.cond8.preheader

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

for.cond8.preheader:                              ; preds = %if.end
  %23 = ptrtoint ptr %tvc_prot_sgl_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tvc_prot_sgl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1063.not = icmp eq i32 %24, 0
  br i1 %cmp1063.not, label %for.cond8.preheader.if.end17_crit_edge, label %for.body11.lr.ph

for.cond8.preheader.if.end17_crit_edge:           ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %tvc_prot_sgl = getelementptr i8, ptr %se_cmd, i32 -32
  br label %for.body11

for.body11:                                       ; preds = %put_page.exit56.for.body11_crit_edge, %for.body11.lr.ph
  %i.164 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc15, %put_page.exit56.for.body11_crit_edge ]
  %25 = ptrtoint ptr %tvc_prot_sgl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tvc_prot_sgl, align 8
  %arrayidx12 = getelementptr %struct.scatterlist, ptr %26, i32 %i.164
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12, align 4
  %and.i.i32 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.i.not.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.i.not.i33, label %sg_page.exit36, label %do.body2.i34, !prof !325

do.body2.i34:                                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #15, !srcloc !340
  unreachable

sg_page.exit36:                                   ; preds = %for.body11
  %and.i35 = and i32 %28, -4
  %29 = inttoptr i32 %and.i35 to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i37 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i38, label %sg_page.exit36._compound_head.exit.i46_crit_edge, label %if.then.i.i40, !prof !325

sg_page.exit36._compound_head.exit.i46_crit_edge: ; preds = %sg_page.exit36
  call void @__sanitizer_cov_trace_pc() #17
  br label %_compound_head.exit.i46

if.then.i.i40:                                    ; preds = %sg_page.exit36
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i39 = add i32 %32, -1
  %.pre = inttoptr i32 %sub.i.i39 to ptr
  br label %_compound_head.exit.i46

_compound_head.exit.i46:                          ; preds = %if.then.i.i40, %sg_page.exit36._compound_head.exit.i46_crit_edge
  %.pre-phi = phi ptr [ %29, %sg_page.exit36._compound_head.exit.i46_crit_edge ], [ %.pre, %if.then.i.i40 ]
  %_refcount.i.i.i.i.i43 = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i44 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i43, i32 noundef 4) #15
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i45 = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i45, label %if.then.i.i.i.i47, label %do.end5.i.i.i.i51, !prof !333

if.then.i.i.i.i47:                                ; preds = %_compound_head.exit.i46
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.27) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !341
  unreachable

do.end5.i.i.i.i51:                                ; preds = %_compound_head.exit.i46
  %call.i.i.i10.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i43, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i43, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i43, ptr %_refcount.i.i.i.i.i43, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i43) #15, !srcloc !343
  %asmresult.i.i.i.i.i.i.i.i.i.i49 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i49, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vhost_scsi_release_cmd_res, %if.then.i.i.i.i.i53)) #15
          to label %folio_put_testzero.exit.i.i54 [label %if.then.i.i.i.i.i53], !srcloc !322

if.then.i.i.i.i.i53:                              ; preds = %do.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i52 = zext i1 %cmp.i.i.i.i.i.i.i50 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i52) #15
  br label %folio_put_testzero.exit.i.i54

folio_put_testzero.exit.i.i54:                    ; preds = %if.then.i.i.i.i.i53, %do.end5.i.i.i.i51
  br i1 %cmp.i.i.i.i.i.i.i50, label %if.then.i4.i55, label %folio_put_testzero.exit.i.i54.put_page.exit56_crit_edge

folio_put_testzero.exit.i.i54.put_page.exit56_crit_edge: ; preds = %folio_put_testzero.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit56

if.then.i4.i55:                                   ; preds = %folio_put_testzero.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %.pre-phi) #15
  br label %put_page.exit56

put_page.exit56:                                  ; preds = %if.then.i4.i55, %folio_put_testzero.exit.i.i54.put_page.exit56_crit_edge
  %inc15 = add nuw i32 %i.164, 1
  %36 = ptrtoint ptr %tvc_prot_sgl_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tvc_prot_sgl_count, align 4
  %cmp10 = icmp ult i32 %inc15, %37
  br i1 %cmp10, label %put_page.exit56.for.body11_crit_edge, label %put_page.exit56.if.end17_crit_edge

put_page.exit56.if.end17_crit_edge:               ; preds = %put_page.exit56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

put_page.exit56.for.body11_crit_edge:             ; preds = %put_page.exit56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

if.end17:                                         ; preds = %put_page.exit56.if.end17_crit_edge, %for.cond8.preheader.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %map_tag = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 8
  %38 = ptrtoint ptr %map_tag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %map_tag, align 4
  %shift.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %1, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %shift.i, align 4
  %notmask.i = shl nsw i32 -1, %41
  %sub.i = xor i32 %notmask.i, -1
  %and.i57 = and i32 %39, %sub.i
  %map.i.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %1, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i.i, align 4
  %shr.i.i = lshr i32 %39, %41
  %word.i.i = getelementptr %struct.sbitmap_word, ptr %43, i32 %shr.i.i, i32 2
  tail call void @_clear_bit(i32 noundef %and.i57, ptr noundef %word.i.i) #15
  %kref.i = getelementptr inbounds %struct.vhost_scsi_inflight, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !335
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i59, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.vhost_scsi_put_inflight.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !325

if.end5.i.i.i.i.i.vhost_scsi_put_inflight.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_put_inflight.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #15
  br label %vhost_scsi_put_inflight.exit

if.then.i.i59:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @complete(ptr noundef %3) #15
  br label %vhost_scsi_put_inflight.exit

vhost_scsi_put_inflight.exit:                     ; preds = %if.then.i.i59, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.vhost_scsi_put_inflight.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_signal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_do_evt_work(ptr noundef %vs, ptr noundef %evt) unnamed_addr #1 align 64 {
entry:
  %out = alloca i32, align 4
  %in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #15
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out, align 4, !annotation !323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #15
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %in, align 4, !annotation !323
  %private_data.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 27
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %again.preheader

again.preheader:                                  ; preds = %entry
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  %iov = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 21
  %num = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 2
  br label %again

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vs_events_missed = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %4 = ptrtoint ptr %vs_events_missed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %vs_events_missed, align 8
  br label %cleanup

again:                                            ; preds = %if.then8.again_crit_edge, %again.preheader
  call void @vhost_disable_notify(ptr noundef %dev, ptr noundef %arrayidx) #15
  %call3 = call i32 @vhost_get_vq_desc(ptr noundef %arrayidx, ptr noundef %iov, i32 noundef 1024, ptr noundef nonnull %out, ptr noundef nonnull %in, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  %vs_events_missed5 = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %5 = ptrtoint ptr %vs_events_missed5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %vs_events_missed5, align 8
  br label %cleanup

if.end6:                                          ; preds = %again
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %7)
  %cmp7 = icmp eq i32 %call3, %7
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = call zeroext i1 @vhost_enable_notify(ptr noundef %dev, ptr noundef %arrayidx) #15
  br i1 %call10, label %if.then8.again_crit_edge, label %if.end12

if.then8.again_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %vs_events_missed13 = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %8 = ptrtoint ptr %vs_events_missed13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %vs_events_missed13, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out, align 4
  %iov_len = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 21, i32 %10, i32 1
  %11 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp17.not = icmp eq i32 %12, 16
  br i1 %cmp17.not, label %if.end37, label %do.body19

do.body19:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_do_evt_work, %if.then24)) #15
          to label %do.end [label %if.then24], !srcloc !322

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  %iov_len27 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 21, i32 %14, i32 1
  %15 = ptrtoint ptr %iov_len27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iov_len27, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.29, i32 noundef %16) #15
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body19
  %error_ctx = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 9
  %17 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %error_ctx, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %do.end.do.end35_crit_edge, label %if.then30

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end35

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = call i64 @eventfd_signal(ptr noundef nonnull %18, i64 noundef 1) #15
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.end.do.end35_crit_edge
  %vs_events_missed36 = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %19 = ptrtoint ptr %vs_events_missed36 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %vs_events_missed36, align 8
  br label %cleanup

if.end37:                                         ; preds = %if.end14
  %vs_events_missed38 = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %20 = ptrtoint ptr %vs_events_missed38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vs_events_missed38, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool39.not = icmp eq i8 %21, 0
  br i1 %tobool39.not, label %if.end37.if.end44_crit_edge, label %if.then40

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %is_le.i.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 33
  %22 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i = icmp eq i8 %23, 0
  %retval.0.i.i = select i1 %tobool.i.not.i, i32 -2147483648, i32 128
  %24 = ptrtoint ptr %evt to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %evt, align 1
  %or = or i32 %retval.0.i.i, %25
  store i32 %or, ptr %evt, align 1
  %26 = ptrtoint ptr %vs_events_missed38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %vs_events_missed38, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge
  %arrayidx46 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 21, i32 %10
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx46, align 8
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 143) #15
  %call.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i, label %if.end44.do.body52_crit_edge, label %__copy_to_user.exit

if.end44.do.body52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body52

__copy_to_user.exit:                              ; preds = %if.end44
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %evt, i32 noundef 16) #15
  %call.i8.i = call i32 @arm_copy_to_user(ptr noundef %28, ptr noundef %evt, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool48.not = icmp eq i32 %call.i8.i, 0
  br i1 %tobool48.not, label %if.then49, label %__copy_to_user.exit.do.body52_crit_edge

__copy_to_user.exit.do.body52_crit_edge:          ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body52

if.then49:                                        ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @vhost_add_used_and_signal(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef %call3, i32 noundef 0) #15
  br label %cleanup

do.body52:                                        ; preds = %__copy_to_user.exit.do.body52_crit_edge, %if.end44.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_do_evt_work, %if.then64)) #15
          to label %do.end67 [label %if.then64], !srcloc !322

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.30) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  %error_ctx68 = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 9
  %29 = ptrtoint ptr %error_ctx68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %error_ctx68, align 4
  %tobool69.not = icmp eq ptr %30, null
  br i1 %tobool69.not, label %do.end67.cleanup_crit_edge, label %if.then70

do.end67.cleanup_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then70:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #17
  %call72 = call i64 @eventfd_signal(ptr noundef nonnull %30, i64 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.end67.cleanup_crit_edge, %if.then49, %do.end35, %if.end12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_disable_notify(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_get_vq_desc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_enable_notify(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_add_used_and_signal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_ctl_handle_vq(ptr noundef %vs, ptr noundef %vq) unnamed_addr #1 align 64 {
entry:
  %tpg = alloca ptr, align 4
  %v_req = alloca %union.anon.77, align 4
  %vc = alloca %struct.vhost_scsi_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpg) #15
  %0 = ptrtoint ptr %tpg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tpg, align 4, !annotation !323
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v_req) #15
  %1 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_req, ptr %v_req, i32 0, i32 1
  %2 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_req, ptr %v_req, i32 0, i32 2
  %3 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_req, ptr %v_req, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %v_req, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vc) #15
  %5 = call ptr @memset(ptr %vc, i32 255, i32 64)
  %mutex = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %private_data.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 27
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.out98_crit_edge, label %if.end

entry.out98_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out98

if.end:                                           ; preds = %entry
  %8 = call ptr @memset(ptr %vc, i32 0, i32 64)
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  tail call void @vhost_disable_notify(ptr noundef %dev, ptr noundef %vq) #15
  %req = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 9
  %out_iter = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 10
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %is_le.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 33
  %req_size37 = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 3
  %rsp_size38 = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 4
  %lunp41 = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 8
  %target42 = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 7
  %in_size.i = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 6
  %out_size.i = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 5
  %out = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond87.do.body_crit_edge, %if.end
  %c.0 = phi i32 [ 0, %if.end ], [ %inc, %do.cond87.do.body_crit_edge ]
  %call1 = call fastcc i32 @vhost_scsi_get_desc(ptr noundef %vs, ptr noundef %vq, ptr noundef nonnull %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.body.err_crit_edge

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end4:                                          ; preds = %do.body
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %v_req, ptr %req, align 4
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %v_req, i32 noundef 4, ptr noundef %out_iter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i.i)
  %cmp.i = icmp eq i32 %call3.i.i, 4
  br i1 %cmp.i, label %if.end30, label %do.body12, !prof !325

do.body12:                                        ; preds = %if.end4
  call void @iov_iter_revert(ptr noundef %out_iter, i32 noundef %call3.i.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_ctl_handle_vq, %if.then21)) #15
          to label %do.end [label %if.then21], !srcloc !322

if.then21:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.34) #15
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body12
  %10 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %error_ctx, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %do.end.do.cond87_crit_edge, label %if.then24

do.end.do.cond87_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond87

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call26 = call i64 @eventfd_signal(ptr noundef nonnull %11, i64 noundef 1) #15
  br label %do.cond87

if.end30:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %v_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_req, align 4
  %14 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i = icmp eq i8 %15, 0
  %16 = call i32 @llvm.bswap.i32(i32 %13) #15
  %retval.0.i.i129 = select i1 %tobool.i.not.i, i32 %13, i32 %16
  %17 = zext i32 %retval.0.i.i129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %retval.0.i.i129, label %do.body44 [
    i32 0, label %if.end30.sw.epilog_crit_edge
    i32 1, label %if.end30.sw.bb35_crit_edge
    i32 2, label %if.end30.sw.bb35_crit_edge150
  ]

if.end30.sw.bb35_crit_edge150:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.end30.sw.bb35_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end30.sw.bb35_crit_edge, %if.end30.sw.bb35_crit_edge150
  br label %sw.epilog

do.body44:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_ctl_handle_vq, %if.then56)) #15
          to label %do.end59 [label %if.then56], !srcloc !322

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %v_req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v_req, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.35, i32 noundef %19) #15
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44
  %20 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %error_ctx, align 4
  %tobool61.not = icmp eq ptr %21, null
  br i1 %tobool61.not, label %do.end59.do.cond87_crit_edge, label %if.then62

do.end59.do.cond87_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond87

if.then62:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #17
  %call64 = call i64 @eventfd_signal(ptr noundef nonnull %21, i64 noundef 1) #15
  br label %do.cond87

sw.epilog:                                        ; preds = %sw.bb35, %if.end30.sw.epilog_crit_edge
  %storemerge149 = phi i32 [ 16, %sw.bb35 ], [ 24, %if.end30.sw.epilog_crit_edge ]
  %storemerge148 = phi i32 [ 5, %sw.bb35 ], [ 1, %if.end30.sw.epilog_crit_edge ]
  %storemerge147 = phi ptr [ %1, %sw.bb35 ], [ %2, %if.end30.sw.epilog_crit_edge ]
  %storemerge = phi ptr [ null, %sw.bb35 ], [ %3, %if.end30.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %v_req, ptr %req, align 4
  %23 = ptrtoint ptr %req_size37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge149, ptr %req_size37, align 4
  %24 = ptrtoint ptr %rsp_size38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge148, ptr %rsp_size38, align 8
  %25 = ptrtoint ptr %lunp41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %storemerge147, ptr %lunp41, align 8
  %26 = ptrtoint ptr %target42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %storemerge, ptr %target42, align 4
  %27 = ptrtoint ptr %in_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %storemerge148)
  %cmp.i130 = icmp ult i32 %28, %storemerge148
  br i1 %cmp.i130, label %do.body2.i, label %if.else.i, !prof !333

do.body2.i:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_chk_size.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_ctl_handle_vq, %if.then10.i)) #15
          to label %do.end.i [label %if.then10.i], !srcloc !322

if.then10.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %rsp_size38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rsp_size38, align 8
  %31 = ptrtoint ptr %in_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_size.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_chk_size.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.39, i32 noundef %30, i32 noundef %32) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body2.i
  %33 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %error_ctx, align 4
  %tobool13.not.i = icmp eq ptr %34, null
  br i1 %tobool13.not.i, label %do.end.i.do.cond87_crit_edge, label %do.end.i.return.sink.split.i_crit_edge

do.end.i.return.sink.split.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

do.end.i.do.cond87_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond87

if.else.i:                                        ; preds = %sw.epilog
  %35 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_size.i, align 4
  %37 = ptrtoint ptr %req_size37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %req_size37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp19.i = icmp ult i32 %36, %38
  br i1 %cmp19.i, label %do.body28.i, label %if.end71, !prof !333

do.body28.i:                                      ; preds = %if.else.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_chk_size.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_ctl_handle_vq, %if.then40.i)) #15
          to label %do.end44.i [label %if.then40.i], !srcloc !322

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %req_size37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %req_size37, align 4
  %41 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out_size.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_chk_size.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.40, i32 noundef %40, i32 noundef %42) #15
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then40.i, %do.body28.i
  %43 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %error_ctx, align 4
  %tobool46.not.i = icmp eq ptr %44, null
  br i1 %tobool46.not.i, label %do.end44.i.if.then84_crit_edge, label %do.end44.i.return.sink.split.i_crit_edge

do.end44.i.return.sink.split.i_crit_edge:         ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

do.end44.i.if.then84_crit_edge:                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then84

return.sink.split.i:                              ; preds = %do.end44.i.return.sink.split.i_crit_edge, %do.end.i.return.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %34, %do.end.i.return.sink.split.i_crit_edge ], [ %44, %do.end44.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %do.end.i.return.sink.split.i_crit_edge ], [ -5, %do.end44.i.return.sink.split.i_crit_edge ]
  %call49.i = call i64 @eventfd_signal(ptr noundef nonnull %.sink.i, i64 noundef 1) #15
  br label %err

if.end71:                                         ; preds = %if.else.i
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 4
  store ptr %add.ptr, ptr %req, align 4
  %47 = ptrtoint ptr %req_size37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %req_size37, align 4
  %sub = add i32 %48, -4
  store i32 %sub, ptr %req_size37, align 4
  %call74 = call fastcc i32 @vhost_scsi_get_req(ptr noundef %vq, ptr noundef nonnull %vc, ptr noundef nonnull %tpg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end71.err_crit_edge

if.end71.err_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end77:                                         ; preds = %if.end71
  %49 = ptrtoint ptr %v_req to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %v_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp = icmp eq i32 %50, 0
  br i1 %cmp, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tpg, align 4
  call fastcc void @vhost_scsi_handle_tmf(ptr noundef %vs, ptr noundef %52, ptr noundef %vq, ptr noundef nonnull %v_req, ptr noundef nonnull %vc)
  br label %do.cond87

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @vhost_scsi_send_an_resp(ptr noundef %vs, ptr noundef %vq, ptr noundef nonnull %vc)
  br label %do.cond87

err:                                              ; preds = %if.end71.err_crit_edge, %return.sink.split.i, %do.body.err_crit_edge
  %ret.0 = phi i32 [ %call1, %do.body.err_crit_edge ], [ %call74, %if.end71.err_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %53 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %ret.0, label %err.do.cond87_crit_edge [
    i32 -6, label %err.out98_crit_edge
    i32 -5, label %err.if.then84_crit_edge
  ]

err.if.then84_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then84

err.out98_crit_edge:                              ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %out98

err.do.cond87_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond87

if.then84:                                        ; preds = %err.if.then84_crit_edge, %do.end44.i.if.then84_crit_edge
  %54 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vc, align 8
  %56 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %out, align 4
  call fastcc void @vhost_scsi_send_bad_target(ptr noundef %vs, ptr noundef %vq, i32 noundef %55, i32 noundef %57)
  br label %do.cond87

do.cond87:                                        ; preds = %if.then84, %err.do.cond87_crit_edge, %if.else, %if.then78, %do.end.i.do.cond87_crit_edge, %if.then62, %do.end59.do.cond87_crit_edge, %if.then24, %do.end.do.cond87_crit_edge
  %inc = add i32 %c.0, 1
  %call88 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %vq, i32 noundef %inc, i32 noundef 0) #15
  br i1 %call88, label %do.cond87.out98_crit_edge, label %do.cond87.do.body_crit_edge, !prof !333

do.cond87.do.body_crit_edge:                      ; preds = %do.cond87
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond87.out98_crit_edge:                        ; preds = %do.cond87
  call void @__sanitizer_cov_trace_pc() #17
  br label %out98

out98:                                            ; preds = %do.cond87.out98_crit_edge, %err.out98_crit_edge, %entry.out98_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vc) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v_req) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpg) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_get_desc(ptr noundef %vs, ptr noundef %vq, ptr noundef %vc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iov = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21
  %out = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 1
  %in = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 2
  %call = tail call i32 @vhost_get_vq_desc(ptr noundef %vq, ptr noundef %iov, i32 noundef 1024, ptr noundef %out, ptr noundef %in, ptr noundef null, ptr noundef null) #15
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %vc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_get_desc.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_get_desc, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vc, align 8
  %3 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out, align 4
  %5 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_get_desc.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.37, i32 noundef %2, i32 noundef %4, i32 noundef %6) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %do.end.done_crit_edge, label %if.end15, !prof !333

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end15:                                         ; preds = %do.end
  %num = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 2
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp17 = icmp eq i32 %8, %10
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end15
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  %call19 = tail call zeroext i1 @vhost_enable_notify(ptr noundef %dev, ptr noundef %vq) #15
  br i1 %call19, label %if.then26, label %if.then18.done_crit_edge, !prof !333

if.then18.done_crit_edge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then26:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vhost_disable_notify(ptr noundef %dev, ptr noundef %vq) #15
  br label %done

if.end29:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4.not.i = icmp eq i32 %12, 0
  br i1 %cmp4.not.i, label %if.end29.iov_length.exit_crit_edge, label %if.end29.for.body.i_crit_edge

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

if.end29.iov_length.exit_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %iov_length.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %ret.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %seg.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %iov_len.i = getelementptr %struct.iovec, ptr %iov, i32 %seg.05.i, i32 1
  %13 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %14, %ret.06.i
  %inc.i = add nuw i32 %seg.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.body.i.iov_length.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.iov_length.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %iov_length.exit

iov_length.exit:                                  ; preds = %for.body.i.iov_length.exit_crit_edge, %if.end29.iov_length.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end29.iov_length.exit_crit_edge ], [ %add.i, %for.body.i.iov_length.exit_crit_edge ]
  %out_size = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 5
  %15 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ret.0.lcssa.i, ptr %out_size, align 4
  %arrayidx = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %12
  %16 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.not.i65 = icmp eq i32 %17, 0
  br i1 %cmp4.not.i65, label %iov_length.exit.iov_length.exit74_crit_edge, label %iov_length.exit.for.body.i72_crit_edge

iov_length.exit.for.body.i72_crit_edge:           ; preds = %iov_length.exit
  br label %for.body.i72

iov_length.exit.iov_length.exit74_crit_edge:      ; preds = %iov_length.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %iov_length.exit74

for.body.i72:                                     ; preds = %for.body.i72.for.body.i72_crit_edge, %iov_length.exit.for.body.i72_crit_edge
  %ret.06.i66 = phi i32 [ %add.i69, %for.body.i72.for.body.i72_crit_edge ], [ 0, %iov_length.exit.for.body.i72_crit_edge ]
  %seg.05.i67 = phi i32 [ %inc.i70, %for.body.i72.for.body.i72_crit_edge ], [ 0, %iov_length.exit.for.body.i72_crit_edge ]
  %iov_len.i68 = getelementptr %struct.iovec, ptr %arrayidx, i32 %seg.05.i67, i32 1
  %18 = ptrtoint ptr %iov_len.i68 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_len.i68, align 4
  %add.i69 = add i32 %19, %ret.06.i66
  %inc.i70 = add nuw i32 %seg.05.i67, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, %17
  br i1 %exitcond.not.i71, label %for.body.i72.iov_length.exit74_crit_edge, label %for.body.i72.for.body.i72_crit_edge

for.body.i72.for.body.i72_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i72

for.body.i72.iov_length.exit74_crit_edge:         ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %iov_length.exit74

iov_length.exit74:                                ; preds = %for.body.i72.iov_length.exit74_crit_edge, %iov_length.exit.iov_length.exit74_crit_edge
  %ret.0.lcssa.i73 = phi i32 [ 0, %iov_length.exit.iov_length.exit74_crit_edge ], [ %add.i69, %for.body.i72.iov_length.exit74_crit_edge ]
  %in_size = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 6
  %20 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ret.0.lcssa.i73, ptr %in_size, align 8
  %out_iter = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 10
  tail call void @iov_iter_init(ptr noundef %out_iter, i32 noundef 1, ptr noundef %iov, i32 noundef %12, i32 noundef %ret.0.lcssa.i) #15
  br label %done

done:                                             ; preds = %iov_length.exit74, %if.then26, %if.then18.done_crit_edge, %do.end.done_crit_edge
  %ret.0 = phi i32 [ -6, %do.end.done_crit_edge ], [ -11, %if.then26 ], [ -6, %if.then18.done_crit_edge ], [ 0, %iov_length.exit74 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_get_req(ptr nocapture noundef readonly %vq, ptr noundef %vc, ptr noundef writeonly %tpgp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %req_size = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_size, align 4
  %out_iter = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.i.i.i = icmp slt i32 %1, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !325

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %req = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 9
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  tail call void @__check_object_size(ptr noundef %3, i32 noundef %1, i1 noundef zeroext false) #15
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %3, i32 noundef %1, ptr noundef %out_iter) #15
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %1)
  %cmp.i = icmp eq i32 %retval.0.i.i, %1
  br i1 %cmp.i, label %if.else, label %do.body3, !prof !325

do.body3:                                         ; preds = %copy_from_iter.exit.i
  tail call void @iov_iter_revert(ptr noundef %out_iter, i32 noundef %retval.0.i.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_get_req.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_get_req, %if.then12)) #15
          to label %do.end [label %if.then12], !srcloc !322

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_get_req.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.42) #15
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body3
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %4 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %error_ctx, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.end.if.end104_crit_edge, label %if.then14

do.end.if.end104_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = tail call i64 @eventfd_signal(ptr noundef nonnull %5, i64 noundef 1) #15
  br label %if.end104

if.else:                                          ; preds = %copy_from_iter.exit.i
  %lunp = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 8
  %6 = ptrtoint ptr %lunp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lunp, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not = icmp eq i8 %9, 1
  br i1 %cmp.not, label %if.else55, label %do.body29, !prof !325

do.body29:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_get_req.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_get_req, %if.then41)) #15
          to label %do.end46 [label %if.then41], !srcloc !322

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %lunp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lunp, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv43 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_get_req.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.43, i32 noundef %conv43) #15
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body29
  %error_ctx47 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %14 = ptrtoint ptr %error_ctx47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %error_ctx47, align 4
  %tobool48.not = icmp eq ptr %15, null
  br i1 %tobool48.not, label %do.end46.if.end104_crit_edge, label %if.then49

do.end46.if.end104_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then49:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #17
  %call51 = tail call i64 @eventfd_signal(ptr noundef nonnull %15, i64 noundef 1) #15
  br label %if.end104

if.else55:                                        ; preds = %if.else
  %private_data.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 27
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 8
  %target = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 7
  %18 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %target, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr ptr, ptr %17, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx, align 4
  %tobool61.not = icmp eq ptr %23, null
  br i1 %tobool61.not, label %do.body72, label %if.else98, !prof !333

do.body72:                                        ; preds = %if.else55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_get_req.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_get_req, %if.then84)) #15
          to label %do.end89 [label %if.then84], !srcloc !322

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %target, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv86 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_get_req.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.44, i32 noundef %conv86) #15
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.body72
  %error_ctx90 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %28 = ptrtoint ptr %error_ctx90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %error_ctx90, align 4
  %tobool91.not = icmp eq ptr %29, null
  br i1 %tobool91.not, label %do.end89.if.end104_crit_edge, label %if.then92

do.end89.if.end104_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then92:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #17
  %call94 = tail call i64 @eventfd_signal(ptr noundef nonnull %29, i64 noundef 1) #15
  br label %if.end104

if.else98:                                        ; preds = %if.else55
  %tobool99.not = icmp eq ptr %tpgp, null
  br i1 %tobool99.not, label %if.else98.if.end104_crit_edge, label %if.then100

if.else98.if.end104_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then100:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %tpgp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %tpgp, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.else98.if.end104_crit_edge, %if.then92, %do.end89.if.end104_crit_edge, %if.then49, %do.end46.if.end104_crit_edge, %if.then14, %do.end.if.end104_crit_edge
  %ret.1 = phi i32 [ -5, %if.then14 ], [ -5, %do.end.if.end104_crit_edge ], [ -5, %if.then49 ], [ -5, %do.end46.if.end104_crit_edge ], [ -5, %if.then92 ], [ -5, %do.end89.if.end104_crit_edge ], [ 0, %if.then100 ], [ 0, %if.else98.if.end104_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_handle_tmf(ptr noundef %vs, ptr noundef %tpg, ptr noundef %vq, ptr nocapture noundef readonly %vtmf, ptr nocapture noundef readonly %vc) unnamed_addr #1 align 64 {
entry:
  %rsp.i = alloca %struct.virtio_scsi_ctrl_tmf_resp, align 1
  %iov_iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %subtype = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_req, ptr %vtmf, i32 0, i32 1
  %0 = ptrtoint ptr %subtype to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %subtype, align 1
  %is_le.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 33
  %2 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not.i = icmp eq i8 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %retval.0.i.i = select i1 %tobool.i.not.i, i32 %1, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retval.0.i.i)
  %cmp.not = icmp eq i32 %retval.0.i.i, 5
  br i1 %cmp.not, label %if.end, label %entry.send_reject_crit_edge

entry.send_reject_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %send_reject

if.end:                                           ; preds = %entry
  %tpg_nexus = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 6
  %5 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #22
  br label %send_reject

if.end6:                                          ; preds = %lor.lhs.false
  %tv_tpg_mutex = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tmf_queue = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 10
  %9 = ptrtoint ptr %tmf_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %tmf_queue, align 4
  %cmp.i.not = icmp eq ptr %10, %tmf_queue
  br i1 %cmp.i.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #22
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  br label %send_reject

if.end16:                                         ; preds = %if.end6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_del_init.exit_crit_edge

if.end16.list_del_init.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end16.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %tpg22 = getelementptr i8, ptr %10, i32 -12
  %19 = ptrtoint ptr %tpg22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tpg, ptr %tpg22, align 4
  %vhost = getelementptr i8, ptr %10, i32 -8
  %20 = ptrtoint ptr %vhost to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vs, ptr %vhost, align 8
  %svq23 = getelementptr i8, ptr %10, i32 -4
  %21 = ptrtoint ptr %svq23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vq, ptr %svq23, align 4
  %resp_iov = getelementptr i8, ptr %10, i32 456
  %out = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 1
  %22 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out, align 4
  %arrayidx = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx, align 8
  %26 = ptrtoint ptr %resp_iov to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %resp_iov, align 8
  %27 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vc, align 8
  %vq_desc = getelementptr i8, ptr %10, i32 468
  %29 = ptrtoint ptr %vq_desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %vq_desc, align 4
  %in = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 2
  %30 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in, align 8
  %in_iovs = getelementptr i8, ptr %10, i32 464
  %32 = ptrtoint ptr %in_iovs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %in_iovs, align 8
  %inflight_idx.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 2
  %33 = ptrtoint ptr %inflight_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inflight_idx.i, align 8
  %kref.i = getelementptr %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 1, i32 %34, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !345
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_del_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !333

list_del_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_del_init.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.vhost_scsi_get_inflight.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.vhost_scsi_get_inflight.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_get_inflight.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_del_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_del_init.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %vhost_scsi_get_inflight.exit

vhost_scsi_get_inflight.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.vhost_scsi_get_inflight.exit_crit_edge
  %arrayidx.i = getelementptr %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 1, i32 %34
  %inflight = getelementptr i8, ptr %10, i32 452
  %37 = ptrtoint ptr %inflight to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.i, ptr %inflight, align 4
  %se_cmd = getelementptr i8, ptr %10, i32 8
  %38 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tpg_nexus, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %arrayidx.i68 = getelementptr %struct.virtio_scsi_ctrl_tmf_req, ptr %vtmf, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i68, align 1
  %conv.i69 = zext i8 %43 to i16
  %shl.i = shl nuw i16 %conv.i69, 8
  %arrayidx1.i = getelementptr %struct.virtio_scsi_ctrl_tmf_req, ptr %vtmf, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %45 to i16
  %shl.masked.i = and i16 %shl.i, 16128
  %and.i = or i16 %shl.masked.i, %conv2.i
  %conv = zext i16 %and.i to i64
  %call28 = tail call i32 @target_submit_tmr(ptr noundef %se_cmd, ptr noundef %41, ptr noundef null, i64 noundef %conv, ptr noundef null, i8 noundef zeroext 5, i32 noundef 3264, i64 noundef 0, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %vhost_scsi_get_inflight.exit.cleanup_crit_edge

vhost_scsi_get_inflight.exit.cleanup_crit_edge:   ; preds = %vhost_scsi_get_inflight.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31:                                        ; preds = %vhost_scsi_get_inflight.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr20 = getelementptr i8, ptr %10, i32 -24
  tail call fastcc void @vhost_scsi_release_tmf_res(ptr noundef %add.ptr20)
  br label %send_reject

send_reject:                                      ; preds = %if.then31, %do.end12, %do.end, %entry.send_reject_crit_edge
  %in33 = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 2
  %46 = ptrtoint ptr %in33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in33, align 8
  %48 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vc, align 8
  %out36 = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 1
  %50 = ptrtoint ptr %out36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %out36, align 4
  %arrayidx37 = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rsp.i) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov_iter.i) #15
  %52 = call ptr @memset(ptr %iov_iter.i, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_send_tmf_resp.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_tmf, %if.then.i)) #15
          to label %do.end.i [label %if.then.i], !srcloc !322

if.then.i:                                        ; preds = %send_reject
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_send_tmf_resp.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %send_reject
  %53 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 11, ptr %rsp.i, align 1
  call void @iov_iter_init(ptr noundef nonnull %iov_iter.i, i32 noundef 0, ptr noundef %arrayidx37, i32 noundef %47, i32 noundef 1) #15
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef nonnull %rsp.i, i32 noundef 1, ptr noundef nonnull %iov_iter.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp.i70 = icmp eq i32 %call3.i.i, 1
  br i1 %cmp.i70, label %if.then11.i, label %do.end14.i, !prof !325

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  call void @vhost_add_used_and_signal(ptr noundef %dev.i, ptr noundef %vq, i32 noundef %49, i32 noundef 0) #15
  br label %vhost_scsi_send_tmf_resp.exit

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #22
  br label %vhost_scsi_send_tmf_resp.exit

vhost_scsi_send_tmf_resp.exit:                    ; preds = %do.end14.i, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rsp.i) #15
  br label %cleanup

cleanup:                                          ; preds = %vhost_scsi_send_tmf_resp.exit, %vhost_scsi_get_inflight.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_send_an_resp(ptr noundef %vs, ptr noundef %vq, ptr nocapture noundef readonly %vc) unnamed_addr #1 align 64 {
entry:
  %rsp = alloca %struct.virtio_scsi_ctrl_an_resp, align 4
  %iov_iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rsp) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov_iter) #15
  %0 = call ptr @memset(ptr %iov_iter, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_send_an_resp.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_send_an_resp, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_send_an_resp.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 1
  %1 = call ptr @memset(ptr %rsp, i32 0, i32 5)
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  %arrayidx = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %3
  %in = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 2
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in, align 8
  call void @iov_iter_init(ptr noundef nonnull %iov_iter, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %5, i32 noundef 5) #15
  %call3.i = call i32 @_copy_to_iter(ptr noundef nonnull %rsp, i32 noundef 5, ptr noundef nonnull %iov_iter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3.i)
  %cmp = icmp eq i32 %call3.i, 5
  br i1 %cmp, label %if.then10, label %do.end13, !prof !325

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  %6 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc, align 8
  call void @vhost_add_used_and_signal(ptr noundef %dev, ptr noundef %vq, i32 noundef %7, i32 noundef 0) #15
  br label %if.end16

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #22
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter) #15
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rsp) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_send_bad_target(ptr noundef %vs, ptr noundef %vq, i32 noundef %head, i32 noundef %out) unnamed_addr #1 align 64 {
entry:
  %rsp = alloca %struct.virtio_scsi_cmd_resp, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %rsp) #15
  %0 = call ptr @memset(ptr %rsp, i32 0, i32 108)
  %response = getelementptr inbounds %struct.virtio_scsi_cmd_resp, ptr %rsp, i32 0, i32 4
  %1 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %response, align 1
  %arrayidx = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %out
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 143) #15
  %call.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i, label %entry.do.end_crit_edge, label %__copy_to_user.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

__copy_to_user.exit:                              ; preds = %entry
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rsp, i32 noundef 108) #15
  %call.i8.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %rsp, i32 noundef 108) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool.not = icmp eq i32 %call.i8.i, 0
  br i1 %tobool.not, label %if.then, label %__copy_to_user.exit.do.end_crit_edge

__copy_to_user.exit.do.end_crit_edge:             ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  call void @vhost_add_used_and_signal(ptr noundef %dev, ptr noundef %vq, i32 noundef %head, i32 noundef 0) #15
  br label %if.end

do.end:                                           ; preds = %__copy_to_user.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %rsp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_exceeds_weight(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_tmr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_release_tmf_res(ptr noundef %tmf) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg1 = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %tmf, i32 0, i32 1
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 4
  %inflight2 = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %tmf, i32 0, i32 7
  %2 = ptrtoint ptr %inflight2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inflight2, align 4
  %tv_tpg_mutex = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tmf_queue = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %1, i32 0, i32 10
  %queue_entry = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %tmf, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %tmf, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tmf_queue, ptr noundef %5, ptr noundef %queue_entry) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmf_queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %tmf_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue_entry, ptr %tmf_queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %1, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %tmf_queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %kref.i = getelementptr inbounds %struct.vhost_scsi_inflight, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !335
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.vhost_scsi_put_inflight.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !325

if.end5.i.i.i.i.i.vhost_scsi_put_inflight.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_put_inflight.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #15
  br label %vhost_scsi_put_inflight.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @complete(ptr noundef %3) #15
  br label %vhost_scsi_put_inflight.exit

vhost_scsi_put_inflight.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.vhost_scsi_put_inflight.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_send_evt(ptr noundef %vs, ptr noundef readonly %tpg, ptr noundef readonly %lun, i32 noundef %event, i32 noundef %reason) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vs_events_nr.i = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 9
  %0 = ptrtoint ptr %vs_events_nr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vs_events_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp.i = icmp sgt i32 %1, 128
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vs_events_missed.i = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %2 = ptrtoint ptr %vs_events_missed.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %vs_events_missed.i, align 8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.end

do.body3.i:                                       ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_allocate_evt.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_send_evt, %if.then8.i)) #15
          to label %do.end.i [label %if.then8.i], !srcloc !322

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_allocate_evt.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.57) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body3.i
  %error_ctx.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 9
  %4 = ptrtoint ptr %error_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %error_ctx.i, align 4
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %do.end.i.do.end16.i_crit_edge, label %if.then11.i

do.end.i.do.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16.i

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call13.i = tail call i64 @eventfd_signal(ptr noundef nonnull %5, i64 noundef 1) #15
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then11.i, %do.end.i.do.end16.i_crit_edge
  %vs_events_missed17.i = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 8
  %6 = ptrtoint ptr %vs_events_missed17.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %vs_events_missed17.i, align 8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %is_le.i.i.i = getelementptr %struct.vhost_scsi, ptr %vs, i32 0, i32 3, i32 1, i32 0, i32 33
  %7 = ptrtoint ptr %is_le.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_le.i.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not.i.i = icmp eq i8 %8, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %event) #15
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i, i32 %event, i32 %9
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i.i, ptr %call7.i.i.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %reason) #15
  %retval.0.i.i39.i = select i1 %tobool.i.not.i.i, i32 %reason, i32 %11
  %reason24.i = getelementptr inbounds %struct.virtio_scsi_event, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %reason24.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i39.i, ptr %reason24.i, align 4
  %13 = ptrtoint ptr %vs_events_nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vs_events_nr.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %vs_events_nr.i, align 4
  %tobool1.not = icmp eq ptr %tpg, null
  %tobool2.not = icmp eq ptr %lun, null
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %if.end.if.end22_crit_edge, label %if.then3

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then3:                                         ; preds = %if.end
  %lun5 = getelementptr inbounds %struct.virtio_scsi_event, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %lun5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %lun5, align 4
  %16 = ptrtoint ptr %tpg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tpg, align 4
  %conv = trunc i16 %17 to i8
  %arrayidx8 = getelementptr %struct.virtio_scsi_event, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %arrayidx8, align 1
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %20)
  %cmp = icmp ugt i64 %20, 255
  br i1 %cmp, label %if.then10, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %shr = lshr i64 %20, 8
  %21 = trunc i64 %shr to i8
  %conv12 = or i8 %21, 64
  %arrayidx15 = getelementptr %struct.virtio_scsi_event, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12, ptr %arrayidx15, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.then3.if.end16_crit_edge
  %23 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %lun, align 8
  %conv18 = trunc i64 %24 to i8
  %arrayidx21 = getelementptr %struct.virtio_scsi_event, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv18, ptr %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %if.end.if.end22_crit_edge
  %list = getelementptr inbounds %struct.vhost_scsi_evt, ptr %call7.i.i.i, i32 0, i32 1
  %vs_event_list = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 7
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %list, ptr noundef %list, ptr noundef %vs_event_list) #15
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  %vs_event_work = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 6
  tail call void @vhost_work_queue(ptr noundef %dev, ptr noundef %vs_event_work) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end16.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_scsi_handle_vq(ptr noundef %vs, ptr noundef %vq) unnamed_addr #1 align 64 {
entry:
  %tpg = alloca ptr, align 4
  %v_req = alloca %struct.virtio_scsi_cmd_req, align 1
  %v_req_pi = alloca %struct.virtio_scsi_cmd_req_pi, align 1
  %vc = alloca %struct.vhost_scsi_ctx, align 8
  %in_iter = alloca %struct.iov_iter, align 8
  %prot_iter = alloca %struct.iov_iter, align 8
  %data_iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpg) #15
  %0 = ptrtoint ptr %tpg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tpg, align 4, !annotation !323
  call void @llvm.lifetime.start.p0(i64 51, ptr nonnull %v_req) #15
  %1 = call ptr @memset(ptr %v_req, i32 255, i32 51)
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %v_req_pi) #15
  %2 = call ptr @memset(ptr %v_req_pi, i32 255, i32 59)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vc) #15
  %3 = call ptr @memset(ptr %vc, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %in_iter) #15
  %4 = call ptr @memset(ptr %in_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %prot_iter) #15
  %5 = call ptr @memset(ptr %prot_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data_iter) #15
  %6 = call ptr @memset(ptr %data_iter, i32 255, i32 24)
  %acked_features.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 28
  %7 = ptrtoint ptr %acked_features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %acked_features.i, align 8
  %and.i = and i64 %8, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %mutex = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %private_data.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 27
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.out293_crit_edge, label %if.end

entry.out293_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out293

if.end:                                           ; preds = %entry
  %11 = call ptr @memset(ptr %vc, i32 0, i32 64)
  %rsp_size = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 4
  %12 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 108, ptr %rsp_size, align 8
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %vs, i32 0, i32 2
  tail call void @vhost_disable_notify(ptr noundef %dev, ptr noundef %vq) #15
  %req = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 9
  %req_size = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 3
  %lunp = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr %v_req_pi, i32 0, i32 1
  %target = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 7
  %arrayidx17 = getelementptr inbounds [8 x i8], ptr %v_req, i32 0, i32 1
  %in_size.i = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 6
  %out_size.i = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 5
  %out = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 1
  %in = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 2
  %out_iter = getelementptr inbounds %struct.vhost_scsi_ctx, ptr %vc, i32 0, i32 10
  %pi_bytesout = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %v_req_pi, i32 0, i32 5
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %is_le.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 33
  %pi_bytesin = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %v_req_pi, i32 0, i32 6
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %prot_iter, i32 0, i32 4
  %tag109 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %v_req_pi, i32 0, i32 1
  %task_attr111 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %v_req_pi, i32 0, i32 2
  %cdb112 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, ptr %v_req_pi, i32 0, i32 7
  %arrayidx.i = getelementptr inbounds i8, ptr %v_req_pi, i32 2
  %arrayidx1.i = getelementptr inbounds i8, ptr %v_req_pi, i32 3
  %tag117 = getelementptr inbounds %struct.virtio_scsi_cmd_req, ptr %v_req, i32 0, i32 1
  %task_attr119 = getelementptr inbounds %struct.virtio_scsi_cmd_req, ptr %v_req, i32 0, i32 2
  %cdb120 = getelementptr inbounds %struct.virtio_scsi_cmd_req, ptr %v_req, i32 0, i32 5
  %arrayidx.i399 = getelementptr inbounds i8, ptr %v_req, i32 2
  %arrayidx1.i402 = getelementptr inbounds i8, ptr %v_req, i32 3
  %scsi_tags.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 4
  %scsi_cmds.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 3
  %inflight_idx.i.i = getelementptr inbounds %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 2
  %storemerge467 = select i1 %tobool.i.not, i32 51, i32 59
  %storemerge466 = select i1 %tobool.i.not, ptr %v_req, ptr %v_req_pi
  %storemerge = select i1 %tobool.i.not, ptr %arrayidx17, ptr %arrayidx10
  br label %do.body

do.body:                                          ; preds = %do.cond282.do.body_crit_edge, %if.end
  %c.0 = phi i32 [ 0, %if.end ], [ %inc, %do.cond282.do.body_crit_edge ]
  %call2 = call fastcc i32 @vhost_scsi_get_desc(ptr noundef %vs, ptr noundef %vq, ptr noundef nonnull %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.body.err_crit_edge

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end5:                                          ; preds = %do.body
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %storemerge466, ptr %req, align 4
  %14 = ptrtoint ptr %req_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge467, ptr %req_size, align 4
  %15 = ptrtoint ptr %lunp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %storemerge466, ptr %lunp, align 8
  %16 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %storemerge, ptr %target, align 4
  %17 = ptrtoint ptr %in_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_size.i, align 8
  %19 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rsp_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp ult i32 %18, %20
  br i1 %cmp.i, label %do.body2.i, label %if.else.i, !prof !333

do.body2.i:                                       ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_chk_size.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then10.i)) #15
          to label %do.end.i [label %if.then10.i], !srcloc !322

if.then10.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rsp_size, align 8
  %23 = ptrtoint ptr %in_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_size.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_chk_size.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.39, i32 noundef %22, i32 noundef %24) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body2.i
  %25 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %error_ctx, align 4
  %tobool13.not.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i, label %do.end.i.do.cond282_crit_edge, label %do.end.i.return.sink.split.i_crit_edge

do.end.i.return.sink.split.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

do.end.i.do.cond282_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond282

if.else.i:                                        ; preds = %if.end5
  %27 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_size.i, align 4
  %29 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp19.i = icmp ult i32 %28, %30
  br i1 %cmp19.i, label %do.body28.i, label %if.end23, !prof !333

do.body28.i:                                      ; preds = %if.else.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_chk_size.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then40.i)) #15
          to label %do.end44.i [label %if.then40.i], !srcloc !322

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %req_size, align 4
  %33 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_size.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_chk_size.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.40, i32 noundef %32, i32 noundef %34) #15
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then40.i, %do.body28.i
  %35 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %error_ctx, align 4
  %tobool46.not.i = icmp eq ptr %36, null
  br i1 %tobool46.not.i, label %do.end44.i.if.then277_crit_edge, label %do.end44.i.return.sink.split.i_crit_edge

do.end44.i.return.sink.split.i_crit_edge:         ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

do.end44.i.if.then277_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then277

return.sink.split.i:                              ; preds = %do.end44.i.return.sink.split.i_crit_edge, %do.end.i.return.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %26, %do.end.i.return.sink.split.i_crit_edge ], [ %36, %do.end44.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %do.end.i.return.sink.split.i_crit_edge ], [ -5, %do.end44.i.return.sink.split.i_crit_edge ]
  %call49.i = call i64 @eventfd_signal(ptr noundef nonnull %.sink.i, i64 noundef 1) #15
  br label %err

if.end23:                                         ; preds = %if.else.i
  %call24 = call fastcc i32 @vhost_scsi_get_req(ptr noundef %vq, ptr noundef nonnull %vc, ptr noundef nonnull %tpg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.err_crit_edge

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end27:                                         ; preds = %if.end23
  %37 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_size.i, align 4
  %39 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %req_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp = icmp ugt i32 %38, %40
  br i1 %cmp, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i32 %38, %40
  %41 = call ptr @memcpy(ptr %data_iter, ptr %out_iter, i32 24)
  br label %if.end44

if.else32:                                        ; preds = %if.end27
  %42 = ptrtoint ptr %in_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in_size.i, align 8
  %44 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rsp_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp34 = icmp ugt i32 %43, %45
  br i1 %cmp34, label %if.then35, label %if.else32.if.end44_crit_edge

if.else32.if.end44_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #17
  %sub38 = sub i32 %43, %45
  %46 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %out, align 4
  %arrayidx39 = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %47
  %48 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in, align 8
  call void @iov_iter_init(ptr noundef nonnull %in_iter, i32 noundef 0, ptr noundef %arrayidx39, i32 noundef %49, i32 noundef %43) #15
  %50 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rsp_size, align 8
  call void @iov_iter_advance(ptr noundef nonnull %in_iter, i32 noundef %51) #15
  %52 = call ptr @memcpy(ptr %data_iter, ptr %in_iter, i32 24)
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %if.else32.if.end44_crit_edge, %if.then29
  %cmp232.not = phi i1 [ false, %if.then35 ], [ false, %if.then29 ], [ true, %if.else32.if.end44_crit_edge ]
  %cmp73.not = phi i1 [ true, %if.then35 ], [ false, %if.then29 ], [ false, %if.else32.if.end44_crit_edge ]
  %data_direction.0 = phi i32 [ 2, %if.then35 ], [ 1, %if.then29 ], [ 3, %if.else32.if.end44_crit_edge ]
  %exp_data_len.0 = phi i32 [ %sub38, %if.then35 ], [ %sub, %if.then29 ], [ 0, %if.else32.if.end44_crit_edge ]
  br i1 %tobool.i.not, label %if.end44.if.end125_crit_edge, label %if.then46

if.end44.if.end125_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then46:                                        ; preds = %if.end44
  %53 = ptrtoint ptr %pi_bytesout to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %pi_bytesout, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool47.not = icmp eq i32 %54, 0
  br i1 %tobool47.not, label %if.else70, label %if.then48

if.then48:                                        ; preds = %if.then46
  br i1 %cmp, label %if.end67, label %do.body52

do.body52:                                        ; preds = %if.then48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then58)) #15
          to label %do.end [label %if.then58], !srcloc !322

if.then58:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.59) #15
  br label %do.end

do.end:                                           ; preds = %if.then58, %do.body52
  %55 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %error_ctx, align 4
  %tobool60.not = icmp eq ptr %56, null
  br i1 %tobool60.not, label %do.end.if.then277_crit_edge, label %if.then61

do.end.if.then277_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then277

if.then61:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = call i64 @eventfd_signal(ptr noundef nonnull %56, i64 noundef 1) #15
  br label %if.then277

if.end67:                                         ; preds = %if.then48
  %57 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.i.not.i = icmp eq i8 %58, 0
  %59 = call i32 @llvm.bswap.i32(i32 %54) #15
  br i1 %tobool.i.not.i, label %if.end67.if.then106_crit_edge, label %if.end67.if.end104_crit_edge

if.end67.if.end104_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.end67.if.then106_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then106

if.else70:                                        ; preds = %if.then46
  %60 = ptrtoint ptr %pi_bytesin to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %pi_bytesin, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool71.not = icmp eq i32 %61, 0
  br i1 %tobool71.not, label %if.else70.if.end125_crit_edge, label %if.then72

if.else70.if.end125_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then72:                                        ; preds = %if.else70
  br i1 %cmp73.not, label %if.end100, label %do.body76

do.body76:                                        ; preds = %if.then72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then88)) #15
          to label %do.end91 [label %if.then88], !srcloc !322

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.60) #15
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body76
  %62 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %error_ctx, align 4
  %tobool93.not = icmp eq ptr %63, null
  br i1 %tobool93.not, label %do.end91.if.then277_crit_edge, label %if.then94

do.end91.if.then277_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then277

if.then94:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #17
  %call96 = call i64 @eventfd_signal(ptr noundef nonnull %63, i64 noundef 1) #15
  br label %if.then277

if.end100:                                        ; preds = %if.then72
  %64 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i.not.i388 = icmp eq i8 %65, 0
  %66 = call i32 @llvm.bswap.i32(i32 %61) #15
  br i1 %tobool.i.not.i388, label %if.end100.if.then106_crit_edge, label %if.end100.if.end104_crit_edge

if.end100.if.end104_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.end100.if.then106_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then106

if.end104:                                        ; preds = %if.end100.if.end104_crit_edge, %if.end67.if.end104_crit_edge
  %prot_bytes.0 = phi i32 [ %59, %if.end67.if.end104_crit_edge ], [ %66, %if.end100.if.end104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prot_bytes.0)
  %tobool105.not = icmp eq i32 %prot_bytes.0, 0
  br i1 %tobool105.not, label %if.end104.if.end125_crit_edge, label %if.end104.if.then106_crit_edge

if.end104.if.then106_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then106

if.end104.if.end125_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then106:                                       ; preds = %if.end104.if.then106_crit_edge, %if.end100.if.then106_crit_edge, %if.end67.if.then106_crit_edge
  %prot_bytes.0444 = phi i32 [ %prot_bytes.0, %if.end104.if.then106_crit_edge ], [ %54, %if.end67.if.then106_crit_edge ], [ %61, %if.end100.if.then106_crit_edge ]
  %sub107 = sub i32 %exp_data_len.0, %prot_bytes.0444
  %67 = call ptr @memcpy(ptr %prot_iter, ptr %data_iter, i32 24)
  %conv = sext i32 %prot_bytes.0444 to i64
  %68 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count1.i, align 8
  %conv.i = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %conv)
  %cmp.i390 = icmp ugt i64 %conv.i, %conv
  br i1 %cmp.i390, label %if.then.i, label %if.then106.iov_iter_truncate.exit_crit_edge

if.then106.iov_iter_truncate.exit_crit_edge:      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %prot_bytes.0444, ptr %count1.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.then106.iov_iter_truncate.exit_crit_edge
  call void @iov_iter_advance(ptr noundef nonnull %data_iter, i32 noundef %prot_bytes.0444) #15
  br label %if.end125

if.end125:                                        ; preds = %iov_iter_truncate.exit, %if.end104.if.end125_crit_edge, %if.else70.if.end125_crit_edge, %if.end44.if.end125_crit_edge
  %tag117.sink = phi ptr [ %tag109, %if.else70.if.end125_crit_edge ], [ %tag109, %iov_iter_truncate.exit ], [ %tag109, %if.end104.if.end125_crit_edge ], [ %tag117, %if.end44.if.end125_crit_edge ]
  %task_attr119.sink = phi ptr [ %task_attr111, %if.else70.if.end125_crit_edge ], [ %task_attr111, %iov_iter_truncate.exit ], [ %task_attr111, %if.end104.if.end125_crit_edge ], [ %task_attr119, %if.end44.if.end125_crit_edge ]
  %arrayidx.i399.sink = phi ptr [ %arrayidx.i, %if.else70.if.end125_crit_edge ], [ %arrayidx.i, %iov_iter_truncate.exit ], [ %arrayidx.i, %if.end104.if.end125_crit_edge ], [ %arrayidx.i399, %if.end44.if.end125_crit_edge ]
  %arrayidx1.i402.sink = phi ptr [ %arrayidx1.i, %if.else70.if.end125_crit_edge ], [ %arrayidx1.i, %iov_iter_truncate.exit ], [ %arrayidx1.i, %if.end104.if.end125_crit_edge ], [ %arrayidx1.i402, %if.end44.if.end125_crit_edge ]
  %cdb.0 = phi ptr [ %cdb112, %if.else70.if.end125_crit_edge ], [ %cdb112, %iov_iter_truncate.exit ], [ %cdb112, %if.end104.if.end125_crit_edge ], [ %cdb120, %if.end44.if.end125_crit_edge ]
  %prot_bytes.1 = phi i32 [ 0, %if.else70.if.end125_crit_edge ], [ %prot_bytes.0444, %iov_iter_truncate.exit ], [ 0, %if.end104.if.end125_crit_edge ], [ 0, %if.end44.if.end125_crit_edge ]
  %exp_data_len.2 = phi i32 [ %exp_data_len.0, %if.else70.if.end125_crit_edge ], [ %sub107, %iov_iter_truncate.exit ], [ %exp_data_len.0, %if.end104.if.end125_crit_edge ], [ %exp_data_len.0, %if.end44.if.end125_crit_edge ]
  %71 = ptrtoint ptr %tag117.sink to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %tag117.sink, align 1
  %73 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_le.i.i, align 8, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.i.not.i397 = icmp eq i8 %74, 0
  %75 = call i64 @llvm.bswap.i64(i64 %72) #15
  %retval.0.i.i398 = select i1 %tobool.i.not.i397, i64 %72, i64 %75
  %76 = ptrtoint ptr %task_attr119.sink to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %task_attr119.sink, align 1
  %78 = ptrtoint ptr %arrayidx.i399.sink to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i399.sink, align 1
  %conv.i400 = zext i8 %79 to i32
  %shl.i401 = shl nuw nsw i32 %conv.i400, 8
  %80 = ptrtoint ptr %arrayidx1.i402.sink to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx1.i402.sink, align 1
  %conv2.i403 = zext i8 %81 to i32
  %shl.masked.i404 = and i32 %shl.i401, 16128
  %and.i405 = or i32 %shl.masked.i404, %conv2.i403
  %82 = ptrtoint ptr %cdb.0 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cdb.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %83)
  %cmp.i406 = icmp eq i8 %83, 127
  br i1 %cmp.i406, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  %additional_cdb_length.i.i = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %cdb.0, i32 0, i32 3
  %84 = ptrtoint ptr %additional_cdb_length.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %additional_cdb_length.i.i, align 1
  %conv.i.i = zext i8 %85 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  br label %scsi_command_size.exit

cond.false.i:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  %86 = lshr i8 %83, 5
  %87 = zext i8 %86 to i32
  %arrayidx4.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %89 to i32
  br label %scsi_command_size.exit

scsi_command_size.exit:                           ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i, %cond.true.i ], [ %conv5.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i)
  %cmp127 = icmp ugt i32 %cond.i, 32
  br i1 %cmp127, label %do.body137, label %if.end162, !prof !333

do.body137:                                       ; preds = %scsi_command_size.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then149)) #15
          to label %do.end153 [label %if.then149], !srcloc !322

if.then149:                                       ; preds = %do.body137
  %90 = ptrtoint ptr %cdb.0 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %cdb.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %91)
  %cmp.i407 = icmp eq i8 %91, 127
  br i1 %cmp.i407, label %cond.true.i411, label %cond.false.i414

cond.true.i411:                                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #17
  %additional_cdb_length.i.i408 = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %cdb.0, i32 0, i32 3
  %92 = ptrtoint ptr %additional_cdb_length.i.i408 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %additional_cdb_length.i.i408, align 1
  %conv.i.i409 = zext i8 %93 to i32
  %add.i.i410 = add nuw nsw i32 %conv.i.i409, 8
  br label %scsi_command_size.exit416

cond.false.i414:                                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #17
  %94 = lshr i8 %91, 5
  %95 = zext i8 %94 to i32
  %arrayidx4.i412 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx4.i412 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx4.i412, align 1
  %conv5.i413 = zext i8 %97 to i32
  br label %scsi_command_size.exit416

scsi_command_size.exit416:                        ; preds = %cond.false.i414, %cond.true.i411
  %cond.i415 = phi i32 [ %add.i.i410, %cond.true.i411 ], [ %conv5.i413, %cond.false.i414 ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.61, i32 noundef %cond.i415, i32 noundef 32) #15
  br label %do.end153

do.end153:                                        ; preds = %scsi_command_size.exit416, %do.body137
  %98 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %error_ctx, align 4
  %tobool155.not = icmp eq ptr %99, null
  br i1 %tobool155.not, label %do.end153.if.then277_crit_edge, label %if.then156

do.end153.if.then277_crit_edge:                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then277

if.then156:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #17
  %call158 = call i64 @eventfd_signal(ptr noundef nonnull %99, i64 noundef 1) #15
  br label %if.then277

if.end162:                                        ; preds = %scsi_command_size.exit
  %100 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tpg, align 4
  %add163 = add i32 %exp_data_len.2, %prot_bytes.1
  %tpg_nexus.i = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %tpg_nexus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tpg_nexus.i, align 4
  %tobool.not.i = icmp eq ptr %103, null
  br i1 %tobool.not.i, label %if.end162.do.body168.sink.split_crit_edge, label %if.end.i

if.end162.do.body168.sink.split_crit_edge:        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body168.sink.split

if.end.i:                                         ; preds = %if.end162
  %call3.i = call i32 @sbitmap_get(ptr noundef %scsi_tags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i418 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i418, label %if.end.i.do.body168.sink.split_crit_edge, label %if.end11.i

if.end.i.do.body168.sink.split_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body168.sink.split

if.end11.i:                                       ; preds = %if.end.i
  %104 = ptrtoint ptr %scsi_cmds.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scsi_cmds.i, align 4
  %arrayidx.i419 = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i
  %tvc_sgl.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 9
  %106 = ptrtoint ptr %tvc_sgl.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tvc_sgl.i, align 4
  %tvc_prot_sgl.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 10
  %108 = ptrtoint ptr %tvc_prot_sgl.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tvc_prot_sgl.i, align 8
  %tvc_upages.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 11
  %110 = ptrtoint ptr %tvc_upages.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tvc_upages.i, align 4
  %112 = call ptr @memset(ptr %arrayidx.i419, i32 0, i32 656)
  store ptr %107, ptr %tvc_sgl.i, align 4
  store ptr %109, ptr %tvc_prot_sgl.i, align 8
  store ptr %111, ptr %tvc_upages.i, align 4
  %map_tag.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 16, i32 8
  %113 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call3.i, ptr %map_tag.i, align 4
  %tvc_tag.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 5
  %114 = ptrtoint ptr %tvc_tag.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %retval.0.i.i398, ptr %tvc_tag.i, align 8
  %tvc_lun.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 8
  %115 = ptrtoint ptr %tvc_lun.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i405, ptr %tvc_lun.i, align 8
  %conv15.i = zext i8 %77 to i32
  %tvc_task_attr.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 1
  %116 = ptrtoint ptr %tvc_task_attr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv15.i, ptr %tvc_task_attr.i, align 4
  %tvc_exp_data_len.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 4
  %117 = ptrtoint ptr %tvc_exp_data_len.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add163, ptr %tvc_exp_data_len.i, align 8
  %tvc_data_direction.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 3
  %118 = ptrtoint ptr %tvc_data_direction.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %data_direction.0, ptr %tvc_data_direction.i, align 4
  %tvc_nexus.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 15
  %119 = ptrtoint ptr %tvc_nexus.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %103, ptr %tvc_nexus.i, align 8
  %120 = ptrtoint ptr %inflight_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %inflight_idx.i.i, align 8
  %kref.i.i = getelementptr %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 1, i32 %121, i32 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #15
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #15, !srcloc !345
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !333

if.end11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end11.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %123 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %.not.i.i.i.i.i.i = icmp sgt i32 %123, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.vhost_scsi_get_cmd.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.vhost_scsi_get_cmd.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_get_cmd.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end11.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #15
  br label %vhost_scsi_get_cmd.exit

vhost_scsi_get_cmd.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.vhost_scsi_get_cmd.exit_crit_edge
  %arrayidx.i.i = getelementptr %struct.vhost_scsi_virtqueue, ptr %vq, i32 0, i32 1, i32 %121
  %inflight.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 20
  %124 = ptrtoint ptr %inflight.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx.i.i, ptr %inflight.i, align 4
  %tvc_cdb.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 17
  %125 = call ptr @memcpy(ptr %tvc_cdb.i, ptr %cdb.0, i32 32)
  %cmp.i422 = icmp ugt ptr %arrayidx.i419, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i422, label %vhost_scsi_get_cmd.exit.do.body168_crit_edge, label %if.end193

vhost_scsi_get_cmd.exit.do.body168_crit_edge:     ; preds = %vhost_scsi_get_cmd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body168

do.body168.sink.split:                            ; preds = %if.end.i.do.body168.sink.split_crit_edge, %if.end162.do.body168.sink.split_crit_edge
  %.str.66.sink = phi ptr [ @.str.66, %if.end162.do.body168.sink.split_crit_edge ], [ @.str.69, %if.end.i.do.body168.sink.split_crit_edge ]
  %retval.0.i421452.ph = phi ptr [ inttoptr (i32 -5 to ptr), %if.end162.do.body168.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.do.body168.sink.split_crit_edge ]
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.66.sink) #22
  br label %do.body168

do.body168:                                       ; preds = %do.body168.sink.split, %vhost_scsi_get_cmd.exit.do.body168_crit_edge
  %retval.0.i421452 = phi ptr [ %arrayidx.i419, %vhost_scsi_get_cmd.exit.do.body168_crit_edge ], [ %retval.0.i421452.ph, %do.body168.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then180)) #15
          to label %do.end184 [label %if.then180], !srcloc !322

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %retval.0.i421452 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.62, i32 noundef %126) #15
  br label %do.end184

do.end184:                                        ; preds = %if.then180, %do.body168
  %127 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %error_ctx, align 4
  %tobool186.not = icmp eq ptr %128, null
  br i1 %tobool186.not, label %do.end184.if.then277_crit_edge, label %if.then187

do.end184.if.then277_crit_edge:                   ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then277

if.then187:                                       ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #17
  %call189 = call i64 @eventfd_signal(ptr noundef nonnull %128, i64 noundef 1) #15
  br label %if.then277

if.end193:                                        ; preds = %vhost_scsi_get_cmd.exit
  %tvc_vhost = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 13
  %129 = ptrtoint ptr %tvc_vhost to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %vs, ptr %tvc_vhost, align 8
  %tvc_vq = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 14
  %130 = ptrtoint ptr %tvc_vq to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %vq, ptr %tvc_vq, align 4
  %tvc_resp_iov = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 12
  %131 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %out, align 4
  %arrayidx196 = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21, i32 %132
  %133 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx196, align 8
  %135 = ptrtoint ptr %tvc_resp_iov to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %tvc_resp_iov, align 8
  %136 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %in, align 8
  %tvc_in_iovs = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 2
  %138 = ptrtoint ptr %tvc_in_iovs to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %tvc_in_iovs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then210)) #15
          to label %do.body216 [label %if.then210], !srcloc !322

if.then210:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %tvc_cdb.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %tvc_cdb.i, align 8
  %conv212 = zext i8 %140 to i32
  %141 = ptrtoint ptr %tvc_lun.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tvc_lun.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.63, i32 noundef %conv212, i32 noundef %142) #15
  br label %do.body216

do.body216:                                       ; preds = %if.then210, %if.end193
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then228)) #15
          to label %do.end231 [label %if.then228], !srcloc !322

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.64, ptr noundef %arrayidx.i419, i32 noundef %exp_data_len.2, i32 noundef %prot_bytes.1, i32 noundef %data_direction.0) #15
  br label %do.end231

do.end231:                                        ; preds = %if.then228, %do.body216
  br i1 %cmp232.not, label %do.end231.if.end270_crit_edge, label %if.then234

do.end231.if.end270_crit_edge:                    ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end270

if.then234:                                       ; preds = %do.end231
  %call235 = call fastcc i32 @vhost_scsi_mapal(ptr noundef %arrayidx.i419, i32 noundef %prot_bytes.1, ptr noundef nonnull %prot_iter, i32 noundef %exp_data_len.2, ptr noundef nonnull %data_iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.then234.if.end270_crit_edge, label %do.body245, !prof !325

if.then234.if.end270_crit_edge:                   ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end270

do.body245:                                       ; preds = %if.then234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_handle_vq, %if.then257)) #15
          to label %do.end260 [label %if.then257], !srcloc !322

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.65) #15
  br label %do.end260

do.end260:                                        ; preds = %if.then257, %do.body245
  %143 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %error_ctx, align 4
  %tobool262.not = icmp eq ptr %144, null
  br i1 %tobool262.not, label %do.end260.do.end268_crit_edge, label %if.then263

do.end260.do.end268_crit_edge:                    ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end268

if.then263:                                       ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #17
  %call265 = call i64 @eventfd_signal(ptr noundef nonnull %144, i64 noundef 1) #15
  br label %do.end268

do.end268:                                        ; preds = %if.then263, %do.end260.do.end268_crit_edge
  %tvc_se_cmd = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 16
  call fastcc void @vhost_scsi_release_cmd_res(ptr noundef %tvc_se_cmd)
  br label %if.then277

if.end270:                                        ; preds = %if.then234.if.end270_crit_edge, %do.end231.if.end270_crit_edge
  %145 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %vc, align 8
  %147 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx.i419, align 8
  %tvc_se_cmd.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 16
  %tvc_sgl_count.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 6
  %148 = ptrtoint ptr %tvc_sgl_count.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tvc_sgl_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i423 = icmp eq i32 %149, 0
  br i1 %tobool.not.i423, label %if.end270.if.end4.i_crit_edge, label %if.then.i425

if.end270.if.end4.i_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then.i425:                                     ; preds = %if.end270
  %150 = ptrtoint ptr %tvc_sgl.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tvc_sgl.i, align 4
  %tvc_prot_sgl_count.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 7
  %152 = ptrtoint ptr %tvc_prot_sgl_count.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tvc_prot_sgl_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool1.not.i = icmp eq i32 %153, 0
  br i1 %tobool1.not.i, label %if.else.i427, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i425
  call void @__sanitizer_cov_trace_pc() #17
  %154 = ptrtoint ptr %tvc_prot_sgl.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tvc_prot_sgl.i, align 8
  br label %if.end4.i

if.else.i427:                                     ; preds = %if.then.i425
  call void @__sanitizer_cov_trace_pc() #17
  %prot_pto.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 16, i32 52
  %156 = ptrtoint ptr %prot_pto.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %prot_pto.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i427, %if.then2.i, %if.end270.if.end4.i_crit_edge
  %sg_ptr.0.i = phi ptr [ %151, %if.then2.i ], [ %151, %if.else.i427 ], [ null, %if.end270.if.end4.i_crit_edge ]
  %sg_prot_ptr.0.i = phi ptr [ %155, %if.then2.i ], [ null, %if.else.i427 ], [ null, %if.end270.if.end4.i_crit_edge ]
  %157 = ptrtoint ptr %tvc_nexus.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tvc_nexus.i, align 8
  %tag.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 16, i32 4
  %159 = ptrtoint ptr %tag.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 0, ptr %tag.i, align 8
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %158, align 4
  %tvc_sense_buf.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 18
  %162 = ptrtoint ptr %tvc_lun.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tvc_lun.i, align 8
  %conv.i430 = zext i32 %163 to i64
  %164 = ptrtoint ptr %tvc_exp_data_len.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tvc_exp_data_len.i, align 8
  %166 = ptrtoint ptr %tvc_task_attr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tvc_task_attr.i, align 4
  %switch.tableidx = add i32 %167, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %168 = icmp ult i32 %switch.tableidx, 3
  br i1 %168, label %switch.lookup, label %if.end4.i.vhost_scsi_to_tcm_attr.exit.i_crit_edge

if.end4.i.vhost_scsi_to_tcm_attr.exit.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_to_tcm_attr.exit.i

switch.lookup:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vhost_scsi_handle_vq, i32 0, i32 %switch.tableidx
  %169 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %169)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vhost_scsi_to_tcm_attr.exit.i

vhost_scsi_to_tcm_attr.exit.i:                    ; preds = %switch.lookup, %if.end4.i.vhost_scsi_to_tcm_attr.exit.i_crit_edge
  %retval.0.i.i433 = phi i32 [ 32, %if.end4.i.vhost_scsi_to_tcm_attr.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %170 = ptrtoint ptr %tvc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tvc_data_direction.i, align 4
  %call5.i = call i32 @target_init_cmd(ptr noundef %tvc_se_cmd.i, ptr noundef %161, ptr noundef %tvc_sense_buf.i, i64 noundef %conv.i430, i32 noundef %165, i32 noundef %retval.0.i.i433, i32 noundef %171, i32 noundef 2) #15
  %172 = ptrtoint ptr %tvc_sgl_count.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tvc_sgl_count.i, align 8
  %tvc_prot_sgl_count7.i = getelementptr %struct.vhost_scsi_cmd, ptr %105, i32 %call3.i, i32 7
  %174 = ptrtoint ptr %tvc_prot_sgl_count7.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tvc_prot_sgl_count7.i, align 4
  %call8.i = call i32 @target_submit_prep(ptr noundef %tvc_se_cmd.i, ptr noundef %tvc_cdb.i, ptr noundef %sg_ptr.0.i, i32 noundef %173, ptr noundef null, i32 noundef 0, ptr noundef %sg_prot_ptr.0.i, i32 noundef %175, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i436, label %vhost_scsi_to_tcm_attr.exit.i.do.cond282_crit_edge

vhost_scsi_to_tcm_attr.exit.i.do.cond282_crit_edge: ; preds = %vhost_scsi_to_tcm_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond282

if.end11.i436:                                    ; preds = %vhost_scsi_to_tcm_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @target_queue_submission(ptr noundef %tvc_se_cmd.i) #15
  br label %do.cond282

err:                                              ; preds = %if.end23.err_crit_edge, %return.sink.split.i, %do.body.err_crit_edge
  %ret.0 = phi i32 [ %call2, %do.body.err_crit_edge ], [ %call24, %if.end23.err_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %176 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %ret.0, label %err.do.cond282_crit_edge [
    i32 -6, label %err.out293_crit_edge
    i32 -5, label %err.if.then277_crit_edge
  ]

err.if.then277_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then277

err.out293_crit_edge:                             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %out293

err.do.cond282_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond282

if.then277:                                       ; preds = %err.if.then277_crit_edge, %do.end268, %if.then187, %do.end184.if.then277_crit_edge, %if.then156, %do.end153.if.then277_crit_edge, %if.then94, %do.end91.if.then277_crit_edge, %if.then61, %do.end.if.then277_crit_edge, %do.end44.i.if.then277_crit_edge
  %177 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %vc, align 8
  %179 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %out, align 4
  call fastcc void @vhost_scsi_send_bad_target(ptr noundef %vs, ptr noundef %vq, i32 noundef %178, i32 noundef %180)
  br label %do.cond282

do.cond282:                                       ; preds = %if.then277, %err.do.cond282_crit_edge, %if.end11.i436, %vhost_scsi_to_tcm_attr.exit.i.do.cond282_crit_edge, %do.end.i.do.cond282_crit_edge
  %inc = add i32 %c.0, 1
  %call283 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %vq, i32 noundef %inc, i32 noundef 0) #15
  br i1 %call283, label %do.cond282.out293_crit_edge, label %do.cond282.do.body_crit_edge, !prof !333

do.cond282.do.body_crit_edge:                     ; preds = %do.cond282
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond282.out293_crit_edge:                      ; preds = %do.cond282
  call void @__sanitizer_cov_trace_pc() #17
  br label %out293

out293:                                           ; preds = %do.cond282.out293_crit_edge, %err.out293_crit_edge, %entry.out293_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data_iter) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %prot_iter) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in_iter) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vc) #15
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %v_req_pi) #15
  call void @llvm.lifetime.end.p0(i64 51, ptr nonnull %v_req) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpg) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_mapal(ptr nocapture noundef %cmd, i32 noundef %prot_bytes, ptr noundef %prot_iter, i32 noundef %data_bytes, ptr noundef %data_iter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tvc_data_direction = getelementptr inbounds %struct.vhost_scsi_cmd, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %tvc_data_direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tvc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prot_bytes)
  %tobool.not = icmp eq i32 %prot_bytes, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %prot_iter, null
  br i1 %tobool.not.i, label %if.then.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then
  %2 = getelementptr inbounds %struct.iov_iter, ptr %prot_iter, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %prot_bytes) #22
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @iov_iter_npages(ptr noundef nonnull %prot_iter, i32 noundef 65535) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call2.i)
  %cmp.i = icmp sgt i32 %call2.i, 2048
  br i1 %cmp.i, label %do.end6.i, label %vhost_scsi_calc_sgls.exit

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %call2.i, i32 noundef 2048) #22
  br label %cleanup

vhost_scsi_calc_sgls.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp1 = icmp slt i32 %call2.i, 0
  br i1 %cmp1, label %vhost_scsi_calc_sgls.exit.cleanup_crit_edge, label %if.end

vhost_scsi_calc_sgls.exit.cleanup_crit_edge:      ; preds = %vhost_scsi_calc_sgls.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %vhost_scsi_calc_sgls.exit
  %tvc_prot_sgl = getelementptr inbounds %struct.vhost_scsi_cmd, ptr %cmd, i32 0, i32 10
  %5 = ptrtoint ptr %tvc_prot_sgl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tvc_prot_sgl, align 8
  tail call void @sg_init_table(ptr noundef %6, i32 noundef %call2.i) #15
  %tvc_prot_sgl_count = getelementptr inbounds %struct.vhost_scsi_cmd, ptr %cmd, i32 0, i32 7
  %7 = ptrtoint ptr %tvc_prot_sgl_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %tvc_prot_sgl_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_mapal.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_mapal, %if.then8)) #15
          to label %do.end [label %if.then8], !srcloc !322

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %tvc_prot_sgl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tvc_prot_sgl, align 8
  %10 = ptrtoint ptr %tvc_prot_sgl_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tvc_prot_sgl_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_mapal.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef %9, i32 noundef %11) #15
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %12 = ptrtoint ptr %tvc_prot_sgl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tvc_prot_sgl, align 8
  %call15 = tail call fastcc i32 @vhost_scsi_iov_to_sgl(ptr noundef %cmd, i1 noundef zeroext %cmp, ptr noundef nonnull %prot_iter, ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %do.end.if.end20_crit_edge

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %tvc_prot_sgl_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tvc_prot_sgl_count, align 4
  br label %cleanup

if.end20:                                         ; preds = %do.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %tobool.not.i87 = icmp eq ptr %data_iter, null
  br i1 %tobool.not.i87, label %if.end20.do.end.i91_crit_edge, label %lor.lhs.false.i89

if.end20.do.end.i91_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i91

lor.lhs.false.i89:                                ; preds = %if.end20
  %15 = getelementptr inbounds %struct.iov_iter, ptr %data_iter, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool1.not.i88 = icmp eq ptr %17, null
  br i1 %tobool1.not.i88, label %lor.lhs.false.i89.do.end.i91_crit_edge, label %if.end.i94

lor.lhs.false.i89.do.end.i91_crit_edge:           ; preds = %lor.lhs.false.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i91

do.end.i91:                                       ; preds = %lor.lhs.false.i89.do.end.i91_crit_edge, %if.end20.do.end.i91_crit_edge
  %call.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %data_bytes) #22
  br label %cleanup

if.end.i94:                                       ; preds = %lor.lhs.false.i89
  %call2.i92 = tail call i32 @iov_iter_npages(ptr noundef nonnull %data_iter, i32 noundef 65535) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call2.i92)
  %cmp.i93 = icmp sgt i32 %call2.i92, 2048
  br i1 %cmp.i93, label %do.end6.i96, label %vhost_scsi_calc_sgls.exit98

do.end6.i96:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %call2.i92, i32 noundef 2048) #22
  br label %cleanup

vhost_scsi_calc_sgls.exit98:                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i92)
  %cmp22 = icmp slt i32 %call2.i92, 0
  br i1 %cmp22, label %vhost_scsi_calc_sgls.exit98.cleanup_crit_edge, label %if.end24

vhost_scsi_calc_sgls.exit98.cleanup_crit_edge:    ; preds = %vhost_scsi_calc_sgls.exit98
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %vhost_scsi_calc_sgls.exit98
  %tvc_sgl = getelementptr inbounds %struct.vhost_scsi_cmd, ptr %cmd, i32 0, i32 9
  %18 = ptrtoint ptr %tvc_sgl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tvc_sgl, align 4
  tail call void @sg_init_table(ptr noundef %19, i32 noundef %call2.i92) #15
  %tvc_sgl_count = getelementptr inbounds %struct.vhost_scsi_cmd, ptr %cmd, i32 0, i32 6
  %20 = ptrtoint ptr %tvc_sgl_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i92, ptr %tvc_sgl_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_mapal.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_mapal, %if.then37)) #15
          to label %do.end42 [label %if.then37], !srcloc !322

if.then37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %tvc_sgl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tvc_sgl, align 4
  %23 = ptrtoint ptr %tvc_sgl_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tvc_sgl_count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_mapal.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, ptr noundef %22, i32 noundef %24) #15
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %if.end24
  %25 = ptrtoint ptr %tvc_sgl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tvc_sgl, align 4
  %call46 = tail call fastcc i32 @vhost_scsi_iov_to_sgl(ptr noundef %cmd, i1 noundef zeroext %cmp, ptr noundef nonnull %data_iter, ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %do.end42.cleanup_crit_edge

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then48:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %tvc_sgl_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tvc_sgl_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.end42.cleanup_crit_edge, %vhost_scsi_calc_sgls.exit98.cleanup_crit_edge, %do.end6.i96, %do.end.i91, %if.then17, %vhost_scsi_calc_sgls.exit.cleanup_crit_edge, %do.end6.i, %do.end.i
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ %call46, %if.then48 ], [ %call2.i, %vhost_scsi_calc_sgls.exit.cleanup_crit_edge ], [ %call2.i92, %vhost_scsi_calc_sgls.exit98.cleanup_crit_edge ], [ 0, %do.end42.cleanup_crit_edge ], [ -22, %do.end6.i ], [ -22, %do.end.i ], [ -22, %do.end6.i96 ], [ -22, %do.end.i91 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_iov_to_sgl(ptr nocapture noundef readonly %cmd, i1 noundef zeroext %write, ptr noundef %iter, ptr noundef %sg) unnamed_addr #1 align 64 {
entry:
  %offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not8 = icmp eq i32 %1, 0
  br i1 %tobool.not8, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %tvc_upages.i = getelementptr inbounds %struct.vhost_scsi_cmd, ptr %cmd, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %while.body.lr.ph
  %sg.addr.09 = phi ptr [ %sg, %while.body.lr.ph ], [ %add.ptr, %if.end9.while.body_crit_edge ]
  %2 = ptrtoint ptr %tvc_upages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tvc_upages.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #15
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %offset.i, align 4, !annotation !323
  %call.i = call i32 @iov_iter_get_pages(ptr noundef %iter, ptr noundef %3, i32 noundef 2147483647, i32 noundef 2048, ptr noundef nonnull %offset.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp1.not.i, i32 -14, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #15
  br label %while.cond3.preheader

if.end.i:                                         ; preds = %while.body
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %call.i) #15
  br label %while.body.i

while.body.i:                                     ; preds = %sg_set_page.exit.i.while.body.i_crit_edge, %if.end.i
  %npages.06.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %sg_set_page.exit.i.while.body.i_crit_edge ]
  %bytes.05.i = phi i32 [ %call.i, %if.end.i ], [ %sub7.i, %sg_set_page.exit.i.while.body.i_crit_edge ]
  %sg.04.i = phi ptr [ %sg.addr.09, %if.end.i ], [ %incdec.ptr.i, %sg_set_page.exit.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 4096, %6
  %7 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %bytes.05.i) #15
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %sg.04.i, i32 1
  %inc.i = add i32 %npages.06.i, 1
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %npages.06.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %sg.04.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg.04.i, align 4
  %12 = ptrtoint ptr %9 to i32
  %and2.i.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !325

do.body5.i.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !346
  unreachable

do.body11.i.i.i:                                  ; preds = %while.body.i
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !325

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #15, !srcloc !347
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %11, 3
  %or.i.i.i = or i32 %and.i.i.i, %12
  %13 = ptrtoint ptr %sg.04.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.i, ptr %sg.04.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %6, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 2
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %length.i.i, align 4
  %sub7.i = sub i32 %bytes.05.i, %7
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %offset.i, align 4
  %tobool.not.i = icmp eq i32 %sub7.i, 0
  br i1 %tobool.not.i, label %vhost_scsi_map_to_sgl.exit, label %sg_set_page.exit.i.while.body.i_crit_edge

sg_set_page.exit.i.while.body.i_crit_edge:        ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

vhost_scsi_map_to_sgl.exit:                       ; preds = %sg_set_page.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp slt i32 %inc.i, 0
  br i1 %cmp, label %vhost_scsi_map_to_sgl.exit.while.cond3.preheader_crit_edge, label %if.end9

vhost_scsi_map_to_sgl.exit.while.cond3.preheader_crit_edge: ; preds = %vhost_scsi_map_to_sgl.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %vhost_scsi_map_to_sgl.exit.while.cond3.preheader_crit_edge, %if.then.i
  %retval.0.i21 = phi i32 [ %spec.select, %if.then.i ], [ %inc.i, %vhost_scsi_map_to_sgl.exit.while.cond3.preheader_crit_edge ]
  %cmp410 = icmp ugt ptr %sg.addr.09, %sg
  br i1 %cmp410, label %while.cond3.preheader.while.body5_crit_edge, label %while.cond3.preheader.cleanup_crit_edge

while.cond3.preheader.cleanup_crit_edge:          ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond3.preheader.while.body5_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body5

while.body5:                                      ; preds = %if.end.while.body5_crit_edge, %while.cond3.preheader.while.body5_crit_edge
  %p.011 = phi ptr [ %incdec.ptr, %if.end.while.body5_crit_edge ], [ %sg, %while.cond3.preheader.while.body5_crit_edge ]
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %p.011, i32 1
  %17 = ptrtoint ptr %p.011 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p.011, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !325

do.body2.i:                                       ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #15, !srcloc !340
  unreachable

sg_page.exit:                                     ; preds = %while.body5
  %and.i = and i32 %18, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %sg_page.exit.if.end_crit_edge, label %if.then8

sg_page.exit.if.end_crit_edge:                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then8:                                         ; preds = %sg_page.exit
  %19 = inttoptr i32 %and.i to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i1 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i, label %if.then8._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !325

if.then8._compound_head.exit.i_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %22, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then8._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %19, %if.then8._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !333

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.27) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !341
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !342
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %25 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !343
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vhost_scsi_iov_to_sgl, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !322

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %.pre-phi) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %sg_page.exit.if.end_crit_edge
  %cmp4 = icmp ult ptr %incdec.ptr, %sg.addr.09
  br i1 %cmp4, label %if.end.while.body5_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.while.body5_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body5

if.end9:                                          ; preds = %vhost_scsi_map_to_sgl.exit
  %add.ptr = getelementptr %struct.scatterlist, ptr %sg.addr.09, i32 %inc.i
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 8
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.cond3.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %while.cond3.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i21, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_prep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_queue_submission(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vhost_scsi_get_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %tport_name = getelementptr inbounds %struct.vhost_scsi_tport, ptr %1, i32 0, i32 2
  ret ptr %tport_name
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @vhost_scsi_get_tpgt(ptr nocapture noundef readonly %se_tpg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -124
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 4
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_scsi_check_true(ptr nocapture noundef readnone %se_tpg) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_scsi_check_false(ptr nocapture noundef readnone %se_tpg) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_scsi_check_prot_fabric_only(ptr nocapture noundef readonly %se_tpg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_fabric_prot_type = getelementptr i8, ptr %se_tpg, i32 -112
  %0 = ptrtoint ptr %tv_fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_fabric_prot_type, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_scsi_tpg_get_inst_index(ptr nocapture noundef readnone %se_tpg) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_check_stop_free(ptr noundef %se_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_release_cmd(ptr noundef %se_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -32
  %vhost = getelementptr i8, ptr %se_cmd, i32 -16
  %2 = ptrtoint ptr %vhost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhost, align 8
  %dev = getelementptr inbounds %struct.vhost_scsi, ptr %3, i32 0, i32 2
  tail call void @vhost_work_queue(ptr noundef %dev, ptr noundef %add.ptr) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tvc_vhost = getelementptr i8, ptr %se_cmd, i32 -16
  %4 = ptrtoint ptr %tvc_vhost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tvc_vhost, align 8
  %tvc_completion_list = getelementptr i8, ptr %se_cmd, i32 568
  %vs_completion_list = getelementptr inbounds %struct.vhost_scsi, ptr %5, i32 0, i32 5
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %tvc_completion_list, ptr noundef %tvc_completion_list, ptr noundef %vs_completion_list) #15
  %dev4 = getelementptr inbounds %struct.vhost_scsi, ptr %5, i32 0, i32 2
  %vs_completion_work = getelementptr inbounds %struct.vhost_scsi, ptr %5, i32 0, i32 4
  tail call void @vhost_work_queue(ptr noundef %dev4, ptr noundef %vs_completion_work) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_scsi_sess_get_index(ptr nocapture noundef readnone %se_sess) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_write_pending(ptr noundef %se_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vhost_scsi_set_default_node_attrs(ptr nocapture noundef %nacl) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_scsi_get_cmd_state(ptr nocapture noundef readnone %se_cmd) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_queue_data_in(ptr noundef %se_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_queue_status(ptr noundef %se_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_queue_tm_rsp(ptr noundef %se_cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tmr_req = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 22
  %0 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tmr_req, align 8
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %response, align 1
  %scsi_resp = getelementptr i8, ptr %se_cmd, i32 440
  %4 = ptrtoint ptr %scsi_resp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %scsi_resp, align 8
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vhost_scsi_aborted_task(ptr nocapture noundef %se_cmd) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vhost_scsi_make_tport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 528) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tport_wwpn = getelementptr inbounds %struct.vhost_scsi_tport, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %tport_wwpn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %tport_wwpn, align 8
  %call3 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.82)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end6, label %if.end.check_len_crit_edge

if.end.check_len_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_len

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.83)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end11, label %if.end6.check_len_crit_edge

if.end6.check_len_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_len

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.84)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end19, label %if.end11.check_len_crit_edge

if.end11.check_len_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_len

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name) #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

check_len:                                        ; preds = %if.end11.check_len_crit_edge, %if.end6.check_len_crit_edge, %if.end.check_len_crit_edge
  %.sink = phi i8 [ 6, %if.end.check_len_crit_edge ], [ 0, %if.end6.check_len_crit_edge ], [ 5, %if.end11.check_len_crit_edge ]
  %off.0 = phi i32 [ 0, %if.end.check_len_crit_edge ], [ 3, %if.end6.check_len_crit_edge ], [ 0, %if.end11.check_len_crit_edge ]
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %.sink, ptr %call7.i.i, align 8
  %call23 = tail call i32 @strlen(ptr noundef %name) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call23)
  %cmp = icmp ugt i32 %call23, 255
  br i1 %cmp, label %do.end27, label %if.end32

do.end27:                                         ; preds = %check_len
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %5 = icmp ult i8 %4, 7
  br i1 %5, label %switch.lookup, label %do.end27.vhost_scsi_dump_proto_id.exit_crit_edge

do.end27.vhost_scsi_dump_proto_id.exit_crit_edge: ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit

switch.lookup:                                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  %6 = sext i8 %4 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.vhost_scsi_make_tport, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %vhost_scsi_dump_proto_id.exit

vhost_scsi_dump_proto_id.exit:                    ; preds = %switch.lookup, %do.end27.vhost_scsi_dump_proto_id.exit_crit_edge
  %retval.0.i68 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.96, %do.end27.vhost_scsi_dump_proto_id.exit_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, ptr noundef nonnull %retval.0.i68, i32 noundef 256) #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end32:                                         ; preds = %check_len
  %tport_name = getelementptr inbounds %struct.vhost_scsi_tport, ptr %call7.i.i, i32 0, i32 2
  %arrayidx33 = getelementptr i8, ptr %name, i32 %off.0
  %call34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tport_name, i32 noundef 256, ptr noundef nonnull @.str.91, ptr noundef %arrayidx33)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_make_tport.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_make_tport, %if.then41)) #15
          to label %do.end45 [label %if.then41], !srcloc !322

if.then41:                                        ; preds = %if.end32
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %10 = icmp ult i8 %9, 7
  br i1 %10, label %switch.lookup75, label %if.then41.vhost_scsi_dump_proto_id.exit73_crit_edge

if.then41.vhost_scsi_dump_proto_id.exit73_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit73

switch.lookup75:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  %11 = sext i8 %9 to i32
  %switch.gep76 = getelementptr inbounds [7 x ptr], ptr @switch.table.vhost_scsi_make_tport.137, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep76 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load77 = load ptr, ptr %switch.gep76, align 4
  br label %vhost_scsi_dump_proto_id.exit73

vhost_scsi_dump_proto_id.exit73:                  ; preds = %switch.lookup75, %if.then41.vhost_scsi_dump_proto_id.exit73_crit_edge
  %retval.0.i72 = phi ptr [ %switch.load77, %switch.lookup75 ], [ @.str.96, %if.then41.vhost_scsi_dump_proto_id.exit73_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_make_tport.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.92, ptr noundef nonnull %retval.0.i72, ptr noundef %name) #15
  br label %do.end45

do.end45:                                         ; preds = %vhost_scsi_dump_proto_id.exit73, %if.end32
  %tport_wwn = getelementptr inbounds %struct.vhost_scsi_tport, ptr %call7.i.i, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %vhost_scsi_dump_proto_id.exit, %do.end19, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %vhost_scsi_dump_proto_id.exit ], [ %tport_wwn, %do.end45 ], [ inttoptr (i32 -22 to ptr), %do.end19 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_drop_tport(ptr noundef %wwn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_drop_tport.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_drop_tport, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !322

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %2 = icmp ult i8 %1, 7
  br i1 %2, label %switch.lookup, label %if.then.vhost_scsi_dump_proto_id.exit_crit_edge

if.then.vhost_scsi_dump_proto_id.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.vhost_scsi_drop_tport, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %vhost_scsi_dump_proto_id.exit

vhost_scsi_dump_proto_id.exit:                    ; preds = %switch.lookup, %if.then.vhost_scsi_dump_proto_id.exit_crit_edge
  %retval.0.i7 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.96, %if.then.vhost_scsi_dump_proto_id.exit_crit_edge ]
  %tport_name = getelementptr i8, ptr %wwn, i32 -256
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_drop_tport.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.98, ptr noundef nonnull %retval.0.i7, ptr noundef %tport_name) #15
  br label %do.end

do.end:                                           ; preds = %vhost_scsi_dump_proto_id.exit, %entry
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vhost_scsi_make_tpg(ptr noundef %wwn, ptr noundef %name) #1 align 64 {
entry:
  %tpgt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -272
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tpgt) #15
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tpgt, align 2, !annotation !323
  %strncmp = tail call i32 @strncmp(ptr %name, ptr nonnull dereferenceable(6) @.str.99, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp44.not = icmp eq i32 %strncmp, 0
  br i1 %cmp44.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %name, i32 5
  %call3 = call i32 @kstrtou16(ptr noundef %add.ptr2, i32 noundef 10, ptr noundef nonnull %tpgt) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %2)
  %cmp4 = icmp ugt i16 %2, 255
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 968) #20
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end, label %do.body16

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #22
  br label %cleanup

do.body16:                                        ; preds = %if.end8
  %tv_tpg_mutex = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %tv_tpg_mutex, ptr noundef nonnull @.str.102, ptr noundef nonnull @vhost_scsi_make_tpg.__key) #15
  %tv_tpg_list = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %tv_tpg_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %tv_tpg_list, ptr %tv_tpg_list, align 8
  %prev.i = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tv_tpg_list, ptr %prev.i, align 4
  %tmf_queue = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %tmf_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tmf_queue, ptr %tmf_queue, align 8
  %prev.i45 = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tmf_queue, ptr %prev.i45, align 4
  %tport19 = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %tport19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %tport19, align 8
  %9 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tpgt, align 2
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %call7.i.i, align 8
  %se_tpg = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 8
  %conv20 = zext i8 %13 to i32
  %call21 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %se_tpg, i32 noundef %conv20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end25:                                         ; preds = %do.body16
  call void @mutex_lock_nested(ptr noundef nonnull @vhost_scsi_mutex, i32 noundef 0) #15
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vhost_scsi_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tv_tpg_list, ptr noundef %14, ptr noundef nonnull @vhost_scsi_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %tv_tpg_list, ptr getelementptr inbounds (%struct.list_head, ptr @vhost_scsi_list, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %tv_tpg_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vhost_scsi_list, ptr %tv_tpg_list, align 8
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %tv_tpg_list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @vhost_scsi_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then24, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then24 ], [ %se_tpg, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tpgt) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_drop_tpg(ptr noundef %se_tpg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vhost_scsi_mutex, i32 noundef 0) #15
  %tv_tpg_list = getelementptr i8, ptr %se_tpg, i32 -108
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tv_tpg_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %se_tpg, i32 -104
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %tv_tpg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tv_tpg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -124
  %6 = ptrtoint ptr %tv_tpg_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %tv_tpg_list, align 4
  %prev.i = getelementptr i8, ptr %se_tpg, i32 -104
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @vhost_scsi_mutex) #15
  %call = tail call fastcc i32 @vhost_scsi_drop_nexus(ptr noundef %add.ptr)
  %call1 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_port_link(ptr noundef %se_tpg, ptr noundef %lun) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 496) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -124
  %queue_entry = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queue_entry, ptr %queue_entry, align 8
  %prev.i = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %call7.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue_entry, ptr %prev.i, align 4
  tail call void @vhost_work_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @vhost_scsi_tmf_resp_work) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @vhost_scsi_mutex, i32 noundef 0) #15
  %tv_tpg_mutex = getelementptr i8, ptr %se_tpg, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tv_tpg_port_count = getelementptr i8, ptr %se_tpg, i32 -120
  %3 = ptrtoint ptr %tv_tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_tpg_port_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tv_tpg_port_count, align 4
  %tmf_queue = getelementptr i8, ptr %se_tpg, i32 836
  %prev.i11 = getelementptr i8, ptr %se_tpg, i32 840
  %5 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i11, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue_entry, ptr noundef %6, ptr noundef %tmf_queue) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue_entry, ptr %prev.i11, align 4
  %8 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tmf_queue, ptr %queue_entry, align 8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %queue_entry, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %vhost_scsi.i.i = getelementptr i8, ptr %se_tpg, i32 832
  %11 = ptrtoint ptr %vhost_scsi.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vhost_scsi.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.vhost_scsi_hotplug.exit_crit_edge, label %if.end.i.i12

list_add_tail.exit.vhost_scsi_hotplug.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_hotplug.exit

if.end.i.i12:                                     ; preds = %list_add_tail.exit
  %mutex.i.i = getelementptr inbounds %struct.vhost_scsi, ptr %12, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #15
  %mutex5.i.i = getelementptr %struct.vhost_scsi, ptr %12, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex5.i.i, i32 noundef 0) #15
  %acked_features.i.i.i = getelementptr %struct.vhost_scsi, ptr %12, i32 0, i32 3, i32 1, i32 0, i32 28
  %13 = ptrtoint ptr %acked_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %acked_features.i.i.i, align 8
  %and.i.i.i = and i64 %14, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i12.if.end7.i.i_crit_edge, label %if.then6.i.i

if.end.i.i12.if.end7.i.i_crit_edge:               ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vhost_scsi_send_evt(ptr noundef nonnull %12, ptr noundef %add.ptr, ptr noundef %lun, i32 noundef 1, i32 noundef 1) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i12.if.end7.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex5.i.i) #15
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #15
  br label %vhost_scsi_hotplug.exit

vhost_scsi_hotplug.exit:                          ; preds = %if.end7.i.i, %list_add_tail.exit.vhost_scsi_hotplug.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vhost_scsi_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %vhost_scsi_hotplug.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vhost_scsi_hotplug.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_port_unlink(ptr noundef %se_tpg, ptr noundef %lun) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -124
  tail call void @mutex_lock_nested(ptr noundef nonnull @vhost_scsi_mutex, i32 noundef 0) #15
  %tv_tpg_mutex = getelementptr i8, ptr %se_tpg, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tv_tpg_port_count = getelementptr i8, ptr %se_tpg, i32 -120
  %0 = ptrtoint ptr %tv_tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_tpg_port_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %tv_tpg_port_count, align 4
  %tmf_queue = getelementptr i8, ptr %se_tpg, i32 836
  %2 = ptrtoint ptr %tmf_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmf_queue, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 -24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr3) #15
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %vhost_scsi.i.i = getelementptr i8, ptr %se_tpg, i32 832
  %12 = ptrtoint ptr %vhost_scsi.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vhost_scsi.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %list_del.exit.vhost_scsi_hotunplug.exit_crit_edge, label %if.end.i.i10

list_del.exit.vhost_scsi_hotunplug.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_hotunplug.exit

if.end.i.i10:                                     ; preds = %list_del.exit
  %mutex.i.i = getelementptr inbounds %struct.vhost_scsi, ptr %13, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #15
  %mutex5.i.i = getelementptr %struct.vhost_scsi, ptr %13, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex5.i.i, i32 noundef 0) #15
  %acked_features.i.i.i = getelementptr %struct.vhost_scsi, ptr %13, i32 0, i32 3, i32 1, i32 0, i32 28
  %14 = ptrtoint ptr %acked_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %acked_features.i.i.i, align 8
  %and.i.i.i = and i64 %15, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i10.if.end7.i.i_crit_edge, label %if.then6.i.i

if.end.i.i10.if.end7.i.i_crit_edge:               ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vhost_scsi_send_evt(ptr noundef nonnull %13, ptr noundef %add.ptr, ptr noundef %lun, i32 noundef 1, i32 noundef 2) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i10.if.end7.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex5.i.i) #15
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #15
  br label %vhost_scsi_hotunplug.exit

vhost_scsi_hotunplug.exit:                        ; preds = %if.end7.i.i, %list_del.exit.vhost_scsi_hotunplug.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vhost_scsi_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_drop_nexus(ptr noundef %tpg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_tpg_mutex = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tpg_nexus = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 6
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tv_tpg_port_count = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 1
  %4 = ptrtoint ptr %tv_tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_tpg_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %6 = ptrtoint ptr %tv_tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_tpg_port_count, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %7) #22
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %tv_tpg_vhost_count = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 2
  %8 = ptrtoint ptr %tv_tpg_vhost_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_tpg_vhost_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not = icmp eq i32 %9, 0
  br i1 %cmp10.not, label %do.body20, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %10 = ptrtoint ptr %tv_tpg_vhost_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_tpg_vhost_count, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %11) #22
  br label %cleanup

do.body20:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_drop_nexus.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_drop_nexus, %if.then26)) #15
          to label %do.end31 [label %if.then26], !srcloc !322

if.then26:                                        ; preds = %do.body20
  %tport = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 7
  %12 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tport, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %16 = icmp ult i8 %15, 7
  br i1 %16, label %switch.lookup, label %if.then26.vhost_scsi_dump_proto_id.exit_crit_edge

if.then26.vhost_scsi_dump_proto_id.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %17 = sext i8 %15 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.vhost_scsi_drop_nexus, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %vhost_scsi_dump_proto_id.exit

vhost_scsi_dump_proto_id.exit:                    ; preds = %switch.lookup, %if.then26.vhost_scsi_dump_proto_id.exit_crit_edge
  %retval.0.i52 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.96, %if.then26.vhost_scsi_dump_proto_id.exit_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %se_node_acl, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_drop_nexus.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.108, ptr noundef nonnull %retval.0.i52, ptr noundef %22) #15
  br label %do.end31

do.end31:                                         ; preds = %vhost_scsi_dump_proto_id.exit, %do.body20
  tail call void @target_remove_session(ptr noundef nonnull %3) #15
  %23 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %tpg_nexus, align 4
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.then11, %if.then6, %if.then3, %if.then
  %retval.0 = phi i32 [ -16, %if.then6 ], [ -16, %if.then11 ], [ 0, %do.end31 ], [ -19, %if.then3 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_scsi_tmf_resp_work(ptr noundef %work) #1 align 64 {
entry:
  %rsp.i = alloca %struct.virtio_scsi_ctrl_tmf_resp, align 1
  %iov_iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_resp = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %work, i32 0, i32 6
  %0 = ptrtoint ptr %scsi_resp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scsi_resp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %vhost = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %vhost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhost, align 8
  %svq = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %svq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svq, align 4
  %in_iovs = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %work, i32 0, i32 9
  %6 = ptrtoint ptr %in_iovs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_iovs, align 8
  %vq_desc = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %work, i32 0, i32 10
  %8 = ptrtoint ptr %vq_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vq_desc, align 4
  %resp_iov = getelementptr inbounds %struct.vhost_scsi_tmf, ptr %work, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rsp.i) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov_iter.i) #15
  %10 = call ptr @memset(ptr %iov_iter.i, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_send_tmf_resp.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_tmf_resp_work, %if.then.i)) #15
          to label %do.end.i [label %if.then.i], !srcloc !322

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_send_tmf_resp.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %conv.i = select i1 %cmp, i8 10, i8 11
  %11 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %rsp.i, align 1
  call void @iov_iter_init(ptr noundef nonnull %iov_iter.i, i32 noundef 0, ptr noundef %resp_iov, i32 noundef %7, i32 noundef 1) #15
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef nonnull %rsp.i, i32 noundef 1, ptr noundef nonnull %iov_iter.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp.i, label %if.then11.i, label %do.end14.i, !prof !325

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.vhost_scsi, ptr %3, i32 0, i32 2
  call void @vhost_add_used_and_signal(ptr noundef %dev.i, ptr noundef %5, i32 noundef %9, i32 noundef 0) #15
  br label %vhost_scsi_send_tmf_resp.exit

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #22
  br label %vhost_scsi_send_tmf_resp.exit

vhost_scsi_send_tmf_resp.exit:                    ; preds = %do.end14.i, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rsp.i) #15
  call fastcc void @vhost_scsi_release_tmf_res(ptr noundef %work)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_wwn_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !312) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uts_ns.i, align 4
  %machine = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef %machine)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_tpg_nexus_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_tpg_mutex = getelementptr i8, ptr %item, i32 -372
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tpg_nexus = getelementptr i8, ptr %item, i32 -280
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_node_acl, align 8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.51, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_tpg_nexus_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #1 align 64 {
entry:
  %i_port = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -396
  %tport = getelementptr i8, ptr %item, i32 -276
  %0 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_port) #15
  %2 = call ptr @memset(ptr %i_port, i32 255, i32 256)
  %call1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(5) @.str.112, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call fastcc i32 @vhost_scsi_drop_nexus(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %count.call2 = select i1 %tobool3.not, i32 %count, i32 %call2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strlen(ptr noundef %page) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call4)
  %cmp = icmp ugt i32 %call4, 255
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %page, i32 noundef 256) #22
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_port, i32 noundef 256, ptr noundef nonnull @.str.91, ptr noundef %page)
  %call10 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.82)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end25, label %if.then12

if.then12:                                        ; preds = %if.end8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %4, label %sw.epilog.i [
    i8 6, label %if.then12.check_newline_crit_edge
    i8 5, label %sw.bb2.i
    i8 0, label %if.then12.vhost_scsi_dump_proto_id.exit_crit_edge
  ]

if.then12.vhost_scsi_dump_proto_id.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit

if.then12.check_newline_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_newline

sw.bb2.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit

sw.epilog.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit

vhost_scsi_dump_proto_id.exit:                    ; preds = %sw.epilog.i, %sw.bb2.i, %if.then12.vhost_scsi_dump_proto_id.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.96, %sw.epilog.i ], [ @.str.95, %sw.bb2.i ], [ @.str.94, %if.then12.vhost_scsi_dump_proto_id.exit_crit_edge ]
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull %i_port, ptr noundef nonnull %retval.0.i) #22
  br label %cleanup

if.end25:                                         ; preds = %if.end8
  %call27 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.83)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end44, label %if.then29

if.then29:                                        ; preds = %if.end25
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %7, label %sw.epilog.i111 [
    i8 0, label %if.end42
    i8 6, label %if.then29.vhost_scsi_dump_proto_id.exit113_crit_edge
    i8 5, label %sw.bb2.i110
  ]

if.then29.vhost_scsi_dump_proto_id.exit113_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit113

sw.bb2.i110:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit113

sw.epilog.i111:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit113

vhost_scsi_dump_proto_id.exit113:                 ; preds = %sw.epilog.i111, %sw.bb2.i110, %if.then29.vhost_scsi_dump_proto_id.exit113_crit_edge
  %retval.0.i112 = phi ptr [ @.str.96, %sw.epilog.i111 ], [ @.str.95, %sw.bb2.i110 ], [ @.str.93, %if.then29.vhost_scsi_dump_proto_id.exit113_crit_edge ]
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull %i_port, ptr noundef nonnull %retval.0.i112) #22
  br label %cleanup

if.end42:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx43 = getelementptr inbounds [256 x i8], ptr %i_port, i32 0, i32 3
  br label %check_newline

if.end44:                                         ; preds = %if.end25
  %call46 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.84)
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end66, label %if.then48

if.then48:                                        ; preds = %if.end44
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %10, label %sw.epilog.i116 [
    i8 5, label %if.then48.check_newline_crit_edge
    i8 6, label %if.then48.vhost_scsi_dump_proto_id.exit118_crit_edge
    i8 0, label %sw.bb1.i114
  ]

if.then48.vhost_scsi_dump_proto_id.exit118_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit118

if.then48.check_newline_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_newline

sw.bb1.i114:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit118

sw.epilog.i116:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %vhost_scsi_dump_proto_id.exit118

vhost_scsi_dump_proto_id.exit118:                 ; preds = %sw.epilog.i116, %sw.bb1.i114, %if.then48.vhost_scsi_dump_proto_id.exit118_crit_edge
  %retval.0.i117 = phi ptr [ @.str.96, %sw.epilog.i116 ], [ @.str.94, %sw.bb1.i114 ], [ @.str.93, %if.then48.vhost_scsi_dump_proto_id.exit118_crit_edge ]
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull %i_port, ptr noundef nonnull %retval.0.i117) #22
  br label %cleanup

do.end66:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull %i_port) #22
  br label %cleanup

check_newline:                                    ; preds = %if.then48.check_newline_crit_edge, %if.end42, %if.then12.check_newline_crit_edge
  %port_ptr.0 = phi ptr [ %arrayidx43, %if.end42 ], [ %i_port, %if.then12.check_newline_crit_edge ], [ %i_port, %if.then48.check_newline_crit_edge ]
  %call71 = call i32 @strlen(ptr noundef nonnull %i_port) #21
  %sub = add i32 %call71, -1
  %arrayidx72 = getelementptr [256 x i8], ptr %i_port, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp74 = icmp eq i8 %13, 10
  br i1 %cmp74, label %if.then76, label %check_newline.if.end81_crit_edge

check_newline.if.end81_crit_edge:                 ; preds = %check_newline
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then76:                                        ; preds = %check_newline
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx72, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %check_newline.if.end81_crit_edge
  %call82 = call fastcc i32 @vhost_scsi_make_nexus(ptr noundef %add.ptr, ptr noundef %port_ptr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  %call82.count = select i1 %cmp83, i32 %call82, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end66, %vhost_scsi_dump_proto_id.exit118, %vhost_scsi_dump_proto_id.exit113, %vhost_scsi_dump_proto_id.exit, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %vhost_scsi_dump_proto_id.exit ], [ -22, %vhost_scsi_dump_proto_id.exit113 ], [ -22, %vhost_scsi_dump_proto_id.exit118 ], [ -22, %do.end66 ], [ %count.call2, %if.then ], [ %call82.count, %if.end81 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_port) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_scsi_make_nexus(ptr noundef %tpg, ptr noundef %name) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_tpg_mutex = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tv_tpg_mutex, i32 noundef 0) #15
  %tpg_nexus = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 6
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_scsi_make_nexus.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_scsi_make_nexus, %if.then5)) #15
          to label %cleanup [label %if.then5], !srcloc !322

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_scsi_make_nexus.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.128) #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #20
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #22
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %se_tpg = getelementptr inbounds %struct.vhost_scsi_tpg, ptr %tpg, i32 0, i32 8
  %call17 = tail call ptr @target_setup_session(ptr noundef %se_tpg, i32 noundef 0, i32 noundef 0, i32 noundef 48, ptr noundef %name, ptr noundef nonnull %call7.i.i, ptr noundef null) #15
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %tpg_nexus, align 4
  tail call void @mutex_unlock(ptr noundef %tv_tpg_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ -12, %if.then20 ], [ 0, %if.end22 ], [ -12, %if.then9 ], [ -17, %if.then5 ], [ -17, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_tpg_attrib_fabric_prot_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_fabric_prot_type = getelementptr i8, ptr %item, i32 -704
  %0 = ptrtoint ptr %tv_fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_fabric_prot_type, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.131, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_scsi_tpg_attrib_fabric_prot_type_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !323
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %2, label %do.end10 [
    i32 0, label %if.end.if.end13_crit_edge
    i32 1, label %if.end.if.end13_crit_edge19
    i32 3, label %if.end.if.end13_crit_edge20
  ]

if.end.if.end13_crit_edge20:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end.if.end13_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %2) #22
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge19, %if.end.if.end13_crit_edge20
  %tv_fabric_prot_type = getelementptr i8, ptr %item, i32 -704
  %4 = ptrtoint ptr %tv_fabric_prot_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %tv_fabric_prot_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end10 ], [ %count, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !195, !197, !198, !199, !200, !202, !204, !206, !208, !209, !210, !212, !213, !214, !216, !218, !219, !221, !223, !225, !227, !229, !230, !231, !233, !235, !236, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !255, !257, !258, !260, !262, !264, !265, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !300, !301, !303, !305, !306, !307, !308, !310, !311}
!llvm.named.register.sp = !{!312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @__UNIQUE_ID_description282, !1, !"__UNIQUE_ID_description282", i1 false, i1 false}
!1 = !{!"../drivers/vhost/scsi.c", i32 2477, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias283, !3, !"__UNIQUE_ID_alias283", i1 false, i1 false}
!3 = !{!"../drivers/vhost/scsi.c", i32 2478, i32 1}
!4 = !{ptr @__UNIQUE_ID_file284, !5, !"__UNIQUE_ID_file284", i1 false, i1 false}
!5 = !{!"../drivers/vhost/scsi.c", i32 2479, i32 1}
!6 = !{ptr @__UNIQUE_ID_license285, !5, !"__UNIQUE_ID_license285", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_vhost_scsi__286_2480_vhost_scsi_init6, !8, !"__initcall__kmod_vhost_scsi__286_2480_vhost_scsi_init6", i1 false, i1 false}
!8 = !{!"../drivers/vhost/scsi.c", i32 2480, i32 1}
!9 = !{ptr @__exitcall_vhost_scsi_exit, !10, !"__exitcall_vhost_scsi_exit", i1 false, i1 false}
!10 = !{!"../drivers/vhost/scsi.c", i32 2481, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/vhost/scsi.c", i32 2451, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vhost_scsi_init.__UNIQUE_ID_ddebug281, !12, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!17 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/vhost/scsi.c", i32 1916, i32 2}
!20 = !{ptr @vhost_scsi_misc, !21, !"vhost_scsi_misc", i1 false, i1 false}
!21 = !{!"../drivers/vhost/scsi.c", i32 1914, i32 26}
!22 = !{ptr @vhost_scsi_fops, !23, !"vhost_scsi_fops", i1 false, i1 false}
!23 = !{!"../drivers/vhost/scsi.c", i32 1905, i32 37}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/vhost/scsi.c", i32 1590, i32 5}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vhost_scsi_set_endpoint._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vhost_scsi_set_endpoint._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/vhost/scsi.c", i32 230, i32 8}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vhost_scsi_mutex, !37, !"vhost_scsi_mutex", i1 false, i1 false}
!40 = !{ptr @vhost_scsi_list, !41, !"vhost_scsi_list", i1 false, i1 false}
!41 = !{!"../drivers/vhost/scsi.c", i32 231, i32 8}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/vhost/scsi.c", i32 1497, i32 4}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vhost_scsi_setup_vq_cmds._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vhost_scsi_setup_vq_cmds._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/vhost/scsi.c", i32 1505, i32 4}
!49 = !{ptr @vhost_scsi_setup_vq_cmds._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vhost_scsi_setup_vq_cmds._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/vhost/scsi.c", i32 1513, i32 4}
!53 = !{ptr @vhost_scsi_setup_vq_cmds._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vhost_scsi_setup_vq_cmds._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @init_completion.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../include/linux/completion.h", i32 87, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/vhost/scsi.c", i32 1698, i32 4}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vhost_scsi_clear_endpoint._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @vhost_scsi_clear_endpoint._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/vhost/scsi.c", i32 549, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vhost_scsi_complete_cmd_work.__UNIQUE_ID_ddebug253, !64, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/vhost/scsi.c", i32 571, i32 4}
!69 = !{ptr @vhost_scsi_complete_cmd_work._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vhost_scsi_complete_cmd_work._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/mm.h", i32 717, i32 2}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/vhost/scsi.c", i32 491, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug251, !74, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/vhost/scsi.c", i32 507, i32 3}
!79 = !{ptr @vhost_scsi_do_evt_work.__UNIQUE_ID_ddebug252, !78, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/vhost/scsi.c", i32 1362, i32 2}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @vhost_scsi_ctl_handle_kick.__UNIQUE_ID_ddebug276, !81, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/vhost/scsi.c", i32 1286, i32 4}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug274, !85, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/vhost/scsi.c", i32 1313, i32 4}
!90 = !{ptr @vhost_scsi_ctl_handle_vq.__UNIQUE_ID_ddebug275, !89, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/vhost/scsi.c", i32 831, i32 2}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vhost_scsi_get_desc.__UNIQUE_ID_ddebug258, !92, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/vhost/scsi.c", i32 875, i32 3}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @vhost_scsi_chk_size.__UNIQUE_ID_ddebug259, !96, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/vhost/scsi.c", i32 880, i32 3}
!101 = !{ptr @vhost_scsi_chk_size.__UNIQUE_ID_ddebug260, !100, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/vhost/scsi.c", i32 897, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vhost_scsi_get_req.__UNIQUE_ID_ddebug261, !103, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/vhost/scsi.c", i32 900, i32 3}
!108 = !{ptr @vhost_scsi_get_req.__UNIQUE_ID_ddebug262, !107, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/vhost/scsi.c", i32 908, i32 4}
!111 = !{ptr @vhost_scsi_get_req.__UNIQUE_ID_ddebug264, !110, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/vhost/scsi.c", i32 1186, i32 3}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @vhost_scsi_handle_tmf._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @vhost_scsi_handle_tmf._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/vhost/scsi.c", i32 1192, i32 3}
!119 = !{ptr @vhost_scsi_handle_tmf._entry.47, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @vhost_scsi_handle_tmf._entry_ptr.49, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/vhost/scsi.c", i32 1142, i32 2}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @vhost_scsi_send_tmf_resp.__UNIQUE_ID_ddebug272, !122, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/vhost/scsi.c", i32 1152, i32 3}
!127 = !{ptr @vhost_scsi_send_tmf_resp._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @vhost_scsi_send_tmf_resp._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/vhost/scsi.c", i32 1234, i32 2}
!131 = !{ptr @vhost_scsi_send_an_resp.__UNIQUE_ID_ddebug273, !130, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/vhost/scsi.c", i32 1244, i32 3}
!134 = !{ptr @vhost_scsi_send_an_resp._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @vhost_scsi_send_an_resp._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/vhost/scsi.c", i32 818, i32 3}
!138 = !{ptr @vhost_scsi_send_bad_target._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @vhost_scsi_send_bad_target._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/vhost/scsi.c", i32 443, i32 3}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @vhost_scsi_allocate_evt.__UNIQUE_ID_ddebug250, !141, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/vhost/scsi.c", i32 1032, i32 6}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug265, !145, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/vhost/scsi.c", i32 1039, i32 6}
!150 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug266, !149, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/vhost/scsi.c", i32 1077, i32 4}
!153 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug267, !152, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/vhost/scsi.c", i32 1086, i32 4}
!156 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug268, !155, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/vhost/scsi.c", i32 1095, i32 3}
!159 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug269, !158, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/vhost/scsi.c", i32 1097, i32 3}
!162 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug270, !161, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/vhost/scsi.c", i32 1104, i32 5}
!165 = !{ptr @vhost_scsi_handle_vq.__UNIQUE_ID_ddebug271, !164, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/vhost/scsi.c", i32 597, i32 3}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @vhost_scsi_get_cmd._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @vhost_scsi_get_cmd._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/vhost/scsi.c", i32 603, i32 3}
!173 = !{ptr @vhost_scsi_get_cmd._entry.68, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @vhost_scsi_get_cmd._entry_ptr.70, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/vhost/scsi.c", i32 722, i32 3}
!177 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @vhost_scsi_mapal.__UNIQUE_ID_ddebug256, !176, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/vhost/scsi.c", i32 740, i32 2}
!181 = !{ptr @vhost_scsi_mapal.__UNIQUE_ID_ddebug257, !180, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/vhost/scsi.c", i32 669, i32 3}
!184 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @vhost_scsi_calc_sgls._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @vhost_scsi_calc_sgls._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/vhost/scsi.c", i32 676, i32 3}
!189 = !{ptr @vhost_scsi_calc_sgls._entry.76, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @vhost_scsi_calc_sgls._entry_ptr.78, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/vhost/scsi.c", i32 2411, i32 19}
!193 = !{ptr @vhost_scsi_ops, !194, !"vhost_scsi_ops", i1 false, i1 false}
!194 = !{!"../drivers/vhost/scsi.c", i32 2409, i32 44}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/vhost/scsi.c", i32 2336, i32 3}
!197 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @vhost_scsi_make_tport._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @vhost_scsi_make_tport._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/vhost/scsi.c", i32 2344, i32 21}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/vhost/scsi.c", i32 2349, i32 21}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/vhost/scsi.c", i32 2355, i32 21}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/vhost/scsi.c", i32 2361, i32 2}
!208 = !{ptr @vhost_scsi_make_tport._entry.85, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @vhost_scsi_make_tport._entry_ptr.87, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/vhost/scsi.c", i32 2368, i32 3}
!212 = !{ptr @vhost_scsi_make_tport._entry.88, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @vhost_scsi_make_tport._entry_ptr.90, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/vhost/scsi.c", i32 2374, i32 54}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/vhost/scsi.c", i32 2376, i32 2}
!218 = !{ptr @vhost_scsi_make_tport.__UNIQUE_ID_ddebug279, !217, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/vhost/scsi.c", i32 1934, i32 10}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/vhost/scsi.c", i32 1936, i32 10}
!223 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/vhost/scsi.c", i32 1938, i32 10}
!225 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/vhost/scsi.c", i32 1943, i32 9}
!227 = !{ptr @.str.97, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/vhost/scsi.c", i32 2387, i32 2}
!229 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @vhost_scsi_drop_tport.__UNIQUE_ID_ddebug280, !228, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!231 = !{ptr @.str.99, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/vhost/scsi.c", i32 2274, i32 19}
!233 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/vhost/scsi.c", i32 2281, i32 3}
!235 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @vhost_scsi_make_tpg._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @vhost_scsi_make_tpg._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @vhost_scsi_make_tpg.__key, !239, !"__key", i1 false, i1 false}
!239 = !{!"../drivers/vhost/scsi.c", i32 2284, i32 2}
!240 = !{ptr @.str.102, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/vhost/scsi.c", i32 2129, i32 3}
!243 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vhost_scsi_drop_nexus._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vhost_scsi_drop_nexus._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/vhost/scsi.c", i32 2137, i32 3}
!248 = !{ptr @vhost_scsi_drop_nexus._entry.105, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @vhost_scsi_drop_nexus._entry_ptr.107, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.108, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/vhost/scsi.c", i32 2143, i32 2}
!252 = !{ptr @vhost_scsi_drop_nexus.__UNIQUE_ID_ddebug278, !251, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!253 = !{ptr @vhost_scsi_wwn_attrs, !254, !"vhost_scsi_wwn_attrs", i1 false, i1 false}
!254 = !{!"../drivers/vhost/scsi.c", i32 2404, i32 35}
!255 = !{ptr @.str.109, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/vhost/scsi.c", i32 2402, i32 1}
!257 = !{ptr @vhost_scsi_wwn_attr_version, !256, !"vhost_scsi_wwn_attr_version", i1 false, i1 false}
!258 = !{ptr @.str.110, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/vhost/scsi.c", i32 2397, i32 23}
!260 = !{ptr @vhost_scsi_tpg_attrs, !261, !"vhost_scsi_tpg_attrs", i1 false, i1 false}
!261 = !{!"../drivers/vhost/scsi.c", i32 2259, i32 35}
!262 = !{ptr @.str.111, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/vhost/scsi.c", i32 2257, i32 1}
!264 = !{ptr @vhost_scsi_tpg_attr_nexus, !263, !"vhost_scsi_tpg_attr_nexus", i1 false, i1 false}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/vhost/scsi.c", i32 2191, i32 21}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/vhost/scsi.c", i32 2201, i32 3}
!269 = !{ptr @.str.114, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @vhost_scsi_tpg_nexus_store._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @vhost_scsi_tpg_nexus_store._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.116, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/vhost/scsi.c", i32 2210, i32 4}
!274 = !{ptr @vhost_scsi_tpg_nexus_store._entry.115, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @vhost_scsi_tpg_nexus_store._entry_ptr.117, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.119, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/vhost/scsi.c", i32 2221, i32 4}
!278 = !{ptr @vhost_scsi_tpg_nexus_store._entry.118, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @vhost_scsi_tpg_nexus_store._entry_ptr.120, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/vhost/scsi.c", i32 2232, i32 4}
!282 = !{ptr @vhost_scsi_tpg_nexus_store._entry.121, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @vhost_scsi_tpg_nexus_store._entry_ptr.123, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.125, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/vhost/scsi.c", i32 2240, i32 2}
!286 = !{ptr @vhost_scsi_tpg_nexus_store._entry.124, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @vhost_scsi_tpg_nexus_store._entry_ptr.126, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/vhost/scsi.c", i32 2080, i32 3}
!290 = !{ptr @.str.128, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @vhost_scsi_make_nexus.__UNIQUE_ID_ddebug277, !289, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!292 = !{ptr @.str.129, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/vhost/scsi.c", i32 2087, i32 3}
!294 = !{ptr @vhost_scsi_make_nexus._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @vhost_scsi_make_nexus._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @vhost_scsi_tpg_attrib_attrs, !297, !"vhost_scsi_tpg_attrib_attrs", i1 false, i1 false}
!297 = !{!"../drivers/vhost/scsi.c", i32 2067, i32 35}
!298 = !{ptr @.str.130, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/vhost/scsi.c", i32 2065, i32 1}
!300 = !{ptr @vhost_scsi_tpg_attrib_attr_fabric_prot_type, !299, !"vhost_scsi_tpg_attrib_attr_fabric_prot_type", i1 false, i1 false}
!301 = !{ptr @.str.131, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/vhost/scsi.c", i32 2062, i32 23}
!303 = !{ptr @.str.132, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/vhost/scsi.c", i32 2043, i32 3}
!305 = !{ptr @.str.133, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.135, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/vhost/scsi.c", i32 2047, i32 3}
!310 = !{ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry.134, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @vhost_scsi_tpg_attrib_fabric_prot_type_store._entry_ptr.136, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{!"sp"}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{i64 2149017075, i64 2149017080, i64 2149017093, i64 2149017137, i64 2149017171, i64 2149017192}
!323 = !{!"auto-init"}
!324 = !{i64 2153003057, i64 2153003082}
!325 = !{!"branch_weights", i32 2000, i32 1}
!326 = !{i64 5498612}
!327 = !{i64 5498809}
!328 = !{i64 2152984042}
!329 = !{i64 2153003738, i64 2153003763}
!330 = !{i64 2154488653, i64 2154488933, i64 2154489267, i64 2154489601}
!331 = !{i8 0, i8 2}
!332 = !{i64 2154498962, i64 2154499242, i64 2154499576, i64 2154499910}
!333 = !{!"branch_weights", i32 1, i32 2000}
!334 = !{i64 2148493253}
!335 = !{i64 2148407693, i64 2148407725, i64 2148407754, i64 2148407788, i64 2148407819, i64 2148407842}
!336 = !{i64 2149369367}
!337 = !{i64 2149263098}
!338 = !{i64 910466, i64 910483, i64 910507, i64 910533, i64 910551}
!339 = !{i64 2149263451}
!340 = !{i64 2154147387, i64 2154147879, i64 2154147424, i64 2154147480, i64 2154147514, i64 2154147538, i64 2154147579, i64 2154147600, i64 2154147628, i64 2154147662}
!341 = !{i64 2153943481, i64 2153943964, i64 2153943518, i64 2153943574, i64 2153943608, i64 2153943632, i64 2153943673, i64 2153943694, i64 2153943722, i64 2153943756}
!342 = !{i64 2148492174}
!343 = !{i64 2148406883, i64 2148406915, i64 2148406944, i64 2148406978, i64 2148407009, i64 2148407032}
!344 = !{i64 2148492403}
!345 = !{i64 2148405228, i64 2148405260, i64 2148405289, i64 2148405323, i64 2148405354, i64 2148405377}
!346 = !{i64 2154143829, i64 2154144321, i64 2154143866, i64 2154143922, i64 2154143956, i64 2154143980, i64 2154144021, i64 2154144042, i64 2154144070, i64 2154144104}
!347 = !{i64 2154145439, i64 2154145931, i64 2154145476, i64 2154145532, i64 2154145566, i64 2154145590, i64 2154145631, i64 2154145652, i64 2154145680, i64 2154145714}
